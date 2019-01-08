;; Auto-generated. Do not edit!


(when (boundp 'chisel_msgs::PauseService)
  (if (not (find-package "CHISEL_MSGS"))
    (make-package "CHISEL_MSGS"))
  (shadow 'PauseService (find-package "CHISEL_MSGS")))
(unless (find-package "CHISEL_MSGS::PAUSESERVICE")
  (make-package "CHISEL_MSGS::PAUSESERVICE"))
(unless (find-package "CHISEL_MSGS::PAUSESERVICEREQUEST")
  (make-package "CHISEL_MSGS::PAUSESERVICEREQUEST"))
(unless (find-package "CHISEL_MSGS::PAUSESERVICERESPONSE")
  (make-package "CHISEL_MSGS::PAUSESERVICERESPONSE"))

(in-package "ROS")





(defclass chisel_msgs::PauseServiceRequest
  :super ros::object
  :slots ())

(defmethod chisel_msgs::PauseServiceRequest
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

(defclass chisel_msgs::PauseServiceResponse
  :super ros::object
  :slots ())

(defmethod chisel_msgs::PauseServiceResponse
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

(defclass chisel_msgs::PauseService
  :super ros::object
  :slots ())

(setf (get chisel_msgs::PauseService :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get chisel_msgs::PauseService :datatype-) "chisel_msgs/PauseService")
(setf (get chisel_msgs::PauseService :request) chisel_msgs::PauseServiceRequest)
(setf (get chisel_msgs::PauseService :response) chisel_msgs::PauseServiceResponse)

(defmethod chisel_msgs::PauseServiceRequest
  (:response () (instance chisel_msgs::PauseServiceResponse :init)))

(setf (get chisel_msgs::PauseServiceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get chisel_msgs::PauseServiceRequest :datatype-) "chisel_msgs/PauseServiceRequest")
(setf (get chisel_msgs::PauseServiceRequest :definition-)
      "
---


")

(setf (get chisel_msgs::PauseServiceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get chisel_msgs::PauseServiceResponse :datatype-) "chisel_msgs/PauseServiceResponse")
(setf (get chisel_msgs::PauseServiceResponse :definition-)
      "
---


")



(provide :chisel_msgs/PauseService "d41d8cd98f00b204e9800998ecf8427e")


