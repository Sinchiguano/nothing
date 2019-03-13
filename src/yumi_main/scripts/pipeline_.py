#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.


import sys
sys.path.insert(0, '/home/sinchiguano/yumi_depends_ws/src/yumi_main/scripts/project')

#The order matters
from thesis_library import *
from thesis_class import *
from open3d import uniform_down_sample,registration_icp,TransformationEstimationPointToPlane,TransformationEstimationPointToPoint
import pcl

######################################

#from thesis_registration2 import *
model_path='pipeline_model/'
cloud_path='pipeline_pcd/'



def do_pointcloud(frame,pc,counter):
    global cloud_path

    #the following function render a vector in 3d for pcd format in order to use with open3d
    pcd=do_vector3d(pc)

    #we save the pcd in the following formats pcd and ply, and we save a rgb image for visualization purpose
    tmp=cloud_path+'pointcloud'+str(counter)

    write_point_cloud(tmp+'.pcd', pcd)
    write_point_cloud(tmp+'.ply', pcd)
    cv2.imwrite(tmp+'.jpg', frame)

    t_ = np.asarray([[0.01329691,  0.81253459, -0.5827613, 0.52167439],
                    [0.9992968,  -0.03123286, -0.02074644, 0.08662894],
                    [-0.0350585,  -0.58207564, -0.81237852, 0.63682005],
                    [0.0, 0.0, 0.0, 1.0]])
    target = read_point_cloud(tmp+'.pcd')
    #draw_geometries([target])
    target.transform(t_)
    write_point_cloud(tmp+'base_link'+'.pcd', pcd)
    write_point_cloud(tmp+'base_link'+'.ply', pcd)
    #draw_geometries([target])


    return pcl.load(tmp+'base_link'+'.pcd')

def do_vector3d(pc):

    '''With the help of open3d we render pcd'''
    pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
    #print(pc.shape)
    pc=np.nan_to_num(pc)

    #Pass xyz to Open3D.PointCloud and visualize
    pcd = PointCloud()
    #print('In progress!!!')
    start_timer=time.time()
    pcd.points = Vector3dVector(pc)
    # Flip it, otherwise the pointcloud will be upside down
    #print("Load a pcd point cloud, and flip it!!!")
    #pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
    #print('elapsed time:',time.time()-start_timer)

    return pcd


def do_dataset(source,target):
    '''Preprocessing step'''
    print("Downsample the point cloud and get features with FPFH")
    source_down, source_fpfh = do_preprocessing_pcd(source, 0.008)#in mm
    tmp_source=np.asarray(source_down.points)
    print('shape:',tmp_source.shape)

    print("Downsample the point cloud and get features with FPFH")
    target_down, target_fpfh = do_preprocessing_pcd(target, 0.002)#good tunning
    tmp_target=np.asarray(target_down.points)
    print('shape:',tmp_target.shape)

    return source, target, source_down, target_down, source_fpfh, target_fpfh

def do_preprocessing_pcd(pcd, voxel_size):
    '''Downsample the point cloud'''
    pcd_down = voxel_down_sample(pcd, voxel_size)

    '''Estimate normals'''
    radius_normal = voxel_size * 5
    estimate_normals(pcd_down, KDTreeSearchParamHybrid(radius = radius_normal, max_nn = 30))

    '''Fast Point Feature Histograms'''
    radius_feature = voxel_size * 5
    pcd_fpfh = compute_fpfh_feature(pcd_down,KDTreeSearchParamHybrid(radius = radius_feature, max_nn = 100))

    return pcd_down, pcd_fpfh

def do_ransac_registration(source_down, target_down, source_fpfh, target_fpfh):

    '''RANSAC registration is applied on downsampled point clouds.'''
    #Global registration. This family of algorithms do not require an alignment for initialization.
    #They usually produce less tight alignment results and are used as initialization of the local methods such as ICP.
    #RANSACConvergenceCriteria
    #It defines the maximum number of RANSAC iterations and the maximum number of validation steps.
    #The larger these two numbers are, the more accurate the result is, but also the more time the algorithm takes.
    threshold = 0.003#0.01 * 1.5
    result = registration_ransac_based_on_feature_matching(source_down, target_down, source_fpfh, target_fpfh,threshold,
            TransformationEstimationPointToPoint(False), 4,
            [CorrespondenceCheckerBasedOnEdgeLength(0.9),CorrespondenceCheckerBasedOnDistance(threshold)],
            RANSACConvergenceCriteria(400000, 1000))
    return result

def do_icp_registration(source, target, transformation):


    '''Point-to-plane ICP registration is applied on original points'''
    # estimate_normals(source, KDTreeSearchParamHybrid(radius = 0.01, max_nn = 20))
    # estimate_normals(target, KDTreeSearchParamHybrid(radius = 0.01, max_nn = 20))
    threshold = 0.005
    #result = registration_icp(source, target, threshold,transformation,TransformationEstimationPointToPlane())
    #point to point registration!!!
    result = registration_icp(source, target, threshold, transformation,TransformationEstimationPointToPoint())

    return result

def do_drawing_registration(source, target, transformation):

    source_tmp= copy.deepcopy(source)
    target_tmp = copy.deepcopy(target)
    source_tmp.paint_uniform_color([1, 0.706, 0])
    target_tmp.paint_uniform_color([0, 0.651, 0.929])

    source_tmp.transform(transformation)
    draw_geometries([source_tmp, target_tmp])

# Returns Downsampled version of a point cloud. The bigger the leaf size the less information retained
def do_voxel_grid_filter(point_cloud, LEAF_SIZE = 0.01):
    voxel_filter = point_cloud.make_voxel_grid_filter()
    voxel_filter.set_leaf_size(LEAF_SIZE, LEAF_SIZE, LEAF_SIZE)
    return voxel_filter.filter()


# Returns only the point cloud information at a specific range of a specific axis
def do_passthrough_filter(point_cloud, name_axis = 'z', min_axis = 0.6, max_axis = 1.1):
    pass_filter = point_cloud.make_passthrough_filter()
    pass_filter.set_filter_field_name(name_axis);
    pass_filter.set_filter_limits(min_axis, max_axis)
    return pass_filter.filter()



# Use RANSAC plane segmentation to separate plane and not plane points
# Returns inliers (plane) and outliers (not plane)
def do_ransac_plane_segmentation(point_cloud, max_distance = 0.01):

    segmenter = point_cloud.make_segmenter()
    segmenter.set_model_type(pcl.SACMODEL_PLANE)
    segmenter.set_method_type(pcl.SAC_RANSAC)
    segmenter.set_distance_threshold(max_distance)

    #obtain inlier indices and model coefficients
    inlier_indices, coefficients = segmenter.segment()

    inliers = point_cloud.extract(inlier_indices, negative = False)
    outliers = point_cloud.extract(inlier_indices, negative = True)
    return inliers, outliers


def main():
    counter1=0
    counter2=0
    counter3=0


    import sys
    print "This is the name of the script: ", sys.argv[0]
    rate = rospy.Rate(10) # 10hz

    flag=False
    while not rospy.is_shutdown():
        counter1+=1

        # Capture 2D-data
        frame=camObj.get_image()

        # Capture depth data
        depth=camObj.get_depth()

        # Capture 3D-data
        pc=camObj.get_point_cloud()

        if pc is None:
            print('no PointCloud2!!!')
            continue
        elif frame is None:
            print('no Frame!!!')
            continue
        elif depth is None:
            print('no depth image!!!')
            continue

        command=cv2.waitKey(1) & 0xFF
        if command == ord('q'):
            break



        print('	//Ready to collect 3D-data')
        print "\n============ Press `Enter` to start..."
        raw_input()
        counter2+=1



        """Get my instance of my point cloud"""
        pcd=do_pointcloud(frame,pc,counter2)

        #change of coordinates.

        #preprocessing step
        cloud=copy.deepcopy(pcd)
        flag=True


        if flag:
            # mask out point cloud in order to get only information of our region of interest, as we don't care about the other parts
            filter = do_passthrough_filter(point_cloud = cloud,name_axis = 'x', min_axis = -0.2, max_axis = 0.5)
            filter = do_passthrough_filter(point_cloud = filter,name_axis = 'y', min_axis = -0.2, max_axis = 1.0)
            pcl.save(filter,cloud_path +'filter_objects_'+str(counter2)+'.pcd' )
            print('filter done!')

            # Separate the table from everything else
            table, objects = do_ransac_plane_segmentation(filter, max_distance = 0.01)
            pcl.save(objects,cloud_path +'objects_'+str(counter2)+'.pcd' )
            print('segmentation done!')

            pcd = read_point_cloud(cloud_path+'objects_'+str(counter2)+'.pcd')
            write_point_cloud(cloud_path +'objects_'+str(counter2)+'.ply', pcd)
            print('change done')


            #The source is my CAD model that already mathed into the world coordinate system
            source=read_point_cloud(model_path+'rightFace_m_down.pcd')
            #The target cloud is in camera frame, so we do have to map into the world frame by using the T: W -> C
            target=read_point_cloud(cloud_path+'objects_'+str(counter2)+'.pcd')
            draw_geometries([source,target])
            print('upload cloud done')



            #DOWNSAMPLE AND COMPUTE FAST POINT FEATURE HISTOGRAM-->PREPROCESSING STEP: DATA MANIPULATION OF THE POINT CLOUD
            source, target, source_down, target_down, source_fpfh, target_fpfh=do_dataset(source,target)
            draw_geometries([source_down,target_down])

            #RANSAC REGISTRATION-->>global registration
            #-------------------
            ransac_output=do_ransac_registration(source_down, target_down, source_fpfh, target_fpfh )

            do_drawing_registration(source, target, ransac_output.transformation)
            print('RANSAC')
            print(ransac_output.transformation)


            #ICP REGISTRATION -->>local registration, point to plane approach
            #-------------------
            icp_output = do_icp_registration(source, target,ransac_output.transformation)
            do_drawing_registration(source, target, icp_output.transformation)
            print('ICP')
            print(icp_output.transformation)
            #flag=False
        cv2.imshow('frame',frame)



    # When everything done, release the capture
    cv2.destroyAllWindows()

if __name__ == '__main__':
    camObj=camera()
    main()
