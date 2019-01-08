;; Auto-generated. Do not edit!


(when (boundp 'chisel_msgs::ChunkListMessage)
  (if (not (find-package "CHISEL_MSGS"))
    (make-package "CHISEL_MSGS"))
  (shadow 'ChunkListMessage (find-package "CHISEL_MSGS")))
(unless (find-package "CHISEL_MSGS::CHUNKLISTMESSAGE")
  (make-package "CHISEL_MSGS::CHUNKLISTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ChunkListMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass chisel_msgs::ChunkListMessage
  :super ros::object
  :slots (_header _chunks ))

(defmethod chisel_msgs::ChunkListMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:chunks __chunks) (let (r) (dotimes (i 0) (push (instance chisel_msgs::ChunkMessage :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _chunks __chunks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; chisel_msgs/ChunkMessage[] _chunks
    (apply #'+ (send-all _chunks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; chisel_msgs/ChunkMessage[] _chunks
     (write-long (length _chunks) s)
     (dolist (elem _chunks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; chisel_msgs/ChunkMessage[] _chunks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _chunks (let (r) (dotimes (i n) (push (instance chisel_msgs::ChunkMessage :init) r)) r))
     (dolist (elem- _chunks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get chisel_msgs::ChunkListMessage :md5sum-) "fd6446f54c70cfb1da79fff2245968e4")
(setf (get chisel_msgs::ChunkListMessage :datatype-) "chisel_msgs/ChunkListMessage")
(setf (get chisel_msgs::ChunkListMessage :definition-)
      "Header header
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



(provide :chisel_msgs/ChunkListMessage "fd6446f54c70cfb1da79fff2245968e4")


