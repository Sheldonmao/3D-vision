;; Auto-generated. Do not edit!


(when (boundp 'chisel_msgs::ChunkMessage)
  (if (not (find-package "CHISEL_MSGS"))
    (make-package "CHISEL_MSGS"))
  (shadow 'ChunkMessage (find-package "CHISEL_MSGS")))
(unless (find-package "CHISEL_MSGS::CHUNKMESSAGE")
  (make-package "CHISEL_MSGS::CHUNKMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ChunkMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass chisel_msgs::ChunkMessage
  :super ros::object
  :slots (_header _ID_x _ID_y _ID_z _spatial_hash _resolution_meters _num_voxels_x _num_voxels_y _num_voxels_z _distance_data _color_data ))

(defmethod chisel_msgs::ChunkMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID_x __ID_x) 0)
    ((:ID_y __ID_y) 0)
    ((:ID_z __ID_z) 0)
    ((:spatial_hash __spatial_hash) 0)
    ((:resolution_meters __resolution_meters) 0.0)
    ((:num_voxels_x __num_voxels_x) 0)
    ((:num_voxels_y __num_voxels_y) 0)
    ((:num_voxels_z __num_voxels_z) 0)
    ((:distance_data __distance_data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:color_data __color_data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID_x (round __ID_x))
   (setq _ID_y (round __ID_y))
   (setq _ID_z (round __ID_z))
   (setq _spatial_hash (round __spatial_hash))
   (setq _resolution_meters (float __resolution_meters))
   (setq _num_voxels_x (round __num_voxels_x))
   (setq _num_voxels_y (round __num_voxels_y))
   (setq _num_voxels_z (round __num_voxels_z))
   (setq _distance_data __distance_data)
   (setq _color_data __color_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ID_x
   (&optional __ID_x)
   (if __ID_x (setq _ID_x __ID_x)) _ID_x)
  (:ID_y
   (&optional __ID_y)
   (if __ID_y (setq _ID_y __ID_y)) _ID_y)
  (:ID_z
   (&optional __ID_z)
   (if __ID_z (setq _ID_z __ID_z)) _ID_z)
  (:spatial_hash
   (&optional __spatial_hash)
   (if __spatial_hash (setq _spatial_hash __spatial_hash)) _spatial_hash)
  (:resolution_meters
   (&optional __resolution_meters)
   (if __resolution_meters (setq _resolution_meters __resolution_meters)) _resolution_meters)
  (:num_voxels_x
   (&optional __num_voxels_x)
   (if __num_voxels_x (setq _num_voxels_x __num_voxels_x)) _num_voxels_x)
  (:num_voxels_y
   (&optional __num_voxels_y)
   (if __num_voxels_y (setq _num_voxels_y __num_voxels_y)) _num_voxels_y)
  (:num_voxels_z
   (&optional __num_voxels_z)
   (if __num_voxels_z (setq _num_voxels_z __num_voxels_z)) _num_voxels_z)
  (:distance_data
   (&optional __distance_data)
   (if __distance_data (setq _distance_data __distance_data)) _distance_data)
  (:color_data
   (&optional __color_data)
   (if __color_data (setq _color_data __color_data)) _color_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ID_x
    4
    ;; int32 _ID_y
    4
    ;; int32 _ID_z
    4
    ;; int64 _spatial_hash
    8
    ;; float32 _resolution_meters
    4
    ;; int32 _num_voxels_x
    4
    ;; int32 _num_voxels_y
    4
    ;; int32 _num_voxels_z
    4
    ;; uint32[] _distance_data
    (* 4    (length _distance_data)) 4
    ;; uint32[] _color_data
    (* 4    (length _color_data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ID_x
       (write-long _ID_x s)
     ;; int32 _ID_y
       (write-long _ID_y s)
     ;; int32 _ID_z
       (write-long _ID_z s)
     ;; int64 _spatial_hash
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _spatial_hash (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _spatial_hash) (= (length (_spatial_hash . bv)) 2)) ;; bignum
              (write-long (ash (elt (_spatial_hash . bv) 0) 0) s)
              (write-long (ash (elt (_spatial_hash . bv) 1) -1) s))
             ((and (class _spatial_hash) (= (length (_spatial_hash . bv)) 1)) ;; big1
              (write-long (elt (_spatial_hash . bv) 0) s)
              (write-long (if (>= _spatial_hash 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _spatial_hash s)(write-long (if (>= _spatial_hash 0) 0 #xffffffff) s)))
     ;; float32 _resolution_meters
       (sys::poke _resolution_meters (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _num_voxels_x
       (write-long _num_voxels_x s)
     ;; int32 _num_voxels_y
       (write-long _num_voxels_y s)
     ;; int32 _num_voxels_z
       (write-long _num_voxels_z s)
     ;; uint32[] _distance_data
     (write-long (length _distance_data) s)
     (dotimes (i (length _distance_data))
       (write-long (elt _distance_data i) s)
       )
     ;; uint32[] _color_data
     (write-long (length _color_data) s)
     (dotimes (i (length _color_data))
       (write-long (elt _color_data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ID_x
     (setq _ID_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ID_y
     (setq _ID_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ID_z
     (setq _ID_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _spatial_hash
#+(or :alpha :irix6 :x86_64)
      (setf _spatial_hash (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _spatial_hash (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _resolution_meters
     (setq _resolution_meters (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _num_voxels_x
     (setq _num_voxels_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_voxels_y
     (setq _num_voxels_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_voxels_z
     (setq _num_voxels_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _distance_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance_data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _distance_data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _color_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _color_data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _color_data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get chisel_msgs::ChunkMessage :md5sum-) "2b6f25fa6b6ba9fc3cd619253cab4653")
(setf (get chisel_msgs::ChunkMessage :datatype-) "chisel_msgs/ChunkMessage")
(setf (get chisel_msgs::ChunkMessage :definition-)
      "Header header

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

")



(provide :chisel_msgs/ChunkMessage "2b6f25fa6b6ba9fc3cd619253cab4653")


