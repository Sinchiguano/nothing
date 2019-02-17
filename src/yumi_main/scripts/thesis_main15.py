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
from thesis_function import *


path='pcdata/'
colour_path='colour/'+'colour'
depth_path='depth/'+'depth'
pc_rgbd_path='pcd_from_color_depth/'


def display_objects(cloud1,cloud2):
    pcloud1 = read_point_cloud(cloud1)
    pcloud2 = read_point_cloud(cloud2)
    print("Showing pcloud1 (red) and pcloud2 (gray): ")
    pcloud1.paint_uniform_color([1, 0, 0])
    pcloud2.paint_uniform_color([0.8, 0.8, 0.8])

    #draw_geometries([pcloud1, pcloud2])
    draw_geometries([pcloud2])

def create_dataset_pointcloud(frame,pc,counter2):
    global path

    #the following function render a vector in 3d for pcd format in order to use with open3d
    pcd=create_vector3d(pc)

    #we save the pcd in the following formats pcd and ply
    tmp=path+'pointcloud'+str(counter2)
    write_point_cloud(tmp+'.pcd', pcd)
    write_point_cloud(tmp+'.ply', pcd)
    cv2.imwrite(tmp+'.jpg', frame)

    source =read_point_cloud(tmp+'.ply')
    draw_geometries([source])
    
def create_dataset_rgbd(frame,depth,counter3):

    #we save the pcd in the following formats pcd and ply
    cv2.imwrite(colour_path+str(counter3)+'.jpg', frame)
    cv2.imwrite(depth_path+str(counter3)+'.png', depth)


    pinhole_camera_intrinsic = read_pinhole_camera_intrinsic("camera_astra.json")
    print(pinhole_camera_intrinsic.intrinsic_matrix)

    print("Read dataset")
    color_raw = read_image(colour_path+str(counter3)+'.jpg')
    depth_raw = read_image(depth_path+str(counter3)+'.png')

    rgbd_image = create_rgbd_image_from_color_and_depth(color_raw, depth_raw)
    
    #Create point cloud from rgbd images
    pcd = create_point_cloud_from_rgbd_image(rgbd_image, pinhole_camera_intrinsic)


    # Flip it, otherwise the pointcloud will be upside down
    pcd.transform([[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, -1, 0], [0, 0, 0, 1]])
    #save point cloud
    write_point_cloud(pc_rgbd_path+'pointcloud'+str(counter3)+'.pcd', pcd)
    write_point_cloud(pc_rgbd_path+'pointcloud'+str(counter3)+'.ply', pcd)

    #we read our point cloud data from rgbd
    pcd =read_point_cloud(pc_rgbd_path+'pointcloud'+str(counter3)+'.pcd')


    draw_geometries([pcd])

def create_vector3d(pc):

    '''With the help of open3d we render pcd'''
    pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates
    print(pc.shape)
    pc=np.nan_to_num(pc)

    #Pass xyz to Open3D.PointCloud and visualize
    pcd = PointCloud()
    #print('In progress!!!')
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
    counter3=0
    path_cloud='end_cloud/'
    downsample_name=path_cloud+'downsample_name'
    roi_name=path_cloud+'roi_name'
    table_name=path_cloud+'table_name'
    objects_name=path_cloud+'objects_name'
    

    import sys
    print "This is the name of the script: ", sys.argv[0]
    flag=sys.argv[1]

    rate = rospy.Rate(10) # 10hz
    
    while not rospy.is_shutdown():
        counter1+=1

        # # Capture 2D-data
        # frame=camObj.get_image()

        # # Capture depth data
        # depth=camObj.get_depth()

        # # Capture 3D-data
        # pc=camObj.get_point_cloud()

        # if pc is None:
        #     print('no PointCloud2!!!')
        #     continue
        # elif frame is None:
        #     print('no Frame!!!')
        #     continue
        # elif depth is None:
        #     print('no depth image!!!')
        #     continue

        command=cv2.waitKey(1) & 0xFF
        # if command == ord('p'):
        #     counter2+=1
        #     # make point cloud data
        #     create_dataset_pointcloud(frame,pc,counter2)
        # elif command==ord('r'):
        #     counter3+=1
        #     # make rgbd data
        #     create_dataset_rgbd(frame,depth,counter3)
        if command == ord('q'):
            break
        


        #cv2.imshow('frame',frame)


        # Load the point cloud from memory##read_point_cloud(rgbd)
        rgbd_ = [pcl.load(rgbd) for rgbd in glob.glob(pc_rgbd_path+'*pcd')]

        if flag:
            for i, cloud in enumerate(rgbd_):             

                # mask out point cloud in order to get only information in our region of interest, as we don't care about the other parts
                filter = do_passthrough_filter(point_cloud = cloud,name_axis = 'x', min_axis = -0.4, max_axis = 0.4)
                filter = do_passthrough_filter(point_cloud = filter,name_axis = 'y', min_axis = -0.25, max_axis = 0.1)
                pcl.save(filter, roi_name+str(i)+'.pcd') 
                
                # Separate the table from everything else
                table, objects = do_ransac_plane_segmentation(filter, max_distance = 0.01)
                pcl.save(table, table_name +str(i)+'.pcd')
                pcl.save(objects,objects_name +str(i)+'.pcd' )
            
            for i, cloud in enumerate(rgbd_):
                # Display the table and the object
                pcd = read_point_cloud(objects_name +str(i)+'.pcd')
                draw_geometries([pcd])
            flag=False
        
       
        print('------------------')
        print('counter:',counter1)

    # When everything done, release the capture
    cv2.destroyAllWindows()

if __name__ == '__main__':
    camObj=camera()
    main()













