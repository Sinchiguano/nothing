#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
import time
import tf
import math

class MoveGroup(object):
    """MoveGroup_Python"""
    def __init__(self,temp):
        ## First initialize `moveit_commander`_ and a `rospy`_ node:
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_group_python', anonymous=True)

        ## Instantiate a `RobotCommander`_ object. Provides information such as the robot's
        ## kinematic model and the robot's current joint states
        robot = moveit_commander.RobotCommander()

        ## Instantiate a `PlanningSceneInterface`_ object.  This provides a remote interface
        ## for getting, setting, and updating the robot's internal understanding of the
        ## surrounding world:
        scene = moveit_commander.PlanningSceneInterface()

        ## Instantiate a `MoveGroupCommander`_ object.  This object is an interface
        ## to a planning group (group of joints).  In this tutorial the group is the primary
        ## arm joints in the Panda robot, so we set the group's name to "panda_arm".
        ## If you are using a different robot, change this value to the name of your robot
        ## arm planning group.
        ## This interface can be used to plan and execute motions:
        group_name = temp
        move_group = moveit_commander.MoveGroupCommander(group_name)

        ## Create a `DisplayTrajectory`_ ROS publisher which is used to display
        ## trajectories in Rviz:
        display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                       moveit_msgs.msg.DisplayTrajectory,
                                                       queue_size=20)

        ## Getting Basic Information
        # We can get the name of the reference frame for this robot:
        planning_frame = move_group.get_planning_frame()
        #print "============ Planning frame: %s" % planning_frame

        # We can also print the name of the end-effector link for this group:
        eef_link = move_group.get_end_effector_link()
        #print "============ End effector link: %s" % eef_link

        # We can get a list of all the groups in the robot:
        group_names = robot.get_group_names()
        print "============ Available Planning Groups:", robot.get_group_names()

        # Sometimes for debugging it is useful to print the entire state of the
        # robot:
        # print "============ Printing robot state"
        # print robot.get_current_state()
        # print ""
        #
        # print('--------------------------------------------')
        # ''''Get the current pose of the end-effector of the group.'''
        # print(move_group.get_current_pose().pose)

        # Misc variables
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names
        self.name_arm=group_name
        self.tag_name=temp#ok

    def go_home_position(self):

        move_group = self.move_group

        if self.name_arm=='left_arm':
            joint_goal=[-1.845768699422479e-05, -2.109795669093725e-06, 1.4047721447423106e-05, -3.6027386691421274e-05, -1.456058723852038e-05, -4.4025388918817046e-05, -1.199572579935193e-06]
        elif self.name_arm=='right_arm':
            joint_goal=[-0.005569453118216326, -1.5947840646038414, 1.4729504853040032, 0.23260970845331136, 0.7389396436202457, -1.1804346690625538, -0.5916526094597344]

        # The go command can be called with joint values, poses, or without any
        # parameters if you have already set the pose or joint target for the group
        move_group.go(joint_goal, wait=True)

        # Calling ``stop()`` ensures that there is no residual movement
        move_group.stop()

        # For testing:
        current_joints = move_group.get_current_joint_values()

        success=all_close(joint_goal, current_joints, 0.01)
        print '//////////////////'
        print('Success! ',success)
        return success

    def go_to_joint_state(self,aux=False):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## Planning to a Joint Goal
        # We can get a random joint values from the group:
        if aux:
            joint_goal=[0, 0, 0, 0, 0, 0, 0]
        else:
            joint_goal=move_group.get_random_joint_values()

        #plan to the new joint space goal and visualize the plan
        move_group.set_joint_value_target(joint_goal)

        plan1 = move_group.plan()

        # The go command can be called with joint values, poses, or without any
        # parameters if you have already set the pose or joint target for the group

        print "\n============ Enter #1 to execute or any number to skip the plan!"
        temp=raw_input()
        control_signal=int(temp)

        if control_signal==1:
            # Uncomment below line when working with a real robot
            move_group.go(wait=True)

            # Calling ``stop()`` ensures that there is no residual movement
            move_group.stop()
        # For testing:
        current_joints = move_group.get_current_joint_values()

        success=all_close(joint_goal, current_joints, 0.01)
        print '//////////////////'
        print('Success! ',success)
        return success#ok

    def go_to_pose_goal(self,home=False):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        # pose_target_home = geometry_msgs.msg.Pose()
        # pose_target_home.position.x = -0.0135517801478
        # pose_target_home.position.y = -0.175576803634
        # pose_target_home.position.z = 0.205647299482
        # pose_target_home.orientation.x = -0.10506355889
        # pose_target_home.orientation.y = 0.833919340149
        # pose_target_home.orientation.z = 0.0820622128384
        # pose_target_home.orientation.w =  0.535542692923

        pose_target_home = geometry_msgs.msg.Pose()
        pose_target_home.position.x = 0.357389156118
        pose_target_home.position.y = 0.275874934739
        pose_target_home.position.z = 0.917220462903
        pose_target_home.orientation.x = 0.089213920968
        pose_target_home.orientation.y = 0.101121678647
        pose_target_home.orientation.z = 0.91023023576
        pose_target_home.orientation.w = 0.391530586699


        if home:
            pose_target=pose_target_home
        else:
            ## We can plan a motion for this group to a desired pose for the
            ## end-effector:
            pose_goal=move_group.get_random_pose(end_effector_link = self.eef_link)
            pose_target=pose_goal.pose


        move_group.set_pose_target(pose_target)


        #Now, we call the planner to compute the plan. Note that we are just planning,
        #not asking move_group to actually move the robot
        plan2 = move_group.plan()


        print "\n============ Enter #1 to execute or any number to skip the plan!"
        temp=raw_input()
        control_signal=int(temp)

        if control_signal==1:
            # Uncomment below line when working with a real robot
            ## Now, we call the planner to compute the plan and execute it.
            move_group.go(wait=True)



        # Calling `stop()` ensures that there is no residual movement
        move_group.stop()
        # It is always good to clear your targets after planning with poses.
        # Note: there is no equivalent function for clear_joint_value_targets()
        move_group.clear_pose_targets()

        # For testing:
        # Note that since this section of code will not be included in the tutorials
        # we use the class variable rather than the copied state variable
        current_pose = move_group.get_current_pose().pose
        #print(current_pose)
        #exit()
        success=all_close(pose_target, current_pose, 0.01)
        print '////////////////////'
        print('Success! ',success)
        return success#ok#ok#ok

    def plan_cartesian_path(self, scale=1):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## Cartesian Paths
        ## You can plan a Cartesian path directly by specifying a list of waypoints
        ## for the end-effector to go through. If executing  interactively in a
        ## Python shell, set scale = 1.0.
        ##
        waypoints = list()

        wpose = move_group.get_current_pose().pose
        wpose.position.z -= scale * 0.1  # First move up (z)
        wpose.position.y += scale * 0.2  # and sideways (y)
        waypoints.append(copy.deepcopy(wpose))

        wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
        waypoints.append(copy.deepcopy(wpose))

        wpose.position.y -= scale * 0.1  # Third move sideways (y)
        waypoints.append(copy.deepcopy(wpose))

        # We want the Cartesian path to be interpolated at a resolution of 1 cm
        # which is why we will specify 0.01 as the eef_step in Cartesian
        # translation.  We will disable the jump threshold by setting it to 0.0,
        # ignoring the check for infeasible jumps in joint space, which is sufficient
        # for this tutorial.
        (plan, fraction) = move_group.compute_cartesian_path(
                                           waypoints,   # waypoints to follow
                                           0.01,        # eef_step
                                           0.0)         # jump_threshold

        # Note: We are just planning, not asking move_group to actually move the robot yet:
        #return plan, fraction

        #we command the robot to execute the movement!!!#ok##
        move_group.execute(plan, wait=True)#ok


def all_close(goal, actual, tolerance):
    """
    Convenience method for testing if a list of values are within a tolerance of their counterparts in another list
    @param: goal       A list of floats, a Pose or a PoseStamped
    @param: actual     A list of floats, a Pose or a PoseStamped
    @param: tolerance  A float
    @returns: bool
    """
    all_equal = True
    if type(goal) is list:
        for index in range(len(goal)):
            if abs(actual[index] - goal[index]) > tolerance:
                return False

    elif type(goal) is geometry_msgs.msg.PoseStamped:
        return all_close(goal.pose, actual.pose, tolerance)

    elif type(goal) is geometry_msgs.msg.Pose:
        return all_close(pose_to_list(goal), pose_to_list(actual), tolerance)

    return True#ok

def measurements(arm_name):
    #just for debugging!!!!!
    print('#####################################')
    print('current joints values '+arm_name.tag_name)
    print('-----------------------------------')
    print(arm_name.move_group.get_current_joint_values())
    # ''''Get the current pose of the end-effector of the group.'''
    print('current pose of the end-effector '+arm_name.tag_name)
    print('-----------------------------------')
    print(arm_name.move_group.get_current_pose().pose)
    print('____________________________________')#ok


#Main loop!!!
def main():

    print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    raw_input()
    yumiR=MoveGroup('right_arm')
    yumiL=MoveGroup('left_arm')

    # while(True):
    #     print "\n============ Enter #3 to send the both arms into home position, or #6 to continue!!!"
    #     temp=raw_input()
    #     control_signal=int(temp)
    #     print(control_signal)
    #     print(type(control_signal))
    #
    #     try:
    #         if control_signal==3:
    #             print('I am working left_arm...')
    #             yumiL.go_home_position()
    #             #yumiL.go_to_joint_state()
    #             time.sleep(3)
    #             print('I am working right_arm...')
    #             yumiR.go_home_position()
    #             #yumiR.go_to_joint_state()
    #             time.sleep(3)
    #             print('done!!!')
    #
    #
    #             break
    #         elif control_signal==6:
    #             print('continue!!!')
    #             break
    #     except:
    #         continue #no working yet!!!

    measurements(yumiL)
    measurements(yumiR)
    counter=0

    while(True):

        print "\n============ Press `Enter` to execute a sample movement using a joint state goal ..."
        raw_input()

        counter+=1
        rospy.loginfo("counter: %s",counter)

        #//////////////////////////
        print('go_to_joint_goal')
        # print()
        # print('I am working...')#
        # state=yumiR.go_to_joint_state()#true define a zero joints values
        # measurements(yumiR)
        #
        # time.sleep(5)

        print()
        print('I am working...')#It is working fine and not complaint at all!!!!
        yumiL.go_to_joint_state()#true means zero values for all the joints
        measurements(yumiL)


        # #Thursday 10-January
        # #//////////////////////////
        print('Enter to go_to_random_pose_goal')
        raw_input()
        print('I am working...')
        state=yumiL.go_to_pose_goal()
        measurements(yumiL)


        if state:
            print('plan_cartesian_path')
            raw_input()
            print('I am working...')
            yumiL.plan_cartesian_path()
            measurements(yumiL)

        measurements(yumiL)
        measurements(yumiR)


if __name__=='__main__':
    main()
