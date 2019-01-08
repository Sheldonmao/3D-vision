; Auto-generated. Do not edit!


(cl:in-package chisel_msgs-msg)


;//! \htmlinclude ChunkListMessage.msg.html

(cl:defclass <ChunkListMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (chunks
    :reader chunks
    :initarg :chunks
    :type (cl:vector chisel_msgs-msg:ChunkMessage)
   :initform (cl:make-array 0 :element-type 'chisel_msgs-msg:ChunkMessage :initial-element (cl:make-instance 'chisel_msgs-msg:ChunkMessage))))
)

(cl:defclass ChunkListMessage (<ChunkListMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChunkListMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChunkListMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-msg:<ChunkListMessage> is deprecated: use chisel_msgs-msg:ChunkListMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChunkListMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:header-val is deprecated.  Use chisel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'chunks-val :lambda-list '(m))
(cl:defmethod chunks-val ((m <ChunkListMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:chunks-val is deprecated.  Use chisel_msgs-msg:chunks instead.")
  (chunks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChunkListMessage>) ostream)
  "Serializes a message object of type '<ChunkListMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'chunks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'chunks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChunkListMessage>) istream)
  "Deserializes a message object of type '<ChunkListMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'chunks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'chunks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'chisel_msgs-msg:ChunkMessage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChunkListMessage>)))
  "Returns string type for a message object of type '<ChunkListMessage>"
  "chisel_msgs/ChunkListMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChunkListMessage)))
  "Returns string type for a message object of type 'ChunkListMessage"
  "chisel_msgs/ChunkListMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChunkListMessage>)))
  "Returns md5sum for a message object of type '<ChunkListMessage>"
  "fd6446f54c70cfb1da79fff2245968e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChunkListMessage)))
  "Returns md5sum for a message object of type 'ChunkListMessage"
  "fd6446f54c70cfb1da79fff2245968e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChunkListMessage>)))
  "Returns full string definition for message of type '<ChunkListMessage>"
  (cl:format cl:nil "Header header~%ChunkMessage[] chunks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: chisel_msgs/ChunkMessage~%Header header~%~%#Chunk ID spatial position~%int32 ID_x~%int32 ID_y~%int32 ID_z~%~%#Chunk spatial hash value~%int64 spatial_hash~%~%#Size of a voxel in meters~%float32 resolution_meters~%~%#number of voxels in each dimension~%int32 num_voxels_x~%int32 num_voxels_y~%int32 num_voxels_z~%~%#Binary serialization of distances/weights~%uint32[] distance_data~%~%#Binary serialization of colors/weights~%uint32[] color_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChunkListMessage)))
  "Returns full string definition for message of type 'ChunkListMessage"
  (cl:format cl:nil "Header header~%ChunkMessage[] chunks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: chisel_msgs/ChunkMessage~%Header header~%~%#Chunk ID spatial position~%int32 ID_x~%int32 ID_y~%int32 ID_z~%~%#Chunk spatial hash value~%int64 spatial_hash~%~%#Size of a voxel in meters~%float32 resolution_meters~%~%#number of voxels in each dimension~%int32 num_voxels_x~%int32 num_voxels_y~%int32 num_voxels_z~%~%#Binary serialization of distances/weights~%uint32[] distance_data~%~%#Binary serialization of colors/weights~%uint32[] color_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChunkListMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'chunks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChunkListMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ChunkListMessage
    (cl:cons ':header (header msg))
    (cl:cons ':chunks (chunks msg))
))
