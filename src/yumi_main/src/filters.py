#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
#%matplotlib inline
import numpy as np
from scipy import misc
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from skimage import data
photo_data = misc.imread('./wifire/sd-3layers.jpg')
print("Shape of photo_data:", photo_data.shape)
low_value_filter = photo_data < 200
print("Shape of low_value_filter:", low_value_filter.shape)


#import random

# plt.figure(figsize=(10,10))
# plt.subplot(2, 2, 1)
# plt.imshow(photo_data)
# photo_data[low_value_filter] = 0
# plt.subplot(2, 2, 2)
# plt.imshow(photo_data)
# plt.show()

#More Row and Column Operations
photo_data = misc.imread('./wifire/sd-3layers.jpg')
print(len(photo_data))
rows_range = np.arange(len(photo_data))
cols_range = rows_range
print(type(rows_range))
print(rows_range.shape)
photo_data[rows_range, cols_range] = 255


# plt.figure(figsize=(10,10))
# plt.imshow(photo_data)
# plt.show()



photo_data = misc.imread('./wifire/sd-3layers.jpg')
print(len(photo_data))
print(photo_data.shape)

total_rows, total_cols, total_layers = photo_data.shape
print("photo_data = ", photo_data.shape)

X, Y = np.ogrid[:total_rows, :total_cols]
print("X = ", X.shape, " and Y = ", Y.shape)



center_row, center_col = total_rows / 2, total_cols / 2
#print("center_row = ", center_row, "AND center_col = ", center_col)
#print(X - center_row)
#print(Y - center_col)
dist_from_center = (X - center_row)**2 + (Y - center_col)**2
#print(dist_from_center)
radius = (total_rows / 2)**2
#print("Radius = ", radius)
circular_mask = (dist_from_center > radius)
#print(circular_mask)
#print(circular_mask[1500:1700,2000:2200])
print(circular_mask.shape)

photo_data[circular_mask]=255
#
# plt.figure(figsize=(10,10))
# plt.imshow(photo_data)
# plt.show()
#


X, Y = np.ogrid[:total_rows, :total_cols]
half_upper = X > center_row # this line generates a mask for all rows above the center


half_upper_mask = np.logical_and(half_upper, circular_mask)
#finalfilter=np.logical_and(half_upper_mask,half_upper3)
photo_data2 = misc.imread('./wifire/sd-3layers.jpg')

photo_data2[half_upper_mask]=255


#plt.show()

print(photo_data2.shape)
newone=np.array(photo_data2)

half_upper_mask=newone[:total_rows/2,:,:]=255


newone[half_upper_mask]=0


plt.figure(figsize=(10,10))
plt.subplot(3, 1, 1)
plt.imshow(photo_data)
plt.subplot(3, 1, 2)
plt.imshow(photo_data2)
plt.subplot(3, 1, 3)
plt.imshow(newone)
plt.show()
