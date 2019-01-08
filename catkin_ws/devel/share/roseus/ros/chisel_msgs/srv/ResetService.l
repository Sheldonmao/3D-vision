;; Auto-generated. Do not edit!


(when (boundp 'chisel_msgs::ResetService)
  (if (not (find-package "CHISEL_MSGS"))
    (make-package "CHISEL_MSGS"))
  (shadow 'ResetService (find-package "CHISEL_MSGS")))
(unless (find-package "CHISEL_MSGS::RESETSERVICE")
  (make-package "CHISEL_MSGS::RESETSERVICE"))
(unless (find-package "CHISEL_MSGS::RESETSERVICEREQUEST")
  (make-package "CHISEL_MSGS::RESETSERVICEREQUEST"))
(unless (find-package "CHISEL_MSGS::RESETSERVICERESPONSE")
  (make-package "CHISEL_MSGS::RESETSERVICERESPONSE"))

(in-package "ROS")





(defclass chisel_msgs::ResetServiceRequest
  :super ros::object
  :slots ())

(defmethod chisel_msgs::ResetServiceRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass chisel_msgs::ResetServiceResponse
  :super ros::object
  :slots ())

(defmethod chisel_msgs::ResetServiceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass chisel_msgs::ResetService
  :super ros::object
  :slots ())

(setf (get chisel_msgs::ResetService :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get chisel_msgs::ResetService :datatype-) "chisel_msgs/ResetService")
(setf (get chisel_msgs::ResetService :request) chisel_msgs::ResetServiceRequest)
(setf (get chisel_msgs::ResetService :response) chisel_msgs::ResetServiceResponse)

(defmethod chisel_msgs::ResetServiceRequest
  (:response () (instance chisel_msgs::ResetServiceResponse :init)))

(setf (get chisel_msgs::ResetServiceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get chisel_msgs::ResetServiceRequest :datatype-) "chisel_msgs/ResetServiceRequest")
(setf (get chisel_msgs::ResetServiceRequest :definition-)
      "
---


")

(setf (get chisel_msgs::ResetServiceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get chisel_msgs::ResetServiceResponse :datatype-) "chisel_msgs/ResetServiceResponse")
(setf (get chisel_msgs::ResetServiceResponse :definition-)
      "
---


")



(provide :chisel_msgs/ResetService "d41d8cd98f00b204e9800998ecf8427e")


