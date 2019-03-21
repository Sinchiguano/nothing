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

#Working range, top view
#x=27.4cm
#y=66.4cm
#Main loop!!!
def main():
    global homeR
    global homeL
    global safeJointPositionR
    global safeJointPositionL
    counter=0

    while(True):

        counter+=1
        rospy.loginfo("counter: %s",counter)

        #############################################################
        ############################################################

        print "\n============ Press `Enter` to execute a sample movement using a joint state goal ..."
        raw_input()

        print('go_to_joint_goal')
        print('------------------>>>>>>>>>>>>>>>>>>>')
        print('left arm moving!!!')#It is working fine and not complaint at all!!!!
        state=yumiL.go_to_joint_state(safeJointPositionL)

        measurements(yumiL)

        time.sleep(3)

        print('go_to_joint_goal')
        print('------------------>>>>>>>>>>>>>>>>>>>')
        print('right arm moving!!!')#It ain't working fine in real robot some complaint always!!!!
        state=yumiR.go_to_joint_state(safeJointPositionR)

        measurements(yumiR)

        time.sleep(3)

        #############################################################
        ############################################################

        print "\n============ Press `Enter` to execute a sample movement using a pose goal ..."
        raw_input()

        print('go_to_random_pose_goal')
        print('------------------------>>>>>>>>>>>>>>>>>>>')
        print('left arm moving!!!')
        state=False
        while(not state):
            print('i am trying!!!')
            #state=yumiL.go_to_pose_goal(homeL)#homeL, go to the home position for the left-robot arm
            state=yumiL.go_to_pose_goal(homeL)
        print('done!!!')
        measurements(yumiL)


        time.sleep(3)


        # print('go_to_random_pose_goal')
        # print('---------------------->>>>>>>>>>>>>>>>>>>')
        # print('right arm moving!!!')
        # state=False
        # while(not state):
        #     print('i am trying!!!')
        #     state=yumiR.go_to_pose_goal(homeR)##homeL, go to the home position for the right-robot arm
        # print('done!!!')
        # measurements(yumiR)

        #############################################################
        ############################################################

        #
        # print('plan_cartesian_path')
        # raw_input()
        # print('I am working...')
        # yumiL.plan_cartesian_path()
        # measurements(yumiL)

        # measurements(yumiL)
        # measurements(yumiR)


if __name__=='__main__':

    print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    raw_input()
    yumiR=MoveGroup('right_arm')
    yumiL=MoveGroup('left_arm')

    measurements(yumiL)
    measurements(yumiR)

    main()
