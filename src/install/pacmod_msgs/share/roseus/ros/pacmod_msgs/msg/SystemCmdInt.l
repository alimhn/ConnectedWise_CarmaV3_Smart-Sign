;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SystemCmdInt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SystemCmdInt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::SYSTEMCMDINT")
  (make-package "PACMOD_MSGS::SYSTEMCMDINT"))

(in-package "ROS")
;;//! \htmlinclude SystemCmdInt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CRUISE_CONTROL_NONE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*CRUISE_CONTROL_NONE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_NONE* 0)
(intern "*CRUISE_CONTROL_CNCL*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*CRUISE_CONTROL_CNCL* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_CNCL* 1)
(intern "*CRUISE_CONTROL_ACC_FURTHER*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*CRUISE_CONTROL_ACC_FURTHER* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_ACC_FURTHER* 2)
(intern "*CRUISE_CONTROL_ACC_CLOSER*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*CRUISE_CONTROL_ACC_CLOSER* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_ACC_CLOSER* 3)
(intern "*CRUISE_CONTROL_SET_DEC*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*CRUISE_CONTROL_SET_DEC* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_SET_DEC* 4)
(intern "*CRUISE_CONTROL_RES_INC*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*CRUISE_CONTROL_RES_INC* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_RES_INC* 5)
(intern "*DASH_CONTROL_NONE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DASH_CONTROL_NONE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DASH_CONTROL_NONE* 0)
(intern "*DASH_CONTROL_OK*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DASH_CONTROL_OK* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DASH_CONTROL_OK* 1)
(intern "*DASH_CONTROL_LEFT*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DASH_CONTROL_LEFT* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DASH_CONTROL_LEFT* 2)
(intern "*DASH_CONTROL_RIGHT*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DASH_CONTROL_RIGHT* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DASH_CONTROL_RIGHT* 3)
(intern "*DASH_CONTROL_UP*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DASH_CONTROL_UP* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DASH_CONTROL_UP* 4)
(intern "*DASH_CONTROL_DOWN*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DASH_CONTROL_DOWN* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DASH_CONTROL_DOWN* 5)
(intern "*HEADLIGHTS_OFF*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*HEADLIGHTS_OFF* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*HEADLIGHTS_OFF* 0)
(intern "*HEADLIGHTS_PARKING_ONLY*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*HEADLIGHTS_PARKING_ONLY* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*HEADLIGHTS_PARKING_ONLY* 1)
(intern "*HEADLIGHTS_MANUAL_LOW*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*HEADLIGHTS_MANUAL_LOW* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*HEADLIGHTS_MANUAL_LOW* 2)
(intern "*HEADLIGHTS_MANUAL_HIGH*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*HEADLIGHTS_MANUAL_HIGH* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*HEADLIGHTS_MANUAL_HIGH* 3)
(intern "*HEADLIGHTS_AUTO_LOW*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*HEADLIGHTS_AUTO_LOW* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*HEADLIGHTS_AUTO_LOW* 4)
(intern "*HEADLIGHTS_AUTO_HIGH*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*HEADLIGHTS_AUTO_HIGH* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*HEADLIGHTS_AUTO_HIGH* 5)
(intern "*MEDIA_CONTROL_NONE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_NONE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_NONE* 0)
(intern "*MEDIA_CONTROL_VOICE_COMMAND*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_VOICE_COMMAND* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_VOICE_COMMAND* 1)
(intern "*MEDIA_CONTROL_MUTE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_MUTE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_MUTE* 2)
(intern "*MEDIA_CONTROL_PREV_TRACK_ANSWER*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_PREV_TRACK_ANSWER* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_PREV_TRACK_ANSWER* 3)
(intern "*MEDIA_CONTROL_NEXT_TRACK_HANG_UP*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_NEXT_TRACK_HANG_UP* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_NEXT_TRACK_HANG_UP* 4)
(intern "*MEDIA_CONTROL_VOL_UP*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_VOL_UP* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_VOL_UP* 5)
(intern "*MEDIA_CONTROL_VOL_DOWN*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*MEDIA_CONTROL_VOL_DOWN* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_VOL_DOWN* 6)
(intern "*SHIFT_PARK*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_PARK* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_PARK* 0)
(intern "*SHIFT_REVERSE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_REVERSE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_REVERSE* 1)
(intern "*SHIFT_NEUTRAL*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_NEUTRAL* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_NEUTRAL* 2)
(intern "*SHIFT_HIGH*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_HIGH* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_HIGH* 3)
(intern "*SHIFT_FORWARD*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_FORWARD* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_FORWARD* 3)
(intern "*SHIFT_LOW*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_LOW* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_LOW* 4)
(intern "*SHIFT_NONE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*SHIFT_NONE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*SHIFT_NONE* 7)
(intern "*TURN_RIGHT*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*TURN_RIGHT* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*TURN_RIGHT* 0)
(intern "*TURN_NONE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*TURN_NONE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*TURN_NONE* 1)
(intern "*TURN_LEFT*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*TURN_LEFT* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*TURN_LEFT* 2)
(intern "*TURN_HAZARDS*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*TURN_HAZARDS* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*TURN_HAZARDS* 3)
(intern "*DOOR_NEUTRAL*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DOOR_NEUTRAL* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DOOR_NEUTRAL* 0)
(intern "*DOOR_OPEN*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DOOR_OPEN* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DOOR_OPEN* 1)
(intern "*DOOR_CLOSE*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*DOOR_CLOSE* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*DOOR_CLOSE* 2)
(intern "*WIPERS_OFF*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_OFF* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_OFF* 0)
(intern "*WIPERS_INT_1*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_INT_1* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_INT_1* 1)
(intern "*WIPERS_INT_2*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_INT_2* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_INT_2* 2)
(intern "*WIPERS_INT_3*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_INT_3* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_INT_3* 3)
(intern "*WIPERS_INT_4*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_INT_4* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_INT_4* 4)
(intern "*WIPERS_INT_5*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_INT_5* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_INT_5* 5)
(intern "*WIPERS_INT_6*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_INT_6* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_INT_6* 6)
(intern "*WIPERS_MEDIUM*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_MEDIUM* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_MEDIUM* 7)
(intern "*WIPERS_HIGH*" (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(shadow '*WIPERS_HIGH* (find-package "PACMOD_MSGS::SYSTEMCMDINT"))
(defconstant pacmod_msgs::SystemCmdInt::*WIPERS_HIGH* 8)

(defun pacmod_msgs::SystemCmdInt-to-symbol (const)
  (cond
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_NONE*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_CNCL*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_ACC_FURTHER*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_ACC_CLOSER*)
        ((= const 4) 'pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_SET_DEC*)
        ((= const 5) 'pacmod_msgs::SystemCmdInt::*CRUISE_CONTROL_RES_INC*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*DASH_CONTROL_NONE*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*DASH_CONTROL_OK*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*DASH_CONTROL_LEFT*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*DASH_CONTROL_RIGHT*)
        ((= const 4) 'pacmod_msgs::SystemCmdInt::*DASH_CONTROL_UP*)
        ((= const 5) 'pacmod_msgs::SystemCmdInt::*DASH_CONTROL_DOWN*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*HEADLIGHTS_OFF*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*HEADLIGHTS_PARKING_ONLY*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*HEADLIGHTS_MANUAL_LOW*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*HEADLIGHTS_MANUAL_HIGH*)
        ((= const 4) 'pacmod_msgs::SystemCmdInt::*HEADLIGHTS_AUTO_LOW*)
        ((= const 5) 'pacmod_msgs::SystemCmdInt::*HEADLIGHTS_AUTO_HIGH*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_NONE*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_VOICE_COMMAND*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_MUTE*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_PREV_TRACK_ANSWER*)
        ((= const 4) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_NEXT_TRACK_HANG_UP*)
        ((= const 5) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_VOL_UP*)
        ((= const 6) 'pacmod_msgs::SystemCmdInt::*MEDIA_CONTROL_VOL_DOWN*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*SHIFT_PARK*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*SHIFT_REVERSE*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*SHIFT_NEUTRAL*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*SHIFT_HIGH*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*SHIFT_FORWARD*)
        ((= const 4) 'pacmod_msgs::SystemCmdInt::*SHIFT_LOW*)
        ((= const 7) 'pacmod_msgs::SystemCmdInt::*SHIFT_NONE*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*TURN_RIGHT*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*TURN_NONE*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*TURN_LEFT*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*TURN_HAZARDS*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*DOOR_NEUTRAL*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*DOOR_OPEN*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*DOOR_CLOSE*)
        ((= const 0) 'pacmod_msgs::SystemCmdInt::*WIPERS_OFF*)
        ((= const 1) 'pacmod_msgs::SystemCmdInt::*WIPERS_INT_1*)
        ((= const 2) 'pacmod_msgs::SystemCmdInt::*WIPERS_INT_2*)
        ((= const 3) 'pacmod_msgs::SystemCmdInt::*WIPERS_INT_3*)
        ((= const 4) 'pacmod_msgs::SystemCmdInt::*WIPERS_INT_4*)
        ((= const 5) 'pacmod_msgs::SystemCmdInt::*WIPERS_INT_5*)
        ((= const 6) 'pacmod_msgs::SystemCmdInt::*WIPERS_INT_6*)
        ((= const 7) 'pacmod_msgs::SystemCmdInt::*WIPERS_MEDIUM*)
        ((= const 8) 'pacmod_msgs::SystemCmdInt::*WIPERS_HIGH*)
        (t nil)))

(defclass pacmod_msgs::SystemCmdInt
  :super ros::object
  :slots (_header _enable _ignore_overrides _clear_override _clear_faults _command ))

(defmethod pacmod_msgs::SystemCmdInt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enable __enable) nil)
    ((:ignore_overrides __ignore_overrides) nil)
    ((:clear_override __clear_override) nil)
    ((:clear_faults __clear_faults) nil)
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enable __enable)
   (setq _ignore_overrides __ignore_overrides)
   (setq _clear_override __clear_override)
   (setq _clear_faults __clear_faults)
   (setq _command (round __command))
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
    ;; uint16 _command
    2
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
     ;; uint16 _command
       (write-word _command s)
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
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pacmod_msgs::SystemCmdInt :md5sum-) "843586c2df7a468d7cc89fb9df7fa2c2")
(setf (get pacmod_msgs::SystemCmdInt :datatype-) "pacmod_msgs/SystemCmdInt")
(setf (get pacmod_msgs::SystemCmdInt :definition-)
      "std_msgs/Header header

bool enable
bool ignore_overrides
bool clear_override
bool clear_faults

uint16 command

uint16 CRUISE_CONTROL_NONE = 0
uint16 CRUISE_CONTROL_CNCL = 1
uint16 CRUISE_CONTROL_ACC_FURTHER = 2
uint16 CRUISE_CONTROL_ACC_CLOSER = 3
uint16 CRUISE_CONTROL_SET_DEC = 4
uint16 CRUISE_CONTROL_RES_INC = 5

uint16 DASH_CONTROL_NONE = 0
uint16 DASH_CONTROL_OK = 1
uint16 DASH_CONTROL_LEFT = 2
uint16 DASH_CONTROL_RIGHT = 3
uint16 DASH_CONTROL_UP = 4
uint16 DASH_CONTROL_DOWN = 5

uint16 HEADLIGHTS_OFF = 0
uint16 HEADLIGHTS_PARKING_ONLY = 1
uint16 HEADLIGHTS_MANUAL_LOW = 2
uint16 HEADLIGHTS_MANUAL_HIGH = 3
uint16 HEADLIGHTS_AUTO_LOW = 4
uint16 HEADLIGHTS_AUTO_HIGH = 5

uint16 MEDIA_CONTROL_NONE = 0
uint16 MEDIA_CONTROL_VOICE_COMMAND = 1
uint16 MEDIA_CONTROL_MUTE = 2
uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3
uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4
uint16 MEDIA_CONTROL_VOL_UP = 5
uint16 MEDIA_CONTROL_VOL_DOWN = 6

uint16 SHIFT_PARK = 0
uint16 SHIFT_REVERSE = 1
uint16 SHIFT_NEUTRAL = 2
uint16 SHIFT_HIGH = 3
uint16 SHIFT_FORWARD = 3
uint16 SHIFT_LOW = 4
uint16 SHIFT_NONE = 7

uint16 TURN_RIGHT = 0
uint16 TURN_NONE = 1
uint16 TURN_LEFT = 2
uint16 TURN_HAZARDS = 3

uint16 DOOR_NEUTRAL = 0
uint16 DOOR_OPEN = 1
uint16 DOOR_CLOSE = 2

uint16 WIPERS_OFF = 0
uint16 WIPERS_INT_1 = 1
uint16 WIPERS_INT_2 = 2
uint16 WIPERS_INT_3 = 3
uint16 WIPERS_INT_4 = 4
uint16 WIPERS_INT_5 = 5
uint16 WIPERS_INT_6 = 6
uint16 WIPERS_MEDIUM = 7
uint16 WIPERS_HIGH = 8

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



(provide :pacmod_msgs/SystemCmdInt "843586c2df7a468d7cc89fb9df7fa2c2")


