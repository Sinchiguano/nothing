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

import time
#import pcl


def display_inlier_outlier(cloud, ind):
    inlier_cloud = select_down_sample(cloud, ind)
    outlier_cloud = select_down_sample(cloud, ind, invert=True)

    print("Showing outliers (red) and inliers (gray): ")
    outlier_cloud.paint_uniform_color([1, 0, 0])
    inlier_cloud.paint_uniform_color([0.8, 0.8, 0.8])
    draw_geometries([inlier_cloud, outlier_cloud])


def main():
    #print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    #raw_input()

    counter=0
    flag=True

    while(True):

        #camera astra
        counter+=1

        # #Get point PointCloud2
        # pc=cam.get_point_cloud()
        #
        # if pc is None:
        #     print('no PointCloud2!!!')
        #     continue


        # if flag:
        #     pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
        #     print(pc.shape)
        #     pc=np.nan_to_num(pc)

        #     #Pass xyz to Open3D.PointCloud and visualize
        #     pcd = PointCloud()
        #     print('In progress!!!')

        #     start_timer=time.time()

        #     pcd.points = Vector3dVector(pc)
        #     write_point_cloud("sync3.pcd", pcd)


        #     print('elapsed time:',time.time()-start_timer)
        #     # Load saved point cloud and visualization
        #     pcd_load = read_point_cloud("sync3.pcd")
        #     vis = Visualizer()
        #     vis.create_window()

        #     flag=False


        # Load saved point cloud and visualization
        pcd = read_point_cloud("sync5.ply")




        print("Downsample the point cloud with a voxel of 0.01")
        voxel_down_pcd = voxel_down_sample(pcd, voxel_size = 0.02)
        # Flip it, otherwise the pointcloud will be upside down
        voxel_down_pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([voxel_down_pcd])


        print("Recompute the normal of the downsampled point cloud")
        estimate_normals(voxel_down_pcd, search_param = KDTreeSearchParamHybrid(radius = 0.1, max_nn = 30))
        # Flip it, otherwise the pointcloud will be upside down
        voxel_down_pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([voxel_down_pcd])




        print('//////////////////')
        print('counter:',counter)

        # vis.update_geometry()
        # vis.poll_events()
        # vis.update_renderer()


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
