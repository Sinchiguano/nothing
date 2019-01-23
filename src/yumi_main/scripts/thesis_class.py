#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

from thesis_library import *


# default camera!!!
class camera(object):
    def __init__(self):
        # In ROS, nodes are uniquely named.
        rospy.init_node('camera', anonymous=True)
        #Subscriber to the rgb, rgbd, point cloud data and informations of the first two of them...
        rospy.Subscriber('/camera/rgb/image_raw', Image, self.callback_rgb)
        rospy.Subscriber('/camera/depth/image_raw', Image, self.callback_depth)

        #rospy.Subscriber('/camera/depth/camera_info', CameraInfo,self.infoDepthCallback)
        #rospy.Subscriber('/camera/rgb/camera_info', CameraInfo,self.infoColorCallback)

        rospy.Subscriber('/camera/depth_registered/points', PointCloud2, self.callback_pointCloud)

        self.cv_image1=None
        self.cv_image2=None
        self.pc=None

    def callback_rgb(self,data):
        #global cv_image1
        #### direct conversion to CV2 ####
        try:
          self.cv_image1 = bridge.imgmsg_to_cv2(data, "bgr8")
          #print(type(cv_image1))
        except CvBridgeError as e:
          print(e)
          #print()

    def callback_depth(self,data):
        #global cv_image2
        try:
            self.cv_image2 = bridge.imgmsg_to_cv2(data, "passthrough")
            #print(type(self.cv_image2))
        except CvBridgeError as e:
            #print()
            print(e)
            #return None
        #return cv_image
        # cv2.imshow("Depth image. By: Casch!!!", cv_image2)
        # cv2.waitKey(3)

    def callback_pointCloud(self,data):
        #print('data',type(data))
        if data is not None:
            #print('there is something at least!!!')
            pts = list(pc2.read_points(data, skip_nans=False, field_names=("x", "y", "z")))
            #temp = pc2.read_points(data, skip_nans=False, field_names=("x", "y", "z"))
            #print('temp',type(temp))
            if len(pts) == 307200:
                self.pc = np.array(list(pts)).reshape((480,640,3))
            elif len(pts) == 172800:
                self.pc = np.array(list(pts)).reshape((360,480,3))
        else:
            rospy.logerr("No point cloud image, did you initialize Turtlebot(pc=True)")
        #print(type(self.pc))

    def infoDepthCallback(self,msg):
        print('received info from depth camera!!!',msg)
    def infoColorCallback(self,msg):
        rospy.loginfo("received info from color camera!!!%s",msg)

    def get_image(self):
        return self.cv_image1
    def get_depth(self):
        return self.cv_image2
    def get_point_cloud(self):
        return self.pc


def prepare_dataset():

    print(":: Load two point clouds and disturb initial pose.")
    source =read_point_cloud("dataset/sync5.ply")
    target = read_point_cloud("dataset/holderd.ply")
    trans_init = np.asarray([[0.0, 0.0, 1.0, 0.0],
                            [1.0, 0.0, 0.0, 0.0],
                            [0.0, 1.0, 0.0, 0.0],
                            [0.0, 0.0, 0.0, 1.0]])
    source.transform(trans_init)

    draw_registration_result(source, target, np.identity(4))

    print("Downsample the point cloud with a voxel of 0.02 and get features with FPFH")
    source_down, source_fpfh = preprocess_point_cloud(source, voxel_size =0.02)
    print(type(source_down))
    tmp_source=np.asarray(source_down.points)
    print('shape:',tmp_source.shape)
    print('source_down points',source_down.points)


    print("Downsample the point cloud with a voxel of 1 and get features with FPFH")#voxel_size = 0.05 # means 5cm for the dataset
    target_down, target_fpfh = preprocess_point_cloud(target, voxel_size = 2)
    print(type(target_down))
    tmp_target=np.asarray(target_down.points)
    print('shape:',tmp_target.shape)
    print('target_down points',target_down.points)

    return source, target, source_down, target_down, source_fpfh, target_fpfh

def draw_registration_result(source, target, transformation):
    source_aux = copy.deepcopy(source)
    target_aux = copy.deepcopy(target)

    source_aux.paint_uniform_color([1, 0.706, 0])
    target_aux.paint_uniform_color([0, 0.651, 0.929])

    source_aux.transform(transformation)

    draw_geometries([source_aux, target_aux])

def preprocess_point_cloud(pcd, voxel_size):
    print(":: Downsample with a voxel size %.3f." % voxel_size)
    pcd_down = voxel_down_sample(pcd, voxel_size)

    radius_normal = voxel_size * 2
    print(":: Estimate normal with search radius %.3f." % radius_normal)
    estimate_normals(pcd_down, KDTreeSearchParamHybrid(radius = radius_normal, max_nn = 30))

    radius_feature = voxel_size * 5
    print(":: Compute FPFH feature with search radius %.3f." % radius_feature)
    pcd_fpfh = compute_fpfh_feature(pcd_down,KDTreeSearchParamHybrid(radius = radius_feature, max_nn = 100))
    return pcd_down, pcd_fpfh

def execute_global_registration(source_down, target_down, source_fpfh, target_fpfh, voxel_size):
    distance_threshold = voxel_size * 1.5
    print(":: RANSAC registration on downsampled point clouds.")
    print("   Since the downsampling voxel size is %.3f," % voxel_size)
    print("   we use a liberal distance threshold %.3f." % distance_threshold)
    result = registration_ransac_based_on_feature_matching(source_down, target_down, source_fpfh, target_fpfh,distance_threshold,
            TransformationEstimationPointToPoint(False), 4,[CorrespondenceCheckerBasedOnEdgeLength(0.9),CorrespondenceCheckerBasedOnDistance(distance_threshold)],
            RANSACConvergenceCriteria(4000000, 500))
    return result
