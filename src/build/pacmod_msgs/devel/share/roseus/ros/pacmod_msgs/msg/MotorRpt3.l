;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::MotorRpt3)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'MotorRpt3 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::MOTORRPT3")
  (make-package "PACMOD_MSGS::MOTORRPT3"))

(in-package "ROS")
;;//! \htmlinclude MotorRpt3.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::MotorRpt3
  :super ros::object
  :slots (_header _torque_output _torque_input ))

(defmethod pacmod_msgs::MotorRpt3
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:torque_output __torque_output) 0.0)
    ((:torque_input __torque_input) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _torque_output (float __torque_output))
   (setq _torque_input (float __torque_input))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:torque_output
   (&optional __torque_output)
   (if __torque_output (setq _torque_output __torque_output)) _torque_output)
  (:torque_input
   (&optional __torque_input)
   (if __torque_input (setq _torque_input __torque_input)) _torque_input)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _torque_output
    8
    ;; float64 _torque_input
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _torque_output
       (sys::poke _torque_output (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _torque_input
       (sys::poke _torque_input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _torque_output
     (setq _torque_output (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _torque_input
     (setq _torque_input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::MotorRpt3 :md5sum-) "1640bb8a85b4353a76a6e6a5df503313")
(setf (get pacmod_msgs::MotorRpt3 :datatype-) "pacmod_msgs/MotorRpt3")
(setf (get pacmod_msgs::MotorRpt3 :definition-)
      "std_msgs/Header header

float64 torque_output   # Measured torque output of the motor in Newton-Meters
float64 torque_input    # Measured torque input of the motor in Newton-Meters

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



(provide :pacmod_msgs/MotorRpt3 "1640bb8a85b4353a76a6e6a5df503313")


