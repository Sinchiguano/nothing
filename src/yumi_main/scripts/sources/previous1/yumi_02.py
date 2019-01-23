#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

import sys, time

# numpy and scipy
import numpy as np
from scipy.ndimage import filters

# OpenCV
import cv2

# Ros libraries
import roslib
import rospy
from cv_bridge import CvBridge, CvBridgeError
# Ros Messages
from sensor_msgs.msg import Image, CameraInfo, PointCloud2
import sensor_msgs.point_cloud2 as pc2


# initialize cv bridge
bridge = CvBridge()

cv_image1=None
cv_image2=None
pts=None


# focalLength = 525.0
# centerX = 319.5
# centerY = 239.5
# scalingFactor = 5000.0

def show_stl_file():
    """
    STL is a file format native to the stereolithography CAD software created by 3D Systems.
    """
    from stl import mesh
    from mpl_toolkits import mplot3d
    from matplotlib import pyplot

    # Create a new plot
    figure = pyplot.figure()
    axes = mplot3d.Axes3D(figure)

    # Load the STL files and add the vectors to the plot
    your_mesh = mesh.Mesh.from_file('coke.stl')
    axes.add_collection3d(mplot3d.art3d.Poly3DCollection(your_mesh.vectors))

    # Auto scale to the mesh size
    scale = your_mesh.points.flatten(-1)
    axes.auto_scale_xyz(scale, scale, scale)

    # volume, cog, inertia = your_mesh.get_mass_properties()
    # print("Volume                                  = {0}".format(volume))
    # print("Position of the center of gravity (COG) = {0}".format(cog))
    # print("Inertia matrix at expressed at the COG  = {0}".format(inertia[0,:]))
    # print("                                          {0}".format(inertia[1,:]))
    # print("                                          {0}".format(inertia[2,:]))

    # Show the plot to the screen
    pyplot.show()

def callback_rgb(data):
    global cv_image1
    #### direct conversion to CV2 ####
    try:
      cv_image1 = bridge.imgmsg_to_cv2(data, "bgr8")
      #print(type(cv_image1))
    except CvBridgeError as e:
      #print(e)
      print()

def callback_depth(data):
    global cv_image2
    try:
        cv_image2 = bridge.imgmsg_to_cv2(data, "passthrough")
        #print(type(cv_image2))
    except CvBridgeError as e:
        print()
        #print(e)
        #return None
    #return cv_image
    # cv2.imshow("Depth image. By: Casch!!!", cv_image2)
    # cv2.waitKey(3)
def callback_pointCloud(data):
    global pts
    pts = list(pc2.read_points(data, skip_nans=False, field_names=("x", "y", "z")))
    # print(len(pts))
    # print(type(pts))
    # print(pts[0:1])
    if len(pts) == 307200:
        pts= np.array(list(pts)).reshape((480,640,3))
        #print(type(pts))
    # elif len(pts) == 172800:
    #     pc = np.array(list(pts)).reshape((360,480,3))
    #print(pts.shape)

def infoDepthCallback(msg):
    #print('received info from depth camera!!!',msg)
    print()
def infoColorCallback(msg):
    rospy.loginfo("received info from color camera!!!%s",msg)

def get_image():
    global cv_image1
    return cv_image1
def get_depth():
    global cv_image2
    return cv_image2
def get_point_cloud():
    global pts
    return pts

x_range = (-0.3, 0.3)
z_range = (0.3, 3.0)

def main():
    # In ROS, nodes are uniquely named.
    rospy.init_node('listener', anonymous=True)
    #Subscriber to the rgb, rgbd, point cloud data and informations of the first two of them...
    rospy.Subscriber('/camera/color/image_raw', Image, callback_rgb)
    rospy.Subscriber('/camera/depth/image_rect_raw', Image, callback_depth)
    rospy.Subscriber('/camera/depth_registered/points', PointCloud2, callback_pointCloud)
    rospy.Subscriber('/camera/depth/camera_info', CameraInfo,infoDepthCallback)
    rospy.Subscriber('/camera/color/camera_info', CameraInfo,infoColorCallback)

    while(True):
       # get rgb image
        img = get_image()

        #get point PointCloud2
        pc=get_point_cloud()

        #get depth image
        dpth=get_depth()

        # wait for image or point cloud to be ready
        if img is None:
            continue
        elif pc is None:
            continue
        elif dpth is None:
            continue
        #numpy_horizontal = np.hstack((img, pc))
        #
        # print('good!!!')
        # img = get_image()
        # cv2.imshow('image',pc)
        # cv2.waitKey(3)

    # close any open windows
    cv2.destroyAllWindows()
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    main()
