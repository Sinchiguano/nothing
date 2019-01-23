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
# examples/Python/Tutorial/Advanced/global_registration.py

from open3d import *
import numpy as np
import copy
from open3d import *
from globalre import *
import numpy as np
import copy

import time

def execute_fast_global_registration(source_down, target_down,
        source_fpfh, target_fpfh, voxel_size):
    distance_threshold = voxel_size * 0.5
    print(":: Apply fast global registration with distance threshold %.3f" % distance_threshold)
    result = registration_fast_based_on_feature_matching(source_down, target_down, source_fpfh, target_fpfh,
            FastGlobalRegistrationOption(maximum_correspondence_distance = distance_threshold))
    return result

if __name__ == "__main__":

    voxel_size = 0.05 # means 5cm for the dataset
    source, target, source_down, target_down, source_fpfh, target_fpfh =prepare_dataset(voxel_size)

    start = time.time()
    result_ransac = execute_global_registration(source_down, target_down,source_fpfh, target_fpfh, voxel_size)
    print(result_ransac)
    print("Global registration took %.3f sec.\n" % (time.time() - start))
    draw_registration_result(source_down, target_down,result_ransac.transformation)

    start = time.time()
    result_fast = execute_fast_global_registration(source_down, target_down,source_fpfh, target_fpfh, voxel_size)
    print("Fast global registration took %.3f sec.\n" % (time.time() - start))
    draw_registration_result(source_down, target_down,result_fast.transformation)
