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
    x_range = (-0.25, 0.25)
    y_range = (-0.3, 0.3)
    z_range = (0.2, 1.0)
    #print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    #raw_input()
    # import time
    # time.sleep(0.5)
    while(True):

        #camera astra also
        #get rgb image
        img = cam.get_image()

        #get depth image
        depth=cam.get_depth()

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

        # mask out y points
        mask = pc[:,:,1] < y_range[0]
        filtery = np.logical_and(mask, pc[:,:,1] > y_range[1])
        pc[:,:,1][mask]=0


        mask = pc[:,:,0] < x_range[0]
        filtery = np.logical_and(mask, pc[:,:,0] > x_range[1])
        pc[:,:,0][mask]=0

        mask = pc[:,:,2] < z_range[0]
        filtery = np.logical_and(mask, pc[:,:,2] > z_range[1])
        pc[:,:,2][mask]=0



        if np.count_nonzero(mask) <= 0:
            continue



        print(pc.shape)#(480, 640, 3)
        print(type(pc))#<type 'numpy.ndarray'>
        #tmp=np.nan_to_num(pc)
        #print(pc[:10,:10])


        print('///////////////////////')

        # preproccessing of the point cloud
        tmp=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of x data
        tmp=np.nan_to_num(tmp)
        print(tmp[:10,:10])


        total_sum = np.sum(tmp)
        column_sum = np.sum(tmp, axis=0)#by column
        row_sum = np.sum(tmp, axis=1)#by row

        print(total_sum)
        print(column_sum)
        print(row_sum)


        #Pass xyz to Open3D.PointCloud and visualize
        pcd = PointCloud()
        pcd.points = Vector3dVector(tmp)
        write_point_cloud("sync2.ply", pcd)

        # #Load saved point cloud and visualize it
        # pcd_load = read_point_cloud("sync.ply")
        # draw_geometries([pcd_load])

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
