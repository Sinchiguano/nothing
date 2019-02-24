#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
from yumi_lib import *
from yumi_class import MoveGroup,all_close,measurements
import numpy as np

# #Working range, top view
# x=27.4cm
# y=66.4cm

#Main loop!!!
def main():
    global safeJointPositionR
    global safeJointPositionL
    global gripperR
    global gripperL
    # Drive YuMi end effectors to a desired position (pose_ee), and perform a grasping task with a given effort (grip_effort)
    # Gripper effort: opening if negative, closing if positive, static if zero
    #pose_ee = [0.3, 0.15, 0.2, 0.0, 3.14, 3.14]
    #pose_ee = [0.07, 0.07, 0.10, 0.0, 3.14, 3.14]
    grip_effort = -10.0
    pandaHome=[0.8488374223590829, 0.5581720474448054, -0.9786018618041185, -1.1966322679792065, -2.5685301625296937, 2.655025641343976, -2.7018219903775953]

    # current pose of the end-effector panda_arm
    # Position x, y and z!!!
    # (0.7178623459394846, 0.19592706554820472, 0.1208276042327867)
    # Rotation in Euler convention (rpy)!!!
    # [-3.0771184966162384, 0.03685181271073941, -3.110391501956562]
    # Rotation in quaternion convention (x,y,z,w)!!!
    # (-0.014995402371666888, 0.9991984279239302, -0.03193482483174249, 0.018915773973701613)
    # pose_ee = [0.7178623459394846, 0.19592706554820472, 0.1208276042327867,
    # -3.0771184966162384, 0.03685181271073941, -3.110391501956562]
    counter=0
    pose_ee2 = [0.70, 0.10, 0.12,-3.0771184966162384, 0.03685181271073941, -3.110391501956562]


    mux, sigmax = 0.70, 0.10 # mean and standard deviation
    muy, sigmay = 0.11, 0.10


    while(True):

        counter+=1
        rospy.loginfo("counter: %s",counter)

        #############################################################
        ############################################################

        #print "\n============ Press `Enter` to execute a sample movement using a joint state goal ..."
        print "\n============ Press 1 home, 2 random or any number to do nothing==>>joint state goal ..."
        #raw_input()
        temp=raw_input()
        control_=int(temp)

        print('go_to_joint_goal\n')

        if control_==1:
            state=panda_arm.go_to_joint_state(pandaHome)
        elif control_==2:
            state=panda_arm.go_to_joint_state()
        else:
            print('nothing')

        measurements(panda_arm)


        #############################################################
        ############################################################

        print "\n============ Press `Enter` to execute a sample movement using a pose goal ..."
        raw_input()
        sx = np.random.normal(mux, sigmax, 1)
        sy = np.random.normal(muy, sigmay, 1)
        pose_ee = [sx[0], sy[0], 0.12,-3.0771184966162384, 0.03685181271073941, -3.110391501956562]


        state=panda_arm.go_to_pose_goal(pose_ee)
        measurements(panda_arm)


if __name__=='__main__':

    print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    raw_input()

    panda_arm=MoveGroup('panda_arm')
    measurements(panda_arm)



    main()
