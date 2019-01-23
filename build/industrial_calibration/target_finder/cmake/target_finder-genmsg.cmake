# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "target_finder: 0 messages, 2 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(target_finder_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" NAME_WE)
add_custom_target(_target_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "target_finder" "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" "geometry_msgs/Quaternion:sensor_msgs/RegionOfInterest:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" NAME_WE)
add_custom_target(_target_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "target_finder" "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/target_finder
)
_generate_srv_cpp(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/target_finder
)

### Generating Module File
_generate_module_cpp(target_finder
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/target_finder
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(target_finder_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(target_finder_generate_messages target_finder_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_cpp _target_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_cpp _target_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(target_finder_gencpp)
add_dependencies(target_finder_gencpp target_finder_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS target_finder_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/target_finder
)
_generate_srv_eus(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/target_finder
)

### Generating Module File
_generate_module_eus(target_finder
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/target_finder
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(target_finder_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(target_finder_generate_messages target_finder_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_eus _target_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_eus _target_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(target_finder_geneus)
add_dependencies(target_finder_geneus target_finder_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS target_finder_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/target_finder
)
_generate_srv_lisp(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/target_finder
)

### Generating Module File
_generate_module_lisp(target_finder
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/target_finder
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(target_finder_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(target_finder_generate_messages target_finder_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_lisp _target_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_lisp _target_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(target_finder_genlisp)
add_dependencies(target_finder_genlisp target_finder_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS target_finder_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/target_finder
)
_generate_srv_nodejs(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/target_finder
)

### Generating Module File
_generate_module_nodejs(target_finder
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/target_finder
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(target_finder_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(target_finder_generate_messages target_finder_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_nodejs _target_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_nodejs _target_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(target_finder_gennodejs)
add_dependencies(target_finder_gennodejs target_finder_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS target_finder_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/target_finder
)
_generate_srv_py(target_finder
  "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/target_finder
)

### Generating Module File
_generate_module_py(target_finder
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/target_finder
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(target_finder_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(target_finder_generate_messages target_finder_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/target_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_py _target_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/industrial_calibration/target_finder/srv/stereo_locator.srv" NAME_WE)
add_dependencies(target_finder_generate_messages_py _target_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(target_finder_genpy)
add_dependencies(target_finder_genpy target_finder_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS target_finder_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/target_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/target_finder
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(target_finder_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(target_finder_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(target_finder_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/target_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/target_finder
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(target_finder_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(target_finder_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(target_finder_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/target_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/target_finder
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(target_finder_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(target_finder_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(target_finder_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/target_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/target_finder
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(target_finder_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(target_finder_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(target_finder_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/target_finder)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/target_finder\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/target_finder
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(target_finder_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(target_finder_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(target_finder_generate_messages_py std_msgs_generate_messages_py)
endif()
