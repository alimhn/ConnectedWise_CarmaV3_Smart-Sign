;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::GlobalRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'GlobalRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::GLOBALRPT")
  (make-package "PACMOD_MSGS::GLOBALRPT"))

(in-package "ROS")
;;//! \htmlinclude GlobalRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::GlobalRpt
  :super ros::object
  :slots (_header _enabled _override_active _fault_active _config_fault_active _user_can_timeout _brake_can_timeout _steering_can_timeout _vehicle_can_timeout _subsystem_can_timeout _user_can_read_errors ))

(defmethod pacmod_msgs::GlobalRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enabled __enabled) nil)
    ((:override_active __override_active) nil)
    ((:fault_active __fault_active) nil)
    ((:config_fault_active __config_fault_active) nil)
    ((:user_can_timeout __user_can_timeout) nil)
    ((:brake_can_timeout __brake_can_timeout) nil)
    ((:steering_can_timeout __steering_can_timeout) nil)
    ((:vehicle_can_timeout __vehicle_can_timeout) nil)
    ((:subsystem_can_timeout __subsystem_can_timeout) nil)
    ((:user_can_read_errors __user_can_read_errors) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enabled __enabled)
   (setq _override_active __override_active)
   (setq _fault_active __fault_active)
   (setq _config_fault_active __config_fault_active)
   (setq _user_can_timeout __user_can_timeout)
   (setq _brake_can_timeout __brake_can_timeout)
   (setq _steering_can_timeout __steering_can_timeout)
   (setq _vehicle_can_timeout __vehicle_can_timeout)
   (setq _subsystem_can_timeout __subsystem_can_timeout)
   (setq _user_can_read_errors __user_can_read_errors)
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
  (:fault_active
   (&optional (__fault_active :null))
   (if (not (eq __fault_active :null)) (setq _fault_active __fault_active)) _fault_active)
  (:config_fault_active
   (&optional (__config_fault_active :null))
   (if (not (eq __config_fault_active :null)) (setq _config_fault_active __config_fault_active)) _config_fault_active)
  (:user_can_timeout
   (&optional (__user_can_timeout :null))
   (if (not (eq __user_can_timeout :null)) (setq _user_can_timeout __user_can_timeout)) _user_can_timeout)
  (:brake_can_timeout
   (&optional (__brake_can_timeout :null))
   (if (not (eq __brake_can_timeout :null)) (setq _brake_can_timeout __brake_can_timeout)) _brake_can_timeout)
  (:steering_can_timeout
   (&optional (__steering_can_timeout :null))
   (if (not (eq __steering_can_timeout :null)) (setq _steering_can_timeout __steering_can_timeout)) _steering_can_timeout)
  (:vehicle_can_timeout
   (&optional (__vehicle_can_timeout :null))
   (if (not (eq __vehicle_can_timeout :null)) (setq _vehicle_can_timeout __vehicle_can_timeout)) _vehicle_can_timeout)
  (:subsystem_can_timeout
   (&optional (__subsystem_can_timeout :null))
   (if (not (eq __subsystem_can_timeout :null)) (setq _subsystem_can_timeout __subsystem_can_timeout)) _subsystem_can_timeout)
  (:user_can_read_errors
   (&optional (__user_can_read_errors :null))
   (if (not (eq __user_can_read_errors :null)) (setq _user_can_read_errors __user_can_read_errors)) _user_can_read_errors)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _enabled
    1
    ;; bool _override_active
    1
    ;; bool _fault_active
    1
    ;; bool _config_fault_active
    1
    ;; bool _user_can_timeout
    1
    ;; bool _brake_can_timeout
    1
    ;; bool _steering_can_timeout
    1
    ;; bool _vehicle_can_timeout
    1
    ;; bool _subsystem_can_timeout
    1
    ;; bool _user_can_read_errors
    1
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
     ;; bool _fault_active
       (if _fault_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _config_fault_active
       (if _config_fault_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_can_timeout
       (if _user_can_timeout (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_can_timeout
       (if _brake_can_timeout (write-byte -1 s) (write-byte 0 s))
     ;; bool _steering_can_timeout
       (if _steering_can_timeout (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_can_timeout
       (if _vehicle_can_timeout (write-byte -1 s) (write-byte 0 s))
     ;; bool _subsystem_can_timeout
       (if _subsystem_can_timeout (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_can_read_errors
       (if _user_can_read_errors (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _fault_active
     (setq _fault_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _config_fault_active
     (setq _config_fault_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_can_timeout
     (setq _user_can_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_can_timeout
     (setq _brake_can_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _steering_can_timeout
     (setq _steering_can_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_can_timeout
     (setq _vehicle_can_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _subsystem_can_timeout
     (setq _subsystem_can_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_can_read_errors
     (setq _user_can_read_errors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::GlobalRpt :md5sum-) "e844957facaf4f6bfdea20a3ffdb048f")
(setf (get pacmod_msgs::GlobalRpt :datatype-) "pacmod_msgs/GlobalRpt")
(setf (get pacmod_msgs::GlobalRpt :definition-)
      "std_msgs/Header header

bool enabled                # Indicates whether any system on the PACMod is enabled or disabled.
bool override_active        # Indicates whether an override has been triggered on any system.
bool fault_active           # Indicates whether a fault is active on any system.
bool config_fault_active    # Indicates whether the CONFIG.TXT file was read correctly
bool user_can_timeout       # Indicates a timeout has been exceeded on the user CAN interface.
bool brake_can_timeout      # Indicates a timeout has been exceeded on the brake CAN interface.
bool steering_can_timeout   # Indicates a timeout has been exceeded on the steering CAN interface.
bool vehicle_can_timeout    # Indicates a timeout has been exceeded on a vehicle CAN interface.
bool subsystem_can_timeout  # Indicates a timeout has been exceeded when communicating with a PACMod subsystem.
bool user_can_read_errors   # The number of read errors encoutered by the PACMod on the user CAN interface.

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



(provide :pacmod_msgs/GlobalRpt "e844957facaf4f6bfdea20a3ffdb048f")


