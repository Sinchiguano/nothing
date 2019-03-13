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



def main():
    camObj=camera()
    counter=0
    tmpName='temp.jpg'


    while(True):
        # Capture frame-by-frame
        counter+=1
        #Get point PointCloud2
        frame=camObj.get_image()

        if frame is None:
            print('no image!!!')
            continue
        # Our operations on the frame come here
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Display the resulting frame
        cv2.imshow('frame',gray)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            cv2.imwrite(tmpName,gray)
            break

        print('counter:',counter)


    #import the image!!!
    frame = cv2.imread('temp.jpg')
    ret, corners = cv2.findChessboardCorners(frame, (7,9))
    print (corners.shape)
    print('ret',ret)
    print('------------------')

    #To handle the corners array more easily, we can reshape it as follows
    corners=corners.reshape(-1,2)#undefied number of rows
    print corners.shape
    print corners[0]


    #Plotting!!!

    plt.subplot(221)
    plt.imshow(frame)
    frame_copy=frame.copy()
    cv2.drawChessboardCorners(frame_copy, (7,9), corners, ret)
    plt.subplot(222)
    plt.imshow(frame_copy)




    import numpy as np

    x,y=np.meshgrid(range(7),range(9))
    print ("x:  ",' -- ',  "y:\n")
    print(x.shape)
    print (x[:,:])
    print(y.shape)
    print(y[:,:])


    #To obtain our vector,
    #we first reshape the matrices x and y to obtain column vectors. Then, we stack the vectors vertically and add a vector with 42 zeros. We finally convert the array into an array of floats:
    world_points=np.hstack((x.reshape(63,1),y.reshape(63,1),np.zeros((63,1)))).astype(np.float32)
    print world_points
    print world_points.shape

    #We now have our correspondences between 3D and 2D points,
    #i.e., each row of world_points corresponds to a row of corners.
    #We can show some of these correspondences:
    print('/////////////////////////////////')
    print corners[0],'->',world_points[0]
    print corners[35],'->',world_points[35]




    _3d_points=[]
    _2d_points=[]

    im=cv2.imread('temp.jpg')
    ret, corners = cv2.findChessboardCorners(im, (7,9))

    if ret: #add points only if checkerboard was correctly detected:
        _2d_points.append(corners) #append current 2D points
        _3d_points.append(world_points) #3D points are always the same


    # import copy
    list_matrix=[529.3652640113527, 0, 310.3141830332983, 0, 540.6164768242445, 220.3657848482968, 0, 0, 1]
    cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    print(cameraMatrix_ar.shape)
    print(cameraMatrix_ar)
    print(cameraMatrix_ar[1,:])

    distCoef=[0.1852661379687586, -0.264551739977949, -0.03684812841833995, 0.0009882520270208214, 0]
    distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)
    print(distCoef_ar)
    print(distCoef_ar.shape)

    ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(_3d_points,_2d_points, (frame.shape[1],frame.shape[0]),cameraMatrix_ar,distCoef_ar)
    print "Ret:",ret
    print "Mtx:",mtx," ----------------------------------> [",mtx.shape,"]"
    print "Dist:",dist," ----------> [",dist.shape,"]"
    print "rvecs:",rvecs," --------------------------------------------------------> [",rvecs[0].shape,"]"
    print "tvecs:",tvecs," -------------------------------------------------------> [",tvecs[0].shape,"]"

    print(type(rvecs))
    print(type(tvecs))
    print(len(rvecs))
    print(len(tvecs))
    print(rvecs)
    #print(tvecs)

    #Drawing 3D points on the scene
    _3d_corners = np.float32([[0,0,0], [0,3,0], [3,3,0], [3,0,0],[0,0,-3],[0,3,-3],[3,3,-3],[3,0,-3]])

    cube_corners_2d,aux = cv2.projectPoints(_3d_corners,rvecs[0],tvecs[0],mtx,dist)


    print cube_corners_2d.shape #the output consists in 8 2-dimensional points



    #We can now plot limes on the 3D image using the cv2.line function:
    img=cv2.imread('temp.jpg') #load the correct image

    red=(0,0,255) #red (in BGR)
    blue=(255,0,0) #blue (in BGR)
    green=(0,255,0) #green (in BGR)
    line_width=2

    #first draw the base in red
    cv2.line(img, tuple(cube_corners_2d[0][0]), tuple(cube_corners_2d[1][0]),red,line_width)
    #cv2.line(img, tuple(cube_corners_2d[1][0]), tuple(cube_corners_2d[2][0]),red,line_width)
    #cv2.line(img, tuple(cube_corners_2d[2][0]), tuple(cube_corners_2d[3][0]),red,line_width)
    cv2.line(img, tuple(cube_corners_2d[3][0]), tuple(cube_corners_2d[0][0]),red,line_width)

    #now draw the pillars
    cv2.line(img, tuple(cube_corners_2d[0][0]), tuple(cube_corners_2d[4][0]),blue,line_width)


    plt.subplot(223)
    plt.imshow(img[...,::-1])
    plt.show()
    # When everything done, release the capture

    cv2.destroyAllWindows()




if __name__ == '__main__':

    main()
