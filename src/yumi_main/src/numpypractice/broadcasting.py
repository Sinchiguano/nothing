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



import numpy as np

start = np.zeros((4,3))
print(start)

# create a rank 1 ndarray with 3 values
add_rows = np.array([1, 0, 2])
print(add_rows)

y = start + add_rows  # add to each row of 'start' using broadcasting
print(y)


# create an ndarray which is 4 x 1 to broadcast across columns
add_cols = np.array([[0,1,2,3]])
print(add_cols.shape)
add_cols = add_cols.T
print(add_cols.shape)
print(add_cols)


# add to each column of 'start' using broadcasting
y = start + add_cols
print(y)
# this will just broadcast in both dimensions
add_scalar = np.array([1])
print(start+add_scalar)

# create our 3x4 matrix
arrA = np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
print(arrA)

# create our 4x1 array
arrB = [0,1,0,2]
print(arrB)

# add the two together using broadcasting
print(arrA + arrB)
