#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""

"""

import pcl
import numpy as np
from open3d import *
import numpy as np
import copy


t_ = np.asarray([[0.01329691,  0.81253459, -0.5827613, 0.52167439],
                [0.9992968,  -0.03123286, -0.02074644, 0.08662894],
                [-0.0350585,  -0.58207564, -0.81237852, 0.63682005],
                [0.0, 0.0, 0.0, 1.0]])
target = read_point_cloud('pointcloud1.pcd')

draw_geometries([target])

target.transform(t_)
print('done')
draw_geometries([target])