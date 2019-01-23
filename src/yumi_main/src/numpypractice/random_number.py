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
Y = np.random.normal(size = (1,5))[0]
print(Y)
Z = np.random.randint(low=2,high=50,size=4)
print(Z)

tmp=np.random.permutation(Z) #return a new ordering of elements in Z
print(tmp)
print(np.random.uniform(size=4)) #uniform distribution)

print(np.random.normal(size=4) )#normal distribution)


K = np.random.randint(low=2,high=50,size=(2,2))
print(K)

print()
M = np.random.randint(low=2,high=50,size=(2,2))
print(M)

print(np.vstack((K,M)))

print(np.hstack((K,M)))

print(np.concatenate([K, M], axis = 0))
print(np.concatenate([K, M.T], axis = 1))
