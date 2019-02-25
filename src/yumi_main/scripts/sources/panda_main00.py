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
    pose_ee = [0.3, 0.15, 0.2, 0.0, 3.14, 3.14]
    #pose_ee = [0.07, 0.07, 0.10, 0.0, 3.14, 3.14]
    grip_effort = -10.0
    pandaHome=[0.8488374223590829, 0.5581720474448054, -0.9786018618041185, -1.1966322679792065, -2.5685301625296937, 2.655025641343976, -2.7018219903775953]

    counter=0
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

        print('go_to_joint_goal')
        print('------------------>>>>>>>>>>>>>>>>>>>')
        print('left arm moving!!!')#It is working fine and not complaint at all!!!!
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

        print('go_to_random_pose_goal')
        print('------------------------>>>>>>>>>>>>>>>>>>>')
        print('left arm moving!!!')
        state=False

        print('i am trying!!!')
        state=panda_arm.go_to_pose_goal()
        measurements(panda_arm)

        #############################################################
        # print('plan_cartesian_path')
        # raw_input()
        # print('I am working...')
        # yumiL.plan_cartesian_path()


if __name__=='__main__':

    print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    raw_input()

    panda_arm=MoveGroup('panda_arm')
    measurements(panda_arm)



    main()
