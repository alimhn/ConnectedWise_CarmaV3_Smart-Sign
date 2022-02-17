;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::HeadlightAuxRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'HeadlightAuxRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT")
  (make-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))

(in-package "ROS")
;;//! \htmlinclude HeadlightAuxRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*HEADLIGHTS_OFF*" (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(shadow '*HEADLIGHTS_OFF* (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(defconstant pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_OFF* 0)
(intern "*HEADLIGHTS_PARKING*" (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(shadow '*HEADLIGHTS_PARKING* (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(defconstant pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_PARKING* 1)
(intern "*HEADLIGHTS_MANUAL*" (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(shadow '*HEADLIGHTS_MANUAL* (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(defconstant pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_MANUAL* 2)
(intern "*HEADLIGHTS_AUTO*" (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(shadow '*HEADLIGHTS_AUTO* (find-package "PACMOD_MSGS::HEADLIGHTAUXRPT"))
(defconstant pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_AUTO* 3)

(defun pacmod_msgs::HeadlightAuxRpt-to-symbol (const)
  (cond
        ((= const 0) 'pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_OFF*)
        ((= const 1) 'pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_PARKING*)
        ((= const 2) 'pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_MANUAL*)
        ((= const 3) 'pacmod_msgs::HeadlightAuxRpt::*HEADLIGHTS_AUTO*)
        (t nil)))

(defclass pacmod_msgs::HeadlightAuxRpt
  :super ros::object
  :slots (_header _headlights_on _headlights_on_is_valid _headlights_on_bright _headlights_on_bright_is_valid _fog_lights_on _fog_lights_on_is_valid _headlights_mode _headlights_mode_is_valid ))

(defmethod pacmod_msgs::HeadlightAuxRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:headlights_on __headlights_on) nil)
    ((:headlights_on_is_valid __headlights_on_is_valid) nil)
    ((:headlights_on_bright __headlights_on_bright) nil)
    ((:headlights_on_bright_is_valid __headlights_on_bright_is_valid) nil)
    ((:fog_lights_on __fog_lights_on) nil)
    ((:fog_lights_on_is_valid __fog_lights_on_is_valid) nil)
    ((:headlights_mode __headlights_mode) 0)
    ((:headlights_mode_is_valid __headlights_mode_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _headlights_on __headlights_on)
   (setq _headlights_on_is_valid __headlights_on_is_valid)
   (setq _headlights_on_bright __headlights_on_bright)
   (setq _headlights_on_bright_is_valid __headlights_on_bright_is_valid)
   (setq _fog_lights_on __fog_lights_on)
   (setq _fog_lights_on_is_valid __fog_lights_on_is_valid)
   (setq _headlights_mode (round __headlights_mode))
   (setq _headlights_mode_is_valid __headlights_mode_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:headlights_on
   (&optional (__headlights_on :null))
   (if (not (eq __headlights_on :null)) (setq _headlights_on __headlights_on)) _headlights_on)
  (:headlights_on_is_valid
   (&optional (__headlights_on_is_valid :null))
   (if (not (eq __headlights_on_is_valid :null)) (setq _headlights_on_is_valid __headlights_on_is_valid)) _headlights_on_is_valid)
  (:headlights_on_bright
   (&optional (__headlights_on_bright :null))
   (if (not (eq __headlights_on_bright :null)) (setq _headlights_on_bright __headlights_on_bright)) _headlights_on_bright)
  (:headlights_on_bright_is_valid
   (&optional (__headlights_on_bright_is_valid :null))
   (if (not (eq __headlights_on_bright_is_valid :null)) (setq _headlights_on_bright_is_valid __headlights_on_bright_is_valid)) _headlights_on_bright_is_valid)
  (:fog_lights_on
   (&optional (__fog_lights_on :null))
   (if (not (eq __fog_lights_on :null)) (setq _fog_lights_on __fog_lights_on)) _fog_lights_on)
  (:fog_lights_on_is_valid
   (&optional (__fog_lights_on_is_valid :null))
   (if (not (eq __fog_lights_on_is_valid :null)) (setq _fog_lights_on_is_valid __fog_lights_on_is_valid)) _fog_lights_on_is_valid)
  (:headlights_mode
   (&optional __headlights_mode)
   (if __headlights_mode (setq _headlights_mode __headlights_mode)) _headlights_mode)
  (:headlights_mode_is_valid
   (&optional (__headlights_mode_is_valid :null))
   (if (not (eq __headlights_mode_is_valid :null)) (setq _headlights_mode_is_valid __headlights_mode_is_valid)) _headlights_mode_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _headlights_on
    1
    ;; bool _headlights_on_is_valid
    1
    ;; bool _headlights_on_bright
    1
    ;; bool _headlights_on_bright_is_valid
    1
    ;; bool _fog_lights_on
    1
    ;; bool _fog_lights_on_is_valid
    1
    ;; uint8 _headlights_mode
    1
    ;; bool _headlights_mode_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _headlights_on
       (if _headlights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _headlights_on_is_valid
       (if _headlights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _headlights_on_bright
       (if _headlights_on_bright (write-byte -1 s) (write-byte 0 s))
     ;; bool _headlights_on_bright_is_valid
       (if _headlights_on_bright_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _fog_lights_on
       (if _fog_lights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _fog_lights_on_is_valid
       (if _fog_lights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _headlights_mode
       (write-byte _headlights_mode s)
     ;; bool _headlights_mode_is_valid
       (if _headlights_mode_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _headlights_on
     (setq _headlights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _headlights_on_is_valid
     (setq _headlights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _headlights_on_bright
     (setq _headlights_on_bright (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _headlights_on_bright_is_valid
     (setq _headlights_on_bright_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fog_lights_on
     (setq _fog_lights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fog_lights_on_is_valid
     (setq _fog_lights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _headlights_mode
     (setq _headlights_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _headlights_mode_is_valid
     (setq _headlights_mode_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::HeadlightAuxRpt :md5sum-) "512cf6494650979b84da331a515edaf9")
(setf (get pacmod_msgs::HeadlightAuxRpt :datatype-) "pacmod_msgs/HeadlightAuxRpt")
(setf (get pacmod_msgs::HeadlightAuxRpt :definition-)
      "std_msgs/Header header

bool headlights_on
bool headlights_on_is_valid
bool headlights_on_bright
bool headlights_on_bright_is_valid
bool fog_lights_on
bool fog_lights_on_is_valid
uint8 headlights_mode
bool headlights_mode_is_valid

uint8 HEADLIGHTS_OFF = 0
uint8 HEADLIGHTS_PARKING = 1
uint8 HEADLIGHTS_MANUAL = 2
uint8 HEADLIGHTS_AUTO = 3

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



(provide :pacmod_msgs/HeadlightAuxRpt "512cf6494650979b84da331a515edaf9")


