#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import copy
import numpy as np
from open3d import *



def main():
    print('cesar sinchiguano')
    # generate some neat n times 3 matrix using a variant of sync function
    x = np.linspace(-3, 3, 401)
    print(x[0:10])
    #exit()
    mesh_x, mesh_y = np.meshgrid(x,x)
    z = np.sinc((np.power(mesh_x,2)+np.power(mesh_y,2)))

    z_norm = (z-z.min())/(z.max()-z.min())

    print('-----------------------')
    print('numpy zeros according to the mesh size!!!')
    xyz = np.zeros((np.size(mesh_x),3))
    print('xyz shape: ',xyz.shape)
    print(type(xyz))
    print(xyz[:5])

    print('-----------------------')
    # print(type(mesh_x))
    # print(mesh_x.shape)
    # print(mesh_x[0:5,0:10])
    # print('numpy zeros!!!')
    # temp=np.zeros((4,3))
    # print(temp)

    #Vector3dVector(xyz)
    xyz[:,0] = np.reshape(mesh_x,-1)
    xyz[:,1] = np.reshape(mesh_y,-1)
    xyz[:,2] = np.reshape(z_norm,-1)
    print('xyz')
    print(xyz[0:5,:3])


    # Pass xyz to Open3D.PointCloud and visualize
    pcd = PointCloud()
    pcd.points = Vector3dVector(xyz)
    write_point_cloud("sync.ply", pcd)

    # Load saved point cloud and visualize it
    pcd_load = read_point_cloud("sync.ply")
    #draw_geometries([pcd_load])
    print(pcd_load)

    # convert Open3D.PointCloud to numpy array
    xyz_load = np.asarray(pcd_load.points)

    print('xyz_load',xyz.shape)
    print(type(xyz))
    print(xyz_load)

    # save z_norm as an image (change [0,1] range to [0,255] range with uint8 type)
    img = Image((z_norm*255).astype(np.uint8))
    write_image("sync.png", img)
    #draw_geometries([img])



if __name__ == "__main__":
    main()
