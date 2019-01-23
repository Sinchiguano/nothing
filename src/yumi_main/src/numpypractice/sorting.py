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




# create a 10 element array of randoms
unsorted = np.random.randn(10)

print(unsorted)


# create copy and sort
sorted = np.array(unsorted)
sorted.sort()

print(sorted)
print()
print(unsorted)


# inplace sorting
unsorted.sort()

print(unsorted)

array = np.array([1,2,1,4,2,1,4,2])

print(np.unique(array))



s1 = np.array(['desk','chair','bulb'])
s2 = np.array(['lamp','bulb','chair'])
print(s1, s2)

print( np.intersect1d(s1, s2) )
print( np.union1d(s1, s2) )

print( np.setdiff1d(s1, s2) )# elements in s1 that are not in s2
print( np.in1d(s1, s2) )#which element of s1 is also in s2
