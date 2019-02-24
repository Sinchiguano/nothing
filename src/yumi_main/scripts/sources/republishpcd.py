#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""

"""


import rospy
#from camera_info_manager import *
from geometry_msgs.msg import Point
from sensor_msgs.msg import PointCloud
import std_msgs.msg

from thesis_class import camera
import numpy as np
import cv2


#from open3d import select_down_sample
import pcl




def main():

    cloud_pub = rospy.Publisher('newpointcloud',PointCloud)

    flag=True
    rate = rospy.Rate(20)
    counter=0


    while not rospy.is_shutdown():

        counter+=1
        # Capture point cloud
        pc=camObj.get_image()

        # get new point cloud
        if pc is None:
            print('no image!!!')
            continue
        #print(pc)

        # press q in order to quit
        if cv2.waitKey(1) & 0xFF == ord('q'):
            #cv2.imwrite('temp2.jpg', frame)
            break
        # count all the x in my pc
        #print(np.size(pc[:,:,0]))

        pc=np.reshape(pc,(np.size(pc[:,:,0]),3))#I took the size of my x coordinates


        #rehaping the point cloud in order to visualize in ROS Rviz
        x = pc[:,0].reshape(-1,1)
        y = pc[:,1].reshape(-1,1)
        z = pc[:,2].reshape(-1,1)
        pcd_aux=np.hstack((z,y,x))
       
        print('')
        print(pc.shape)
        print('')
        print(pcd_aux.shape)


        # print('')
        # print('original:\n {} '.format(pc[:5,:]))
        # print('')
        # print('copy: \n {}'.format(pcd_aux[:5,:]))
        #just to debugg the movement
        print(pc[:,0]==pcd_aux[:,2])


        #prepare the message fot publishin the point cloud
        debug_pointcloud = PointCloud()
        debug_pointcloud.header = std_msgs.msg.Header()
        debug_pointcloud.header.stamp = rospy.Time.now()
        debug_pointcloud.header.frame_id = "camera_optical"

        # print(pcd_aux.shape)
        # print(pcd_aux[:3,1])
        # print(pcd_aux[0,0],'-',pcd_aux[0,1],'-', pcd_aux[0,2])

        #create list of my point cloud
        pc_list=pcd_aux.tolist()
        print(pc_list[1])
        print(pc_list[1][0])

        
        # # fill up pointcloud with points where x and z change but y keep constant
        debug_pointcloud.points = Point(pc_list)


        cloud_pub.publish(debug_pointcloud)
        rate.sleep()
	rospy.spin()





if __name__ == '__main__':
	camObj=camera()
	main()

# rate.sleep()
