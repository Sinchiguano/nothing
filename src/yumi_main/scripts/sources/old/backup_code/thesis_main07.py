#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""
Everthing done with open3d, pyntcloud, CloudCompare, meshLab and python_pcl binding(wrapper)
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
from thesis_class import prepare_dataset,draw_registration_result,preprocess_point_cloud
from thesis_class import camera, execute_global_registration
from thesis_library import *

import open3d
from open3d import PointCloud, Vector3dVector, write_point_cloud,read_triangle_mesh
import pcl



# Returns Downsampled version of a point cloud
# The bigger the leaf size the less information retained
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

# Use RANSAC planse segmentation to separate plane and not plane points
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

        # print(type(pc))
        # print(pc.shape)

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
        #
        #     pcd.points = Vector3dVector(pc)
        #     write_point_cloud("data.pcd", pcd)
        #
        #
        #     print('elapsed time:',time.time()-start_timer)
        #
        #     flag=False


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


        ##################################################################################
        # The following lines of codes separate the objects in the table from the given scene
        # and the job is done with the help of python_pcl, a binding python to the PCL

        # Load the point cloud from the memory
        cloud = pcl.load('data.pcd')


        # Downsample the cloud as high resolution which comes with a computation cost
        downsampled_cloud = do_voxel_grid_filter(point_cloud = cloud, LEAF_SIZE = 0.01)
        pcl.save(downsampled_cloud, 'downsampled_cloud.pcd')


        # Get only information in our region of interest, as we don't care about the other parts
        filtered_cloud = do_passthrough_filter(point_cloud = downsampled_cloud,name_axis = 'z', min_axis = 0.6, max_axis = 1.1)
        pcl.save(filtered_cloud, 'roi_tabletop.pcd')


        # Separate the table from everything else
        table_cloud, objects_cloud = do_ransac_plane_segmentation(filtered_cloud, max_distance = 0.01)
        pcl.save(table_cloud, 'table_only.pcd');
        pcl.save(objects_cloud, 'objects.pcd');

        exit()




        # print("Downsample the point cloud with a voxel of 1")#voxel_size = 0.05 # means 5cm for the dataset
        # voxel_down_target = voxel_down_sample(target, voxel_size = 1)
        # tmp_target=np.asarray(voxel_down_target.points)
        # print('shape:',tmp_target.shape)
        # # Flip it, otherwise the pointcloud will be upside down
        # voxel_down_target.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        # draw_geometries([voxel_down_target])

        print('------------------')
        print('counter:',counter)

    # close any open windows
    #cv2.destroyAllWindows()
    # spin() simply keeps python from exiting until this node is stopped
    #rospy.spin()

if __name__ == '__main__':
    camObj=camera()
    main()


#help for the future
# # voxel_size = 0.05 # means 5cm for the dataset
# # source, target, source_down, target_down, source_fpfh, target_fpfh = prepare_dataset()
#
# # result_ransac = execute_global_registration(source_down, target_down,source_fpfh, target_fpfh, voxel_size)
# # print(result_ransac)
# # draw_registration_result(source_down, target_down,result_ransac.transformation)
