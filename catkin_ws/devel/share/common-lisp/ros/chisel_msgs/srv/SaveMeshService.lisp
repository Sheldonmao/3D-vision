; Auto-generated. Do not edit!


(cl:in-package chisel_msgs-srv)


;//! \htmlinclude SaveMeshService-request.msg.html

(cl:defclass <SaveMeshService-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform ""))
)

(cl:defclass SaveMeshService-request (<SaveMeshService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMeshService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMeshService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<SaveMeshService-request> is deprecated: use chisel_msgs-srv:SaveMeshService-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <SaveMeshService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chisel_msgs-srv:file_name-val is deprecated.  Use chisel_msgs-srv:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMeshService-request>) ostream)
  "Serializes a message object of type '<SaveMeshService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMeshService-request>) istream)
  "Deserializes a message object of type '<SaveMeshService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMeshService-request>)))
  "Returns string type for a service object of type '<SaveMeshService-request>"
  "chisel_msgs/SaveMeshServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMeshService-request)))
  "Returns string type for a service object of type 'SaveMeshService-request"
  "chisel_msgs/SaveMeshServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMeshService-request>)))
  "Returns md5sum for a message object of type '<SaveMeshService-request>"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMeshService-request)))
  "Returns md5sum for a message object of type 'SaveMeshService-request"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMeshService-request>)))
  "Returns full string definition for message of type '<SaveMeshService-request>"
  (cl:format cl:nil "~%string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMeshService-request)))
  "Returns full string definition for message of type 'SaveMeshService-request"
  (cl:format cl:nil "~%string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMeshService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMeshService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMeshService-request
    (cl:cons ':file_name (file_name msg))
))
;//! \htmlinclude SaveMeshService-response.msg.html

(cl:defclass <SaveMeshService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveMeshService-response (<SaveMeshService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMeshService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMeshService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<SaveMeshService-response> is deprecated: use chisel_msgs-srv:SaveMeshService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMeshService-response>) ostream)
  "Serializes a message object of type '<SaveMeshService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMeshService-response>) istream)
  "Deserializes a message object of type '<SaveMeshService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMeshService-response>)))
  "Returns string type for a service object of type '<SaveMeshService-response>"
  "chisel_msgs/SaveMeshServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMeshService-response)))
  "Returns string type for a service object of type 'SaveMeshService-response"
  "chisel_msgs/SaveMeshServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMeshService-response>)))
  "Returns md5sum for a message object of type '<SaveMeshService-response>"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMeshService-response)))
  "Returns md5sum for a message object of type 'SaveMeshService-response"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMeshService-response>)))
  "Returns full string definition for message of type '<SaveMeshService-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMeshService-response)))
  "Returns full string definition for message of type 'SaveMeshService-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMeshService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMeshService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMeshService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveMeshService)))
  'SaveMeshService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveMeshService)))
  'SaveMeshService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMeshService)))
  "Returns string type for a service object of type '<SaveMeshService>"
  "chisel_msgs/SaveMeshService")