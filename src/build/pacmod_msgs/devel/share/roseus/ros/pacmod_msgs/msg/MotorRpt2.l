;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::MotorRpt2)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'MotorRpt2 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::MOTORRPT2")
  (make-package "PACMOD_MSGS::MOTORRPT2"))

(in-package "ROS")
;;//! \htmlinclude MotorRpt2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::MotorRpt2
  :super ros::object
  :slots (_header _encoder_temp _motor_temp _angular_velocity ))

(defmethod pacmod_msgs::MotorRpt2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoder_temp __encoder_temp) 0.0)
    ((:motor_temp __motor_temp) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _encoder_temp (float __encoder_temp))
   (setq _motor_temp (float __motor_temp))
   (setq _angular_velocity (float __angular_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:encoder_temp
   (&optional __encoder_temp)
   (if __encoder_temp (setq _encoder_temp __encoder_temp)) _encoder_temp)
  (:motor_temp
   (&optional __motor_temp)
   (if __motor_temp (setq _motor_temp __motor_temp)) _motor_temp)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _encoder_temp
    8
    ;; float64 _motor_temp
    8
    ;; float64 _angular_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _encoder_temp
       (sys::poke _encoder_temp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_temp
       (sys::poke _motor_temp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _encoder_temp
     (setq _encoder_temp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_temp
     (setq _motor_temp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::MotorRpt2 :md5sum-) "d757953b36f8ffe8db6389da9ff787a1")
(setf (get pacmod_msgs::MotorRpt2 :datatype-) "pacmod_msgs/MotorRpt2")
(setf (get pacmod_msgs::MotorRpt2 :definition-)
      "std_msgs/Header header

float64 encoder_temp        # Encoder temperature in degrees Celsius
float64 motor_temp          # Internal motor temperature in degrees Celsius
float64 angular_velocity    # Angular velocity of the motor shaft (z axis) in Radians/second

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



(provide :pacmod_msgs/MotorRpt2 "d757953b36f8ffe8db6389da9ff787a1")


