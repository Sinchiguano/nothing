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
# create a 3x2 array
an_array = np.array([[11,12], [21, 22], [31, 32]])
print(an_array)


# create a filter which will be boolean values for whether each element meets this condition
filter = (an_array > 15)
print(filter)
# we can now select just those elements which meet that criteria
print(an_array[filter])

filter1=(an_array % 2 == 0)
print(filter1)
print(an_array[filter1])


an_array[(an_array % 2 == 0)] +=1000
print(an_array)

ex1 = np.array([11, 12]) # Python assigns the  data type
print(ex1.dtype)

ex2 = np.array([11.0, 12.0]) # Python assigns the  data type
print(ex2.dtype)

ex3 = np.array([11, 21], dtype=np.int64) #You can also tell Python the  data type
print(ex3.dtype)

# you can use this to force floats into integers (using floor function)
ex4 = np.array([11.1,12.7], dtype=np.int64)
print(ex4.dtype)
print()
print(ex4)


# you can use this to force integers into floats if you anticipate
# the values may change to floats later
ex5 = np.array([11, 21], dtype=np.float64)
print(ex5.dtype)
print()
print(ex5)
