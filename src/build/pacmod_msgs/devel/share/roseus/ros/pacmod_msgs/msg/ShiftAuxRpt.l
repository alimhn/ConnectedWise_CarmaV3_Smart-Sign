;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::ShiftAuxRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'ShiftAuxRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::SHIFTAUXRPT")
  (make-package "PACMOD_MSGS::SHIFTAUXRPT"))

(in-package "ROS")
;;//! \htmlinclude ShiftAuxRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::ShiftAuxRpt
  :super ros::object
  :slots (_header _between_gears _between_gears_is_valid _stay_in_neutral_mode _stay_in_neutral_mode_is_valid _brake_interlock_active _brake_interlock_active_is_valid _speed_interlock_active _speed_interlock_active_is_valid _gear_number_avail _gear_number ))

(defmethod pacmod_msgs::ShiftAuxRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:between_gears __between_gears) nil)
    ((:between_gears_is_valid __between_gears_is_valid) nil)
    ((:stay_in_neutral_mode __stay_in_neutral_mode) nil)
    ((:stay_in_neutral_mode_is_valid __stay_in_neutral_mode_is_valid) nil)
    ((:brake_interlock_active __brake_interlock_active) nil)
    ((:brake_interlock_active_is_valid __brake_interlock_active_is_valid) nil)
    ((:speed_interlock_active __speed_interlock_active) nil)
    ((:speed_interlock_active_is_valid __speed_interlock_active_is_valid) nil)
    ((:gear_number_avail __gear_number_avail) nil)
    ((:gear_number __gear_number) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _between_gears __between_gears)
   (setq _between_gears_is_valid __between_gears_is_valid)
   (setq _stay_in_neutral_mode __stay_in_neutral_mode)
   (setq _stay_in_neutral_mode_is_valid __stay_in_neutral_mode_is_valid)
   (setq _brake_interlock_active __brake_interlock_active)
   (setq _brake_interlock_active_is_valid __brake_interlock_active_is_valid)
   (setq _speed_interlock_active __speed_interlock_active)
   (setq _speed_interlock_active_is_valid __speed_interlock_active_is_valid)
   (setq _gear_number_avail __gear_number_avail)
   (setq _gear_number (round __gear_number))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:between_gears
   (&optional (__between_gears :null))
   (if (not (eq __between_gears :null)) (setq _between_gears __between_gears)) _between_gears)
  (:between_gears_is_valid
   (&optional (__between_gears_is_valid :null))
   (if (not (eq __between_gears_is_valid :null)) (setq _between_gears_is_valid __between_gears_is_valid)) _between_gears_is_valid)
  (:stay_in_neutral_mode
   (&optional (__stay_in_neutral_mode :null))
   (if (not (eq __stay_in_neutral_mode :null)) (setq _stay_in_neutral_mode __stay_in_neutral_mode)) _stay_in_neutral_mode)
  (:stay_in_neutral_mode_is_valid
   (&optional (__stay_in_neutral_mode_is_valid :null))
   (if (not (eq __stay_in_neutral_mode_is_valid :null)) (setq _stay_in_neutral_mode_is_valid __stay_in_neutral_mode_is_valid)) _stay_in_neutral_mode_is_valid)
  (:brake_interlock_active
   (&optional (__brake_interlock_active :null))
   (if (not (eq __brake_interlock_active :null)) (setq _brake_interlock_active __brake_interlock_active)) _brake_interlock_active)
  (:brake_interlock_active_is_valid
   (&optional (__brake_interlock_active_is_valid :null))
   (if (not (eq __brake_interlock_active_is_valid :null)) (setq _brake_interlock_active_is_valid __brake_interlock_active_is_valid)) _brake_interlock_active_is_valid)
  (:speed_interlock_active
   (&optional (__speed_interlock_active :null))
   (if (not (eq __speed_interlock_active :null)) (setq _speed_interlock_active __speed_interlock_active)) _speed_interlock_active)
  (:speed_interlock_active_is_valid
   (&optional (__speed_interlock_active_is_valid :null))
   (if (not (eq __speed_interlock_active_is_valid :null)) (setq _speed_interlock_active_is_valid __speed_interlock_active_is_valid)) _speed_interlock_active_is_valid)
  (:gear_number_avail
   (&optional (__gear_number_avail :null))
   (if (not (eq __gear_number_avail :null)) (setq _gear_number_avail __gear_number_avail)) _gear_number_avail)
  (:gear_number
   (&optional __gear_number)
   (if __gear_number (setq _gear_number __gear_number)) _gear_number)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _between_gears
    1
    ;; bool _between_gears_is_valid
    1
    ;; bool _stay_in_neutral_mode
    1
    ;; bool _stay_in_neutral_mode_is_valid
    1
    ;; bool _brake_interlock_active
    1
    ;; bool _brake_interlock_active_is_valid
    1
    ;; bool _speed_interlock_active
    1
    ;; bool _speed_interlock_active_is_valid
    1
    ;; bool _gear_number_avail
    1
    ;; int8 _gear_number
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _between_gears
       (if _between_gears (write-byte -1 s) (write-byte 0 s))
     ;; bool _between_gears_is_valid
       (if _between_gears_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _stay_in_neutral_mode
       (if _stay_in_neutral_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _stay_in_neutral_mode_is_valid
       (if _stay_in_neutral_mode_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_interlock_active
       (if _brake_interlock_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_interlock_active_is_valid
       (if _brake_interlock_active_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _speed_interlock_active
       (if _speed_interlock_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _speed_interlock_active_is_valid
       (if _speed_interlock_active_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _gear_number_avail
       (if _gear_number_avail (write-byte -1 s) (write-byte 0 s))
     ;; int8 _gear_number
       (write-byte _gear_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _between_gears
     (setq _between_gears (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _between_gears_is_valid
     (setq _between_gears_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stay_in_neutral_mode
     (setq _stay_in_neutral_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stay_in_neutral_mode_is_valid
     (setq _stay_in_neutral_mode_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_interlock_active
     (setq _brake_interlock_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_interlock_active_is_valid
     (setq _brake_interlock_active_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speed_interlock_active
     (setq _speed_interlock_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speed_interlock_active_is_valid
     (setq _speed_interlock_active_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gear_number_avail
     (setq _gear_number_avail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _gear_number
     (setq _gear_number (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear_number 127) (setq _gear_number (- _gear_number 256)))
   ;;
   self)
  )

(setf (get pacmod_msgs::ShiftAuxRpt :md5sum-) "dd3dcb724fff7aa8174cd1060347a710")
(setf (get pacmod_msgs::ShiftAuxRpt :datatype-) "pacmod_msgs/ShiftAuxRpt")
(setf (get pacmod_msgs::ShiftAuxRpt :definition-)
      "std_msgs/Header header

bool between_gears
bool between_gears_is_valid
bool stay_in_neutral_mode
bool stay_in_neutral_mode_is_valid
bool brake_interlock_active
bool brake_interlock_active_is_valid
bool speed_interlock_active
bool speed_interlock_active_is_valid
bool gear_number_avail
int8 gear_number

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



(provide :pacmod_msgs/ShiftAuxRpt "dd3dcb724fff7aa8174cd1060347a710")


