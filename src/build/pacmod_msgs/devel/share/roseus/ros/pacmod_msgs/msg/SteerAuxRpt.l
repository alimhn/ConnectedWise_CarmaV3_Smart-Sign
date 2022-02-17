;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SteerAuxRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SteerAuxRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::STEERAUXRPT")
  (make-package "PACMOD_MSGS::STEERAUXRPT"))

(in-package "ROS")
;;//! \htmlinclude SteerAuxRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::SteerAuxRpt
  :super ros::object
  :slots (_header _raw_position _raw_position_is_valid _raw_torque _raw_torque_is_valid _rotation_rate _rotation_rate_is_valid _user_interaction _user_interaction_is_valid ))

(defmethod pacmod_msgs::SteerAuxRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:raw_position __raw_position) 0.0)
    ((:raw_position_is_valid __raw_position_is_valid) nil)
    ((:raw_torque __raw_torque) 0.0)
    ((:raw_torque_is_valid __raw_torque_is_valid) nil)
    ((:rotation_rate __rotation_rate) 0.0)
    ((:rotation_rate_is_valid __rotation_rate_is_valid) nil)
    ((:user_interaction __user_interaction) nil)
    ((:user_interaction_is_valid __user_interaction_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _raw_position (float __raw_position))
   (setq _raw_position_is_valid __raw_position_is_valid)
   (setq _raw_torque (float __raw_torque))
   (setq _raw_torque_is_valid __raw_torque_is_valid)
   (setq _rotation_rate (float __rotation_rate))
   (setq _rotation_rate_is_valid __rotation_rate_is_valid)
   (setq _user_interaction __user_interaction)
   (setq _user_interaction_is_valid __user_interaction_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:raw_position
   (&optional __raw_position)
   (if __raw_position (setq _raw_position __raw_position)) _raw_position)
  (:raw_position_is_valid
   (&optional (__raw_position_is_valid :null))
   (if (not (eq __raw_position_is_valid :null)) (setq _raw_position_is_valid __raw_position_is_valid)) _raw_position_is_valid)
  (:raw_torque
   (&optional __raw_torque)
   (if __raw_torque (setq _raw_torque __raw_torque)) _raw_torque)
  (:raw_torque_is_valid
   (&optional (__raw_torque_is_valid :null))
   (if (not (eq __raw_torque_is_valid :null)) (setq _raw_torque_is_valid __raw_torque_is_valid)) _raw_torque_is_valid)
  (:rotation_rate
   (&optional __rotation_rate)
   (if __rotation_rate (setq _rotation_rate __rotation_rate)) _rotation_rate)
  (:rotation_rate_is_valid
   (&optional (__rotation_rate_is_valid :null))
   (if (not (eq __rotation_rate_is_valid :null)) (setq _rotation_rate_is_valid __rotation_rate_is_valid)) _rotation_rate_is_valid)
  (:user_interaction
   (&optional (__user_interaction :null))
   (if (not (eq __user_interaction :null)) (setq _user_interaction __user_interaction)) _user_interaction)
  (:user_interaction_is_valid
   (&optional (__user_interaction_is_valid :null))
   (if (not (eq __user_interaction_is_valid :null)) (setq _user_interaction_is_valid __user_interaction_is_valid)) _user_interaction_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _raw_position
    8
    ;; bool _raw_position_is_valid
    1
    ;; float64 _raw_torque
    8
    ;; bool _raw_torque_is_valid
    1
    ;; float64 _rotation_rate
    8
    ;; bool _rotation_rate_is_valid
    1
    ;; bool _user_interaction
    1
    ;; bool _user_interaction_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _raw_position
       (sys::poke _raw_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _raw_position_is_valid
       (if _raw_position_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _raw_torque
       (sys::poke _raw_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _raw_torque_is_valid
       (if _raw_torque_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _rotation_rate
       (sys::poke _rotation_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _rotation_rate_is_valid
       (if _rotation_rate_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_interaction
       (if _user_interaction (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_interaction_is_valid
       (if _user_interaction_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _raw_position
     (setq _raw_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _raw_position_is_valid
     (setq _raw_position_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _raw_torque
     (setq _raw_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _raw_torque_is_valid
     (setq _raw_torque_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _rotation_rate
     (setq _rotation_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _rotation_rate_is_valid
     (setq _rotation_rate_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_interaction
     (setq _user_interaction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_interaction_is_valid
     (setq _user_interaction_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::SteerAuxRpt :md5sum-) "64ab1937ad919cdc25271e7f81c721e2")
(setf (get pacmod_msgs::SteerAuxRpt :datatype-) "pacmod_msgs/SteerAuxRpt")
(setf (get pacmod_msgs::SteerAuxRpt :definition-)
      "std_msgs/Header header

float64 raw_position
bool raw_position_is_valid
float64 raw_torque
bool raw_torque_is_valid
float64 rotation_rate
bool rotation_rate_is_valid
bool user_interaction
bool user_interaction_is_valid

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



(provide :pacmod_msgs/SteerAuxRpt "64ab1937ad919cdc25271e7f81c721e2")


