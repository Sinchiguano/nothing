#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import numpy as np
import cv2
from matplotlib import pyplot as plt

# # # # Load an color image in grayscale
# # # img = cv2.imread('linux1.jpg',cv2.IMREAD_COLOR)
# # # cv2.imshow('image',img)
# # # cv2.waitKey(0)
# # # cv2.destroyAllWindows()
# # #
# # # plt.imshow(img, cmap = 'gray', interpolation = 'bicubic')
# # # plt.xticks([]), plt.yticks([])  # to hide tick values on X and Y axis
# # # plt.show()
# #
# #
# # cap = cv2.VideoCapture(0)
# #
# # while(cap.isOpened()):
# #     # Capture frame-by-frame
# #     status, frame = cap.read()
# #
# #     # Our operations on the frame come here
# #     gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
# #
# #     # Display the resulting frame
# #     cv2.imshow('frame',gray)
# #
# #     if cv2.waitKey(1) & 0xFF == ord('q'):
# #         break
# #
# # # When everything done, release the capture
# # cap.release()
# # cv2.destroyAllWindows()
#
# cap = cv2.VideoCapture(0)
#
# # Define the codec and create VideoWriter object
# fourcc = cv2.VideoWriter_fourcc(*'XVID')
# out = cv2.VideoWriter('output.avi',fourcc, 20.0, (640,480))
#
# while(cap.isOpened()):
#     ret, frame = cap.read()
#     if ret==True:
#         frame = cv2.flip(frame,0)
#
#         # write the flipped frame
#         out.write(frame)
#
#         cv2.imshow('frame',frame)
#         if cv2.waitKey(1) & 0xFF == ord('q'):
#             break
#     else:
#         break
#
# # Release everything if job is finished
# cap.release()
# out.release()
# cv2.destroyAllWindows()

#drawing line!!!
import numpy as np
import cv2

# Create a black image
img = np.zeros((512,512,3), np.uint8)

# Draw a diagonal blue line with thickness of 5 px
img = cv2.line(img,(0,0),(511,511),(255,0,0),5)


img = cv2.rectangle(img,(384,0),(510,128),(0,255,0),3)

#Drawing Circle
#To draw a circle, you need its center coordinates and radius. We will draw a circle inside the rectangle drawn above.

img = cv2.circle(img,(447,63), 63, (0,0,255), -1)

img = cv2.ellipse(img,(256,256),(100,50),0,0,180,255,-1)

pts = np.array([[10,5],[20,30],[70,20],[50,10]], np.int32)
print(pts.shape)

pts = pts.reshape((-1,1,2))
print(pts.shape)

img = cv2.polylines(img,[pts],True,(0,255,255))


cv2.imshow('frame',img)
cv2.waitKey(0)
cv2.destroyAllWindows()
