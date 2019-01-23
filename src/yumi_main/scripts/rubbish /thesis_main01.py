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
    y_range = (-0.5, 0.5)
    z_range = (0.3, 0.75)
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

        print('///////////////////////')
        print(pc.shape)#(480, 640, 3)
        print(type(pc))#<type 'numpy.ndarray'>

        # x = pc[:,:,0]
        # y = pc[:,:,1]
        # z = pc[:,:,2]
        #
        # print('x:',x.shape)
        # print('y:',y.shape)
        # print('z:',z.shape)
        # print('size:',np.size(x))
        # print('-----------------------')
        #
        #


        #
        #
        # # mask out floor points
        # mask = pc[:,:,1] > y_range[0]
        #
        # # mask point too far and close
        # # mask = np.logical_and(mask, pc[:,:,2] > z_range[0])
        # # mask = np.logical_and(mask, pc[:,:,2] < z_range[1])
        #
        #
        # #mask = np.logical_and(mask, False)
        #
        # pc[mask]=0


        x = pc[:,:,0]
        y = pc[:,:,1]
        z = pc[:,:,2]



        # filterz = (x>0)
        # z[filterz]=0

        xyz = np.zeros((np.size(x),3))
        xyz[:,0] = np.reshape(x,-1)
        xyz[:,1] = np.reshape(y,-1)
        xyz[:,2] = np.reshape(z,-1)
        print('xyz')
        print(type(xyz))
        print(xyz.shape)
        print('end')
        xyz=np.nan_to_num(xyz)


        # tmp=np.reshape(pc,(np.size(x),3))
        # print(tmp.shape)
        # tmp=np.nan_to_num(tmp)
        #
        # total_sum = np.sum(tmp)
        # column_sum = np.sum(tmp, axis=0)#by column
        # row_sum = np.sum(tmp, axis=1)#by row
        #
        # print(total_sum)
        # print(column_sum)
        # print(row_sum)
        #
        # print('///////////////////////')
        # print(tmp[:20,:20])



        #Pass xyz to Open3D.PointCloud and visualize
        pcd = PointCloud()
        pcd.points = Vector3dVector(xyz)
        write_point_cloud("sync5.ply", pcd)

        # Load saved point cloud and visualize it
        pcd_load = read_point_cloud("sync5.ply")
        draw_geometries([pcd_load])

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
