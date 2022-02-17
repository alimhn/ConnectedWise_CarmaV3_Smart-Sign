;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::InteriorLightsRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'InteriorLightsRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT")
  (make-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))

(in-package "ROS")
;;//! \htmlinclude InteriorLightsRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DIM_LEVEL_MIN*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_MIN* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_MIN* 0)
(intern "*DIM_LEVEL_1*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_1* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_1* 1)
(intern "*DIM_LEVEL_2*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_2* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_2* 2)
(intern "*DIM_LEVEL_3*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_3* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_3* 3)
(intern "*DIM_LEVEL_4*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_4* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_4* 4)
(intern "*DIM_LEVEL_5*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_5* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_5* 5)
(intern "*DIM_LEVEL_6*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_6* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_6* 6)
(intern "*DIM_LEVEL_7*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_7* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_7* 7)
(intern "*DIM_LEVEL_8*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_8* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_8* 8)
(intern "*DIM_LEVEL_9*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_9* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_9* 9)
(intern "*DIM_LEVEL_10*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_10* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_10* 10)
(intern "*DIM_LEVEL_11*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_11* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_11* 11)
(intern "*DIM_LEVEL_MAX*" (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(shadow '*DIM_LEVEL_MAX* (find-package "PACMOD_MSGS::INTERIORLIGHTSRPT"))
(defconstant pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_MAX* 12)

(defun pacmod_msgs::InteriorLightsRpt-to-symbol (const)
  (cond
        ((= const 0) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_MIN*)
        ((= const 1) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_1*)
        ((= const 2) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_2*)
        ((= const 3) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_3*)
        ((= const 4) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_4*)
        ((= const 5) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_5*)
        ((= const 6) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_6*)
        ((= const 7) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_7*)
        ((= const 8) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_8*)
        ((= const 9) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_9*)
        ((= const 10) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_10*)
        ((= const 11) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_11*)
        ((= const 12) 'pacmod_msgs::InteriorLightsRpt::*DIM_LEVEL_MAX*)
        (t nil)))

(defclass pacmod_msgs::InteriorLightsRpt
  :super ros::object
  :slots (_header _front_dome_lights_on _front_dome_lights_on_is_valid _rear_dome_lights_on _rear_dome_lights_on_is_valid _mood_lights_on _mood_lights_on_is_valid _dim_level _dim_level_is_valid ))

(defmethod pacmod_msgs::InteriorLightsRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_dome_lights_on __front_dome_lights_on) nil)
    ((:front_dome_lights_on_is_valid __front_dome_lights_on_is_valid) nil)
    ((:rear_dome_lights_on __rear_dome_lights_on) nil)
    ((:rear_dome_lights_on_is_valid __rear_dome_lights_on_is_valid) nil)
    ((:mood_lights_on __mood_lights_on) nil)
    ((:mood_lights_on_is_valid __mood_lights_on_is_valid) nil)
    ((:dim_level __dim_level) 0)
    ((:dim_level_is_valid __dim_level_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_dome_lights_on __front_dome_lights_on)
   (setq _front_dome_lights_on_is_valid __front_dome_lights_on_is_valid)
   (setq _rear_dome_lights_on __rear_dome_lights_on)
   (setq _rear_dome_lights_on_is_valid __rear_dome_lights_on_is_valid)
   (setq _mood_lights_on __mood_lights_on)
   (setq _mood_lights_on_is_valid __mood_lights_on_is_valid)
   (setq _dim_level (round __dim_level))
   (setq _dim_level_is_valid __dim_level_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_dome_lights_on
   (&optional (__front_dome_lights_on :null))
   (if (not (eq __front_dome_lights_on :null)) (setq _front_dome_lights_on __front_dome_lights_on)) _front_dome_lights_on)
  (:front_dome_lights_on_is_valid
   (&optional (__front_dome_lights_on_is_valid :null))
   (if (not (eq __front_dome_lights_on_is_valid :null)) (setq _front_dome_lights_on_is_valid __front_dome_lights_on_is_valid)) _front_dome_lights_on_is_valid)
  (:rear_dome_lights_on
   (&optional (__rear_dome_lights_on :null))
   (if (not (eq __rear_dome_lights_on :null)) (setq _rear_dome_lights_on __rear_dome_lights_on)) _rear_dome_lights_on)
  (:rear_dome_lights_on_is_valid
   (&optional (__rear_dome_lights_on_is_valid :null))
   (if (not (eq __rear_dome_lights_on_is_valid :null)) (setq _rear_dome_lights_on_is_valid __rear_dome_lights_on_is_valid)) _rear_dome_lights_on_is_valid)
  (:mood_lights_on
   (&optional (__mood_lights_on :null))
   (if (not (eq __mood_lights_on :null)) (setq _mood_lights_on __mood_lights_on)) _mood_lights_on)
  (:mood_lights_on_is_valid
   (&optional (__mood_lights_on_is_valid :null))
   (if (not (eq __mood_lights_on_is_valid :null)) (setq _mood_lights_on_is_valid __mood_lights_on_is_valid)) _mood_lights_on_is_valid)
  (:dim_level
   (&optional __dim_level)
   (if __dim_level (setq _dim_level __dim_level)) _dim_level)
  (:dim_level_is_valid
   (&optional (__dim_level_is_valid :null))
   (if (not (eq __dim_level_is_valid :null)) (setq _dim_level_is_valid __dim_level_is_valid)) _dim_level_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _front_dome_lights_on
    1
    ;; bool _front_dome_lights_on_is_valid
    1
    ;; bool _rear_dome_lights_on
    1
    ;; bool _rear_dome_lights_on_is_valid
    1
    ;; bool _mood_lights_on
    1
    ;; bool _mood_lights_on_is_valid
    1
    ;; uint8 _dim_level
    1
    ;; bool _dim_level_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _front_dome_lights_on
       (if _front_dome_lights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_dome_lights_on_is_valid
       (if _front_dome_lights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_dome_lights_on
       (if _rear_dome_lights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_dome_lights_on_is_valid
       (if _rear_dome_lights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _mood_lights_on
       (if _mood_lights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _mood_lights_on_is_valid
       (if _mood_lights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _dim_level
       (write-byte _dim_level s)
     ;; bool _dim_level_is_valid
       (if _dim_level_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _front_dome_lights_on
     (setq _front_dome_lights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_dome_lights_on_is_valid
     (setq _front_dome_lights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_dome_lights_on
     (setq _rear_dome_lights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_dome_lights_on_is_valid
     (setq _rear_dome_lights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mood_lights_on
     (setq _mood_lights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mood_lights_on_is_valid
     (setq _mood_lights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _dim_level
     (setq _dim_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _dim_level_is_valid
     (setq _dim_level_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::InteriorLightsRpt :md5sum-) "edb83c466d141d95fcc059ad99141e5e")
(setf (get pacmod_msgs::InteriorLightsRpt :datatype-) "pacmod_msgs/InteriorLightsRpt")
(setf (get pacmod_msgs::InteriorLightsRpt :definition-)
      "std_msgs/Header header

bool front_dome_lights_on
bool front_dome_lights_on_is_valid
bool rear_dome_lights_on
bool rear_dome_lights_on_is_valid
bool mood_lights_on
bool mood_lights_on_is_valid
uint8 dim_level
bool dim_level_is_valid

uint8 DIM_LEVEL_MIN = 0
uint8 DIM_LEVEL_1 = 1
uint8 DIM_LEVEL_2 = 2
uint8 DIM_LEVEL_3 = 3
uint8 DIM_LEVEL_4 = 4
uint8 DIM_LEVEL_5 = 5
uint8 DIM_LEVEL_6 = 6
uint8 DIM_LEVEL_7 = 7
uint8 DIM_LEVEL_8 = 8
uint8 DIM_LEVEL_9 = 9
uint8 DIM_LEVEL_10 = 10
uint8 DIM_LEVEL_11 = 11
uint8 DIM_LEVEL_MAX = 12

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



(provide :pacmod_msgs/InteriorLightsRpt "edb83c466d141d95fcc059ad99141e5e")


