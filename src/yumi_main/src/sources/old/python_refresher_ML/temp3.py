#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
# Matrix reshaping


import numpy as np

X = np.arange(16) # makes a rank-1 array of integers from 0 to 15
X_square = np.reshape(X, (4, 4)) # reshape X into a 4 x 4 matrix
X_rank_3 = np.reshape(X, (2, 2, 4)) # reshape X to be 2 x 2 x 4 --a rank-3 array
X_third_dimension=X_rank_3# consider as two rank-2 arrays with 2 rows and 4 columns
print("Rank-1 array X: \n")
print(X)
print("\n Reshaped into a square matrix: \n")
print(X_square)
print("\n Reshaped into a rank-3 array with dimensions 2 x 2 x 4: \n")
print(X_third_dimension)


import numpy as np
import matplotlib.pyplot as plt

# We'll start with a parabola
# Compute the parabola's x and y coordinates
x = np.arange(-5, 5, 0.1)
y = np.square(x)

# Use matplotlib for the plot
# plt.plot(x, y, 'b') # specify the color blue for the line
# plt.xlabel('X-Axis Values')
# plt.ylabel('Y-Axis Values')
# plt.title('First Plot: A Parabola')
# #plt.show() # required to actually display the plot
#

import numpy as np
import matplotlib.pyplot as plt

# X = np.identity(10)
# identity_matrix_image = plt.imshow(X, cmap="Greys_r")
# plt.show()

# Now plot a random matrix, with a different colormap
A = np.random.randn(10, 10)
print(A)
random_matrix_image = plt.imshow(A)
plt.show()
