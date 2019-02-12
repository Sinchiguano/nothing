#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""
Finally I got in xyz coordinate according to ROS
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
pose_sub = geometry_msgs.msg.Pose()
quaternion_=list()
euler_=list()


def pose_camera_hands_on(q0_,q_inverse,translation):
    """Creates a pose using quaternions and the translation"""

    global pose_camera_pub

    pose_pub.position.x = translation[0]
    pose_pub.position.y = translation[1]
    pose_pub.position.z = translation[2]
    pose_pub.orientation.x =q_inverse[0]
    pose_pub.orientation.y =q_inverse[1]
    pose_pub.orientation.z =q_inverse[2]
    pose_pub.orientation.w =q0_

def pose_camera_callback(msg):

    global pose_camera_sub
    pose_sub.orientation=msg.orientation
    pose_sub.position=msg.position
    #print(pose_sub.position)

    global quaternion_
    global euler_
    quaternion_=[pose_sub.orientation.x,pose_sub.orientation.y,pose_sub.orientation.z,pose_sub.orientation.w]
    euler_=tf.transformations.euler_from_quaternion(quaternion_)

def locate_target_orientation(frame):

    # 2D image points
    # To handle the corners array more easily, we can reshape it as follows
    ret, corners = cv2.findChessboardCorners(frame, (7,9))#column by rows
    corners=corners.reshape(-1,2)#undefied number of rows

    # 3D world points.
    # I define my xyz coordinate system according to ROS
    x,y=np.meshgrid(range(7),range(9))
    world_points_3d=np.hstack((y.reshape(63,1) * 0.020, x.reshape(63,1) * 0.020, np.zeros((63,1)))).astype(np.float32)


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


    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points_3d, corners, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)


    # Coordinates system
    axis = np.float32([[0.05,0,0],[0,0.05,0],[0,0,0.05],[0,0,0]])
    axis_img_pts, jacobian = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    # Rotation_vector into rotation_matrix
    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]

    # The camera position expressed in the world frame (OXYZ) is given by:
    #pose_camera=-np.dot(rvec_matrix.T, translation_vector)

    return axis_img_pts,corners,ret,rotation_vector,translation_vector,rvec_matrix

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


    print('\n\n-----------------------------------------------------')

def quaternion_hands_on(rotation_vector):

    # Rotation_vector (Rodrigues convention)
    theta_= math.sqrt(rotation_vector[0]**2+rotation_vector[1]**2+rotation_vector[2]**2)
    unit_vector_=rotation_vector/theta_
    unit_vector_=unit_vector_.ravel() #flattened an array
    print('rodrigues convention: \n {} {}'.format(theta_,unit_vector_))

    #quaternion hands_on
    axis_vector_=unit_vector_
    q0_=math.cos(theta_/2)#module
    q_=axis_vector_*(math.sin(theta_/2))#direction
    q_=axis_vector_/ math.sqrt(q_[0]**2+q_[1]**2+q_[2]**2)
    print('q_ \n {} {}'.format(q0_,q_))
    print('q_inverse: \n {} {}'.format(q0_,q_*-1))


    #quaternion with library it is better to use a library
    from pyquaternion import Quaternion
    q=Quaternion(axis=unit_vector_,radians=theta_)
    q.normalised
    print('q:\n{}'.format(q))
    inv_quaternion_ = q.inverse
    print('q.inverse:\n{}'.format(inv_quaternion_))
    #print(inv_quaternion_.radians, inv_quaternion_.axis,theta_,unit_vector_)

    return q0_,q_*-1,theta_,unit_vector_

def publish_transforms(broadcast):

    global pose_sub
    global euler_
    #print(pose_sub)

    camera_transform = geometry_msgs.msg.TransformStamped()
    camera_transform.header.stamp = rospy.Time.now()
    camera_transform.header.frame_id = "world"
    camera_transform.child_frame_id = "camera_link"


    camera_transform.transform.translation.x = pose_sub.position.x
    camera_transform.transform.translation.y = pose_sub.position.y
    camera_transform.transform.translation.z = pose_sub.position.z
    
    print(len(euler_))
    #quaternion_ = tf.transformations.quaternion_from_euler(euler_[0],euler_[1],euler_[2])
    quaternion_ = tf.transformations.quaternion_from_euler(0.0, -.46, 0.0)
    camera_transform.transform.rotation.x = quaternion_[0]
    camera_transform.transform.rotation.y = quaternion_[1]
    camera_transform.transform.rotation.z = quaternion_[2]
    camera_transform.transform.rotation.w = quaternion_[3]

    broadcast.sendTransform(camera_transform)

def M(axis, theta):
    """
    Return the rotation matrix associated with counterclockwise rotation about
    the given axis by theta radians.
    """
    from numpy import cross, eye, dot
    from scipy.linalg import expm, norm

    return expm(cross(np.eye(3), axis/norm(axis)*theta))


def main():

    counter=0
    tmpNamec='temp2.jpg'
    global pose_camera_pub


    pub_pose = rospy.Publisher('pose_camera_topic', Pose, queue_size=10)
    sub_pose = rospy.Subscriber('/pose_camera_topic', Pose, pose_camera_callback)
    #broadcast = tf2_ros.TransformBroadcaster()

    rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():

        counter+=1

        # Capture frame-by-frame
        frame=camObj.get_image()
        #print(type(frame))
        if frame is None:
            print('no image!!!')
            continue
        if cv2.waitKey(1) & 0xFF == ord('q'):
            cv2.imwrite('temp2.jpg', frame)
            break


        # #Import the image!!! when not working onlin
        # frame=cv2.imread('temp2.jpg')
        # if cv2.waitKey(1) & 0xFF == ord('q'):
        #     break

        # Extrinsic calibration!!!
        axi_imgpts,corners,ret,rotation_vector,translation_vector,rvec_matrix= locate_target_orientation(frame)


        # print information about rotation and translation for the camera and world frame
        #print_information(rotation_vector,translation_vector,rvec_matrix)

        #from rotation vector given into quaternion
        q0_,q_inverse,theta_,unit_vector_=quaternion_hands_on(rotation_vector)



        #WORLD FRAME 
        print('1: \n {}'.format(M(unit_vector_*-1,theta_)))
        print('2: \n {}'.format(rvec_matrix.T))

        

        # create a pose_camera message in order to publish into the ROS network
        pose_camera_hands_on(q0_,q_inverse,-np.dot(rvec_matrix.T, translation_vector))

        # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
        line_width=2
        cv2.drawChessboardCorners(frame, (7,9), corners, ret)#column and rows 7x9
        cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
        cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
        cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x


        # Display the resulting frame
        cv2.imshow('frame',frame)
        cv2.imwrite('test.jpg', frame)


        # we should expect to go through the loop 10 times per second
        pub_pose.publish(pose_pub)

        #publish transform
        #publish_transforms(broadcast)
        rate.sleep()


        print('\ncounter:',counter,'\n')

    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
