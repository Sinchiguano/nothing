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
from open3d import *


# def display_inlier_outlier(cloud, ind):
#     inlier_cloud = select_down_sample(cloud, ind)
#     outlier_cloud = select_down_sample(cloud, ind, invert=True)
#
#     print("Showing outliers (red) and inliers (gray): ")
#     outlier_cloud.paint_uniform_color([1, 0, 0])
#     inlier_cloud.paint_uniform_color([0.8, 0.8, 0.8])
#     draw_geometries([inlier_cloud, outlier_cloud])


def main():
    counter=0
    flag=True

    while (True):
        counter+=1

        # #Get point PointCloud2
        # pc=cam.get_point_cloud()
        #
        # if pc is None:
        #     print('no PointCloud2!!!')
        #     continue

        #if flag:
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

        """
        Load!!!
        """

        print("Load a ply point cloud, print it, and visualize it")
        source =read_point_cloud("dataset/sync5.ply")#my cad model!!!
        print(type(source))
        tmp_source=np.asarray(source.points)
        print('shape:',tmp_source.shape)
        draw_geometries([source])
        # source =read_point_cloud("dataset/holdere.ply")#all teh points
        # print(type(source))
        # tmp_source=np.asarray(source.points)
        # print('shape:',tmp_source.shape)
        # draw_geometries([source])

        print("Load a ply point cloud, print it, and visualize it")
        target = read_point_cloud("dataset/holderd.ply")
        print(type(target))
        tmp_target=np.asarray(target.points)
        print('shape:',tmp_target.shape)
        draw_geometries([target])


        """
        Donwsample!!!
        """
        print("Downsample the point cloud with a voxel of 0.02")
        voxel_down_source = voxel_down_sample(source, voxel_size =0.02)
        tmp_source=np.asarray(voxel_down_source.points)
        print('shape:',tmp_source.shape)
        # Flip it, otherwise the pointcloud will be upside down
        #voxel_down_source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([voxel_down_source])


        print("Downsample the point cloud with a voxel of 1")#voxel_size = 0.05 # means 5cm for the dataset
        voxel_down_target = voxel_down_sample(target, voxel_size = 1)
        tmp_target=np.asarray(voxel_down_target.points)
        print('shape:',tmp_target.shape)
        # Flip it, otherwise the pointcloud will be upside down
        voxel_down_target.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([voxel_down_target])


        """
        Compute normals
        """
        print("Recompute the normal of the downsampled point cloud")
        estimate_normals(voxel_down_source, search_param = KDTreeSearchParamHybrid(radius = 0.1, max_nn = 30))
        # Flip it, otherwise the pointcloud will be upside down
        #voxel_down_source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([voxel_down_source])


        print("Recompute the normal of the downsampled point cloud")
        estimate_normals(voxel_down_target, search_param = KDTreeSearchParamHybrid(radius = 0.1, max_nn = 30))
        # Flip it, otherwise the pointcloud will be upside down
        #voxel_down_target.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([voxel_down_target])

        print('//////////////////')
        print('counter:',counter)


    # close any open windows
    #cv2.destroyAllWindows()
    # spin() simply keeps python from exiting until this node is stopped
    #rospy.spin()

if __name__ == '__main__':
    cam=camera()
    main()
