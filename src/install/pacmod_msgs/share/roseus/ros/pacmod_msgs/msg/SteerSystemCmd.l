;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SteerSystemCmd)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SteerSystemCmd (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::STEERSYSTEMCMD")
  (make-package "PACMOD_MSGS::STEERSYSTEMCMD"))

(in-package "ROS")
;;//! \htmlinclude SteerSystemCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::SteerSystemCmd
  :super ros::object
  :slots (_header _enable _ignore_overrides _clear_override _clear_faults _command _rotation_rate ))

(defmethod pacmod_msgs::SteerSystemCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enable __enable) nil)
    ((:ignore_overrides __ignore_overrides) nil)
    ((:clear_override __clear_override) nil)
    ((:clear_faults __clear_faults) nil)
    ((:command __command) 0.0)
    ((:rotation_rate __rotation_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enable __enable)
   (setq _ignore_overrides __ignore_overrides)
   (setq _clear_override __clear_override)
   (setq _clear_faults __clear_faults)
   (setq _command (float __command))
   (setq _rotation_rate (float __rotation_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:ignore_overrides
   (&optional (__ignore_overrides :null))
   (if (not (eq __ignore_overrides :null)) (setq _ignore_overrides __ignore_overrides)) _ignore_overrides)
  (:clear_override
   (&optional (__clear_override :null))
   (if (not (eq __clear_override :null)) (setq _clear_override __clear_override)) _clear_override)
  (:clear_faults
   (&optional (__clear_faults :null))
   (if (not (eq __clear_faults :null)) (setq _clear_faults __clear_faults)) _clear_faults)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:rotation_rate
   (&optional __rotation_rate)
   (if __rotation_rate (setq _rotation_rate __rotation_rate)) _rotation_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _enable
    1
    ;; bool _ignore_overrides
    1
    ;; bool _clear_override
    1
    ;; bool _clear_faults
    1
    ;; float64 _command
    8
    ;; float64 _rotation_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _ignore_overrides
       (if _ignore_overrides (write-byte -1 s) (write-byte 0 s))
     ;; bool _clear_override
       (if _clear_override (write-byte -1 s) (write-byte 0 s))
     ;; bool _clear_faults
       (if _clear_faults (write-byte -1 s) (write-byte 0 s))
     ;; float64 _command
       (sys::poke _command (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotation_rate
       (sys::poke _rotation_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ignore_overrides
     (setq _ignore_overrides (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clear_override
     (setq _clear_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clear_faults
     (setq _clear_faults (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _command
     (setq _command (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotation_rate
     (setq _rotation_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::SteerSystemCmd :md5sum-) "cfa0df9428e1c56b79ca986e115663f7")
(setf (get pacmod_msgs::SteerSystemCmd :datatype-) "pacmod_msgs/SteerSystemCmd")
(setf (get pacmod_msgs::SteerSystemCmd :definition-)
      "std_msgs/Header header

bool enable
bool ignore_overrides
bool clear_override
bool clear_faults

float64 command
float64 rotation_rate

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



(provide :pacmod_msgs/SteerSystemCmd "cfa0df9428e1c56b79ca986e115663f7")


