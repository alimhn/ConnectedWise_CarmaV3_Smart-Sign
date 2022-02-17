;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::PacmodCmd)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'PacmodCmd (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::PACMODCMD")
  (make-package "PACMOD_MSGS::PACMODCMD"))

(in-package "ROS")
;;//! \htmlinclude PacmodCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TURN_RIGHT*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*TURN_RIGHT* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*TURN_RIGHT* 0)
(intern "*TURN_NONE*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*TURN_NONE* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*TURN_NONE* 1)
(intern "*TURN_LEFT*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*TURN_LEFT* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*TURN_LEFT* 2)
(intern "*TURN_HAZARDS*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*TURN_HAZARDS* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*TURN_HAZARDS* 3)
(intern "*SHIFT_PARK*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*SHIFT_PARK* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*SHIFT_PARK* 0)
(intern "*SHIFT_REVERSE*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*SHIFT_REVERSE* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*SHIFT_REVERSE* 1)
(intern "*SHIFT_NEUTRAL*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*SHIFT_NEUTRAL* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*SHIFT_NEUTRAL* 2)
(intern "*SHIFT_FORWARD*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*SHIFT_FORWARD* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*SHIFT_FORWARD* 3)
(intern "*SHIFT_HIGH*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*SHIFT_HIGH* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*SHIFT_HIGH* 3)
(intern "*SHIFT_LOW*" (find-package "PACMOD_MSGS::PACMODCMD"))
(shadow '*SHIFT_LOW* (find-package "PACMOD_MSGS::PACMODCMD"))
(defconstant pacmod_msgs::PacmodCmd::*SHIFT_LOW* 4)

(defun pacmod_msgs::PacmodCmd-to-symbol (const)
  (cond
        ((= const 0) 'pacmod_msgs::PacmodCmd::*TURN_RIGHT*)
        ((= const 1) 'pacmod_msgs::PacmodCmd::*TURN_NONE*)
        ((= const 2) 'pacmod_msgs::PacmodCmd::*TURN_LEFT*)
        ((= const 3) 'pacmod_msgs::PacmodCmd::*TURN_HAZARDS*)
        ((= const 0) 'pacmod_msgs::PacmodCmd::*SHIFT_PARK*)
        ((= const 1) 'pacmod_msgs::PacmodCmd::*SHIFT_REVERSE*)
        ((= const 2) 'pacmod_msgs::PacmodCmd::*SHIFT_NEUTRAL*)
        ((= const 3) 'pacmod_msgs::PacmodCmd::*SHIFT_FORWARD*)
        ((= const 3) 'pacmod_msgs::PacmodCmd::*SHIFT_HIGH*)
        ((= const 4) 'pacmod_msgs::PacmodCmd::*SHIFT_LOW*)
        (t nil)))

(defclass pacmod_msgs::PacmodCmd
  :super ros::object
  :slots (_header _f64_cmd _ui16_cmd _enable _clear _ignore ))

(defmethod pacmod_msgs::PacmodCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:f64_cmd __f64_cmd) 0.0)
    ((:ui16_cmd __ui16_cmd) 0)
    ((:enable __enable) nil)
    ((:clear __clear) nil)
    ((:ignore __ignore) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _f64_cmd (float __f64_cmd))
   (setq _ui16_cmd (round __ui16_cmd))
   (setq _enable __enable)
   (setq _clear __clear)
   (setq _ignore __ignore)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:f64_cmd
   (&optional __f64_cmd)
   (if __f64_cmd (setq _f64_cmd __f64_cmd)) _f64_cmd)
  (:ui16_cmd
   (&optional __ui16_cmd)
   (if __ui16_cmd (setq _ui16_cmd __ui16_cmd)) _ui16_cmd)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:clear
   (&optional (__clear :null))
   (if (not (eq __clear :null)) (setq _clear __clear)) _clear)
  (:ignore
   (&optional (__ignore :null))
   (if (not (eq __ignore :null)) (setq _ignore __ignore)) _ignore)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _f64_cmd
    8
    ;; uint16 _ui16_cmd
    2
    ;; bool _enable
    1
    ;; bool _clear
    1
    ;; bool _ignore
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _f64_cmd
       (sys::poke _f64_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _ui16_cmd
       (write-word _ui16_cmd s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _clear
       (if _clear (write-byte -1 s) (write-byte 0 s))
     ;; bool _ignore
       (if _ignore (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _f64_cmd
     (setq _f64_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _ui16_cmd
     (setq _ui16_cmd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clear
     (setq _clear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ignore
     (setq _ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::PacmodCmd :md5sum-) "5651e3d1d38e01689421d6d8a4e924f6")
(setf (get pacmod_msgs::PacmodCmd :datatype-) "pacmod_msgs/PacmodCmd")
(setf (get pacmod_msgs::PacmodCmd :definition-)
      "std_msgs/Header header

float64 f64_cmd
uint16 ui16_cmd
bool enable
bool clear
bool ignore

uint16 TURN_RIGHT = 0
uint16 TURN_NONE = 1
uint16 TURN_LEFT = 2
uint16 TURN_HAZARDS = 3

uint16 SHIFT_PARK = 0
uint16 SHIFT_REVERSE = 1
uint16 SHIFT_NEUTRAL = 2
uint16 SHIFT_FORWARD = 3
uint16 SHIFT_HIGH = 3 # For Polaris Ranger
uint16 SHIFT_LOW = 4

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



(provide :pacmod_msgs/PacmodCmd "5651e3d1d38e01689421d6d8a4e924f6")


