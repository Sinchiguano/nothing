#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""
Everthing done with open3d, pyntcloud, CloudCompare, meshLab and python_pcl binding (wrapper)
--------------------------------------------------------------------------------------------
#Python 2.7 anaconda in a virtual environment working with ros, and extra "tensorflow"
#In order to change the format .obj(CAD model) to .ply(triangle mesh) do the following:
1_open Cloud compare and save a copy as .ply extension
#From .ply (triangle mesh) to .pcd(sample points) run the following code(meshtopc.py),
# meshtopc.py use the a pyntcloud that only run in python3 where i used the method to
# sample point from the mesh data, also use open3D in order to save as .pcd the sample points.
#finally, for processing the data i am working with python_pcl
-----------------------------------------------------------------------------------------
"""

import sys
sys.path.insert(0, '/home/sinchiguano/yumi_depends_ws/src/yumi_main/scripts/project')

#The order matters
from thesis_library import *
from thesis_class import *
from thesis_function import *
import glob

path_images='images_realsense/'


def main():
	# termination criteria
	criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

	# prepare object points for a 8x6 chess board
	objp = np.zeros((7*9,3), np.float32)
	objp[:,:2] = np.mgrid[0:9,0:7].T.reshape(-1,2)


	# Arrays to store object points and image points from all the images.
	objpoints = [] # 3d point in real world space
	imgpoints = [] # 2d points in image plane.

	images = glob.glob('images_realsense/*.jpg')

	for fname in images:
	    img = cv2.imread(fname)
	    gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

	    # Find the chess board corners
	    ret, corners = cv2.findChessboardCorners(gray, (7,9),None)

	    # If found, add object points, image points (after refining them)
	    if ret == True:
	        objpoints.append(objp)

	        corners2 = cv2.cornerSubPix(gray,corners,(11,11),(-1,-1),criteria)
	        imgpoints.append(corners2)

	        # Draw and display the corners
	        img = cv2.drawChessboardCorners(img, (7,9), corners2,ret)
	        cv2.imshow('img',img)
	        cv2.waitKey(500)

	cv2.destroyAllWindows()

	ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1],None,None)
	np.save('images_realsense/calibration', [mtx, dist, rvecs, tvecs])


	calibration_data = np.load('images_realsense/calibration.npy')
	mtx = calibration_data[0]
	dist = calibration_data[1]
	rvecs = calibration_data[2][1]
	tvecs = calibration_data[3][1]

	print(mtx)
	#print(dist)
	print(rvecs)
	print(tvecs)

if __name__ == '__main__':
    camObj=camera()
    main()





