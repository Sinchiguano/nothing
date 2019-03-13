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

homeR = geometry_msgs.msg.Pose()
homeR.position.x,homeR.position.y,homeR.position.z = [0.31904405794778906, -0.3284920583161817, 0.6984991887523065]
homeR.orientation.x,homeR.orientation.y,homeR.orientation.z,homeR.orientation.w =[-0.009719666438756545, -0.09710835540876304, -0.18292187164375068, 0.9782714777956433]



homeL = geometry_msgs.msg.Pose()
homeL.position.x,homeL.position.y,homeL.position.z = [0.46821338081656927, 0.12585791156846327, 0.734817472344703]
homeL.orientation.x,homeL.orientation.y,homeL.orientation.z,homeL.orientation.w =[0.1865207864756031, 0.20091758958393782, -0.7253325419389011, 0.6314545288560021]



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

    def go_to_joint_state(self):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## Planning to a Joint Goal
        # We can get a random joint values from the group:
        joint_goal=move_group.get_random_joint_values()

        #plan to the new joint space goal and visualize the plan
        move_group.set_joint_value_target(joint_goal)

        plan1 = move_group.plan()

        # The go command can be called with joint values, poses, or without any
        # parameters if you have already set the pose or joint target for the group

        # print "\n============ Enter #1 to execute or any number to skip the plan!"
        # temp=raw_input()
        # control_signal=int(temp)
        #
        # if control_signal==1:

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

    def go_to_pose_goal(self,pose_goal=None):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group



        if pose_goal:
            print('pose goal!!!')
            print(pose_goal)
            exit
            pose_target=pose_goal
        else:
            ## We can plan a motion for this group to a desired pose for the
            ## end-effector:
            print('random')
            pose_goal=move_group.get_random_pose(end_effector_link = self.eef_link)
            pose_target=pose_goal.pose

        move_group.set_pose_target(pose_target)

        #Now, we call the planner to compute the plan. Note that we are just planning,
        #not asking move_group to actually move the robot
        plan2 = move_group.plan()


        print "\n============ Enter #1 to execute or any number to skip the execution!"
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
        (plan3, fraction) = move_group.compute_cartesian_path(
                                           waypoints,   # waypoints to follow
                                           0.01,        # eef_step
                                           0.0)         # jump_threshold

        print "\n============ Enter #1 to execute or any number to skip the plan!"
        temp=raw_input()
        control_signal=int(temp)

        if control_signal==1:
            ## Now, we call the planner to compute the plan and execute it.
            #we command the robot to execute the movement!!!#ok##
            move_group.execute(plan3, wait=True)#ok


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


    print('/////////////////////////////////')

    print('Position x, y and z!!!')
    temP=arm_name.move_group.get_current_pose().pose
    print(temP.position.x,temP.position.y,temP.position.z)
    print('Rotation in Euler convention (rpy)!!!')
    print(arm_name.move_group.get_current_rpy())
    print('Rotation in quaternion convention (x,y,z,w)!!!')
    #the orientation is given in quaternion
    temP=arm_name.move_group.get_current_pose().pose
    quaternion = (temP.orientation.x,temP.orientation.y,temP.orientation.z,temP.orientation.w)
    print(quaternion)

    print('////////////////////////////////')



    # #we bring to euler angles for better understanding
    # euler = tf.transformations.euler_from_quaternion(quaternion)
    # roll ,pitch, yaw= euler


#Main loop!!!
def main():

    print "============ Press `Enter` to start (press ctrl-d to exit) ......"
    raw_input()
    yumiR=MoveGroup('right_arm')
    yumiL=MoveGroup('left_arm')

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
        print('----------------')
        print('I am working left!!!')#It is working fine and not complaint at all!!!!
        state=yumiL.go_to_joint_state()
        measurements(yumiL)


        # #//////////////////////////
        # print('go_to_joint_goal')
        # print('----------------')
        # print('I am working right!!!')#It ain't working fine in real robot some complaint always!!!!
        # state=yumiR.go_to_joint_state()
        # measurements(yumiR)


        # if state:
        #     print('Enter to go_to_random_pose_goal')
        #     raw_input()
        #     print('I am working...')
        #     state=yumiL.go_to_pose_goal(True)
        #     measurements(yumiL)
        #
        #     # if state:
        #     #     print('plan_cartesian_path')
        #     #     raw_input()
        #     #     print('I am working...')
        #     #     yumiL.plan_cartesian_path()
        #     #     measurements(yumiL)

        # measurements(yumiL)
        # measurements(yumiR)


if __name__=='__main__':
    main()
