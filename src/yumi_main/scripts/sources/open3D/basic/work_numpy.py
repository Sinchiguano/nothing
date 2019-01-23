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
import copy
import numpy as np
from open3d import *

if __name__ == "__main__":

    # generate some neat n times 3 matrix using a variant of sync function
    x = np.linspace(-3, 3, 401)
    print(type(x))
    print(x.shape)
    print(x[:10])
    mesh_x, mesh_y = np.meshgrid(x,x)
    print(mesh_x.shape)
    print(mesh_y.shape)

    z = np.sinc((np.power(mesh_x,2)+np.power(mesh_y,2)))
    z_norm = (z-z.min())/(z.max()-z.min())

    # print(z.shape)
    #
    #
    # xyz = np.zeros((np.size(mesh_x),3))
    # xyz[:,0] = np.reshape(mesh_x,-1)
    # xyz[:,1] = np.reshape(mesh_y,-1)
    # xyz[:,2] = np.reshape(z_norm,-1)
    # print('xyz')
    #
    # print(xyz[:,0].shape)
    # print(xyz[:,0][:10])
    # print(xyz)
    # print(xyz.shape)
    #
    # # Pass xyz to Open3D.PointCloud and visualize
    # pcd = PointCloud()
    # pcd.points = Vector3dVector(xyz)
    # write_point_cloud("sync.ply", pcd)
    #
    # # Load saved point cloud and visualize it
    # pcd_load = read_point_cloud("sync.ply")
    # draw_geometries([pcd_load])
    #
    # # convert Open3D.PointCloud to numpy array
    # xyz_load = np.asarray(pcd_load.points)
    # print('xyz_load')
    # print(xyz_load)
    # print(xyz_load.shape)

    # save z_norm as an image (change [0,1] range to [0,255] range with uint8 type)
    img = Image((z_norm*255).astype(np.uint8))
    write_image("sync.png", img)
    draw_geometries([img])
