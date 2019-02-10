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

    global quaternion
    global pose_camera

    quaternion = Quaternion(matrix=rotation)
    pose_camera.position.x = translation[0]
    pose_camera.position.y = translation[1]
    pose_camera.position.z = translation[2]

    pose_camera.orientation.x =quaternion.axis[0]
    pose_camera.orientation.y =quaternion.axis[1]
    pose_camera.orientation.z =quaternion.axis[2]
    pose_camera.orientation.w =quaternion.radians

def create_pose2(rotation2,translation2):
    """Creates a pose using quaternions"""
    pose_camera = geometry_msgs.msg.Pose()


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
    # print("===camera rvec_quaternion:")
    # from pyquaternion import Quaternion
    # q = Quaternion(matrix=rvec_matrix.T)
    # q.normalised
    # print(q.axis)
    # print(q.radians)
    #
    # create_pose(rvec_matrix.T,-np.dot(rvec_matrix.T, translation_vector))
    # create_pose2(rvec_matrix.T,-np.dot(rvec_matrix.T, translation_vector))


    print('\n\nFrom Rmatrix to euler with transforms3d:')
    yaw,pitch,roll = mat2euler(rvec_matrix.T,'szyx')
    print('the one: ',yaw,pitch,roll)


    print('\n\n-----------------------------------------------------')

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
    print('pair points!!!')
    print corners[0],'->',world_points_3d[0]

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

    # Create the projection matrix P = [ R | t ]:
    proj_matrix = np.hstack((rvec_matrix, translation_vector))

    #Use cv2.decomposeProjectionMatrix() (or any home-made function) to retrieve Euler angles:
    eulerAngles = cv2.decomposeProjectionMatrix(proj_matrix)[6]
    euler_angles_radians = -cv2.decomposeProjectionMatrix(proj_matrix)[6]
    euler_angles_degrees = 180 * euler_angles_radians/math.pi
    ###############################
    eul    = euler_angles_radians
    yaw    = 180*eul[1,0]/math.pi
    pitch  = 180*((eul[0,0]+math.pi/2)*math.cos(eul[1,0]))/math.pi
    roll   = 180*( (-(math.pi/2)-eul[0,0])*math.sin(eul[1,0]) + eul[2,0] )/math.pi
    print('rotate_degree: zyx ',yaw,pitch,roll)
    print('rotate_radians: zyx ',yaw*math.pi/180,pitch*math.pi/180,roll*math.pi/180)

    print_information(rotation_vector,translation_vector,rvec_matrix)

    return axis_img_pts,corners,ret

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
def pose_callback2(msg):

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

def main():

    counter=0
    tmpNamec='temp2.jpg'


    pub_pose = rospy.Publisher('pose_camera', Pose, queue_size=10)
    sub_pose = rospy.Subscriber('/pose_camera', Pose, pose_callback)

    # pub_pose2 = rospy.Publisher('pose_camera2', Pose, queue_size=10)
    # sub_pose2 = rospy.Subscriber('/pose_camera2', Pose, pose_callback2)

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
        axi_imgpts,corners,ret= locate_target_orientation(frame)


        # We can now plot limes on the 3D image using the cv2.line function:
        line_width=2

        # numpy.ravel
        # Return a contiguous flattened array.
        cv2.drawChessboardCorners(frame, (7,9), corners, ret)#column and rows 7x9
        cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
        cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
        cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x


        # #Adding Text to Images:
        # for j in xrange(len(rotate_degree)):
        #     cv2.putText(frame, ('{:05.2f}').format(float(rotate_degree[j])), (10, 30 + (50 * j)), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), thickness=2, lineType=2)

        # Display the resulting frame
        cv2.imshow('frame',frame)
        cv2.imwrite('test.jpg', frame)
        print('counter:',counter)
        # we should expect to go through the loop 10 times per second
        pub_pose.publish(pose_camera)
        rate.sleep()

    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
# import roslib
# roslib.load_manifest('learning_tf')
# import rospy
#
# import tf
# import turtlesim.msg





# for idx, corner in enumerate(corners):
#     idx_as_str = '{}'.format(idx)
#     text_pos = (corner + np.array([2, 2])).astype(int)
#     cv2.putText(frame, idx_as_str, tuple(text_pos),
#         cv2.FONT_HERSHEY_PLAIN, 1, (0, 0, 255));
