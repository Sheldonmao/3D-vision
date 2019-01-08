# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "chisel_msgs: 2 messages, 4 services")

set(MSG_I_FLAGS "-Ichisel_msgs:/home/sheldonmao/catkin_ws/src/chisel_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(chisel_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" NAME_WE)
add_custom_target(_chisel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chisel_msgs" "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" ""
)

get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" NAME_WE)
add_custom_target(_chisel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chisel_msgs" "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" NAME_WE)
add_custom_target(_chisel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chisel_msgs" "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" ""
)

get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" NAME_WE)
add_custom_target(_chisel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chisel_msgs" "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" "chisel_msgs/ChunkMessage:chisel_msgs/ChunkListMessage:std_msgs/Header"
)

get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" NAME_WE)
add_custom_target(_chisel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chisel_msgs" "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" "chisel_msgs/ChunkMessage:std_msgs/Header"
)

get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" NAME_WE)
add_custom_target(_chisel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chisel_msgs" "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
)
_generate_msg_cpp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
)

### Generating Services
_generate_srv_cpp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
)
_generate_srv_cpp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
)
_generate_srv_cpp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
)
_generate_srv_cpp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
)

### Generating Module File
_generate_module_cpp(chisel_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(chisel_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(chisel_msgs_generate_messages chisel_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_cpp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_cpp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_cpp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_cpp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_cpp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_cpp _chisel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chisel_msgs_gencpp)
add_dependencies(chisel_msgs_gencpp chisel_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chisel_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
)
_generate_msg_eus(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
)

### Generating Services
_generate_srv_eus(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
)
_generate_srv_eus(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
)
_generate_srv_eus(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
)
_generate_srv_eus(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
)

### Generating Module File
_generate_module_eus(chisel_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(chisel_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(chisel_msgs_generate_messages chisel_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_eus _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_eus _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_eus _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_eus _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_eus _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_eus _chisel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chisel_msgs_geneus)
add_dependencies(chisel_msgs_geneus chisel_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chisel_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
)
_generate_msg_lisp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
)

### Generating Services
_generate_srv_lisp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
)
_generate_srv_lisp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
)
_generate_srv_lisp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
)
_generate_srv_lisp(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
)

### Generating Module File
_generate_module_lisp(chisel_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(chisel_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(chisel_msgs_generate_messages chisel_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_lisp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_lisp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_lisp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_lisp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_lisp _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_lisp _chisel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chisel_msgs_genlisp)
add_dependencies(chisel_msgs_genlisp chisel_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chisel_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
)
_generate_msg_nodejs(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
)

### Generating Services
_generate_srv_nodejs(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
)
_generate_srv_nodejs(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
)
_generate_srv_nodejs(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
)
_generate_srv_nodejs(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
)

### Generating Module File
_generate_module_nodejs(chisel_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(chisel_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(chisel_msgs_generate_messages chisel_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_nodejs _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_nodejs _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_nodejs _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_nodejs _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_nodejs _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_nodejs _chisel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chisel_msgs_gennodejs)
add_dependencies(chisel_msgs_gennodejs chisel_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chisel_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
)
_generate_msg_py(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
)

### Generating Services
_generate_srv_py(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv"
  "${MSG_I_FLAGS}"
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg;/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
)
_generate_srv_py(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
)
_generate_srv_py(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
)
_generate_srv_py(chisel_msgs
  "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
)

### Generating Module File
_generate_module_py(chisel_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(chisel_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(chisel_msgs_generate_messages chisel_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/SaveMeshService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_py _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_py _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/ResetService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_py _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/GetAllChunksService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_py _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/msg/ChunkListMessage.msg" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_py _chisel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sheldonmao/catkin_ws/src/chisel_msgs/srv/PauseService.srv" NAME_WE)
add_dependencies(chisel_msgs_generate_messages_py _chisel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chisel_msgs_genpy)
add_dependencies(chisel_msgs_genpy chisel_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chisel_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chisel_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(chisel_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(chisel_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(chisel_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chisel_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(chisel_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(chisel_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(chisel_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chisel_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(chisel_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(chisel_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(chisel_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chisel_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(chisel_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(chisel_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(chisel_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chisel_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(chisel_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(chisel_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(chisel_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
