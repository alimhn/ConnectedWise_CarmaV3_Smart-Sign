;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::YawRateRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'YawRateRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::YAWRATERPT")
  (make-package "PACMOD_MSGS::YAWRATERPT"))

(in-package "ROS")
;;//! \htmlinclude YawRateRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::YawRateRpt
  :super ros::object
  :slots (_header _yaw_rate ))

(defmethod pacmod_msgs::YawRateRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:yaw_rate __yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _yaw_rate (float __yaw_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _yaw_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::YawRateRpt :md5sum-) "8bdabba36ff5a4751eb3ad99f74991ca")
(setf (get pacmod_msgs::YawRateRpt :datatype-) "pacmod_msgs/YawRateRpt")
(setf (get pacmod_msgs::YawRateRpt :definition-)
      "std_msgs/Header header

float64 yaw_rate    #In rad/s.

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



(provide :pacmod_msgs/YawRateRpt "8bdabba36ff5a4751eb3ad99f74991ca")


