#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""

#

import numpy as np
import open3d
from open3d import PointCloud, Vector3dVector, write_point_cloud,read_triangle_mesh
from open3d import *
#open mesh file and visualize
# print("Testing mesh in open3d ...")
# mesh = read_triangle_mesh("holdermesh.ply")
# print(mesh)
# print(np.asarray(mesh.vertices))
# print(np.asarray(mesh.triangles))
# print("")
# draw_geometries([mesh])





from pyntcloud import PyntCloud

#convert from mesh to point cloud
#cloud = PyntCloud.from_file("holdermesh.ply")
#cloud = PyntCloud.from_file("bottommesh.ply")
cloud = PyntCloud.from_file("topmesh.ply")
new_cloud = cloud.get_sample('mesh_random',n=307200, rgb=False, normals=False)
print(new_cloud.shape)



import time

#Pass xyz points to Open3D.PointCloud and save it
#put zeros in nan values
new_cloud=np.nan_to_num(new_cloud)
pcd = PointCloud()
print('In progress!!!')
start_timer=time.time()
pcd.points = Vector3dVector(new_cloud)
#write_point_cloud("pcholder.pcd", pcd)
#write_point_cloud("pcbottom.pcd", pcd)

print('elapsed time:',time.time()-start_timer)


#Load saved point cloud (pcd) and visualization
print("Load a ply point cloud, print it, and visualize it")
#source =read_point_cloud("pcholder.pcd")
source =read_point_cloud("pcsync5.pcd")
print(type(source))
tmp_source=np.asarray(source.points)
print('shape:',tmp_source.shape)
# Flip it, otherwise the pointcloud will be upside down
source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
draw_geometries([source])
