;; Auto-generated. Do not edit!


(when (boundp 'chisel_msgs::SaveMeshService)
  (if (not (find-package "CHISEL_MSGS"))
    (make-package "CHISEL_MSGS"))
  (shadow 'SaveMeshService (find-package "CHISEL_MSGS")))
(unless (find-package "CHISEL_MSGS::SAVEMESHSERVICE")
  (make-package "CHISEL_MSGS::SAVEMESHSERVICE"))
(unless (find-package "CHISEL_MSGS::SAVEMESHSERVICEREQUEST")
  (make-package "CHISEL_MSGS::SAVEMESHSERVICEREQUEST"))
(unless (find-package "CHISEL_MSGS::SAVEMESHSERVICERESPONSE")
  (make-package "CHISEL_MSGS::SAVEMESHSERVICERESPONSE"))

(in-package "ROS")





(defclass chisel_msgs::SaveMeshServiceRequest
  :super ros::object
  :slots (_file_name ))

(defmethod chisel_msgs::SaveMeshServiceRequest
  (:init
   (&key
    ((:file_name __file_name) "")
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass chisel_msgs::SaveMeshServiceResponse
  :super ros::object
  :slots ())

(defmethod chisel_msgs::SaveMeshServiceResponse
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

(defclass chisel_msgs::SaveMeshService
  :super ros::object
  :slots ())

(setf (get chisel_msgs::SaveMeshService :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get chisel_msgs::SaveMeshService :datatype-) "chisel_msgs/SaveMeshService")
(setf (get chisel_msgs::SaveMeshService :request) chisel_msgs::SaveMeshServiceRequest)
(setf (get chisel_msgs::SaveMeshService :response) chisel_msgs::SaveMeshServiceResponse)

(defmethod chisel_msgs::SaveMeshServiceRequest
  (:response () (instance chisel_msgs::SaveMeshServiceResponse :init)))

(setf (get chisel_msgs::SaveMeshServiceRequest :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get chisel_msgs::SaveMeshServiceRequest :datatype-) "chisel_msgs/SaveMeshServiceRequest")
(setf (get chisel_msgs::SaveMeshServiceRequest :definition-)
      "
string file_name
---


")

(setf (get chisel_msgs::SaveMeshServiceResponse :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get chisel_msgs::SaveMeshServiceResponse :datatype-) "chisel_msgs/SaveMeshServiceResponse")
(setf (get chisel_msgs::SaveMeshServiceResponse :definition-)
      "
string file_name
---


")



(provide :chisel_msgs/SaveMeshService "2415261c9605b9f38867ffbbe495fc04")


