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

import sys
sys.path.insert(0, '/home/sinchiguano/yumi_depends_ws/src/yumi_main/scripts/project')

#The order matters
from thesis_library import *
from thesis_class import *
from thesis_function import *


path_images='images_realsense/'


def create_dataset_images(frame,counter):
    global path_images

    #we save the pcd in the following formats pcd and ply
    tmp=path_images+'img'+str(counter)
    cv2.imwrite(tmp+'.jpg', frame)


def main():
    counter1=0
    counter2=0


    import sys
    print "This is the name of the script: ", sys.argv[0]
    #flag=sys.argv[1]

    rate = rospy.Rate(10) # 10hz



    while not rospy.is_shutdown():
        counter1+=1

        # Capture 2D-data
        frame=camObj.get_image()

        # Capture depth data
        depth=camObj.get_depth()

        # Capture 3D-data
        pc=camObj.get_point_cloud()

        # if pc is None:
        #     print('no PointCloud2!!!')
        #     continue
        # el
        if frame is None:
            print('no Frame!!!')
            continue
        # elif depth is None:
        #     print('no depth image!!!')
        #     continue

        command=cv2.waitKey(1) & 0xFF

        print('ready to start collecting 3D-data! ')
        #Collect point cloud and rgbd images
        if command == ord('p'):
            counter2+=1
            create_dataset_images(frame,counter2)
            print('next!')
        if command == ord('q'):
            break


        try:
            # 2D image points
            # To handle the corners array more easily, we can reshape it as follows
            ret, corners = cv2.findChessboardCorners(frame, (7,9))#coulmn and rows
            corners=corners.reshape(-1,2)#undefied number of rows
            cv2.drawChessboardCorners(frame, (7,9), corners, ret)
            if not ret:
                print('\nPlease, locate well the calibration target!!!')
                continue
        except Exception as ex:
            print('\nStatus of findChessboardCorners: {}'.format(ret))
            print('Please, locate well the calibration target!!!')
            print(ex)
            print('-------------------------------------------------')
            continue



        cv2.imshow('frame',frame)

    # When everything done, release the capture
    cv2.destroyAllWindows()

if __name__ == '__main__':
    camObj=camera()
    main()
