#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""
ply 	See Polygon File Format, the ply file can contain both point cloud and mesh
pcd 	See Point Cloud Data
It’s also possible to specify the file type explicitly. In this case, the file extension will be ignored.
pcd = read_point_cloud("my_points.txt", format='xyz')
Compared to the data structure of point cloud, mesh has triangles that define surface.
"""
# examples/Python/Tutorial/Basic/python_binding.py

import numpy as np
from open3d import read_point_cloud
from open3d import *


print("Load a ply point cloud, print it, and render it")
pcd = read_point_cloud("TestData/fragment.ply")




# print(pcd)
# temp=np.asarray(pcd.points)
# print(np.asarray(pcd.points))
# print(temp.shape)
# print(type(temp))
# draw_geometries([pcd])


'''
 The algorithm operates in two steps:

    Points are bucketed into voxels.
    Each occupied voxel generates exact one point by averaging all points inside.
'''
print("Downsample the point cloud with a voxel of 0.05")
downpcd = voxel_down_sample(pcd, voxel_size = 0.05)
#draw_geometries([downpcd])




'''
Estimate_normals computes normal for every point.
The function finds adjacent points and calculate the principal axis of the adjacent points using covariance analysis.
'''
print("Recompute the normal of the downsampled point cloud")
estimate_normals(downpcd, search_param = KDTreeSearchParamHybrid(radius = 0.1, max_nn = 30))
#draw_geometries([downpcd])

print("Print a normal vector of the 0th point")
print(downpcd.normals[0])



'''
Normal vectors can be transformed as a numpy array using np.asarray.
'''

print("Print the normal vectors of the first 10 points")
print(np.asarray(downpcd.normals)[:10,:])
print("")

# print("Load a polygon volume and use it to crop the original point cloud")
# vol = read_selection_polygon_volume("../../TestData/Crop/cropped.json")
# chair = vol.crop_point_cloud(pcd)
# draw_geometries([chair])
# print("")
#
# print("Paint chair")
# chair.paint_uniform_color([1, 0.706, 0])
# draw_geometries([chair])
# print("")
