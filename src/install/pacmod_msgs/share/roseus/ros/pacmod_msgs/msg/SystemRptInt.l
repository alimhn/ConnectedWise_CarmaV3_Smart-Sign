;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SystemRptInt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SystemRptInt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::SYSTEMRPTINT")
  (make-package "PACMOD_MSGS::SYSTEMRPTINT"))

(in-package "ROS")
;;//! \htmlinclude SystemRptInt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CRUISE_CONTROL_NONE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*CRUISE_CONTROL_NONE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_NONE* 0)
(intern "*CRUISE_CONTROL_CNCL*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*CRUISE_CONTROL_CNCL* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_CNCL* 1)
(intern "*CRUISE_CONTROL_ACC_FURTHER*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*CRUISE_CONTROL_ACC_FURTHER* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_ACC_FURTHER* 2)
(intern "*CRUISE_CONTROL_ACC_CLOSER*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*CRUISE_CONTROL_ACC_CLOSER* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_ACC_CLOSER* 3)
(intern "*CRUISE_CONTROL_SET_DEC*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*CRUISE_CONTROL_SET_DEC* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_SET_DEC* 4)
(intern "*CRUISE_CONTROL_RES_INC*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*CRUISE_CONTROL_RES_INC* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_RES_INC* 5)
(intern "*DASH_CONTROL_NONE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DASH_CONTROL_NONE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DASH_CONTROL_NONE* 0)
(intern "*DASH_CONTROL_OK*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DASH_CONTROL_OK* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DASH_CONTROL_OK* 1)
(intern "*DASH_CONTROL_LEFT*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DASH_CONTROL_LEFT* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DASH_CONTROL_LEFT* 2)
(intern "*DASH_CONTROL_RIGHT*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DASH_CONTROL_RIGHT* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DASH_CONTROL_RIGHT* 3)
(intern "*DASH_CONTROL_UP*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DASH_CONTROL_UP* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DASH_CONTROL_UP* 4)
(intern "*DASH_CONTROL_DOWN*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DASH_CONTROL_DOWN* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DASH_CONTROL_DOWN* 5)
(intern "*HEADLIGHTS_OFF*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*HEADLIGHTS_OFF* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*HEADLIGHTS_OFF* 0)
(intern "*HEADLIGHTS_PARKING_ONLY*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*HEADLIGHTS_PARKING_ONLY* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*HEADLIGHTS_PARKING_ONLY* 1)
(intern "*HEADLIGHTS_MANUAL_LOW*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*HEADLIGHTS_MANUAL_LOW* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*HEADLIGHTS_MANUAL_LOW* 2)
(intern "*HEADLIGHTS_MANUAL_HIGH*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*HEADLIGHTS_MANUAL_HIGH* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*HEADLIGHTS_MANUAL_HIGH* 3)
(intern "*HEADLIGHTS_AUTO_LOW*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*HEADLIGHTS_AUTO_LOW* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*HEADLIGHTS_AUTO_LOW* 4)
(intern "*HEADLIGHTS_AUTO_HIGH*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*HEADLIGHTS_AUTO_HIGH* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*HEADLIGHTS_AUTO_HIGH* 5)
(intern "*MEDIA_CONTROL_NONE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_NONE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_NONE* 0)
(intern "*MEDIA_CONTROL_VOICE_COMMAND*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_VOICE_COMMAND* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_VOICE_COMMAND* 1)
(intern "*MEDIA_CONTROL_MUTE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_MUTE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_MUTE* 2)
(intern "*MEDIA_CONTROL_PREV_TRACK_ANSWER*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_PREV_TRACK_ANSWER* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_PREV_TRACK_ANSWER* 3)
(intern "*MEDIA_CONTROL_NEXT_TRACK_HANG_UP*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_NEXT_TRACK_HANG_UP* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_NEXT_TRACK_HANG_UP* 4)
(intern "*MEDIA_CONTROL_VOL_UP*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_VOL_UP* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_VOL_UP* 5)
(intern "*MEDIA_CONTROL_VOL_DOWN*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*MEDIA_CONTROL_VOL_DOWN* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_VOL_DOWN* 6)
(intern "*SHIFT_PARK*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_PARK* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_PARK* 0)
(intern "*SHIFT_REVERSE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_REVERSE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_REVERSE* 1)
(intern "*SHIFT_NEUTRAL*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_NEUTRAL* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_NEUTRAL* 2)
(intern "*SHIFT_HIGH*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_HIGH* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_HIGH* 3)
(intern "*SHIFT_FORWARD*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_FORWARD* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_FORWARD* 3)
(intern "*SHIFT_LOW*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_LOW* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_LOW* 4)
(intern "*SHIFT_BETWEEN_GEARS*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_BETWEEN_GEARS* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_BETWEEN_GEARS* 5)
(intern "*SHIFT_ERROR*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_ERROR* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_ERROR* 6)
(intern "*SHIFT_NONE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*SHIFT_NONE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*SHIFT_NONE* 7)
(intern "*TURN_RIGHT*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*TURN_RIGHT* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*TURN_RIGHT* 0)
(intern "*TURN_NONE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*TURN_NONE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*TURN_NONE* 1)
(intern "*TURN_LEFT*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*TURN_LEFT* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*TURN_LEFT* 2)
(intern "*TURN_HAZARDS*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*TURN_HAZARDS* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*TURN_HAZARDS* 3)
(intern "*DOOR_NEUTRAL*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DOOR_NEUTRAL* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DOOR_NEUTRAL* 0)
(intern "*DOOR_OPEN*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DOOR_OPEN* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DOOR_OPEN* 1)
(intern "*DOOR_CLOSE*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*DOOR_CLOSE* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*DOOR_CLOSE* 2)
(intern "*WIPERS_OFF*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_OFF* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_OFF* 0)
(intern "*WIPERS_INT_1*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_INT_1* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_INT_1* 1)
(intern "*WIPERS_INT_2*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_INT_2* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_INT_2* 2)
(intern "*WIPERS_INT_3*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_INT_3* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_INT_3* 3)
(intern "*WIPERS_INT_4*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_INT_4* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_INT_4* 4)
(intern "*WIPERS_INT_5*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_INT_5* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_INT_5* 5)
(intern "*WIPERS_INT_6*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_INT_6* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_INT_6* 6)
(intern "*WIPERS_MEDIUM*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_MEDIUM* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_MEDIUM* 7)
(intern "*WIPERS_HIGH*" (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(shadow '*WIPERS_HIGH* (find-package "PACMOD_MSGS::SYSTEMRPTINT"))
(defconstant pacmod_msgs::SystemRptInt::*WIPERS_HIGH* 8)

(defun pacmod_msgs::SystemRptInt-to-symbol (const)
  (cond
        ((= const 0) 'pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_NONE*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_CNCL*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_ACC_FURTHER*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_ACC_CLOSER*)
        ((= const 4) 'pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_SET_DEC*)
        ((= const 5) 'pacmod_msgs::SystemRptInt::*CRUISE_CONTROL_RES_INC*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*DASH_CONTROL_NONE*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*DASH_CONTROL_OK*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*DASH_CONTROL_LEFT*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*DASH_CONTROL_RIGHT*)
        ((= const 4) 'pacmod_msgs::SystemRptInt::*DASH_CONTROL_UP*)
        ((= const 5) 'pacmod_msgs::SystemRptInt::*DASH_CONTROL_DOWN*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*HEADLIGHTS_OFF*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*HEADLIGHTS_PARKING_ONLY*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*HEADLIGHTS_MANUAL_LOW*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*HEADLIGHTS_MANUAL_HIGH*)
        ((= const 4) 'pacmod_msgs::SystemRptInt::*HEADLIGHTS_AUTO_LOW*)
        ((= const 5) 'pacmod_msgs::SystemRptInt::*HEADLIGHTS_AUTO_HIGH*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_NONE*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_VOICE_COMMAND*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_MUTE*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_PREV_TRACK_ANSWER*)
        ((= const 4) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_NEXT_TRACK_HANG_UP*)
        ((= const 5) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_VOL_UP*)
        ((= const 6) 'pacmod_msgs::SystemRptInt::*MEDIA_CONTROL_VOL_DOWN*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*SHIFT_PARK*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*SHIFT_REVERSE*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*SHIFT_NEUTRAL*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*SHIFT_HIGH*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*SHIFT_FORWARD*)
        ((= const 4) 'pacmod_msgs::SystemRptInt::*SHIFT_LOW*)
        ((= const 5) 'pacmod_msgs::SystemRptInt::*SHIFT_BETWEEN_GEARS*)
        ((= const 6) 'pacmod_msgs::SystemRptInt::*SHIFT_ERROR*)
        ((= const 7) 'pacmod_msgs::SystemRptInt::*SHIFT_NONE*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*TURN_RIGHT*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*TURN_NONE*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*TURN_LEFT*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*TURN_HAZARDS*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*DOOR_NEUTRAL*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*DOOR_OPEN*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*DOOR_CLOSE*)
        ((= const 0) 'pacmod_msgs::SystemRptInt::*WIPERS_OFF*)
        ((= const 1) 'pacmod_msgs::SystemRptInt::*WIPERS_INT_1*)
        ((= const 2) 'pacmod_msgs::SystemRptInt::*WIPERS_INT_2*)
        ((= const 3) 'pacmod_msgs::SystemRptInt::*WIPERS_INT_3*)
        ((= const 4) 'pacmod_msgs::SystemRptInt::*WIPERS_INT_4*)
        ((= const 5) 'pacmod_msgs::SystemRptInt::*WIPERS_INT_5*)
        ((= const 6) 'pacmod_msgs::SystemRptInt::*WIPERS_INT_6*)
        ((= const 7) 'pacmod_msgs::SystemRptInt::*WIPERS_MEDIUM*)
        ((= const 8) 'pacmod_msgs::SystemRptInt::*WIPERS_HIGH*)
        (t nil)))

(defclass pacmod_msgs::SystemRptInt
  :super ros::object
  :slots (_header _enabled _override_active _command_output_fault _input_output_fault _output_reported_fault _pacmod_fault _vehicle_fault _manual_input _command _output ))

(defmethod pacmod_msgs::SystemRptInt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enabled __enabled) nil)
    ((:override_active __override_active) nil)
    ((:command_output_fault __command_output_fault) nil)
    ((:input_output_fault __input_output_fault) nil)
    ((:output_reported_fault __output_reported_fault) nil)
    ((:pacmod_fault __pacmod_fault) nil)
    ((:vehicle_fault __vehicle_fault) nil)
    ((:manual_input __manual_input) 0)
    ((:command __command) 0)
    ((:output __output) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enabled __enabled)
   (setq _override_active __override_active)
   (setq _command_output_fault __command_output_fault)
   (setq _input_output_fault __input_output_fault)
   (setq _output_reported_fault __output_reported_fault)
   (setq _pacmod_fault __pacmod_fault)
   (setq _vehicle_fault __vehicle_fault)
   (setq _manual_input (round __manual_input))
   (setq _command (round __command))
   (setq _output (round __output))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:override_active
   (&optional (__override_active :null))
   (if (not (eq __override_active :null)) (setq _override_active __override_active)) _override_active)
  (:command_output_fault
   (&optional (__command_output_fault :null))
   (if (not (eq __command_output_fault :null)) (setq _command_output_fault __command_output_fault)) _command_output_fault)
  (:input_output_fault
   (&optional (__input_output_fault :null))
   (if (not (eq __input_output_fault :null)) (setq _input_output_fault __input_output_fault)) _input_output_fault)
  (:output_reported_fault
   (&optional (__output_reported_fault :null))
   (if (not (eq __output_reported_fault :null)) (setq _output_reported_fault __output_reported_fault)) _output_reported_fault)
  (:pacmod_fault
   (&optional (__pacmod_fault :null))
   (if (not (eq __pacmod_fault :null)) (setq _pacmod_fault __pacmod_fault)) _pacmod_fault)
  (:vehicle_fault
   (&optional (__vehicle_fault :null))
   (if (not (eq __vehicle_fault :null)) (setq _vehicle_fault __vehicle_fault)) _vehicle_fault)
  (:manual_input
   (&optional __manual_input)
   (if __manual_input (setq _manual_input __manual_input)) _manual_input)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _enabled
    1
    ;; bool _override_active
    1
    ;; bool _command_output_fault
    1
    ;; bool _input_output_fault
    1
    ;; bool _output_reported_fault
    1
    ;; bool _pacmod_fault
    1
    ;; bool _vehicle_fault
    1
    ;; uint16 _manual_input
    2
    ;; uint16 _command
    2
    ;; uint16 _output
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _override_active
       (if _override_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _command_output_fault
       (if _command_output_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _input_output_fault
       (if _input_output_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _output_reported_fault
       (if _output_reported_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _pacmod_fault
       (if _pacmod_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_fault
       (if _vehicle_fault (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _manual_input
       (write-word _manual_input s)
     ;; uint16 _command
       (write-word _command s)
     ;; uint16 _output
       (write-word _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _override_active
     (setq _override_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _command_output_fault
     (setq _command_output_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _input_output_fault
     (setq _input_output_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _output_reported_fault
     (setq _output_reported_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pacmod_fault
     (setq _pacmod_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_fault
     (setq _vehicle_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _manual_input
     (setq _manual_input (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _output
     (setq _output (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pacmod_msgs::SystemRptInt :md5sum-) "da718c3df94de6df3ce729dd13078d8a")
(setf (get pacmod_msgs::SystemRptInt :datatype-) "pacmod_msgs/SystemRptInt")
(setf (get pacmod_msgs::SystemRptInt :definition-)
      "std_msgs/Header header

bool enabled
bool override_active
bool command_output_fault
bool input_output_fault
bool output_reported_fault
bool pacmod_fault
bool vehicle_fault

uint16 manual_input
uint16 command
uint16 output

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
uint16 SHIFT_BETWEEN_GEARS = 5
uint16 SHIFT_ERROR = 6
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



(provide :pacmod_msgs/SystemRptInt "da718c3df94de6df3ce729dd13078d8a")


