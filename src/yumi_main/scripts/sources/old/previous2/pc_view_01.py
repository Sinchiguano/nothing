#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import numpy as np
from open3d import *

def main():
    print("Load a ply point cloud, print it, and render it")
    #pcd = read_point_cloud("pcddata/03.ply")
    '''    read_point_cloud reads a point cloud from a file.
        It tries to decode the file based on the extension name.
        The supported extension names are: pcd, ply, xyz, xyzrgb, xyzn, pts.'''
    pcd = read_point_cloud("pcddata/five_people.pcd")
    pcd = read_point_cloud("pcddata/04.ply")


    print(pcd)

    # print("Load a ply point cloud, print it, and render it")
    # pcd = read_point_cloud("bun0.pcd")
    # print(pcd)
    tmp=np.asarray(pcd.points)
    #print(tmp[0:5,0:3])#rows and column
    #draw_geometries([pcd])
    #exit(0)

    from stl import mesh
    from mpl_toolkits import mplot3d
    from matplotlib import pyplot

    # Create a new plot
    figure = pyplot.figure()
    axes = mplot3d.Axes3D(figure)

    # Load the STL files and add the vectors to the plot
    your_mesh = mesh.Mesh.from_file('pcddata/jetson_box_bottom.stl')
    axes.add_collection3d(mplot3d.art3d.Poly3DCollection(your_mesh.vectors))

    # Auto scale to the mesh size
    scale = your_mesh.points.flatten(-1)
    axes.auto_scale_xyz(scale, scale, scale)

    # Show the plot to the screen
    #pyplot.show()


    # 
    # import numpy
    # from stl import mesh
    #
    # # Using an existing stl file:
    # your_mesh = mesh.Mesh.from_file('pcddata/jetson_box_bottom.stl')
    #
    # # Or creating a new mesh (make sure not to overwrite the `mesh` import by
    # # naming it `mesh`):
    # VERTICE_COUNT = 100
    # data = numpy.zeros(VERTICE_COUNT, dtype=mesh.Mesh.dtype)
    # your_mesh = mesh.Mesh(data, remove_empty_areas=False)
    #
    # # The mesh normals (calculated automatically)
    # your_mesh.normals
    # # The mesh vectors
    # your_mesh.v0, your_mesh.v1, your_mesh.v2
    # # Accessing individual points (concatenation of v0, v1 and v2 in triplets)
    # assert (your_mesh.points[0][0:3] == your_mesh.v0[0]).all()
    # assert (your_mesh.points[0][3:6] == your_mesh.v1[0]).all()
    # assert (your_mesh.points[0][6:9] == your_mesh.v2[0]).all()
    # assert (your_mesh.points[1][0:3] == your_mesh.v0[1]).all()
    #
    # your_mesh.save('new_stl_file.stl')




    # print("Downsample the point cloud with a voxel of 0.005")
    # downpcd = voxel_down_sample(pcd, voxel_size = 0.05)
    # draw_geometries([downpcd])
    #
    # # print("Recompute the normal of the downsampled point cloud")
    # estimate_normals(downpcd, search_param = KDTreeSearchParamHybrid(radius = 0.1, max_nn = 30))
    # draw_geometries([downpcd])
    #
    # # print("Print a normal vector of the 0th point")
    # # print(downpcd.normals[0])
    # # print("Print the normal vectors of the first 10 points")
    # # print(np.asarray(downpcd.normals)[:10,:])
    # # print("")
    #
    # print("Load a polygon volume and use it to crop the original point cloud")
    # vol = read_selection_polygon_volume("TestData/Crop/cropped.json")
    # chair = vol.crop_point_cloud(pcd)
    # #draw_geometries([chair])
    # print("")
    #
    # print("Paint chair")
    # chair.paint_uniform_color([1, 0.706, 0])
    # #draw_geometries([chair])
    # print("")

if __name__ == "__main__":
    main()
