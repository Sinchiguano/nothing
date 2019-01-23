# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robo_cylinder: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robo_cylinder_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" NAME_WE)
add_custom_target(_robo_cylinder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robo_cylinder" "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_cpp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
)

### Generating Module File
_generate_module_cpp(robo_cylinder
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robo_cylinder_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robo_cylinder_generate_messages robo_cylinder_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_cpp _robo_cylinder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robo_cylinder_gencpp)
add_dependencies(robo_cylinder_gencpp robo_cylinder_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robo_cylinder_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)
_generate_srv_eus(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
)

### Generating Module File
_generate_module_eus(robo_cylinder
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robo_cylinder_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robo_cylinder_generate_messages robo_cylinder_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_eus _robo_cylinder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robo_cylinder_geneus)
add_dependencies(robo_cylinder_geneus robo_cylinder_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robo_cylinder_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)
_generate_srv_lisp(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
)

### Generating Module File
_generate_module_lisp(robo_cylinder
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robo_cylinder_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robo_cylinder_generate_messages robo_cylinder_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_lisp _robo_cylinder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robo_cylinder_genlisp)
add_dependencies(robo_cylinder_genlisp robo_cylinder_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robo_cylinder_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)
_generate_srv_nodejs(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
)

### Generating Module File
_generate_module_nodejs(robo_cylinder
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robo_cylinder_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robo_cylinder_generate_messages robo_cylinder_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_nodejs _robo_cylinder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robo_cylinder_gennodejs)
add_dependencies(robo_cylinder_gennodejs robo_cylinder_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robo_cylinder_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)
_generate_srv_py(robo_cylinder
  "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
)

### Generating Module File
_generate_module_py(robo_cylinder
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robo_cylinder_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robo_cylinder_generate_messages robo_cylinder_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/HomeCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MoveMeters.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StatusUpdate.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/PowerIO.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/VelAcc.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/StringCmd.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/intelligent_actuator/robo_cylinder/srv/MovePulses.srv" NAME_WE)
add_dependencies(robo_cylinder_generate_messages_py _robo_cylinder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robo_cylinder_genpy)
add_dependencies(robo_cylinder_genpy robo_cylinder_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robo_cylinder_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robo_cylinder
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robo_cylinder_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robo_cylinder
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robo_cylinder_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robo_cylinder
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robo_cylinder_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robo_cylinder
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robo_cylinder_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robo_cylinder
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robo_cylinder_generate_messages_py std_msgs_generate_messages_py)
endif()
