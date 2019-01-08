; Auto-generated. Do not edit!


(cl:in-package chisel_msgs-msg)


;//! \htmlinclude ChunkMessage.msg.html

(cl:defclass <ChunkMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ID_x
    :reader ID_x
    :initarg :ID_x
    :type cl:integer
    :initform 0)
   (ID_y
    :reader ID_y
    :initarg :ID_y
    :type cl:integer
    :initform 0)
   (ID_z
    :reader ID_z
    :initarg :ID_z
    :type cl:integer
    :initform 0)
   (spatial_hash
    :reader spatial_hash
    :initarg :spatial_hash
    :type cl:integer
    :initform 0)
   (resolution_meters
    :reader resolution_meters
    :initarg :resolution_meters
    :type cl:float
    :initform 0.0)
   (num_voxels_x
    :reader num_voxels_x
    :initarg :num_voxels_x
    :type cl:integer
    :initform 0)
   (num_voxels_y
    :reader num_voxels_y
    :initarg :num_voxels_y
    :type cl:integer
    :initform 0)
   (num_voxels_z
    :reader num_voxels_z
    :initarg :num_voxels_z
    :type cl:integer
    :initform 0)
   (distance_data
    :reader distance_data
    :initarg :distance_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (color_data
    :reader color_data
    :initarg :color_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ChunkMessage (<ChunkMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChunkMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChunkMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-msg:<ChunkMessage> is deprecated: use chisel_msgs-msg:ChunkMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:header-val is deprecated.  Use chisel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ID_x-val :lambda-list '(m))
(cl:defmethod ID_x-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:ID_x-val is deprecated.  Use chisel_msgs-msg:ID_x instead.")
  (ID_x m))

(cl:ensure-generic-function 'ID_y-val :lambda-list '(m))
(cl:defmethod ID_y-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:ID_y-val is deprecated.  Use chisel_msgs-msg:ID_y instead.")
  (ID_y m))

(cl:ensure-generic-function 'ID_z-val :lambda-list '(m))
(cl:defmethod ID_z-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:ID_z-val is deprecated.  Use chisel_msgs-msg:ID_z instead.")
  (ID_z m))

(cl:ensure-generic-function 'spatial_hash-val :lambda-list '(m))
(cl:defmethod spatial_hash-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:spatial_hash-val is deprecated.  Use chisel_msgs-msg:spatial_hash instead.")
  (spatial_hash m))

(cl:ensure-generic-function 'resolution_meters-val :lambda-list '(m))
(cl:defmethod resolution_meters-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:resolution_meters-val is deprecated.  Use chisel_msgs-msg:resolution_meters instead.")
  (resolution_meters m))

(cl:ensure-generic-function 'num_voxels_x-val :lambda-list '(m))
(cl:defmethod num_voxels_x-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:num_voxels_x-val is deprecated.  Use chisel_msgs-msg:num_voxels_x instead.")
  (num_voxels_x m))

(cl:ensure-generic-function 'num_voxels_y-val :lambda-list '(m))
(cl:defmethod num_voxels_y-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:num_voxels_y-val is deprecated.  Use chisel_msgs-msg:num_voxels_y instead.")
  (num_voxels_y m))

(cl:ensure-generic-function 'num_voxels_z-val :lambda-list '(m))
(cl:defmethod num_voxels_z-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:num_voxels_z-val is deprecated.  Use chisel_msgs-msg:num_voxels_z instead.")
  (num_voxels_z m))

(cl:ensure-generic-function 'distance_data-val :lambda-list '(m))
(cl:defmethod distance_data-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:distance_data-val is deprecated.  Use chisel_msgs-msg:distance_data instead.")
  (distance_data m))

(cl:ensure-generic-function 'color_data-val :lambda-list '(m))
(cl:defmethod color_data-val ((m <ChunkMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-msg:color_data-val is deprecated.  Use chisel_msgs-msg:color_data instead.")
  (color_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChunkMessage>) ostream)
  "Serializes a message object of type '<ChunkMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ID_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ID_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ID_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'spatial_hash)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution_meters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'num_voxels_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_voxels_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_voxels_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distance_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'distance_data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'color_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'color_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChunkMessage>) istream)
  "Deserializes a message object of type '<ChunkMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'spatial_hash) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution_meters) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_voxels_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_voxels_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_voxels_z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distance_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distance_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'color_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'color_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChunkMessage>)))
  "Returns string type for a message object of type '<ChunkMessage>"
  "chisel_msgs/ChunkMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChunkMessage)))
  "Returns string type for a message object of type 'ChunkMessage"
  "chisel_msgs/ChunkMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChunkMessage>)))
  "Returns md5sum for a message object of type '<ChunkMessage>"
  "2b6f25fa6b6ba9fc3cd619253cab4653")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChunkMessage)))
  "Returns md5sum for a message object of type 'ChunkMessage"
  "2b6f25fa6b6ba9fc3cd619253cab4653")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChunkMessage>)))
  "Returns full string definition for message of type '<ChunkMessage>"
  (cl:format cl:nil "Header header~%~%#Chunk ID spatial position~%int32 ID_x~%int32 ID_y~%int32 ID_z~%~%#Chunk spatial hash value~%int64 spatial_hash~%~%#Size of a voxel in meters~%float32 resolution_meters~%~%#number of voxels in each dimension~%int32 num_voxels_x~%int32 num_voxels_y~%int32 num_voxels_z~%~%#Binary serialization of distances/weights~%uint32[] distance_data~%~%#Binary serialization of colors/weights~%uint32[] color_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChunkMessage)))
  "Returns full string definition for message of type 'ChunkMessage"
  (cl:format cl:nil "Header header~%~%#Chunk ID spatial position~%int32 ID_x~%int32 ID_y~%int32 ID_z~%~%#Chunk spatial hash value~%int64 spatial_hash~%~%#Size of a voxel in meters~%float32 resolution_meters~%~%#number of voxels in each dimension~%int32 num_voxels_x~%int32 num_voxels_y~%int32 num_voxels_z~%~%#Binary serialization of distances/weights~%uint32[] distance_data~%~%#Binary serialization of colors/weights~%uint32[] color_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChunkMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     8
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distance_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'color_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChunkMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ChunkMessage
    (cl:cons ':header (header msg))
    (cl:cons ':ID_x (ID_x msg))
    (cl:cons ':ID_y (ID_y msg))
    (cl:cons ':ID_z (ID_z msg))
    (cl:cons ':spatial_hash (spatial_hash msg))
    (cl:cons ':resolution_meters (resolution_meters msg))
    (cl:cons ':num_voxels_x (num_voxels_x msg))
    (cl:cons ':num_voxels_y (num_voxels_y msg))
    (cl:cons ':num_voxels_z (num_voxels_z msg))
    (cl:cons ':distance_data (distance_data msg))
    (cl:cons ':color_data (color_data msg))
))
