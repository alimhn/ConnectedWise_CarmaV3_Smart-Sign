;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::WheelSpeedRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'WheelSpeedRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::WHEELSPEEDRPT")
  (make-package "PACMOD_MSGS::WHEELSPEEDRPT"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::WheelSpeedRpt
  :super ros::object
  :slots (_header _front_left_wheel_speed _front_right_wheel_speed _rear_left_wheel_speed _rear_right_wheel_speed ))

(defmethod pacmod_msgs::WheelSpeedRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_left_wheel_speed __front_left_wheel_speed) 0.0)
    ((:front_right_wheel_speed __front_right_wheel_speed) 0.0)
    ((:rear_left_wheel_speed __rear_left_wheel_speed) 0.0)
    ((:rear_right_wheel_speed __rear_right_wheel_speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_left_wheel_speed (float __front_left_wheel_speed))
   (setq _front_right_wheel_speed (float __front_right_wheel_speed))
   (setq _rear_left_wheel_speed (float __rear_left_wheel_speed))
   (setq _rear_right_wheel_speed (float __rear_right_wheel_speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_left_wheel_speed
   (&optional __front_left_wheel_speed)
   (if __front_left_wheel_speed (setq _front_left_wheel_speed __front_left_wheel_speed)) _front_left_wheel_speed)
  (:front_right_wheel_speed
   (&optional __front_right_wheel_speed)
   (if __front_right_wheel_speed (setq _front_right_wheel_speed __front_right_wheel_speed)) _front_right_wheel_speed)
  (:rear_left_wheel_speed
   (&optional __rear_left_wheel_speed)
   (if __rear_left_wheel_speed (setq _rear_left_wheel_speed __rear_left_wheel_speed)) _rear_left_wheel_speed)
  (:rear_right_wheel_speed
   (&optional __rear_right_wheel_speed)
   (if __rear_right_wheel_speed (setq _rear_right_wheel_speed __rear_right_wheel_speed)) _rear_right_wheel_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _front_left_wheel_speed
    8
    ;; float64 _front_right_wheel_speed
    8
    ;; float64 _rear_left_wheel_speed
    8
    ;; float64 _rear_right_wheel_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _front_left_wheel_speed
       (sys::poke _front_left_wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_right_wheel_speed
       (sys::poke _front_right_wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_left_wheel_speed
       (sys::poke _rear_left_wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_right_wheel_speed
       (sys::poke _rear_right_wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _front_left_wheel_speed
     (setq _front_left_wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_right_wheel_speed
     (setq _front_right_wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_left_wheel_speed
     (setq _rear_left_wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_right_wheel_speed
     (setq _rear_right_wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::WheelSpeedRpt :md5sum-) "0ade552ffaaff87eca01c4d9b49bb8ae")
(setf (get pacmod_msgs::WheelSpeedRpt :datatype-) "pacmod_msgs/WheelSpeedRpt")
(setf (get pacmod_msgs::WheelSpeedRpt :definition-)
      "std_msgs/Header header

float64 front_left_wheel_speed
float64 front_right_wheel_speed
float64 rear_left_wheel_speed
float64 rear_right_wheel_speed

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



(provide :pacmod_msgs/WheelSpeedRpt "0ade552ffaaff87eca01c4d9b49bb8ae")


