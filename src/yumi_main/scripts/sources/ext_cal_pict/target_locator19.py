#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""
Finally I got in xyz coordinates according to ROS
"""
from thesis_class import camera
import numpy as np
import cv2
from matplotlib import pyplot as plt
import copy
import math
from transforms3d.euler import euler2mat, mat2euler
import rospy
import geometry_msgs.msg
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
from pyquaternion import Quaternion
import tf
import tf2_ros
import geometry_msgs.msg


pose_pub = geometry_msgs.msg.Pose()
euler_angles=[0.0,0.0,0.0]
position=[0.0,0.0,0.0]
theta_=None
unit_vector_=None

theta_inv=None
unit_vector_inv=None


def quaternion_hands_on(rotation_vector,rotation_vector_inv):

    """It is giving good quaternions according to the rotation vector"""

    global theta_
    global unit_vector_
    
    global theta_inv
    global unit_vector_inv

    # Rotation_vector (Rodrigues convention)
    theta_= math.sqrt(rotation_vector[0]**2+rotation_vector[1]**2+rotation_vector[2]**2)
    unit_vector_=rotation_vector/theta_
    unit_vector_=unit_vector_.ravel() #flattened an array
    #print('rodrigues convention: \n {} {}'.format(theta_,unit_vector_))


    #quaternion with library it is better to use a library
    from pyquaternion import Quaternion
    q=Quaternion(axis=unit_vector_,radians=theta_)
    q.normalised
    inv_quaternion_ = q.inverse


    # Rotation_vector (Rodrigues convention)
    theta_inv= math.sqrt(rotation_vector_inv[0]**2+rotation_vector_inv[1]**2+rotation_vector_inv[2]**2)
    unit_vector_inv=rotation_vector_inv/theta_inv
    unit_vector_inv=unit_vector_inv.ravel() #flattened an array

    return inv_quaternion_.radians,inv_quaternion_.axis,theta_,unit_vector_

def pose_camera_hands_on(inv_quaternion_radians,inv_quaternion_axis,translation):
    """Creates a pose using quaternions and the translation"""

    global pose_pub

    pose_pub.position.x = translation[0]
    pose_pub.position.y = translation[1]
    pose_pub.position.z = translation[2]
    pose_pub.orientation.x =inv_quaternion_axis[0]
    pose_pub.orientation.y =inv_quaternion_axis[1]
    pose_pub.orientation.z =inv_quaternion_axis[2]
    pose_pub.orientation.w =inv_quaternion_radians

def pose_camera_callback(msg):

    global euler_angles
    global position
    
    position=[msg.position.x,msg.position.y,msg.position.z]
    quaternion_aux=msg.orientation
    quaternion_tmp=[quaternion_aux.x,quaternion_aux.y,quaternion_aux.z,quaternion_aux.w]
    roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(quaternion_tmp)
    euler_angles=[roll_,pitch_,yaw_]

def print_information(rotation_vector,translation_vector,rvec_matrix):


    print("\n\nThe world coordinate system's origin in camera's coordinate system:")
    print("===rotation_vector:")
    print(rotation_vector)
    print("===rotation_matrix:")
    print(rvec_matrix)
    print("===translation_vector:")
    print(translation_vector)


    print("\n\nThe camera origin in world coordinate system:")
    print("===camera rvec_matrix:")
    print(rvec_matrix.T)
    print("===camera translation_vector:")
    print(-np.dot(rvec_matrix.T, translation_vector))
    print('euler_angles inv yaw_,pitch_,roll_: ',euler_angles)


    print('\n\n-----------------------------------------------------')

def publish_transforms(br):
    
    global euler_angles
    global position

    global theta_
    global unit_vector_
    
    global theta_inv
    global unit_vector_inv

    
    t1 = geometry_msgs.msg.TransformStamped()
    t1.header.stamp = rospy.Time.now()
    t1.header.frame_id = "world"
    t1.child_frame_id = "target"
    t1.transform.translation.x = 0.30
    t1.transform.translation.y = 0.0
    t1.transform.translation.z = 0.0
    
    #1.57 90  3.14 180  4.72 270
    #q1 = tf.transformations.quaternion_from_euler(0, 0,0)
    #with a target system according to camera link frame
    q1 = tf.transformations.quaternion_from_euler(0, -4.72,3.1415)
    t1.transform.rotation.x = q1[0]
    t1.transform.rotation.y = q1[1]
    t1.transform.rotation.z = q1[2]
    t1.transform.rotation.w = q1[3]
        
    br.sendTransform(t1)
    

    t2 = geometry_msgs.msg.TransformStamped()
    t2.header.stamp = rospy.Time.now()
    t2.header.frame_id = "target"
    t2.child_frame_id ="camera_link" 
    t2.transform.translation.x = position[0]
    t2.transform.translation.y = position[1]
    t2.transform.translation.z = position[2]
    q2 = tf.transformations.quaternion_about_axis(theta_,-1*unit_vector_)
    
    #q2 = tf.transformations.quaternion_about_axis(theta_inv,unit_vector_inv)
    
    #q2 = tf.transformations.quaternion_from_euler(0,euler_angles[1],0)
    #q2 = tf.transformations.quaternion_from_euler(0.0,-0.26947534495704306,0.0)
    t2.transform.rotation.x = q2[0]
    t2.transform.rotation.y = q2[1]
    t2.transform.rotation.z = q2[2]
    t2.transform.rotation.w = q2[3]

    br.sendTransform(t2)

def draw_show_on_image(frame,corners,axi_imgpts,ret,line_width=2):
    # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
    cv2.drawChessboardCorners(frame, (5,7), corners, ret)#column and rows 7x9
    #cv2.drawChessboardCorners(frame, (7,9), corners, ret)#column and rows 7x9
    cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x

    for idx, corner in enumerate(corners):
        idx_as_str = '{}'.format(idx)
        text_pos = (corner + np.array([3.5,-7])).astype(int)
        cv2.putText(frame, idx_as_str, tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))

    # Display the resulting frame
    cv2.imshow('frame',frame)
    cv2.imwrite('test.jpg', frame)

def locate_target_orientation(frame,ret, corners):

    # # 3D world points.
    # # I define my xyz coordinate system according to ROS
    # x,y=np.meshgrid(range(5),range(7))
    # world_points_3d=np.hstack((y.reshape(35,1) * 0.035,  x.reshape(35,1) * 0.035, np.zeros((35,1)))).astype(np.float32)
    # #print(world_points_3d)

    #for testing, nothing else
    y,z=np.meshgrid(range(5),range(7))
    world_points_3d=np.hstack((np.zeros((35,1)), y.reshape(35,1) * -0.035, z.reshape(35,1) * -0.035)).astype(np.float32)



    # Camera internals
    #Intrinsic parameters===>>> from the intrinsic calibration!!!!
    list_matrix=[529.3652640113527, 0, 310.3141830332983, 0, 540.6164768242445, 220.3657848482968, 0, 0, 1]
    cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    # print(cameraMatrix_ar.shape)
    # print(cameraMatrix_ar)
    # print(cameraMatrix_ar[1,:])

    distCoef=[0.1852661379687586, -0.264551739977949, -0.03684812841833995, 0.0009882520270208214, 0]
    distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)
    # print(distCoef_ar)
    # print(distCoef_ar.shape)

    #Rotation vector (radians)
    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points_3d, corners, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)
    #_, rvecs, tvecs, inliers=cv2.solvePnPRansac(world_points_3d, corners, cameraMatrix_ar, distCoef_ar)


    # World coordinates system
    axis = np.float32([[0.07,0,0],[0,0.07,0],[0,0,0.07],[0,0,0]])
    axis_img_pts, jacobian = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    # Rotation_vector into rotation_matrix
    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]
    rotation_vector_inv=cv2.Rodrigues(rvec_matrix.T)[0]


    return axis_img_pts,corners,ret,rotation_vector,translation_vector,rvec_matrix,rotation_vector_inv

def main():

    counter=0
    tmpNamec='temp2.jpg'
    global pose_camera_pub
    global quaternion_tmp
    global euler_angles
    global position


    pub_pose = rospy.Publisher('pose_camera_topic', Pose, queue_size=10)
    sub_pose = rospy.Subscriber('/pose_camera_topic', Pose, pose_camera_callback)
    br = tf2_ros.TransformBroadcaster()

    rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():

        counter+=1

        # Capture frame-by-frame
        frame=camObj.get_image()
        #frame = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

        #print(type(frame))
        if frame is None:
            print('no image!!!')
            continue
        if cv2.waitKey(1) & 0xFF == ord('q'):
            cv2.imwrite('temp2.jpg', frame)
            break


        # #Import the image!!! when not working onlin
        # frame=cv2.imread('temp2.jpg')
        # #frame = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
        # if cv2.waitKey(1) & 0xFF == ord('q'):
        #     break

        try:
            # 2D image points
            # To handle the corners array more easily, we can reshape it as follows
            #ret, corners = cv2.findChessboardCorners(frame, (7,9))#column by rows
            ret, corners = cv2.findCirclesGrid(frame, (5,7), flags=cv2.CALIB_CB_SYMMETRIC_GRID)

            corners=corners.reshape(-1,2)#undefied number of rows
            if not ret:
                print('\nPlease, locate well the calibration target!!!')
                continue
        except Exception as ex:
            print('\nStatus of findChessboardCorners: {}'.format(ret))
            print('Please, locate well the calibration target!!!')
            print(ex)
            print('-------------------------------------------------')
            continue
            

        # Extrinsic calibration!!!
        axi_imgpts,corners,ret,rotation_vector,translation_vector,rvec_matrix,rotation_vector_inv= locate_target_orientation(frame,ret, corners)


        # print information about rotation and translation for the camera and world frame
        print_information(rotation_vector,translation_vector,rvec_matrix)


        #draw and display lines and text on the image
        draw_show_on_image(frame,corners,axi_imgpts,ret)

        # transform from rotation vector (given in Rodrigues convention with parameters) into quaternion
        inv_quaternion_radians,inv_quaternion_axis,theta_,unit_vector_=quaternion_hands_on(rotation_vector,rotation_vector_inv)

        # create a pose_camera message in order to publish into the ROS network according the world reference frame
        pose_camera_hands_on(inv_quaternion_radians,inv_quaternion_axis,-np.dot(rvec_matrix.T, translation_vector))

        # publish pose to the topic pose_camera_topic
        pub_pose.publish(pose_pub)
        
        # we should expect to go through the loop 10 times per second
        rate.sleep()
        # publish transform amongt coordinates system of the target, camera and world
        publish_transforms(br)

        
        print('\ncounter:',counter,'\n')



    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
