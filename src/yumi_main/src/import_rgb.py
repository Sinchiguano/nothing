#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import numpy as np
from scipy import misc
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from skimage import data

# photo_data = misc.imread('sd-3layers.jpg')
#
# print(type(photo_data))
# #Let's see what is in this image.
# plt.figure(figsize=(15,15))
# plt.imshow(photo_data)
# #plt.show()
#
# #photo_data.shape
# print(photo_data.shape)
# print(photo_data.size)
# print(photo_data.min(), photo_data.max(),photo_data.mean())
# print(photo_data[150, 250])
# print(photo_data[150, 250, 1])

## Changing colors in a Range
# photo_data = misc.imread('sd-3layers.jpg')
# photo_data[200:800, : ,1] = 255
# plt.figure(figsize=(10,10))
# plt.imshow(photo_data)
# #plt.show()


# photo_data = misc.imread('sd-3layers.jpg')
#
# photo_data[200:800, :] = 255
# plt.figure(figsize=(10,10))
# plt.imshow(photo_data)
# #plt.show()


photo_data = misc.imread('sd-3layers.jpg')

photo_data[200:800, :] = 0
plt.figure(figsize=(10,10))
plt.imshow(photo_data)
plt.show()
