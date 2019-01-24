#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""
Everthing done with open3d, pyntcloud, CloudCompare, meshLab and python_pcl binding (wrapper)
--------------------------------------------------------------------------------------------
#Python 2.7 anaconda in a virtual environment working with ros, and extra "tensorflow"
#In order to change the format .obj(CAD model) to .ply(triangle mesh) do the following:
1_open Cloud compare and save a copy as .ply extension
#From .ply (triangle mesh) to .pcd(sample points) run the following code(meshtopc.py),
# meshtopc.py use the a pyntcloud that only run in python3 where i used the method to
# sample point from the mesh data, also use open3D in order to save as .pcd the sample points.
#finally, for processing the data i am working with python_pcl
-----------------------------------------------------------------------------------------
"""
# from thesis_class import prepare_dataset,draw_registration_result,preprocess_point_cloud
# from thesis_class import camera, execute_global_registration
from thesis_class import *
from thesis_library import *
import pcl

from open3d import select_down_sample




def display_table_object(cloud1,cloud2):
    pcloud1 = read_point_cloud(cloud1)
    pcloud2 = read_point_cloud(cloud2)
    print("Showing pcloud1 (red) and pcloud2 (gray): ")
    pcloud1.paint_uniform_color([1, 0, 0])
    pcloud2.paint_uniform_color([0.8, 0.8, 0.8])

    draw_geometries([pcloud1, pcloud2])
    #draw_geometries([pcloud2])


def main():
    counter=0
    flag=True

    while (True):
        counter+=1
        # #Get point PointCloud2
        # pc=camObj.get_point_cloud()
        #
        # if pc is None:
        #     print('no PointCloud2!!!')
        #     continue
        #
        # print(type(pc))
        # print(pc.shape)
        #
        # if flag:
        #     pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
        #     print(pc.shape)
        #     pc=np.nan_to_num(pc)
        #
        #     #Pass xyz to Open3D.PointCloud and visualize
        #     pcd = PointCloud()
        #     print('In progress!!!')
        #
        #     start_timer=time.time()
        #     pcd.points = Vector3dVector(pc)
        #     write_point_cloud("scene3.pcd", pcd)
        #     print('elapsed time:',time.time()-start_timer)
        #
        #     flag=False



        # # Flip it, otherwise the pointcloud will be upside down
        # print("Load a pcd point cloud, and flip it!!!")
        # source =read_point_cloud("scene1.pcd")
        # source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        # write_point_cloud("scene1up.pcd", source)
        # draw_geometries([source])



        # Load the point cloud from the memory
        cloud = pcl.load('scene1up.pcd')

        # Downsample the cloud as high resolution which comes with a computation cost
        downsample = do_voxel_grid_filter(point_cloud = cloud, LEAF_SIZE = 0.005)
        pcl.save(downsample, 'downsample.pcd')

        #double z_min = 0., z_max = 0.05; // we want the points above the plane, no farther than 5 cm from the surface
        # Get only information in our region of interest, as we don't care about the other parts/// 0.5->50cm
        filter = do_passthrough_filter(point_cloud = downsample,name_axis = 'x', min_axis = -0.5, max_axis = 0.10)
        pcl.save(filter, 'roi_tabletop.pcd')


        # Separate the table from everything else
        table, objects = do_ransac_plane_segmentation(filter, max_distance = 0.01)
        pcl.save(table, 'table.pcd')
        pcl.save(objects, 'objects.pcd')




        #Display the table and the object
        display_table_object('table.pcd','objects.pcd')

        # print('------------------')
        # print('counter:',counter)
        exit()

    # close any open windows
    #cv2.destroyAllWindows()
    # spin() simply keeps python from exiting until this node is stopped
    #rospy.spin()

if __name__ == '__main__':
    camObj=camera()
    main()

##################################################################################
# The following lines of codes separate work with open3D, it is a good one in order to make
# the local and global registration


# """
# Load!!!
# """
# print("Load a ply point cloud, print it, and visualize it")
# source =read_point_cloud("data.pcd")
# print(type(source))
# tmp_source=np.asarray(source.points)
# print('shape:',tmp_source.shape)
# # Flip it, otherwise the pointcloud will be upside down
# source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
# #draw_geometries([source])
# #exit()


# """
# Donwsample!!!
# """
# print("Downsample the point cloud with a voxel of 0.02")
# voxel_down_source = voxel_down_sample(source, voxel_size =0.0008)#5mm
# tmp_source=np.asarray(voxel_down_source.points)
# print('shape:',tmp_source.shape)
# # draw_geometries([voxel_down_source])
# # exit()


# ##################################################################################
# The following lines of codes separate the objects in the table from the given scene
# and the job is done with the help of python_pcl, a binding python to the PCL


# print("Downsample the point cloud with a voxel of 1")#voxel_size = 0.05 # means 5cm for the dataset
# voxel_down_target = voxel_down_sample(target, voxel_size = 1)
# tmp_target=np.asarray(voxel_down_target.points)
# print('shape:',tmp_target.shape)
# # Flip it, otherwise the pointcloud will be upside down
# voxel_down_target.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
# draw_geometries([voxel_down_target])


#help for the future
# # voxel_size = 0.05 # means 5cm for the dataset
# # source, target, source_down, target_down, source_fpfh, target_fpfh = prepare_dataset()
#
# # result_ransac = execute_global_registration(source_down, target_down,source_fpfh, target_fpfh, voxel_size)
# # print(result_ransac)
# # draw_registration_result(source_down, target_down,result_ransac.transformation)


#
#
# # Load the point cloud from the memory
# cloud = pcl.load('scene1inliars.pcd')
#
# # Downsample the cloud as high resolution which comes with a computation cost
# downsample = do_voxel_grid_filter(point_cloud = cloud, LEAF_SIZE = 0.001)
# pcl.save(downsample, 'downsample.pcd')
#
#
# # Get only information in our region of interest, as we don't care about the other parts
# filtered_cloud = do_passthrough_filter(point_cloud = cloud,name_axis = 'z', min_axis = 0.6, max_axis = 1.1)
# pcl.save(filtered_cloud, 'roi_tabletop2.pcd')
#
#
#
# # Separate the table from everything else
# cloud = pcl.load("scene1inliars.pcd")
#
# print("Statistical oulier removal")
# source =read_point_cloud("roi_tabletop.pcd")
# cl,ind = statistical_outlier_removal(source,nb_neighbors=20, std_ratio=2.0)
# display_inlier_outlier(cl, ind)

# 
# #no needed!
# def display_inlier_outlier(cloud, ind):
#     inlier_cloud = select_down_sample(cloud, ind)
#     outlier_cloud = select_down_sample(cloud, ind, invert=True)
#
#     print("Showing outliers (red) and inliers (gray): ")
#     outlier_cloud.paint_uniform_color([1, 0, 0])
#     inlier_cloud.paint_uniform_color([0.8, 0.8, 0.8])
#     draw_geometries([inlier_cloud, outlier_cloud])
#     write_point_cloud("scene1inliars.pcd", inlier_cloud)
