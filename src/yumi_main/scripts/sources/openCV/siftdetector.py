#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import cv2
import numpy as np

img = cv2.imread('linux1.jpg')
gray= cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

#sift = cv2.SIFT()
sift = cv2.xfeatures2d.SURF_create()
#kp = sift.detect(gray,None)
kp, des = sift.detectAndCompute(gray,None)

img=cv2.drawKeypoints(gray,kp,None, flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)

cv2.imwrite('sift_keypoints.jpg',img)
img2 = cv2.imread('sift_keypoints.jpg')

cv2.imshow('img',img2)
cv2.waitKey(0)
cv2.destroyAllWindows()
