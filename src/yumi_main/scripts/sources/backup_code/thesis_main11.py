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
from open3d import select_down_sample,create_rgbd_image_from_color_and_depth,read_image
import pcl
import cv2
import matplotlib.pyplot as plt
from open3d import read_pinhole_camera_intrinsic,create_point_cloud_from_rgbd_image



def display_objcts(cloud1,cloud2):
    pcloud1 = read_point_cloud(cloud1)
    pcloud2 = read_point_cloud(cloud2)
    print("Showing pcloud1 (red) and pcloud2 (gray): ")
    pcloud1.paint_uniform_color([1, 0, 0])
    pcloud2.paint_uniform_color([0.8, 0.8, 0.8])

    draw_geometries([pcloud1, pcloud2])

def get_samples_point_cloud(pc):

    pcd=create_pointcloud(pc)
    cv2.imshow('pc',pc)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        counter2+=1
        tmp=path+'pointcloud'+str(counter2)
        write_point_cloud(tmp+'.pcd', pcd)
        write_point_cloud(tmp+'.ply', pcd)
        cv2.imwrite(tmp+'.jpg', frame)
        source =read_point_cloud(tmp+'.ply')
        draw_geometries([source])
        

def create_pointcloud(pc):
    pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
    print(pc.shape)
    pc=np.nan_to_num(pc)

    #Pass xyz to Open3D.PointCloud and visualize
    pcd = PointCloud()
    print('In progress!!!')

    start_timer=time.time()

    pcd.points = Vector3dVector(pc)
    # Flip it, otherwise the pointcloud will be upside down
    print("Load a pcd point cloud, and flip it!!!")
    pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])

    print('elapsed time:',time.time()-start_timer)

    return pcd

def main():
    counter1=0
    counter2=0
    flag=True
    rate = rospy.Rate(10) # 10hz
    path='pcdata/'
    
    while not rospy.is_shutdown():
        counter1+=1

        # Capture 2D-data
        frame=camObj.get_image()

        # Capture depth data
        depth=camObj.get_depth()

        # Capture 3D-data
        pc=camObj.get_point_cloud()

        if pc is None:
            print('no PointCloud2!!!')
            continue
        elif frame is None:
            print('no Frame!!!')
            continue
        elif depth is None:
            print('no depth image!!!')
            continue
        cv2.imwrite('aux1.png', frame)
        cv2.imwrite('aux1.jpg', frame)
        cv2.imwrite('aux2.png', depth)

        # get sample of point cloud!!!
        #get_samples_point_cloud(pc)

        #cv2.imshow('frame',frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        pinhole_camera_intrinsic = read_pinhole_camera_intrinsic("camera_astra.json")
        print(pinhole_camera_intrinsic.intrinsic_matrix)

        print("Read Redwood dataset")
        color_raw = read_image('aux1.png')
        depth_raw = read_image('aux2.png')

        rgbd_image = create_rgbd_image_from_color_and_depth(color_raw, depth_raw)
        
        # from open3d import create_rgbd_image_from_tum_format
        # rgbd_image = create_rgbd_image_from_tum_format(color_raw, depth_raw)
   
        
        # print(rgbd_image)
        # plt.subplot(1, 2, 1)
        # plt.title('Redwood grayscale image')
        # #plt.imshow(cv2.cvtColor(rgbd_image.color, cv2.COLOR_BGR2RGB))
        # plt.imshow(rgbd_image.color)
        # plt.subplot(1, 2, 2)
        # plt.title('Redwood depth image')
        # plt.imshow(rgbd_image.depth)
        # plt.show()

        #Create point cloud from rgbd images
        pcd = create_point_cloud_from_rgbd_image(rgbd_image, pinhole_camera_intrinsic)

        # Flip it, otherwise the pointcloud will be upside down
        pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
        draw_geometries([pcd])


        # pc_name='newone5.pcd'
        # downsample_name='downsample5.pcd'
        # roi_tabletop_name='roi_tabletop5.pcd'
        #
        # table_name='table5.pcd'
        # objects_name='objects5.pcd'
        #
        # objects_name1="object5.ply"
        #
        # # Load the point cloud from the memory
        # cloud = pcl.load(pc_name)
        #
        # # Downsample the cloud as high resolution which comes with a computation cost
        # downsample = do_voxel_grid_filter(point_cloud = cloud, LEAF_SIZE = 0.005)
        # pcl.save(downsample, downsample_name)
        #
        # # Get only information in our region of interest, as we don't care about the other parts/// 0.5->50cm
        # filter = do_passthrough_filter(point_cloud = downsample,name_axis = 'x', min_axis = -0.05, max_axis = 0.15)
        # pcl.save(filter, roi_tabletop_name)
        #
        # # Separate the table from everything else
        # table, objects = do_ransac_plane_segmentation(filter, max_distance = 0.01)
        # pcl.save(table, table_name)
        # pcl.save(objects,objects_name )
        #
        # source =read_point_cloud(objects_name)
        # write_point_cloud(objects_name1, source)
        #
        #
        # # #Display the table and the object
        # # display_objcts('table.pcd','objects.pcd')
        #
        print('------------------')
        print('counter:',counter1)

    # When everything done, release the capture
    cv2.destroyAllWindows()

if __name__ == '__main__':
    camObj=camera()
    main()































# #for testing, in order to get several point cloud
# try:
#     while True:
#         #Get point PointCloud2
#         pc=camObj.get_point_cloud()

#         if pc is None:
#             print('no PointCloud2!!!')
#             continue

#         pcd=create_pointcloud(pc)
# except KeyboardInterrupt:
#     print "\n============ Press 1 to save or 2 to ignore ==>>PointCloud"
#     temp=raw_input()
#     control_=int(temp)

#     if control_==1:
#         tmp='pointcloud'+str(counter)
#         write_point_cloud(tmp+'.pcd', pcd)
#         write_point_cloud(tmp+'.ply', pcd)
#         source =read_point_cloud(tmp+'.ply')
#         draw_geometries([source])
#     elif control_==2:
#         continue
#     pass
