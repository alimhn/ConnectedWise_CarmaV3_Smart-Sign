;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::EngineRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'EngineRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::ENGINERPT")
  (make-package "PACMOD_MSGS::ENGINERPT"))

(in-package "ROS")
;;//! \htmlinclude EngineRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::EngineRpt
  :super ros::object
  :slots (_header _engine_speed _engine_torque _engine_coolant_temp _engine_speed_avail _engine_torque_avail _engine_coolant_temp_avail ))

(defmethod pacmod_msgs::EngineRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:engine_speed __engine_speed) 0.0)
    ((:engine_torque __engine_torque) 0.0)
    ((:engine_coolant_temp __engine_coolant_temp) 0)
    ((:engine_speed_avail __engine_speed_avail) nil)
    ((:engine_torque_avail __engine_torque_avail) nil)
    ((:engine_coolant_temp_avail __engine_coolant_temp_avail) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _engine_speed (float __engine_speed))
   (setq _engine_torque (float __engine_torque))
   (setq _engine_coolant_temp (round __engine_coolant_temp))
   (setq _engine_speed_avail __engine_speed_avail)
   (setq _engine_torque_avail __engine_torque_avail)
   (setq _engine_coolant_temp_avail __engine_coolant_temp_avail)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:engine_speed
   (&optional __engine_speed)
   (if __engine_speed (setq _engine_speed __engine_speed)) _engine_speed)
  (:engine_torque
   (&optional __engine_torque)
   (if __engine_torque (setq _engine_torque __engine_torque)) _engine_torque)
  (:engine_coolant_temp
   (&optional __engine_coolant_temp)
   (if __engine_coolant_temp (setq _engine_coolant_temp __engine_coolant_temp)) _engine_coolant_temp)
  (:engine_speed_avail
   (&optional (__engine_speed_avail :null))
   (if (not (eq __engine_speed_avail :null)) (setq _engine_speed_avail __engine_speed_avail)) _engine_speed_avail)
  (:engine_torque_avail
   (&optional (__engine_torque_avail :null))
   (if (not (eq __engine_torque_avail :null)) (setq _engine_torque_avail __engine_torque_avail)) _engine_torque_avail)
  (:engine_coolant_temp_avail
   (&optional (__engine_coolant_temp_avail :null))
   (if (not (eq __engine_coolant_temp_avail :null)) (setq _engine_coolant_temp_avail __engine_coolant_temp_avail)) _engine_coolant_temp_avail)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _engine_speed
    8
    ;; float64 _engine_torque
    8
    ;; int16 _engine_coolant_temp
    2
    ;; bool _engine_speed_avail
    1
    ;; bool _engine_torque_avail
    1
    ;; bool _engine_coolant_temp_avail
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _engine_speed
       (sys::poke _engine_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _engine_torque
       (sys::poke _engine_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _engine_coolant_temp
       (write-word _engine_coolant_temp s)
     ;; bool _engine_speed_avail
       (if _engine_speed_avail (write-byte -1 s) (write-byte 0 s))
     ;; bool _engine_torque_avail
       (if _engine_torque_avail (write-byte -1 s) (write-byte 0 s))
     ;; bool _engine_coolant_temp_avail
       (if _engine_coolant_temp_avail (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _engine_speed
     (setq _engine_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _engine_torque
     (setq _engine_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _engine_coolant_temp
     (setq _engine_coolant_temp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _engine_speed_avail
     (setq _engine_speed_avail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _engine_torque_avail
     (setq _engine_torque_avail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _engine_coolant_temp_avail
     (setq _engine_coolant_temp_avail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::EngineRpt :md5sum-) "ce4743585f6b90cb725120aba6ddfafc")
(setf (get pacmod_msgs::EngineRpt :datatype-) "pacmod_msgs/EngineRpt")
(setf (get pacmod_msgs::EngineRpt :definition-)
      "std_msgs/Header header

float64 engine_speed
float64 engine_torque
int16 engine_coolant_temp
bool engine_speed_avail
bool engine_torque_avail
bool engine_coolant_temp_avail

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



(provide :pacmod_msgs/EngineRpt "ce4743585f6b90cb725120aba6ddfafc")


