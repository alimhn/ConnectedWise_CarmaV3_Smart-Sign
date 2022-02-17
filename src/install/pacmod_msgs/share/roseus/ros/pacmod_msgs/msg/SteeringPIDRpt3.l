;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SteeringPIDRpt3)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SteeringPIDRpt3 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::STEERINGPIDRPT3")
  (make-package "PACMOD_MSGS::STEERINGPIDRPT3"))

(in-package "ROS")
;;//! \htmlinclude SteeringPIDRpt3.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::SteeringPIDRpt3
  :super ros::object
  :slots (_header _new_torque _str_angle_desired _str_angle_actual _error ))

(defmethod pacmod_msgs::SteeringPIDRpt3
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:new_torque __new_torque) 0.0)
    ((:str_angle_desired __str_angle_desired) 0.0)
    ((:str_angle_actual __str_angle_actual) 0.0)
    ((:error __error) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _new_torque (float __new_torque))
   (setq _str_angle_desired (float __str_angle_desired))
   (setq _str_angle_actual (float __str_angle_actual))
   (setq _error (float __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:new_torque
   (&optional __new_torque)
   (if __new_torque (setq _new_torque __new_torque)) _new_torque)
  (:str_angle_desired
   (&optional __str_angle_desired)
   (if __str_angle_desired (setq _str_angle_desired __str_angle_desired)) _str_angle_desired)
  (:str_angle_actual
   (&optional __str_angle_actual)
   (if __str_angle_actual (setq _str_angle_actual __str_angle_actual)) _str_angle_actual)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _new_torque
    8
    ;; float64 _str_angle_desired
    8
    ;; float64 _str_angle_actual
    8
    ;; float64 _error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _new_torque
       (sys::poke _new_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _str_angle_desired
       (sys::poke _str_angle_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _str_angle_actual
       (sys::poke _str_angle_actual (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _new_torque
     (setq _new_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _str_angle_desired
     (setq _str_angle_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _str_angle_actual
     (setq _str_angle_actual (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::SteeringPIDRpt3 :md5sum-) "722f63b47fd2935245656ab58fbec284")
(setf (get pacmod_msgs::SteeringPIDRpt3 :datatype-) "pacmod_msgs/SteeringPIDRpt3")
(setf (get pacmod_msgs::SteeringPIDRpt3 :definition-)
      "std_msgs/Header header

float64 new_torque
float64 str_angle_desired
float64 str_angle_actual
float64 error

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



(provide :pacmod_msgs/SteeringPIDRpt3 "722f63b47fd2935245656ab58fbec284")


