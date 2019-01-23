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
import numpy as np
from open3d import *


from open3d import *
import numpy as np
import copy

def draw_registration_result(source, target, transformation):
    source_temp = copy.deepcopy(source)
    target_temp = copy.deepcopy(target)
    source_temp.paint_uniform_color([1, 0.706, 0])
    target_temp.paint_uniform_color([0, 0.651, 0.929])
    source_temp.transform(transformation)
    draw_geometries([source_temp, target_temp])


source = read_point_cloud("TestData/ICP/cloud_bin_0.pcd")
target = read_point_cloud("TestData/ICP/cloud_bin_1.pcd")
threshold = 0.02
trans_init = np.asarray(
            [[0.862, 0.011, -0.507,  0.5],
            [-0.139, 0.967, -0.215,  0.7],
            [0.487, 0.255,  0.835, -1.4],
            [0.0, 0.0, 0.0, 1.0]])
draw_registration_result(source, target, trans_init)
print("Initial alignment")
evaluation = evaluate_registration(source, target,threshold, trans_init)
print(evaluation)

print("Apply point-to-point ICP")
reg_p2p = registration_icp(source, target, threshold, trans_init,TransformationEstimationPointToPoint())
print(reg_p2p)
print("Transformation is:")
print(reg_p2p.transformation)
print("")
draw_registration_result(source, target, reg_p2p.transformation)

print("Apply point-to-plane ICP")
reg_p2l = registration_icp(source, target, threshold, trans_init,TransformationEstimationPointToPlane())
print(reg_p2l)
print("Transformation is:")
print(reg_p2l.transformation)
print("")
draw_registration_result(source, target, reg_p2l.transformation)
