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
    print('pair points!!!')
    print (image_points[0],'->',world_points_3d[0])


    # Camera internals
    #Intrinsic parameters===>>> from the intrinsic calibration!!!!
    list_matrix=[529.3652640113527, 0, 310.3141830332983, 0, 540.6164768242445, 220.3657848482968, 0, 0, 1]
    cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    print(cameraMatrix_ar.shape)
    print(cameraMatrix_ar)
    print(cameraMatrix_ar[1,:])

    distCoef=[0.1852661379687586, -0.264551739977949, -0.03684812841833995, 0.0009882520270208214, 0]
    distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)
    print(distCoef_ar)
    print(distCoef_ar.shape)


    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points_3d, image_points, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)
    print ("Rotation Vector:\n {0}".format(rotation_vector))
    print ("Translation Vector:\n {0}".format(translation_vector))

    axis = np.float32([[5,0,0],
                          [0,5,0],
                          [0,0,-5]])

    axis_img_pts, jacobian1 = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    #mapping!!!
    img_points_2d, jacobian2 = cv2.projectPoints(world_points_3d, rotation_vector, translation_vector, cameraMatrix_ar,distCoef_ar)

    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]
    proj_matrix = np.hstack((rvec_matrix, translation_vector))
    eulerAngles = cv2.decomposeProjectionMatrix(proj_matrix)[6]


    pitch, yaw, roll = [math.radians(_) for _ in eulerAngles]
    pitch = math.degrees(math.asin(math.sin(pitch)))
    roll = -math.degrees(math.asin(math.sin(roll)))
    yaw = math.degrees(math.asin(math.sin(yaw)))

    return axis_img_pts, img_points_2d, (str(int(roll)), str(int(pitch)), str(int(yaw))),image_points,ret

def main():
    camObj=camera()
    counter=0
    tmpNameg='temp1.jpg'
    tmpNamec='temp2.jpg'

    while(True):
        # Capture frame-by-frame
        counter+=1
        #Get point PointCloud2
        frame=camObj.get_image()
        print(type(frame))

        if frame is None:
            print('no image!!!')
            continue
        # Our operations on the frame come here
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Display the resulting frame
        cv2.imshow('frame',frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            cv2.imwrite(tmpNameg,gray)
            cv2.imwrite(tmpNamec,frame)

            break
        print('counter:',counter)

    # When everything done, release the capture
    cv2.destroyAllWindows()

    # Read Image
    frame = cv2.imread(tmpNameg)
    framec = cv2.imread(tmpNamec)
    frame_copy=frame.copy()#gray

    axi_imgpts, world_imgpts, rotate_degree,corners,ret= locate_target_orientation(frame)


    #We can now plot limes on the 3D image using the cv2.line function:
    line_width=3

    cv2.line(frame, tuple(world_imgpts[0].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN
    cv2.line(frame, tuple(world_imgpts[0].ravel()), tuple(axi_imgpts[0].ravel()), (255,0,), line_width) #BLUE
    cv2.line(frame, tuple(world_imgpts[0].ravel()), tuple(axi_imgpts[2].ravel()), (0,0,255), line_width) #RED


    cv2.imwrite('test2.jpg', frame)

    #Plotting!!!
    cv2.drawChessboardCorners(frame_copy, (7,9), corners, ret)
    plt.subplot(121)
    plt.imshow(frame_copy)

    plt.subplot(122)
    plt.imshow(frame)
    plt.show()

if __name__ == '__main__':

    main()
