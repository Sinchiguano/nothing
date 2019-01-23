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


x = np.array([[111,112],[121,122]], dtype=np.int)
y = np.array([[211.1,212.1],[221.1,222.1]], dtype=np.float64)

print(x)
print()
print(y)

# add
print(x + y)         # The plus sign works
print()
print(np.add(x, y))  # so does the numpy function "add"


# subtract
print(x - y)
print()
print(np.subtract(x, y))


# multiply
print(x * y)
print()
print(np.multiply(x, y))

# divide
print(x / y)
print()
print(np.divide(x, y))


# square root
print(np.sqrt(x))

# exponent (e ** x)
print(np.exp(x))
