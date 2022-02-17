;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::PositionWithSpeed)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'PositionWithSpeed (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::POSITIONWITHSPEED")
  (make-package "PACMOD_MSGS::POSITIONWITHSPEED"))

(in-package "ROS")
;;//! \htmlinclude PositionWithSpeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::PositionWithSpeed
  :super ros::object
  :slots (_header _angular_position _angular_velocity_limit ))

(defmethod pacmod_msgs::PositionWithSpeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angular_position __angular_position) 0.0)
    ((:angular_velocity_limit __angular_velocity_limit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _angular_position (float __angular_position))
   (setq _angular_velocity_limit (float __angular_velocity_limit))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angular_position
   (&optional __angular_position)
   (if __angular_position (setq _angular_position __angular_position)) _angular_position)
  (:angular_velocity_limit
   (&optional __angular_velocity_limit)
   (if __angular_velocity_limit (setq _angular_velocity_limit __angular_velocity_limit)) _angular_velocity_limit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _angular_position
    8
    ;; float64 _angular_velocity_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _angular_position
       (sys::poke _angular_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_limit
       (sys::poke _angular_velocity_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _angular_position
     (setq _angular_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_limit
     (setq _angular_velocity_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::PositionWithSpeed :md5sum-) "7e96a8c8cbc8234d4d2c87880ddb7cfe")
(setf (get pacmod_msgs::PositionWithSpeed :datatype-) "pacmod_msgs/PositionWithSpeed")
(setf (get pacmod_msgs::PositionWithSpeed :definition-)
      "std_msgs/Header header

float64 angular_position                # The desired rotational position of the motor shaft about it's z axis in Radians
float64 angular_velocity_limit          # The desired speed limit to acheive the desired position in Radians/second (z axis)

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



(provide :pacmod_msgs/PositionWithSpeed "7e96a8c8cbc8234d4d2c87880ddb7cfe")


