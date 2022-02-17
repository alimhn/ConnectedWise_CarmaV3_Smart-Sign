;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::ComponentRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'ComponentRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::COMPONENTRPT")
  (make-package "PACMOD_MSGS::COMPONENTRPT"))

(in-package "ROS")
;;//! \htmlinclude ComponentRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*COMPONENT_TYPE_PACMOD*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_TYPE_PACMOD* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_TYPE_PACMOD* 0)
(intern "*COMPONENT_TYPE_PACMINI*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_TYPE_PACMINI* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_TYPE_PACMINI* 1)
(intern "*COMPONENT_TYPE_PACMICRO*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_TYPE_PACMICRO* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_TYPE_PACMICRO* 2)
(intern "*COMPONENT_FUNC_PACMOD*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_PACMOD* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_PACMOD* 0)
(intern "*COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN* 1)
(intern "*COMPONENT_FUNC_ACCELERATOR_AND_BRAKING*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_ACCELERATOR_AND_BRAKING* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_ACCELERATOR_AND_BRAKING* 2)
(intern "*COMPONENT_FUNC_BRAKING*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_BRAKING* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_BRAKING* 3)
(intern "*COMPONENT_FUNC_SHIFTING*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_SHIFTING* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_SHIFTING* 4)
(intern "*COMPONENT_FUNC_STEERING*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_STEERING* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_STEERING* 5)
(intern "*COMPONENT_FUNC_E_SHIFTER*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_E_SHIFTER* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_E_SHIFTER* 6)
(intern "*COMPONENT_FUNC_WATCHDOG*" (find-package "PACMOD_MSGS::COMPONENTRPT"))
(shadow '*COMPONENT_FUNC_WATCHDOG* (find-package "PACMOD_MSGS::COMPONENTRPT"))
(defconstant pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_WATCHDOG* 7)

(defun pacmod_msgs::ComponentRpt-to-symbol (const)
  (cond
        ((= const 0) 'pacmod_msgs::ComponentRpt::*COMPONENT_TYPE_PACMOD*)
        ((= const 1) 'pacmod_msgs::ComponentRpt::*COMPONENT_TYPE_PACMINI*)
        ((= const 2) 'pacmod_msgs::ComponentRpt::*COMPONENT_TYPE_PACMICRO*)
        ((= const 0) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_PACMOD*)
        ((= const 1) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN*)
        ((= const 2) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_ACCELERATOR_AND_BRAKING*)
        ((= const 3) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_BRAKING*)
        ((= const 4) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_SHIFTING*)
        ((= const 5) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_STEERING*)
        ((= const 6) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_E_SHIFTER*)
        ((= const 7) 'pacmod_msgs::ComponentRpt::*COMPONENT_FUNC_WATCHDOG*)
        (t nil)))

(defclass pacmod_msgs::ComponentRpt
  :super ros::object
  :slots (_header _component_type _component_func _counter _complement _config_fault ))

(defmethod pacmod_msgs::ComponentRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:component_type __component_type) 0)
    ((:component_func __component_func) 0)
    ((:counter __counter) 0)
    ((:complement __complement) 0)
    ((:config_fault __config_fault) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _component_type (round __component_type))
   (setq _component_func (round __component_func))
   (setq _counter (round __counter))
   (setq _complement (round __complement))
   (setq _config_fault __config_fault)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:component_type
   (&optional __component_type)
   (if __component_type (setq _component_type __component_type)) _component_type)
  (:component_func
   (&optional __component_func)
   (if __component_func (setq _component_func __component_func)) _component_func)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:complement
   (&optional __complement)
   (if __complement (setq _complement __complement)) _complement)
  (:config_fault
   (&optional (__config_fault :null))
   (if (not (eq __config_fault :null)) (setq _config_fault __config_fault)) _config_fault)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _component_type
    1
    ;; uint8 _component_func
    1
    ;; uint8 _counter
    1
    ;; uint8 _complement
    1
    ;; bool _config_fault
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _component_type
       (write-byte _component_type s)
     ;; uint8 _component_func
       (write-byte _component_func s)
     ;; uint8 _counter
       (write-byte _counter s)
     ;; uint8 _complement
       (write-byte _complement s)
     ;; bool _config_fault
       (if _config_fault (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _component_type
     (setq _component_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _component_func
     (setq _component_func (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _counter
     (setq _counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _complement
     (setq _complement (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _config_fault
     (setq _config_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::ComponentRpt :md5sum-) "1d5b5cb01195437dc5e2f534206c1017")
(setf (get pacmod_msgs::ComponentRpt :datatype-) "pacmod_msgs/ComponentRpt")
(setf (get pacmod_msgs::ComponentRpt :definition-)
      "std_msgs/Header header

uint8 component_type
uint8 component_func
uint8 counter
uint8 complement

bool config_fault

uint8 COMPONENT_TYPE_PACMOD = 0
uint8 COMPONENT_TYPE_PACMINI = 1
uint8 COMPONENT_TYPE_PACMICRO = 2

uint8 COMPONENT_FUNC_PACMOD = 0
uint8 COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN = 1
uint8 COMPONENT_FUNC_ACCELERATOR_AND_BRAKING = 2
uint8 COMPONENT_FUNC_BRAKING = 3
uint8 COMPONENT_FUNC_SHIFTING = 4
uint8 COMPONENT_FUNC_STEERING = 5
uint8 COMPONENT_FUNC_E_SHIFTER = 6
uint8 COMPONENT_FUNC_WATCHDOG = 7

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



(provide :pacmod_msgs/ComponentRpt "1d5b5cb01195437dc5e2f534206c1017")


