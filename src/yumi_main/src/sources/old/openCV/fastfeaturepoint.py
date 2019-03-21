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

img = cv2.imread('linux1.jpg')
gray= cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

# Initiate FAST object with default values
#fast = cv2.FastFeatureDetector()

# Initiate FAST object with default values
fast = cv2.FastFeatureDetector_create(threshold=25)

# find and draw the keypoints
kp = fast.detect(img,None)

#img2 = cv2.drawKeypoints(img, kp, color=(255,0,0))
img2=cv2.drawKeypoints(gray,kp,color=(255,0,0))3


# Print all default params
print "Threshold: ", fast.getInt('threshold')
print "nonmaxSuppression: ", fast.getBool('nonmaxSuppression')
print "neighborhood: ", fast.getInt('type')
print "Total Keypoints with nonmaxSuppression: ", len(kp)

cv2.imwrite('fast_true.png',img2)

# Disable nonmaxSuppression
fast.setBool('nonmaxSuppression',0)
kp = fast.detect(img,None)

print "Total Keypoints without nonmaxSuppression: ", len(kp)

img3 = cv2.drawKeypoints(img, kp, color=(255,0,0))

cv2.imwrite('fast_false.png',img3)


cv2.imshow('img',img2)
cv2.waitKey(0)
cv2.destroyAllWindows()
