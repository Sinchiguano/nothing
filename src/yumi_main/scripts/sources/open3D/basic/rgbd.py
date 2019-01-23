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
from open3d import *
import matplotlib.pyplot as plt



print("Read Redwood dataset")
color_raw = read_image("TestData/RGBD/color/00000.jpg")
depth_raw = read_image("TestData/RGBD/depth/00000.png")

rgbd_image = create_rgbd_image_from_color_and_depth(color_raw, depth_raw);
print(rgbd_image)

plt.subplot(1, 2, 1)
plt.title('Redwood grayscale image')
plt.imshow(rgbd_image.color)
plt.subplot(1, 2, 2)
plt.title('Redwood depth image')
plt.imshow(rgbd_image.depth)


#plt.show()

pcd = create_point_cloud_from_rgbd_image(rgbd_image, PinholeCameraIntrinsic(PinholeCameraIntrinsicParameters.PrimeSenseDefault))
# Flip it, otherwise the pointcloud will be upside down
pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
draw_geometries([pcd])
