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
import copy



print("Testing mesh in open3d ...")
mesh = read_triangle_mesh("TestData/knot.ply")
print(mesh)
print(np.asarray(mesh.vertices))
print(np.asarray(mesh.triangles))
print("")
#draw_geometries([mesh])



print("Try to render a mesh with normals (exist:" + str(mesh.has_vertex_normals()) +") and colors (exist: " + str(mesh.has_vertex_colors()) + ")")
#draw_geometries([mesh])
print("A mesh with no normals and no colors does not seem good.")



print("Computing normal and rendering it.")
mesh.compute_vertex_normals()
print(np.asarray(mesh.triangle_normals))
#draw_geometries([mesh])

print("We make a partial mesh of only the first half triangles.")
mesh1 = copy.deepcopy(mesh)
mesh1.triangles = Vector3iVector(
        np.asarray(mesh1.triangles)[:len(mesh1.triangles)//2, :])
mesh1.triangle_normals = Vector3dVector(
        np.asarray(mesh1.triangle_normals)
        [:len(mesh1.triangle_normals)//2, :])
print(mesh1.triangles)
#\/\/\/\/\/\/\draw_geometries([mesh1])

print("Painting the mesh")
mesh1.paint_uniform_color([1, 0.706, 0])
draw_geometries([mesh1])
