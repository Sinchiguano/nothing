#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import apriltag
import cv2


orig = cv2.imread('tmp1.jpg')

while(True):
    if orig is None:
        continue
    if len(orig.shape) == 3:
        gray = cv2.cvtColor(orig, cv2.COLOR_RGB2GRAY)
    else:
        gray = orig


    detector = apriltag.Detector()
    #detections, dimg = detector.detect(gray, return_image=True)
    result = detector.detect(gray, return_image=True)


    print(len(result))
    print(result)
    # tf = result[0].tag_family
    # cx = result[0].center[0]
