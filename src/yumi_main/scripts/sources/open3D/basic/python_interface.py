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



#read and written by Open3D.
print("Testing IO for point cloud ...")
pcd = read_point_cloud("TestData/fragment.pcd")
print(pcd)
print(type(pcd))
write_point_cloud("copy_of_fragment.pcd", pcd)


print("Testing IO for meshes ...")
mesh = read_triangle_mesh("TestData/knot.ply")
print(mesh)
print(type(mesh))
write_triangle_mesh("copy_of_knot.ply", mesh)


print("Testing IO for images ...")
img = read_image("TestData/lena_color.jpg")
print(img)
print(type(img))
write_image("copy_of_lena_color.jpg", img)
