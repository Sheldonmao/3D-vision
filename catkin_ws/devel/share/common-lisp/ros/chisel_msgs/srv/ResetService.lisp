; Auto-generated. Do not edit!


(cl:in-package chisel_msgs-srv)


;//! \htmlinclude ResetService-request.msg.html

(cl:defclass <ResetService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetService-request (<ResetService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<ResetService-request> is deprecated: use chisel_msgs-srv:ResetService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetService-request>) ostream)
  "Serializes a message object of type '<ResetService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetService-request>) istream)
  "Deserializes a message object of type '<ResetService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetService-request>)))
  "Returns string type for a service object of type '<ResetService-request>"
  "chisel_msgs/ResetServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetService-request)))
  "Returns string type for a service object of type 'ResetService-request"
  "chisel_msgs/ResetServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetService-request>)))
  "Returns md5sum for a message object of type '<ResetService-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetService-request)))
  "Returns md5sum for a message object of type 'ResetService-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetService-request>)))
  "Returns full string definition for message of type '<ResetService-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetService-request)))
  "Returns full string definition for message of type 'ResetService-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetService-request
))
;//! \htmlinclude ResetService-response.msg.html

(cl:defclass <ResetService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetService-response (<ResetService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chisel_msgs-srv:<ResetService-response> is deprecated: use chisel_msgs-srv:ResetService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetService-response>) ostream)
  "Serializes a message object of type '<ResetService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetService-response>) istream)
  "Deserializes a message object of type '<ResetService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetService-response>)))
  "Returns string type for a service object of type '<ResetService-response>"
  "chisel_msgs/ResetServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetService-response)))
  "Returns string type for a service object of type 'ResetService-response"
  "chisel_msgs/ResetServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetService-response>)))
  "Returns md5sum for a message object of type '<ResetService-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetService-response)))
  "Returns md5sum for a message object of type 'ResetService-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetService-response>)))
  "Returns full string definition for message of type '<ResetService-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetService-response)))
  "Returns full string definition for message of type 'ResetService-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetService)))
  'ResetService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetService)))
  'ResetService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetService)))
  "Returns string type for a service object of type '<ResetService>"
  "chisel_msgs/ResetService")