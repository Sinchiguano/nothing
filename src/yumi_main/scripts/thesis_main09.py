#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""
Everthing done with open3d, pyntcloud, CloudCompare, meshLab and python_pcl binding (wrapper)
--------------------------------------------------------------------------------------------
#Python 2.7 anaconda in a virtual environment working with ros, and extra "tensorflow"
#In order to change the format .obj(CAD model) to .ply(triangle mesh) do the following:
1_open Cloud compare and save a copy as .ply extension
#From .ply (triangle mesh) to .pcd(sample points) run the following code(meshtopc.py),
# meshtopc.py use the a pyntcloud that only run in python3 where i used the method to
# sample point from the mesh data, also use open3D in order to save as .pcd the sample points.
#finally, for processing the data i am working with python_pcl
-----------------------------------------------------------------------------------------
"""


from thesis_class import *
from thesis_library import *
from open3d import select_down_sample
import pcl

def display_objcts(cloud1,cloud2):
    pcloud1 = read_point_cloud(cloud1)
    pcloud2 = read_point_cloud(cloud2)
    print("Showing pcloud1 (red) and pcloud2 (gray): ")
    pcloud1.paint_uniform_color([1, 0, 0])
    pcloud2.paint_uniform_color([0.8, 0.8, 0.8])

    draw_geometries([pcloud1, pcloud2])


def main():
    counter=0
    flag=True

    while (True):
        counter+=1
        # #Get point PointCloud2
        # pc=camObj.get_point_cloud()
        #
        # if pc is None:
        #     print('no PointCloud2!!!')
        #     continue
        #
        # print(type(pc))
        # print(pc.shape)
        #
        # if flag:
        #     pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
        #     print(pc.shape)
        #     pc=np.nan_to_num(pc)
        #
        #     #Pass xyz to Open3D.PointCloud and visualize
        #     pcd = PointCloud()
        #     print('In progress!!!')
        #
        #     start_timer=time.time()
        #     pcd.points = Vector3dVector(pc)
        #     write_point_cloud("scene3.pcd", pcd)
        #     print('elapsed time:',time.time()-start_timer)
        #
        #     flag=False


        # # Flip it, otherwise the pointcloud will be upside down
        # print("Load a pcd point cloud, and flip it!!!")
        # source =read_point_cloud("scene1.pcd")
        # source.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        # write_point_cloud("scene1up.pcd", source)
        # draw_geometries([source])



        # Load the point cloud from the memory
        cloud = pcl.load('scene1up.pcd')

        # Downsample the cloud as high resolution which comes with a computation cost
        downsample = do_voxel_grid_filter(point_cloud = cloud, LEAF_SIZE = 0.005)
        pcl.save(downsample, 'downsample.pcd')

        # Get only information in our region of interest, as we don't care about the other parts/// 0.5->50cm
        filter = do_passthrough_filter(point_cloud = downsample,name_axis = 'x', min_axis = -0.5, max_axis = 0.10)
        pcl.save(filter, 'roi_tabletop.pcd')

        # Separate the table from everything else
        table, objects = do_ransac_plane_segmentation(filter, max_distance = 0.01)
        pcl.save(table, 'table.pcd')
        pcl.save(objects, 'objects.pcd')




        #Display the table and the object
        display_objcts('table.pcd','objects.pcd')

        print('------------------')
        print('counter:',counter)
        exit()

if __name__ == '__main__':
    camObj=camera()
    main()
