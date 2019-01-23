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
        print "============ Planning frame: %s" % planning_frame

        # We can also print the name of the end-effector link for this group:
        eef_link = move_group.get_end_effector_link()
        print "============ End effector link: %s" % eef_link

        # We can get a list of all the groups in the robot:
        group_names = robot.get_group_names()
        print "============ Available Planning Groups:", robot.get_group_names()

        # Sometimes for debugging it is useful to print the entire state of the
        # robot:
        print "============ Printing robot state"
        print robot.get_current_state()
        print ""

        print('--------------------------------------------')
        ''''Get the current pose of the end-effector of the group.'''
        print(move_group.get_current_pose().pose)

        # Misc variables
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names
        self.tag_name=temp

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

        # The go command can be called with joint values, poses, or without any
        # parameters if you have already set the pose or joint target for the group
        move_group.go(joint_goal, wait=True)

        # Calling ``stop()`` ensures that there is no residual movement
        move_group.stop()

        # #just for debugging!!!!!
        # print('#####################################')
        # print('current joints values'+self.tag_name)
        # print('-----------------------------------')
        # print(move_group.get_current_joint_values())
        # # ''''Get the current pose of the end-effector of the group.'''
        # print('current pose of the end-effector'+self.tag_name)
        # print('-----------------------------------')
        # print(move_group.get_current_pose().pose)
        # print('#####################################')

        # For testing:
        current_joints = move_group.get_current_joint_values()
        print(all_close(joint_goal, current_joints, 0.01))
    def go_to_pose_goal(self):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## We can plan a motion for this group to a desired pose for the
        ## end-effector:
        pose_goal = geometry_msgs.msg.Pose()
        pose_goal.orientation.w = 1.0
        pose_goal.position.x = 0.4
        pose_goal.position.y = 0.1
        pose_goal.position.z = 0.4

        move_group.set_pose_target(pose_goal)

        ## Now, we call the planner to compute the plan and execute it.
        plan = move_group.go(wait=True)
        # Calling `stop()` ensures that there is no residual movement
        move_group.stop()
        # It is always good to clear your targets after planning with poses.
        # Note: there is no equivalent function for clear_joint_value_targets()
        move_group.clear_pose_targets()

        # For testing:
        # Note that since this section of code will not be included in the tutorials
        # we use the class variable rather than the copied state variable
        current_pose = move_group.get_current_pose().pose
        return all_close(pose_goal, current_pose, 0.01)
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
        waypoints = []

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
        move_group.execute(plan, wait=True)
        ## END_R

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

    return True

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
    print('____________________________________')
    #def go_home_right():

    # current joints values right_arm
    # -----------------------------------
    # [-2.5171647106405346, 0.4277890587290749, 2.3791052164456805, 0.7337493151448201, 1.0396226898721885, -0.48743266510735267, 0.5965813175199091]
    # current pose of the end-effector right_arm
    # -----------------------------------
    # position:
    #   x: 0.404118756348
    #   y: -0.0755036105916
    #   z: 0.357075018308
    # orientation:
    #   x: -0.516011348617
    #   y: 0.822020262955
    #   z: 0.0473985492839
    #   w: 0.236153240324

#Main loop!!!
def main():

    print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    raw_input()
    yumiR=MoveGroup('right_arm')
    yumiL=MoveGroup('left_arm')

    counter=0
    while(True):

        print "\n============ Press `Enter` to execute a sample movement using a joint state goal ..."
        raw_input()

        print('I am working...')
        yumiR.go_to_joint_state()#true define a zero joints values
        measurements(yumiR)

        #raw_input()
        #yumiR.plan_cartesian_path()#true define a zero joints values

        #raw_input()
        #yumiR.go_to_pose_goal()




        #measurements(yumiR)


        time.sleep(5)



        #print('I am working...')
        #yumiL.go_to_joint_state(False)#true means zero values for all the joints
        #measurements(yumiL)

        counter+=1
        rospy.loginfo("counter: %s",counter)



if __name__=='__main__':
    main()
