; Auto-generated. Do not edit!


(cl:in-package chisel_msgs-srv)


;//! \htmlinclude PauseService-request.msg.html

(cl:defclass <PauseService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PauseService-request (<PauseService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PauseService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PauseService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<PauseService-request> is deprecated: use chisel_msgs-srv:PauseService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PauseService-request>) ostream)
  "Serializes a message object of type '<PauseService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PauseService-request>) istream)
  "Deserializes a message object of type '<PauseService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PauseService-request>)))
  "Returns string type for a service object of type '<PauseService-request>"
  "chisel_msgs/PauseServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PauseService-request)))
  "Returns string type for a service object of type 'PauseService-request"
  "chisel_msgs/PauseServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PauseService-request>)))
  "Returns md5sum for a message object of type '<PauseService-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PauseService-request)))
  "Returns md5sum for a message object of type 'PauseService-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PauseService-request>)))
  "Returns full string definition for message of type '<PauseService-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PauseService-request)))
  "Returns full string definition for message of type 'PauseService-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PauseService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PauseService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PauseService-request
))
;//! \htmlinclude PauseService-response.msg.html

(cl:defclass <PauseService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PauseService-response (<PauseService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PauseService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PauseService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<PauseService-response> is deprecated: use chisel_msgs-srv:PauseService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PauseService-response>) ostream)
  "Serializes a message object of type '<PauseService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PauseService-response>) istream)
  "Deserializes a message object of type '<PauseService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PauseService-response>)))
  "Returns string type for a service object of type '<PauseService-response>"
  "chisel_msgs/PauseServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PauseService-response)))
  "Returns string type for a service object of type 'PauseService-response"
  "chisel_msgs/PauseServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PauseService-response>)))
  "Returns md5sum for a message object of type '<PauseService-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PauseService-response)))
  "Returns md5sum for a message object of type 'PauseService-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PauseService-response>)))
  "Returns full string definition for message of type '<PauseService-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PauseService-response)))
  "Returns full string definition for message of type 'PauseService-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PauseService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PauseService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PauseService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PauseService)))
  'PauseService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PauseService)))
  'PauseService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PauseService)))
  "Returns string type for a service object of type '<PauseService>"
  "chisel_msgs/PauseService")