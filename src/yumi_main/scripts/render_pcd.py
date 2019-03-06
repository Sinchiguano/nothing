#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""

"""
# examples/Python/Tutorial/Basic/visualization.py

import numpy as np
from open3d import *
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np


render_frame='render_cloud/'


path_object_pc='end_cloud_pc/'
path_object_rgbd='end_cloud_rgbd/'


def main():

   print("Load a ply point cloud, print it, and render it")
   pcd = read_point_cloud(path_object_rgbd+"objects_name0.pcd")

   #print("Downsample the point cloud with a voxel of 0.05")
   #downpcd = voxel_down_sample(pcd, voxel_size = 0.05)
   #draw_geometries([downpcd])

   print(pcd)
   tmp=np.asarray(pcd.points)
   print(tmp.shape)
   print(tmp[:10])
   aux=np.mean(tmp, axis=0)
   print('mean points')
   print(aux)
   tmp1=[-0.0841501,-0.103073,-0.813663]


   mesh_frame = create_mesh_coordinate_frame(size = 0.02, origin = aux)
   draw_geometries([pcd, mesh_frame])



   write_point_cloud("copy_of_fragment.pcd", pcd)


   #plotting the point cloud in the camera frame
   fig = plt.figure()
   ax = fig.add_subplot(111, projection='3d')
   ax.scatter(tmp[:,0], tmp[:,1], tmp[:,2], marker="D")
   ax.set_xlabel('X Label')
   ax.set_ylabel('Y Label')
   ax.set_zlabel('Z Label')
   plt.show()

if __name__ == "__main__":
    main()
   # pcd.paint_uniform_color([0.5, 0.5, 0.5])
   # pcd_tree = KDTreeFlann(pcd)

   # print("Paint the 1500th point red.")
   # pcd.colors[1145] = [1, 0, 0]

   # draw_geometries([pcd])

   # # print("Find its 200 nearest neighbors, paint blue.")
   # # [k, idx, _] = pcd_tree.search_knn_vector_3d(pcd.points[1500], 20)
   # # np.asarray(pcd.colors)[idx[1:], :] = [0, 0, 1]

   # # print("Find its neighbors with distance less than 0.2, paint green.")
   # # [k, idx, _] = pcd_tree.search_radius_vector_3d(pcd.points[1500], 0.2)
   # # np.asarray(pcd.colors)[idx[1:], :] = [0, 1, 0]

   # # print("Visualize the point cloud.")
   # # draw_geometries([pcd])
   # # print("")









   # for i in range(tmp.shape[0]):
   # 	print('tmp',tmp[i])
   # 	#print('aux',aux)
   # 	if abs(tmp[i][0]) < abs(aux[0]) and tmp[i][2]<=aux[2] and tmp[i][1]<=aux[1] :
   # 	#if tmp[i] in aux:
   # 		print('index',i)
   # 		print(tmp[i])
   # 		print('done!!!')
   # 		break
   # #print('hi',aux)
























    #print(len(pcd.points))
    #print('nothing')


    # counter=50
    # print("Paint the 1500th point red.")
    # for i in range(0,len(pcd.points),50):

	   #  pcd.colors[i] = [1, 0, 0]
	   #  print(pcd.points[i])
	   #  print('index:',i)
	   #  # if pcd.points(i)>aux:
	   #  # 	break

	   #  # print("Find its 200 nearest neighbors, paint blue.")
	   #  # [k, idx, _] = pcd_tree.search_knn_vector_3d(pcd.points[1500], 200)
	   #  # np.asarray(pcd.colors)[idx[1:], :] = [0, 0, 1]

	   #  # print("Find its neighbors with distance less than 0.2, paint green.")
	   #  # [k, idx, _] = pcd_tree.search_radius_vector_3d(pcd.points[1500], 0.2)
	   #  # np.asarray(pcd.colors)[idx[1:], :] = [0, 1, 0]

	   #  print("Visualize the point cloud.")
	   #  draw_geometries([pcd])
	   #  print("")
