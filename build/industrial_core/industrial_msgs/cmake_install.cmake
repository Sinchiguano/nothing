# Install script for directory: /home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_msgs/msg" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/msg/DebugLevel.msg"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/msg/DeviceInfo.msg"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/msg/RobotMode.msg"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/msg/RobotStatus.msg"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/msg/ServiceReturnCode.msg"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/msg/TriState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_msgs/srv" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/srv/CmdJointTrajectory.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/srv/GetRobotInfo.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/srv/SetDrivePower.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/srv/SetRemoteLoggerLevel.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/srv/StartMotion.srv"
    "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/srv/StopMotion.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_msgs/cmake" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/build/industrial_core/industrial_msgs/catkin_generated/installspace/industrial_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/include/industrial_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/share/roseus/ros/industrial_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/share/common-lisp/ros/industrial_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/share/gennodejs/ros/industrial_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/sinchiguano/yumi_depends_ws/devel/lib/python2.7/dist-packages/industrial_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/build/industrial_core/industrial_msgs/catkin_generated/installspace/industrial_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_msgs/cmake" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/build/industrial_core/industrial_msgs/catkin_generated/installspace/industrial_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_msgs/cmake" TYPE FILE FILES
    "/home/sinchiguano/yumi_depends_ws/build/industrial_core/industrial_msgs/catkin_generated/installspace/industrial_msgsConfig.cmake"
    "/home/sinchiguano/yumi_depends_ws/build/industrial_core/industrial_msgs/catkin_generated/installspace/industrial_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_msgs" TYPE FILE FILES "/home/sinchiguano/yumi_depends_ws/src/industrial_core/industrial_msgs/package.xml")
endif()

