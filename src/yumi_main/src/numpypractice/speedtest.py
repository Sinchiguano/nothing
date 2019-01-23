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


from numpy import arange
from timeit import Timer

size    = 1000000
timeits = 1000

# create the ndarray with values 0,1,2...,size-1
nd_array = arange(size)
print( type(nd_array) )



# timer expects the operation as a parameter,
# here we pass nd_array.sum()
timer_numpy = Timer("nd_array.sum()", "from __main__ import nd_array")

print("Time taken by numpy ndarray: %f seconds" %
      (timer_numpy.timeit(timeits)/timeits))
# create the list with values 0,1,2...,size-1
a_list = list(range(size))
print (type(a_list) )

# timer expects the operation as a parameter, here we pass sum(a_list)
timer_list = Timer("sum(a_list)", "from __main__ import a_list")

print("Time taken by list:  %f seconds" %
      (timer_list.timeit(timeits)/timeits))
