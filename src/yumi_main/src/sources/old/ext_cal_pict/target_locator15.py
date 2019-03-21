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

quaternion_tmp=list()
euler_angles=list()
euler_anglesn=list()
position=list()

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

    global quaternion_tmp
    global euler_angles
    global euler_anglesn
    global position

    quaternion_aux=msg.orientation
    position=[msg.position.x,msg.position.y,msg.position.z]


    quaternion_tmp=[quaternion_aux.x,quaternion_aux.y,quaternion_aux.z,quaternion_aux.w]
    quaternion_aux=[-quaternion_aux.x,-quaternion_aux.y,-quaternion_aux.z,quaternion_aux.w]

    roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(quaternion_tmp)
    rolln_, pitchn_, yawn_=tf.transformations.euler_from_quaternion(quaternion_aux)

    euler_angles=[yaw_,pitch_,roll_]
    euler_anglesn=[yawn_,pitchn_,rolln_]

def locate_target_orientation(frame,ret, corners):

    # 3D world points.
    # I define my xyz coordinate system according to ROS
    #x,y=np.meshgrid(range(5),range(7))
    y,z=np.meshgrid(range(5),range(7))
    #x,y=np.meshgrid(range(7),range(9))
    #world_points_3d=np.hstack((y.reshape(35,1) * 0.035,  x.reshape(35,1) * 0.035, np.zeros((35,1)))).astype(np.float32)
    #world_points_3d=np.hstack((x.reshape(35,1) * 0.035,  y.reshape(35,1) * 0.035, np.zeros((35,1)))).astype(np.float32)
    world_points_3d=np.hstack((np.zeros((35,1)), y.reshape(35,1) * 0.035 ,z.reshape(35,1) * 0.035)).astype(np.float32)
    print(world_points_3d)
    #world_points_3d=np.hstack((y.reshape(63,1) * 0.020,x.reshape(63,1) * 0.020, np.zeros((63,1)))).astype(np.float32)



    #We now have our correspondences between 3D and 2D points,
    # print('pair points!!!')
    # print corners[0],'->',world_points_3d[0]

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


    # Coordinates system
    axis = np.float32([[0.07,0,0],[0,0.07,0],[0,0,0.07],[0,0,0]])
    axis_img_pts, jacobian = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    # Rotation_vector into rotation_matrix
    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]
    # rotation_matrix = np.zeros(shape=(3,3))
    # rvec_matrix =cv2.Rodrigues(rotation_vector, rotation_matrix)[0]

    # The camera position expressed in the world frame (OXYZ) is given by:
    #pose_camera=-np.dot(rvec_matrix.T, translation_vector)
    # print(cv2.Rodrigues(rotation_vector)[0])
    # print(cv2.Rodrigues(rvec_matrix)[0])
    # print(rotation_vector)
    return axis_img_pts,corners,ret,rotation_vector,translation_vector,rvec_matrix

def print_information(rotation_vector,translation_vector,rvec_matrix):


    global euler_angles
    print("\n\nThe world coordinate system's origin in camera's coordinate system:")
    print("\n===rotation_vector:")
    print(rotation_vector)
    print("\n===rotation_matrix:")
    print(rvec_matrix)
    print("\n===translation_vector:")
    print(translation_vector)
    print('euler_anglesn yaw_,pitch_,roll_:  \n',euler_anglesn)

    print("\n\nThe camera origin in world coordinate system:")
    print("\n===camera rvec_matrix:")
    print(rvec_matrix.T)
    print("\n===camera translation_vector:")
    print(-np.dot(rvec_matrix.T, translation_vector))
    print('euler_angles inv yaw_,pitch_,roll_:  \n',euler_angles)


    print('\n\n-----------------------------------------------------')

def quaternion_hands_on(rotation_vector):

    """It is giving good quaternions according to the rotation vector"""
    # Rotation_vector (Rodrigues convention)
    theta_= math.sqrt(rotation_vector[0]**2+rotation_vector[1]**2+rotation_vector[2]**2)
    unit_vector_=rotation_vector/theta_
    unit_vector_=unit_vector_.ravel() #flattened an array
    #print('rodrigues convention: \n {} {}'.format(theta_,unit_vector_))



    #quaternion with library it is better to use a library
    from pyquaternion import Quaternion
    q=Quaternion(axis=unit_vector_,radians=theta_)
    q.normalised
    #print('q:\n{}'.format(q))
    inv_quaternion_ = q.inverse
    # print('q.inverse:\n{}'.format(inv_quaternion_))
    # print(inv_quaternion_.radians,inv_quaternion_.axis)

    return inv_quaternion_.radians,inv_quaternion_.axis,theta_,unit_vector_

def M(axis, theta):
    """
    Return the rotation matrix associated with counterclockwise rotation about
    the given axis by theta radians.
    """
    from numpy import cross, eye, dot
    from scipy.linalg import expm, norm

    hands_on_matrix=expm(cross(np.eye(3), axis/norm(axis)*theta))


    #WORLD FRAME 
    # print('1: \n {}'.format(hands_on_matrix))
    # print('2: \n {}'.format(rvec_matrix.T))

    return 

def publish_transforms(br):
    
    t1 = geometry_msgs.msg.TransformStamped()
    t1.header.stamp = rospy.Time.now()
    t1.header.frame_id = "world"
    t1.child_frame_id = "F1"
    t1.transform.translation.x = 0.30
    t1.transform.translation.y = 0.0
    t1.transform.translation.z = 0.0
    #1.57 90  3.14 180
    q1 = tf.transformations.quaternion_from_euler(0, 1.57, 0.0)
    t1.transform.rotation.x = q1[0]
    t1.transform.rotation.y = q1[1]
    t1.transform.rotation.z = q1[2]
    t1.transform.rotation.w = q1[3]
    
    
    br.sendTransform(t1)

    t2 = geometry_msgs.msg.TransformStamped()
    t2.header.stamp = rospy.Time.now()
    t2.header.frame_id = "F1"
    t2.child_frame_id = "F2"
    t2.transform.translation.x = 1.0
    t2.transform.translation.y = 0.0
    t2.transform.translation.z = 0.0
    q2 = tf.transformations.quaternion_about_axis(1.57, (1,0,0))
    t2.transform.rotation.x = q2[0]
    t2.transform.rotation.y = q2[1]
    t2.transform.rotation.z = q2[2]
    t2.transform.rotation.w = q2[3]

    br.sendTransform(t2)

    T1 = np.dot(tf.transformations.translation_matrix((1.0, 1.0, 0.0)),tf.transformations.quaternion_matrix(q1))
    T1_inverse = tf.transformations.inverse_matrix(T1)

    t3 = geometry_msgs.msg.TransformStamped()
    t3.header.stamp = rospy.Time.now()
    t3.header.frame_id = "F3"
    t3.child_frame_id = "F4"
    tr3 = tf.transformations.translation_from_matrix(T1_inverse)
    t3.transform.translation.x = tr3[0]
    t3.transform.translation.y = tr3[1]
    t3.transform.translation.z = tr3[2]
    q3 = tf.transformations.quaternion_from_matrix(T1_inverse)
    t3.transform.rotation.x = q3[0]
    t3.transform.rotation.y = q3[1]
    t3.transform.rotation.z = q3[2]
    t3.transform.rotation.w = q3[3]
    br.sendTransform(t3)

    T2 = np.dot(tf.transformations.translation_matrix((1.0, 0.0, 0.0)),
                   tf.transformations.quaternion_matrix(q2))
    T2_inverse = tf.transformations.inverse_matrix(T2)

    t4 = geometry_msgs.msg.TransformStamped()
    t4.header.stamp = rospy.Time.now()
    t4.header.frame_id = "F2"
    t4.child_frame_id = "F3"
    tr4 = tf.transformations.translation_from_matrix(T2_inverse)
    t4.transform.translation.x = tr4[0]
    t4.transform.translation.y = tr4[1]
    t4.transform.translation.z = tr4[2]
    q4 = tf.transformations.quaternion_from_matrix(T2_inverse)
    t4.transform.rotation.x = q4[0]
    t4.transform.rotation.y = q4[1]
    t4.transform.rotation.z = q4[2]
    t4.transform.rotation.w = q4[3]
    br.sendTransform(t4)


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

        # # Capture frame-by-frame
        # frame=camObj.get_image()
        # #frame = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
        # #print(type(frame))
        # if frame is None:
        #     print('no image!!!')
        #     continue
        # if cv2.waitKey(1) & 0xFF == ord('q'):
        #     cv2.imwrite('temp2.jpg', frame)
        #     break


        # # #Import the image!!! when not working onlin
        # # frame=cv2.imread('temp2.jpg')
        # # #frame = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
        # # if cv2.waitKey(1) & 0xFF == ord('q'):
        # #     break

        # try:
        #     # 2D image points
        #     # To handle the corners array more easily, we can reshape it as follows
        #     #ret, corners = cv2.findChessboardCorners(frame, (7,9))#column by rows
        #     ret, corners = cv2.findCirclesGrid(frame, (5,7), flags=cv2.CALIB_CB_SYMMETRIC_GRID)

        #     corners=corners.reshape(-1,2)#undefied number of rows
        #     if not ret:
        #         print('\nPlease, locate well the calibration target!!!')
        #         continue
        # except Exception as ex:
        #     print('\nStatus of findChessboardCorners: {}'.format(ret))
        #     print('Please, locate well the calibration target!!!')
        #     print(ex)
        #     print('-------------------------------------------------')
        #     continue
            

        # # Extrinsic calibration!!!
        # axi_imgpts,corners,ret,rotation_vector,translation_vector,rvec_matrix= locate_target_orientation(frame,ret, corners)


        # # print information about rotation and translation for the camera and world frame
        # print_information(rotation_vector,translation_vector,rvec_matrix)


        # # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
        # line_width=2
        # cv2.drawChessboardCorners(frame, (5,7), corners, ret)#column and rows 7x9
        # #cv2.drawChessboardCorners(frame, (7,9), corners, ret)#column and rows 7x9
        # cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
        # cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
        # cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x

        # for idx, corner in enumerate(corners):
        #     idx_as_str = '{}'.format(idx)
        #     text_pos = (corner + np.array([3.5,-7])).astype(int)
        #     cv2.putText(frame, idx_as_str, tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))

        # # Display the resulting frame
        # cv2.imshow('frame',frame)
        # cv2.imwrite('test.jpg', frame)


        # # from rotation vector given into quaternion
        # inv_quaternion_radians,inv_quaternion_axis,theta_,unit_vector_=quaternion_hands_on(rotation_vector)

        # # create a pose_camera message in order to publish into the ROS network
        # pose_camera_hands_on(inv_quaternion_radians,inv_quaternion_axis,-np.dot(rvec_matrix.T, translation_vector))

        # # publish pose to the topic pose_camera_topic
        # pub_pose.publish(pose_pub)


        print('\ncounter:',counter,'\n')

        #publish transform
        publish_transforms(br)



        # we should expect to go through the loop 10 times per second
        rate.sleep()


    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
