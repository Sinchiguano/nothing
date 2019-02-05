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


quaternion=Quaternion(matrix=np.eye(3))
pose_camera = geometry_msgs.msg.Pose()



def create_pose(rotation,translation):
    """Creates a pose using quaternions"""

    global q_
    global pose_camera

    quaternion = Quaternion(matrix=rotation)
    pose_camera.position.x = translation[0]
    pose_camera.position.y = translation[1]
    pose_camera.position.z = translation[2]

    pose_camera.orientation.x =quaternion.axis[0]
    pose_camera.orientation.y =quaternion.axis[1]
    pose_camera.orientation.z =quaternion.axis[2]
    pose_camera.orientation.w =quaternion.radians

def pose_callback(msg):

    location_=Point(0.0,0.0,0.0)

    q_=msg.orientation
    t_=msg.position
    quaternion_=[q_.x,q_.y,q_.z,q_.w]
    roll_,pitch_,yaw_=tf.transformations.euler_from_quaternion(quaternion_)

    location_.x=t_.x
    location_.y=t_.y
    location_.z=t_.z
    print("Pose camera ",location_)
    print('euler:',(roll_,pitch_,yaw_))

def locate_target_orientation(frame):
    size = frame.shape #(height, width, color_channel)

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
    pose_camera=-np.dot(rvec_matrix.T, translation_vector)

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

    # Rotation_vector into quaternion
    import math
    from pyquaternion import Quaternion
    theta_= math.sqrt(rotation_vector[0]**2+rotation_vector[1]**2+rotation_vector[2]**2)
    unit_vector=rotation_vector/theta_
    #print((unit_vector.ravel()))    #flatten an array

    q0_=math.cos(theta_/2)#magnitude
    q_=unit_vector*(math.sin(theta_/2))#direction
    q=Quaternion(axis=q_,radians=q0_)
    q.normalised
    inv_quaternion_ = q.inverse
    print('module:\n ',q0_)
    print('direction:\n ',q_)
    # print('quaternion_')
    # print(q.axis)
    # print(q.radians)
    # print('inv_quaternion_')
    # print(inv_quaternion_.axis)
    # print(inv_quaternion_.radians)
    return inv_quaternion_.axis,inv_quaternion_.radians


def main():

    counter=0
    tmpNamec='temp2.jpg'


    pub_pose = rospy.Publisher('pose_camera', Pose, queue_size=10)
    sub_pose = rospy.Subscriber('/pose_camera', Pose, pose_callback)

    rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():

        counter+=1

        # # Capture frame-by-frame
        # frame=camObj.get_image()
        # #print(type(frame))
        # if frame is None:
        #     print('no image!!!')
        #     continue
        # if cv2.waitKey(1) & 0xFF == ord('q'):
        #     cv2.imwrite('temp2.jpg', frame)
        #     break


        #Import the image!!! when not working onlin
        frame=cv2.imread('temp2.jpg')
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        # Extrinsic calibration!!!
        axi_imgpts,corners,ret,rotation_vector,translation_vector,rvec_matrix= locate_target_orientation(frame)

        #print_information(rotation_vector,translation_vector,rvec_matrix)

        #from rotation vector given into quaternion
        q_scalar,q_direction=quaternion_hands_on(rotation_vector)


        #create a pose_camera message in order to publish to the ROS network
        create_pose(q_scalar,q_direction)


        # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
        line_width=2
        cv2.drawChessboardCorners(frame, (7,9), corners, ret)#column and rows 7x9
        cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
        cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
        cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x


        # Display the resulting frame
        cv2.imshow('frame',frame)
        cv2.imwrite('test.jpg', frame)
        print('counter:',counter)

        # we should expect to go through the loop 10 times per second
        #pub_pose.publish(pose_camera)
        rate.sleep()

    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
