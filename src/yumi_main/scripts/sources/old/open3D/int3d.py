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
from open3d import *
from trajectory_io import *
import numpy as np

if __name__ == "__main__":
    camera_poses = read_trajectory("basic/TestData/RGBD/odometry.log")
    volume = ScalableTSDFVolume(voxel_length = 4.0 / 512.0,sdf_trunc = 0.04, color_type = TSDFVolumeColorType.RGB8)

    for i in range(len(camera_poses)):
        print("Integrate {:d}-th image into the volume.".format(i))
        color = read_image("basic/TestData/RGBD/color/{:05d}.jpg".format(i))
        depth = read_image("basic/TestData/RGBD/depth/{:05d}.png".format(i))

        rgbd = create_rgbd_image_from_color_and_depth(color, depth,depth_trunc = 4.0, convert_rgb_to_intensity = False)
        volume.integrate(rgbd, PinholeCameraIntrinsic(PinholeCameraIntrinsicParameters.PrimeSenseDefault),np.linalg.inv(camera_poses[i].pose))

    print("Extract a triangle mesh from the volume and visualize it.")
    mesh = volume.extract_triangle_mesh()
    mesh.compute_vertex_normals()
    draw_geometries([mesh])
