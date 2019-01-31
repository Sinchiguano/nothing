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




def main():
	camObj=camera()
	counter=0
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
	        break
	        
		ret, corners = cv2.findChessboardCorners(frame, (7,6))	
		
		print (corners.shape)
		print('ret',ret)
	    #print('------------------')
	    #print('counter:',counter)
	    #exit()


# When everything done, release the capture
cv2.destroyAllWindows()




if __name__ == '__main__':

    main()