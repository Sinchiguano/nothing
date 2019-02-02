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
    framec = cv2.imread(tmpNameg)
    size = frame.shape

    #2D image points. If you change the image, you need to change vector
    ret, corners = cv2.findChessboardCorners(frame, (7,9))
    #(ret, corners) = cv2.findCirclesGrid(frame, (7,5))

    print (corners.shape)
    print('ret',ret)
    print('------------------')

    #To handle the corners array more easily, we can reshape it as follows
    corners=corners.reshape(-1,2)#undefied number of rows
    print corners.shape
    print corners[0]

    # 3D model points.
    #To obtain our vector,we first reshape the matrices x and y to obtain column vectors.
    #Then, we stack the vectors vertically and add a vector with 63 zeros.We finally convert the array into an array of floats:
    x,y=np.meshgrid(range(7),range(9))
    print ("x:  ",' -- ',  "y:\n")
    print(x.shape,'---',y.shape)
    #print(x)
    #print(y)

    world_points=np.hstack((x.reshape(63,1),y.reshape(63,1),np.zeros((63,1)))).astype(np.float32)
    print world_points
    print world_points.shape

    #We now have our correspondences between 3D and 2D points,
    #i.e., each row of world_points corresponds to a row of corners.
    print('/////////////////////////////////')
    print('some points!!!')
    print corners[0],'->',world_points[0]
    print corners[1],'->',world_points[1]
    print corners[2],'->',world_points[2]
    print corners[3],'->',world_points[3]
    print corners[8],'->',world_points[8]
    print corners[9],'->',world_points[9]
    print corners[10],'->',world_points[10]
    print corners[35],'->',world_points[35]


    # Camera internals
    #-------------------
    # Intrinsic parameters==>>>lazy way!!!
    # print(size)
    # focal_length = size[1]
    # center = (size[1]/2, size[0]/2)
    # camera_matrix = np.array(
    #                          [[focal_length, 0, center[0]],
    #                          [0, focal_length, center[1]],
    #                          [0, 0, 1]], dtype = "double"
    #                          )
    #
    # print "Camera Matrix :\n {0}".format(camera_matrix)
    #
    # dist_coeffs = np.zeros((4,1)) # Assuming no lens distortion


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




    #Came here looking for an answer to this question and eventually found it, use cv2.cv2.SOLVEPNP_ITERATIVE instead of cv2.CV_ITERATIVE
    #(success, rotation_vector, translation_vector) = cv2.solvePnP(world_points,corners, camera_matrix, dist_coeffs, flags=cv2.SOLVEPNP_ITERATIVE)
    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points,corners, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)

    print "Rotation Vector:\n {0}".format(rotation_vector)
    print "Translation Vector:\n {0}".format(translation_vector)



    #Drawing 3D points on the scene
    _3d_corners = np.float32([[0,0,0], [4,0,0],[0,4,0],[0,0,-6]])
    print('_3d_corners')
    print(_3d_corners)
    print('cube_corners_2d')



    cube_corners_2d,aux = cv2.projectPoints(_3d_corners,rotation_vector,translation_vector,cameraMatrix_ar,distCoef_ar)
    print(type(cube_corners_2d))
    print(cube_corners_2d)
    print cube_corners_2d.shape #the output consists in 8 2-dimensional points



    #We can now plot limes on the 3D image using the cv2.line function:
    img=cv2.imread(tmpNameg) #load the correct image

    blue=(0,0,255) #
    red=(255,0,0) #
    green=(0,255,0) #green (in BGR)

    line_width=3

    #first draw the base in red
    cv2.line(img, tuple(cube_corners_2d[0][0]), tuple(cube_corners_2d[1][0]),green,line_width)#x
    cv2.line(img, tuple(cube_corners_2d[0][0]), tuple(cube_corners_2d[2][0]),blue,line_width)#y

    #now draw the pillars
    cv2.line(img, tuple(cube_corners_2d[0][0]), tuple(cube_corners_2d[3][0]),red,line_width)

    #Plotting!!!
    plt.subplot(221)
    plt.imshow(cv2.cvtColor(framec, cv2.COLOR_BGR2RGB))
    frame_copy=frame.copy()#gray
    cv2.drawChessboardCorners(frame_copy, (7,9), corners, ret)
    plt.subplot(222)
    plt.imshow(frame_copy)

    plt.subplot(223)
    plt.imshow(img)
    plt.show()







if __name__ == '__main__':

    main()



#
# # Project a 3D point (0, 0, 1000.0) onto the image plane.
# # We use this to draw a line sticking out of the nose
#
#
# (nose_end_point2D, jacobian) = cv2.projectPoints(np.array([(0.0, 0.0, 1000.0)]), rotation_vector, translation_vector, camera_matrix, dist_coeffs)
#
# for p in image_points:
#     cv2.circle(im, (int(p[0]), int(p[1])), 3, (0,0,255), -1)
#
#
# p1 = ( int(image_points[0][0]), int(image_points[0][1]))
# p2 = ( int(nose_end_point2D[0][0][0]), int(nose_end_point2D[0][0][1]))
#
# cv2.line(im, p1, p2, (255,0,0), 2)
#
# # Display image
# cv2.imshow("Output", im)
# cv2.waitKey(0)
