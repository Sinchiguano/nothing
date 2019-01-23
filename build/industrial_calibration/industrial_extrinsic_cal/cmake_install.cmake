# Install script for directory: /home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sinchiguano/yumi_depends_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/srv" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/calibrate.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/camera_observer_trigger.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/covariance.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/get_mutable_joint_states.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/set_mutable_joint_states.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/store_mutable_joint_states.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/user_accept.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/cal_srv_solve.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/srv/FileOp.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/action" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/action/calibration.action"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/action/manual_target_location.action"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/action/manual_trigger.action"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/action/robot_joint_values_trigger.action"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/action/robot_pose_trigger.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/msg" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationAction.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationActionGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationActionResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationActionFeedback.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/calibrationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/msg" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationAction.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationActionGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationActionResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationActionFeedback.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_target_locationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/msg" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerAction.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerActionGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerActionResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerActionFeedback.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/manual_triggerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/msg" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerAction.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerActionGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerActionResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerActionFeedback.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_joint_values_triggerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/msg" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerAction.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerActionGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerActionResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerActionFeedback.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerGoal.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerResult.msg"
    "/home/sinchiguano/yumi_depends_ws/devel/share/industrial_extrinsic_cal/msg/robot_pose_triggerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/cmake" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/build/industrial_calibration/industrial_extrinsic_cal/catkin_generated/installspace/industrial_extrinsic_cal-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/include/industrial_extrinsic_cal")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/share/roseus/ros/industrial_extrinsic_cal")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/share/common-lisp/ros/industrial_extrinsic_cal")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/share/gennodejs/ros/industrial_extrinsic_cal")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_extrinsic_cal")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_extrinsic_cal")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/industrial_extrinsic_cal" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/devel/include/industrial_extrinsic_cal/circle_grid_finderConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/industrial_extrinsic_cal" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_extrinsic_cal/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_extrinsic_cal/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/industrial_extrinsic_cal" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_extrinsic_cal/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/build/industrial_calibration/industrial_extrinsic_cal/catkin_generated/installspace/industrial_extrinsic_cal.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/cmake" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/build/industrial_calibration/industrial_extrinsic_cal/catkin_generated/installspace/industrial_extrinsic_cal-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal/cmake" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/build/industrial_calibration/industrial_extrinsic_cal/catkin_generated/installspace/industrial_extrinsic_calConfig.cmake"
    "/home/sinchiguano/yumi_depends_ws/build/industrial_calibration/industrial_extrinsic_cal/catkin_generated/installspace/industrial_extrinsic_calConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/camera_observer_scene_trigger")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/camera_observer_scene_trigger")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/libindustrial_extrinsic_cal.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libindustrial_extrinsic_cal.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/manual_calt_adjust")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/manual_calt_adjust")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/mutable_joint_state_publisher")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/mutable_joint_state_publisher")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/ros_robot_trigger_action_service")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/service_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/service_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/trigger_service")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/trigger_service")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/range_excal")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/range_excal")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/rangeNmono")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/rangeNmono")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/target_display")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/target_display")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/wrist_cal_srv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/wrist_cal_srv")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal" TYPE EXECUTABLE FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/industrial_extrinsic_cal/stereo_cal_srv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv"
         OLD_RPATH "/home/sinchiguano/yumi_depends_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/industrial_extrinsic_cal/stereo_cal_srv")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/industrial_extrinsic_cal" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/include/industrial_extrinsic_cal/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_extrinsic_cal" TYPE DIRECTORY FILES
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/config"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/launch"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/targets"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/urdf"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/industrial_extrinsic_cal/yaml"
    )
endif()

