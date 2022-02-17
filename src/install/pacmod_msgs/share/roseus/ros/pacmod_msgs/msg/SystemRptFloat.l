;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SystemRptFloat)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SystemRptFloat (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::SYSTEMRPTFLOAT")
  (make-package "PACMOD_MSGS::SYSTEMRPTFLOAT"))

(in-package "ROS")
;;//! \htmlinclude SystemRptFloat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::SystemRptFloat
  :super ros::object
  :slots (_header _enabled _override_active _command_output_fault _input_output_fault _output_reported_fault _pacmod_fault _vehicle_fault _manual_input _command _output ))

(defmethod pacmod_msgs::SystemRptFloat
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
    ((:manual_input __manual_input) 0.0)
    ((:command __command) 0.0)
    ((:output __output) 0.0)
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
   (setq _manual_input (float __manual_input))
   (setq _command (float __command))
   (setq _output (float __output))
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
    ;; float64 _manual_input
    8
    ;; float64 _command
    8
    ;; float64 _output
    8
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
     ;; float64 _manual_input
       (sys::poke _manual_input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _command
       (sys::poke _command (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _output
       (sys::poke _output (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _manual_input
     (setq _manual_input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _command
     (setq _command (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _output
     (setq _output (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::SystemRptFloat :md5sum-) "e3af53d7d085bbad777634bcc2681141")
(setf (get pacmod_msgs::SystemRptFloat :datatype-) "pacmod_msgs/SystemRptFloat")
(setf (get pacmod_msgs::SystemRptFloat :definition-)
      "std_msgs/Header header

bool enabled
bool override_active
bool command_output_fault
bool input_output_fault
bool output_reported_fault
bool pacmod_fault
bool vehicle_fault

float64 manual_input
float64 command
float64 output

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



(provide :pacmod_msgs/SystemRptFloat "e3af53d7d085bbad777634bcc2681141")


