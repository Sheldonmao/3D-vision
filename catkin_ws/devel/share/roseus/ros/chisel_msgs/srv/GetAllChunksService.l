;; Auto-generated. Do not edit!


(when (boundp 'chisel_msgs::GetAllChunksService)
  (if (not (find-package "CHISEL_MSGS"))
    (make-package "CHISEL_MSGS"))
  (shadow 'GetAllChunksService (find-package "CHISEL_MSGS")))
(unless (find-package "CHISEL_MSGS::GETALLCHUNKSSERVICE")
  (make-package "CHISEL_MSGS::GETALLCHUNKSSERVICE"))
(unless (find-package "CHISEL_MSGS::GETALLCHUNKSSERVICEREQUEST")
  (make-package "CHISEL_MSGS::GETALLCHUNKSSERVICEREQUEST"))
(unless (find-package "CHISEL_MSGS::GETALLCHUNKSSERVICERESPONSE")
  (make-package "CHISEL_MSGS::GETALLCHUNKSSERVICERESPONSE"))

(in-package "ROS")





(defclass chisel_msgs::GetAllChunksServiceRequest
  :super ros::object
  :slots ())

(defmethod chisel_msgs::GetAllChunksServiceRequest
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

(defclass chisel_msgs::GetAllChunksServiceResponse
  :super ros::object
  :slots (_chunks ))

(defmethod chisel_msgs::GetAllChunksServiceResponse
  (:init
   (&key
    ((:chunks __chunks) (instance chisel_msgs::ChunkListMessage :init))
    )
   (send-super :init)
   (setq _chunks __chunks)
   self)
  (:chunks
   (&rest __chunks)
   (if (keywordp (car __chunks))
       (send* _chunks __chunks)
     (progn
       (if __chunks (setq _chunks (car __chunks)))
       _chunks)))
  (:serialization-length
   ()
   (+
    ;; chisel_msgs/ChunkListMessage _chunks
    (send _chunks :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; chisel_msgs/ChunkListMessage _chunks
       (send _chunks :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; chisel_msgs/ChunkListMessage _chunks
     (send _chunks :deserialize buf ptr-) (incf ptr- (send _chunks :serialization-length))
   ;;
   self)
  )

(defclass chisel_msgs::GetAllChunksService
  :super ros::object
  :slots ())

(setf (get chisel_msgs::GetAllChunksService :md5sum-) "1ed132c081b5f4f409c36677e0cb6ee0")
(setf (get chisel_msgs::GetAllChunksService :datatype-) "chisel_msgs/GetAllChunksService")
(setf (get chisel_msgs::GetAllChunksService :request) chisel_msgs::GetAllChunksServiceRequest)
(setf (get chisel_msgs::GetAllChunksService :response) chisel_msgs::GetAllChunksServiceResponse)

(defmethod chisel_msgs::GetAllChunksServiceRequest
  (:response () (instance chisel_msgs::GetAllChunksServiceResponse :init)))

(setf (get chisel_msgs::GetAllChunksServiceRequest :md5sum-) "1ed132c081b5f4f409c36677e0cb6ee0")
(setf (get chisel_msgs::GetAllChunksServiceRequest :datatype-) "chisel_msgs/GetAllChunksServiceRequest")
(setf (get chisel_msgs::GetAllChunksServiceRequest :definition-)
      "
---
ChunkListMessage chunks



================================================================================
MSG: chisel_msgs/ChunkListMessage
Header header
ChunkMessage[] chunks

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: chisel_msgs/ChunkMessage
Header header

#Chunk ID spatial position
int32 ID_x
int32 ID_y
int32 ID_z

#Chunk spatial hash value
int64 spatial_hash

#Size of a voxel in meters
float32 resolution_meters

#number of voxels in each dimension
int32 num_voxels_x
int32 num_voxels_y
int32 num_voxels_z

#Binary serialization of distances/weights
uint32[] distance_data

#Binary serialization of colors/weights
uint32[] color_data
")

(setf (get chisel_msgs::GetAllChunksServiceResponse :md5sum-) "1ed132c081b5f4f409c36677e0cb6ee0")
(setf (get chisel_msgs::GetAllChunksServiceResponse :datatype-) "chisel_msgs/GetAllChunksServiceResponse")
(setf (get chisel_msgs::GetAllChunksServiceResponse :definition-)
      "
---
ChunkListMessage chunks



================================================================================
MSG: chisel_msgs/ChunkListMessage
Header header
ChunkMessage[] chunks

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: chisel_msgs/ChunkMessage
Header header

#Chunk ID spatial position
int32 ID_x
int32 ID_y
int32 ID_z

#Chunk spatial hash value
int64 spatial_hash

#Size of a voxel in meters
float32 resolution_meters

#number of voxels in each dimension
int32 num_voxels_x
int32 num_voxels_y
int32 num_voxels_z

#Binary serialization of distances/weights
uint32[] distance_data

#Binary serialization of colors/weights
uint32[] color_data
")



(provide :chisel_msgs/GetAllChunksService "1ed132c081b5f4f409c36677e0cb6ee0")


