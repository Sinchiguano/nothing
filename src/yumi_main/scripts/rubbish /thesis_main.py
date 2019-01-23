#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
from thesis_class import camera
from thesis_library import *


import copy
import numpy as np
from open3d import *


def main():
    #print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    #raw_input()
    # import time
    # time.sleep(0.5)
    while(True):

        # #camera astra also
        # #======================================
        # #get rgb image
        # img = cam.get_image()
        #
        # #get depth image
        # depth=cam.get_depth()

        #get point PointCloud2
        pc=cam.get_point_cloud()

        # wait for image or point cloud to be ready
        if img is None:
            print('no rgb image!!!')
            continue
        if depth is None:
            print('no depth image!!!')
            continue
        elif pc is None:
            print('no PointCloud2!!!')
            continue

        print(pc)
        print(pc.shape)#(480, 640, 3)
        print(type(pc))#<type 'numpy.ndarray'>

        # generate some neat n times 3 matrix using a variant of sync function
        x = np.linspace(-3, 3, 401)
        mesh_x, mesh_y = np.meshgrid(x,x)
        z = np.sinc((np.power(mesh_x,2)+np.power(mesh_y,2)))
        z_norm = (z-z.min())/(z.max()-z.min())
        xyz = np.zeros((np.size(mesh_x),3))
        xyz[:,0] = np.reshape(mesh_x,-1)
        xyz[:,1] = np.reshape(mesh_y,-1)
        xyz[:,2] = np.reshape(z_norm,-1)
        print('xyz')
        print(type(xyz))
        print(xyz.shape)

        # Pass xyz to Open3D.PointCloud and visualize
        pcd = PointCloud()
        pcd.points = Vector3dVector(xyz)
        write_point_cloud("sync.ply", pcd)

        # Load saved point cloud and visualize it
        pcd_load = read_point_cloud("sync.ply")
        print('xyz')
        print(type(xyz))
        print(xyz.shape)
        draw_geometries([pcd_load])



        #
        # # Load saved point cloud and visualize it
        # pcd_load = read_point_cloud("dataset/sample.ply")
        # draw_geometries([pcd_load])
        # time.sleep(3)


        # cv2.imshow('rgb image!!!',pc)
        # cv2.waitKey(1)

    # close any open windows
    cv2.destroyAllWindows()
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


        #time.sleep(5)
if __name__=='__main__':

    cam=camera()
    main()
