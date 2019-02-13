#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
from thesis_class import prepare_dataset,draw_registration_result,preprocess_point_cloud
from thesis_class import camera, execute_global_registration
from thesis_library import *

import open3d
from open3d import PointCloud, Vector3dVector, write_point_cloud,read_triangle_mesh





print("Testing mesh in open3d ...")
mesh = read_triangle_mesh("dataset/mesh.ply")
print(mesh)
print(np.asarray(mesh.vertices))
print(np.asarray(mesh.triangles))
print("")
draw_geometries([mesh])



# def main():
#     counter=0
#     flag=True

#     while (True):
#         counter+=1


#         # #Get point PointCloud2
#         # pc=camObj.get_point_cloud()
        
#         # if pc is None:
#         #     print('no PointCloud2!!!')
#         #     continue

#         # if flag:
#         #     pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
#         #     print(pc.shape)
#         #     pc=np.nan_to_num(pc)

#         #     #Pass xyz to Open3D.PointCloud and visualize
#         #     pcd = PointCloud()
#         #     print('In progress!!!')

#         #     start_timer=time.time()

#         #     pcd.points = Vector3dVector(pc)
#         #     write_point_cloud("dataset/sync3.pcd", pcd)


#         #     print('elapsed time:',time.time()-start_timer)
#         #     # Load saved point cloud and visualization
#         #     #pcd_load = read_point_cloud("dataset/sync4.pcd")
#         #     # vis = Visualizer()
#         #     # vis.create_window()
#         #     # flag=False

#         # voxel_size = 0.05 # means 5cm for the dataset
#         # source, target, source_down, target_down, source_fpfh, target_fpfh = prepare_dataset()
        
#         # result_ransac = execute_global_registration(source_down, target_down,source_fpfh, target_fpfh, voxel_size)
#         # print(result_ransac)
#         # draw_registration_result(source_down, target_down,result_ransac.transformation)


#         #just for testing
#         """
#         Load!!!
#         """

#         # print("Load a ply point cloud, print it, and visualize it")
#         # source =read_point_cloud("dataset/sync3.pcd")
#         # print(type(source))
#         # tmp_source=np.asarray(source.points)
#         # print('shape:',tmp_source.shape)
#         # # Flip it, otherwise the pointcloud will be upside down
#         # source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
#         # draw_geometries([source])


#         # print("Load a ply point cloud, print it, and visualize it")
#         # target = read_point_cloud("dataset/back.ply")
#         # print(type(target))
#         # tmp_target=np.asarray(target.points)


#         # print('shape:',tmp_target.shape)
#         # draw_geometries([source,target])


#         # """
#         # Donwsample!!!
#         # """
#         # print("Downsample the point cloud with a voxel of 0.02")
#         # voxel_down_source = voxel_down_sample(source, voxel_size =0.02)
#         # tmp_source=np.asarray(voxel_down_source.points)
#         # print('shape:',tmp_source.shape)
#         # # Flip it, otherwise the pointcloud will be upside down
#         # #voxel_down_source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
#         # draw_geometries([voxel_down_source])
#         #
#         #
#         # print("Downsample the point cloud with a voxel of 1")#voxel_size = 0.05 # means 5cm for the dataset
#         # voxel_down_target = voxel_down_sample(target, voxel_size = 1)
#         # tmp_target=np.asarray(voxel_down_target.points)
#         # print('shape:',tmp_target.shape)
#         # # Flip it, otherwise the pointcloud will be upside down
#         # voxel_down_target.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
#         # draw_geometries([voxel_down_target])
#         #
#         # print('------------------')
#         # print('counter:',counter)

#     # close any open windows
#     #cv2.destroyAllWindows()
#     # spin() simply keeps python from exiting until this node is stopped
#     #rospy.spin()

# if __name__ == '__main__':
#     camObj=camera()
#     main()
