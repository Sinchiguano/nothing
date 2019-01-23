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

# setup a random 2 x 4 matrix
arr = 10 * np.random.randn(2,4)
print(arr)


# compute the mean for all elements
print(arr.mean())


# compute the means by row
print(arr.mean(axis = 1))

# compute the means by column
print(arr.mean(axis = 0))
