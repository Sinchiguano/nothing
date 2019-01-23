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

photo_data = misc.imread('./wifire/sd-3layers.jpg')
red_mask   = photo_data[:, : ,0] < 150

# photo_data[red_mask] = 0
# plt.figure(figsize=(15,15))
# plt.imshow(photo_data)
# plt.show()


photo_data = misc.imread('./wifire/sd-3layers.jpg')
red_mask   = photo_data[:, : ,1] < 150

# photo_data[red_mask] = 0
# plt.figure(figsize=(15,15))
# plt.imshow(photo_data)
# plt.show()


photo_data = misc.imread('./wifire/sd-3layers.jpg')

red_mask   = photo_data[:, : ,0] < 150
green_mask = photo_data[:, : ,1] > 100
blue_mask  = photo_data[:, : ,2] < 100

final_mask = np.logical_and(red_mask, green_mask, blue_mask)
photo_data[final_mask] = 0
plt.figure(figsize=(15,15))
plt.imshow(photo_data)
