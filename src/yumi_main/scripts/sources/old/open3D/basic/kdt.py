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
Open3D uses FLANN to build KDTrees for fast retrieval of nearest neighbors
"""
import numpy as np
from open3d import *


print("Testing kdtree in open3d ...")
print("Load a point cloud and paint it gray.")
pcd = read_point_cloud("TestData/Feature/cloud_bin_0.pcd")
draw_geometries([pcd])

pcd.paint_uniform_color([0.5, 0.5, 0.5])
draw_geometries([pcd])

pcd_tree = KDTreeFlann(pcd)


print("Paint the 1500th point red.")
pcd.colors[1500] = [1, 0, 0]
draw_geometries([pcd])

print("Find its 200 nearest neighbors, paint blue.")
[k, idx, _] = pcd_tree.search_knn_vector_3d(pcd.points[1500], 200)
np.asarray(pcd.colors)[idx[1:], :] = [0, 0, 1]
draw_geometries([pcd])


print("Find its neighbors with distance less than 0.2, paint green.")
[k, idx, _] = pcd_tree.search_radius_vector_3d(pcd.points[1500], 0.2)
np.asarray(pcd.colors)[idx[1:], :] = [0, 1, 0]

print("Visualize the point cloud.")
draw_geometries([pcd])
print("")
