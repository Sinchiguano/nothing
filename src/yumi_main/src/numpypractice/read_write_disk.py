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


x = np.array([ 23.23, 24.24] )

np.save('an_array', x)
np.load('an_array.npy')


np.savetxt('array.txt', X=x, delimiter=',')


print(np.loadtxt('array.txt', delimiter=','))


# determine the dot product of two matrices
x2d = np.array([[1,1],[1,1]])
y2d = np.array([[2,2],[2,2]])

print(x2d.dot(y2d))
print()
print(np.dot(x2d, y2d))

# determine the inner product of two vectors
a1d = np.array([9 , 9 ])
b1d = np.array([10, 10])

print(a1d.dot(b1d))
print()
print(np.dot(a1d, b1d))

# dot produce on an array and vector
print(x2d.dot(a1d))
print()
print(np.dot(x2d, a1d))


# sum elements in the array
ex1 = np.array([[11,12],[21,22]])

print(np.sum(ex1))          # add all members

print(np.sum(ex1, axis=0))  # columnwise sum
print(np.sum(ex1, axis=1))  # rowwise sum


# random array
x = np.random.randn(8)
# another random array
y = np.random.randn(8)

print(x)
print(y)

# returns element wise maximum between two arrays
print('i am here again ')
print(np.maximum(x, y))

# grab values from 0 through 19 in an array
arr = np.arange(20)
print(arr)

# reshape to be a 4 x 5 matrix

print(arr.reshape(4,5))

# transpose
ex1 = np.array([[11,12],[21,22]])

print(ex1.T)


x_1 = np.array([1,2,3,4,5])

y_1 = np.array([11,22,33,44,55])

filter = np.array([True, False, True, False, True])
out = np.where(filter, x_1, y_1)
print(out)


mat = np.random.rand(5,5)
print(mat)
filter=np.where( mat > 0.5, 1000, -1)
print(filter)



arr_bools = np.array([ True, False, True, True, False ])
print(arr_bools.any())
print(arr_bools.all())
