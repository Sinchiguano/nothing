# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "camera_pose_calibration: 1 messages, 3 services")

set(MSG_I_FLAGS "-Icamera_pose_calibration:/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(camera_pose_calibration_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" NAME_WE)
add_custom_target(_camera_pose_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_pose_calibration" "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" ""
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" NAME_WE)
add_custom_target(_camera_pose_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_pose_calibration" "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:camera_pose_calibration/PatternParameters"
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" NAME_WE)
add_custom_target(_camera_pose_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_pose_calibration" "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:camera_pose_calibration/PatternParameters"
)

get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" NAME_WE)
add_custom_target(_camera_pose_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "camera_pose_calibration" "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" "std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Transform:geometry_msgs/Vector3:sensor_msgs/Image:geometry_msgs/Quaternion:sensor_msgs/PointCloud2:camera_pose_calibration/PatternParameters"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration
)

### Generating Services
_generate_srv_cpp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_cpp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_cpp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration
)

### Generating Module File
_generate_module_cpp(camera_pose_calibration
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(camera_pose_calibration_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(camera_pose_calibration_generate_messages camera_pose_calibration_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_cpp _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_cpp _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_cpp _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_cpp _camera_pose_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_pose_calibration_gencpp)
add_dependencies(camera_pose_calibration_gencpp camera_pose_calibration_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_pose_calibration_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration
)

### Generating Services
_generate_srv_eus(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_eus(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_eus(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration
)

### Generating Module File
_generate_module_eus(camera_pose_calibration
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(camera_pose_calibration_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(camera_pose_calibration_generate_messages camera_pose_calibration_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_eus _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_eus _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_eus _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_eus _camera_pose_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_pose_calibration_geneus)
add_dependencies(camera_pose_calibration_geneus camera_pose_calibration_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_pose_calibration_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration
)

### Generating Services
_generate_srv_lisp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_lisp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_lisp(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration
)

### Generating Module File
_generate_module_lisp(camera_pose_calibration
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(camera_pose_calibration_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(camera_pose_calibration_generate_messages camera_pose_calibration_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_lisp _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_lisp _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_lisp _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_lisp _camera_pose_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_pose_calibration_genlisp)
add_dependencies(camera_pose_calibration_genlisp camera_pose_calibration_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_pose_calibration_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration
)

### Generating Services
_generate_srv_nodejs(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_nodejs(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_nodejs(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration
)

### Generating Module File
_generate_module_nodejs(camera_pose_calibration
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(camera_pose_calibration_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(camera_pose_calibration_generate_messages camera_pose_calibration_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_nodejs _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_nodejs _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_nodejs _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_nodejs _camera_pose_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_pose_calibration_gennodejs)
add_dependencies(camera_pose_calibration_gennodejs camera_pose_calibration_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_pose_calibration_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration
)

### Generating Services
_generate_srv_py(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_py(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration
)
_generate_srv_py(camera_pose_calibration
  "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration
)

### Generating Module File
_generate_module_py(camera_pose_calibration
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(camera_pose_calibration_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(camera_pose_calibration_generate_messages camera_pose_calibration_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg/PatternParameters.msg" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_py _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateFile.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_py _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateTopic.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_py _camera_pose_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/srv/CalibrateCall.srv" NAME_WE)
add_dependencies(camera_pose_calibration_generate_messages_py _camera_pose_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(camera_pose_calibration_genpy)
add_dependencies(camera_pose_calibration_genpy camera_pose_calibration_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS camera_pose_calibration_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/camera_pose_calibration
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(camera_pose_calibration_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(camera_pose_calibration_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/camera_pose_calibration
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(camera_pose_calibration_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(camera_pose_calibration_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/camera_pose_calibration
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(camera_pose_calibration_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(camera_pose_calibration_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/camera_pose_calibration
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(camera_pose_calibration_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(camera_pose_calibration_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/camera_pose_calibration
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(camera_pose_calibration_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(camera_pose_calibration_generate_messages_py sensor_msgs_generate_messages_py)
endif()
