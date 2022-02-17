;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::MotorRpt1)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'MotorRpt1 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::MOTORRPT1")
  (make-package "PACMOD_MSGS::MOTORRPT1"))

(in-package "ROS")
;;//! \htmlinclude MotorRpt1.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::MotorRpt1
  :super ros::object
  :slots (_header _current _position ))

(defmethod pacmod_msgs::MotorRpt1
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current __current) 0.0)
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current (float __current))
   (setq _position (float __position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _current
    8
    ;; float64 _position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _current
       (sys::poke _current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _current
     (setq _current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::MotorRpt1 :md5sum-) "bc762724eccc08e26b60b6284460fe26")
(setf (get pacmod_msgs::MotorRpt1 :datatype-) "pacmod_msgs/MotorRpt1")
(setf (get pacmod_msgs::MotorRpt1 :definition-)
      "std_msgs/Header header

float64 current         # Motor current in Ampres
float64 position        # Motor position in Radians

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
string frame_id

")



(provide :pacmod_msgs/MotorRpt1 "bc762724eccc08e26b60b6284460fe26")


