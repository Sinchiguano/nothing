#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""

"""
from thesis_class import camera
import numpy as np
import cv2
from matplotlib import pyplot as plt
import copy
import math
from transforms3d.euler import euler2mat, mat2euler


def locate_target_orientation(frame):
    size = frame.shape #(height, width, color_channel)

    # 2D image points
    ret, corners = cv2.findChessboardCorners(frame, (7,9))
    #To handle the corners array more easily, we can reshape it as follows
    image_points=corners.reshape(-1,2)#undefied number of rows

    # 3D world points.
    x,y=np.meshgrid(range(7),range(9))
    world_points_3d=np.hstack((x.reshape(63,1),y.reshape(63,1),np.zeros((63,1)))).astype(np.float32)

    #We now have our correspondences between 3D and 2D points,
    # print('pair points!!!')
    # print image_points[0],'->',world_points_3d[0]
    #

    # Camera internals
    #Intrinsic parameters===>>> from the intrinsic calibration!!!!
    list_matrix=[529.3652640113527, 0, 310.3141830332983, 0, 540.6164768242445, 220.3657848482968, 0, 0, 1]
    cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    print(cameraMatrix_ar.shape)
    # print(cameraMatrix_ar)
    # print(cameraMatrix_ar[1,:])

    distCoef=[0.1852661379687586, -0.264551739977949, -0.03684812841833995, 0.0009882520270208214, 0]
    distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)
    # print(distCoef_ar)
    # print(distCoef_ar.shape)


    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points_3d, image_points, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)
    # print "Rotation Vector:\n {0}".format(rotation_vector)
    # print "Translation Vector:\n {0}".format(translation_vector)

    #Coordinates system
    axis = np.float32([[3,0,0],[0,4,0],[0,0,-5]])
    axis_img_pts, jacobian = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    #print('From rotation vector to rotation matrix')
    #print(cv2.Rodrigues(rotation_vector))
    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]
    proj_matrix = np.hstack((rvec_matrix, translation_vector))
    eulerAngles = cv2.decomposeProjectionMatrix(proj_matrix)[6]


    print("\nThe world coordinate system's origin in camera's coordinate system:")
    print("===rotation_vector:")
    print(rotation_vector)
    print("===rotation_matrix:")
    print(rvec_matrix)
    print("===translation_vector:")
    print(translation_vector)


    print("\nThe camera origin in world coordinate system:")
    print("===camera rvec_matrix:")
    print(rvec_matrix.T)
    print("===camera translation_vector:")
    print(-np.dot(rvec_matrix.T, translation_vector*0.02))


    print('\n From Rmatrix to euler with code')
    print(rotationMatrixToEulerAngles(rvec_matrix.T))


    roll,pitch,yaw = mat2euler(rvec_matrix.T,'sxyz')
    #pitch, yaw, roll = mat2euler(rvec_matrix.T,'syzx')
    print('\nFrom Rmatrix to euler with transforms3d:')
    print(roll,pitch,yaw)

    print('\nFrom Rmatrix to euler with decomposeProjectionMatrix  ')
    eulerAngles_radians=[math.radians(_) for _ in eulerAngles]
    pitch, yaw, roll = [math.radians(_) for _ in eulerAngles]
    print(pitch, yaw, roll)

    print('-----------------------------------------------------')
    return axis_img_pts,image_points,ret,eulerAngles_radians

#for dafety reason
def isRotationMatrix(R) :
    Rt = np.transpose(R)
    shouldBeIdentity = np.dot(Rt, R)
    I = np.identity(3, dtype = R.dtype)
    n = np.linalg.norm(I - shouldBeIdentity)
    return n < 1e-6

# Calculates rotation matrix to euler angles
def rotationMatrixToEulerAngles(R) :

    assert(isRotationMatrix(R))

    sy = math.sqrt(R[0,0] * R[0,0] +  R[1,0] * R[1,0])

    singular = sy < 1e-6

    if  not singular :
        x = math.atan2(R[2,1] , R[2,2])
        y = math.atan2(-R[2,0], sy)
        z = math.atan2(R[1,0], R[0,0])
    else :
        x = math.atan2(-R[1,2], R[1,1])
        y = math.atan2(-R[2,0], sy)
        z = 0

    return np.array([x, y, z])

def main():

    counter=0
    tmpNamec='temp2.jpg'

    while(True):

        counter+=1

        # Capture frame-by-frame
        frame=camObj.get_image()
        #print(type(frame))


        if frame is None:
            print('no image!!!')
            continue

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        # Extrinsic calibration!!!
        axi_imgpts,corners,ret,rotate_radians= locate_target_orientation(frame)

        #We can now plot limes on the 3D image using the cv2.line function:
        line_width=2
        cv2.drawChessboardCorners(frame, (7,9), corners, ret)
        cv2.line(frame, tuple(corners[0].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
        cv2.line(frame, tuple(corners[0].ravel()), tuple(axi_imgpts[0].ravel()), (255,0,), line_width) #BLUE X
        cv2.line(frame, tuple(corners[0].ravel()), tuple(axi_imgpts[2].ravel()), (0,0,255), line_width) #RED Z

        #plotting(frame)

        # Display the resulting frame
        cv2.imshow('frame',frame)
        cv2.imwrite('test2.jpg', frame)
        print('counter:',counter)
        #exit()
    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
