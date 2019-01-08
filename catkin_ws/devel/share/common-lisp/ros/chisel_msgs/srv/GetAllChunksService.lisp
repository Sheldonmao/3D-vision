; Auto-generated. Do not edit!


(cl:in-package chisel_msgs-srv)


;//! \htmlinclude GetAllChunksService-request.msg.html

(cl:defclass <GetAllChunksService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAllChunksService-request (<GetAllChunksService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllChunksService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllChunksService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<GetAllChunksService-request> is deprecated: use chisel_msgs-srv:GetAllChunksService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllChunksService-request>) ostream)
  "Serializes a message object of type '<GetAllChunksService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllChunksService-request>) istream)
  "Deserializes a message object of type '<GetAllChunksService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllChunksService-request>)))
  "Returns string type for a service object of type '<GetAllChunksService-request>"
  "chisel_msgs/GetAllChunksServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllChunksService-request)))
  "Returns string type for a service object of type 'GetAllChunksService-request"
  "chisel_msgs/GetAllChunksServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllChunksService-request>)))
  "Returns md5sum for a message object of type '<GetAllChunksService-request>"
  "1ed132c081b5f4f409c36677e0cb6ee0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllChunksService-request)))
  "Returns md5sum for a message object of type 'GetAllChunksService-request"
  "1ed132c081b5f4f409c36677e0cb6ee0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllChunksService-request>)))
  "Returns full string definition for message of type '<GetAllChunksService-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllChunksService-request)))
  "Returns full string definition for message of type 'GetAllChunksService-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllChunksService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllChunksService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllChunksService-request
))
;//! \htmlinclude GetAllChunksService-response.msg.html

(cl:defclass <GetAllChunksService-response> (roslisp-msg-protocol:ros-message)
  ((chunks
    :reader chunks
    :initarg :chunks
    :type chisel_msgs-msg:ChunkListMessage
    :initform (cl:make-instance 'chisel_msgs-msg:ChunkListMessage)))
)

(cl:defclass GetAllChunksService-response (<GetAllChunksService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllChunksService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllChunksService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<GetAllChunksService-response> is deprecated: use chisel_msgs-srv:GetAllChunksService-response instead.")))

(cl:ensure-generic-function 'chunks-val :lambda-list '(m))
(cl:defmethod chunks-val ((m <GetAllChunksService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-srv:chunks-val is deprecated.  Use chisel_msgs-srv:chunks instead.")
  (chunks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllChunksService-response>) ostream)
  "Serializes a message object of type '<GetAllChunksService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'chunks) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllChunksService-response>) istream)
  "Deserializes a message object of type '<GetAllChunksService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'chunks) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllChunksService-response>)))
  "Returns string type for a service object of type '<GetAllChunksService-response>"
  "chisel_msgs/GetAllChunksServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllChunksService-response)))
  "Returns string type for a service object of type 'GetAllChunksService-response"
  "chisel_msgs/GetAllChunksServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllChunksService-response>)))
  "Returns md5sum for a message object of type '<GetAllChunksService-response>"
  "1ed132c081b5f4f409c36677e0cb6ee0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllChunksService-response)))
  "Returns md5sum for a message object of type 'GetAllChunksService-response"
  "1ed132c081b5f4f409c36677e0cb6ee0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllChunksService-response>)))
  "Returns full string definition for message of type '<GetAllChunksService-response>"
  (cl:format cl:nil "ChunkListMessage chunks~%~%~%~%================================================================================~%MSG: chisel_msgs/ChunkListMessage~%Header header~%ChunkMessage[] chunks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: chisel_msgs/ChunkMessage~%Header header~%~%#Chunk ID spatial position~%int32 ID_x~%int32 ID_y~%int32 ID_z~%~%#Chunk spatial hash value~%int64 spatial_hash~%~%#Size of a voxel in meters~%float32 resolution_meters~%~%#number of voxels in each dimension~%int32 num_voxels_x~%int32 num_voxels_y~%int32 num_voxels_z~%~%#Binary serialization of distances/weights~%uint32[] distance_data~%~%#Binary serialization of colors/weights~%uint32[] color_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllChunksService-response)))
  "Returns full string definition for message of type 'GetAllChunksService-response"
  (cl:format cl:nil "ChunkListMessage chunks~%~%~%~%================================================================================~%MSG: chisel_msgs/ChunkListMessage~%Header header~%ChunkMessage[] chunks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: chisel_msgs/ChunkMessage~%Header header~%~%#Chunk ID spatial position~%int32 ID_x~%int32 ID_y~%int32 ID_z~%~%#Chunk spatial hash value~%int64 spatial_hash~%~%#Size of a voxel in meters~%float32 resolution_meters~%~%#number of voxels in each dimension~%int32 num_voxels_x~%int32 num_voxels_y~%int32 num_voxels_z~%~%#Binary serialization of distances/weights~%uint32[] distance_data~%~%#Binary serialization of colors/weights~%uint32[] color_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllChunksService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'chunks))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllChunksService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllChunksService-response
    (cl:cons ':chunks (chunks msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAllChunksService)))
  'GetAllChunksService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAllChunksService)))
  'GetAllChunksService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllChunksService)))
  "Returns string type for a service object of type '<GetAllChunksService>"
  "chisel_msgs/GetAllChunksService")