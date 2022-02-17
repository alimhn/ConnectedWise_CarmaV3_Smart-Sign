;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SteeringPIDRpt4)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SteeringPIDRpt4 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::STEERINGPIDRPT4")
  (make-package "PACMOD_MSGS::STEERINGPIDRPT4"))

(in-package "ROS")
;;//! \htmlinclude SteeringPIDRpt4.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::SteeringPIDRpt4
  :super ros::object
  :slots (_header _angular_velocity _angular_acceleration ))

(defmethod pacmod_msgs::SteeringPIDRpt4
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angular_velocity __angular_velocity) 0.0)
    ((:angular_acceleration __angular_acceleration) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _angular_velocity (float __angular_velocity))
   (setq _angular_acceleration (float __angular_acceleration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:angular_acceleration
   (&optional __angular_acceleration)
   (if __angular_acceleration (setq _angular_acceleration __angular_acceleration)) _angular_acceleration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _angular_velocity
    8
    ;; float64 _angular_acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_acceleration
       (sys::poke _angular_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_acceleration
     (setq _angular_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::SteeringPIDRpt4 :md5sum-) "2bc4404ec9df7da4ed993a2081a68002")
(setf (get pacmod_msgs::SteeringPIDRpt4 :datatype-) "pacmod_msgs/SteeringPIDRpt4")
(setf (get pacmod_msgs::SteeringPIDRpt4 :definition-)
      "std_msgs/Header header

float64 angular_velocity         
float64 angular_acceleration


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



(provide :pacmod_msgs/SteeringPIDRpt4 "2bc4404ec9df7da4ed993a2081a68002")


