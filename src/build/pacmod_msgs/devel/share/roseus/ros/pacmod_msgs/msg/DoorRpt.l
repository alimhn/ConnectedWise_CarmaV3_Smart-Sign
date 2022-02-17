;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::DoorRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'DoorRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::DOORRPT")
  (make-package "PACMOD_MSGS::DOORRPT"))

(in-package "ROS")
;;//! \htmlinclude DoorRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::DoorRpt
  :super ros::object
  :slots (_header _driver_door_open _driver_door_open_is_valid _passenger_door_open _passenger_door_open_is_valid _rear_driver_door_open _rear_driver_door_open_is_valid _rear_passenger_door_open _rear_passenger_door_open_is_valid _hood_open _hood_open_is_valid _trunk_open _trunk_open_is_valid _fuel_door_open _fuel_door_open_is_valid ))

(defmethod pacmod_msgs::DoorRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driver_door_open __driver_door_open) nil)
    ((:driver_door_open_is_valid __driver_door_open_is_valid) nil)
    ((:passenger_door_open __passenger_door_open) nil)
    ((:passenger_door_open_is_valid __passenger_door_open_is_valid) nil)
    ((:rear_driver_door_open __rear_driver_door_open) nil)
    ((:rear_driver_door_open_is_valid __rear_driver_door_open_is_valid) nil)
    ((:rear_passenger_door_open __rear_passenger_door_open) nil)
    ((:rear_passenger_door_open_is_valid __rear_passenger_door_open_is_valid) nil)
    ((:hood_open __hood_open) nil)
    ((:hood_open_is_valid __hood_open_is_valid) nil)
    ((:trunk_open __trunk_open) nil)
    ((:trunk_open_is_valid __trunk_open_is_valid) nil)
    ((:fuel_door_open __fuel_door_open) nil)
    ((:fuel_door_open_is_valid __fuel_door_open_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _driver_door_open __driver_door_open)
   (setq _driver_door_open_is_valid __driver_door_open_is_valid)
   (setq _passenger_door_open __passenger_door_open)
   (setq _passenger_door_open_is_valid __passenger_door_open_is_valid)
   (setq _rear_driver_door_open __rear_driver_door_open)
   (setq _rear_driver_door_open_is_valid __rear_driver_door_open_is_valid)
   (setq _rear_passenger_door_open __rear_passenger_door_open)
   (setq _rear_passenger_door_open_is_valid __rear_passenger_door_open_is_valid)
   (setq _hood_open __hood_open)
   (setq _hood_open_is_valid __hood_open_is_valid)
   (setq _trunk_open __trunk_open)
   (setq _trunk_open_is_valid __trunk_open_is_valid)
   (setq _fuel_door_open __fuel_door_open)
   (setq _fuel_door_open_is_valid __fuel_door_open_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:driver_door_open
   (&optional (__driver_door_open :null))
   (if (not (eq __driver_door_open :null)) (setq _driver_door_open __driver_door_open)) _driver_door_open)
  (:driver_door_open_is_valid
   (&optional (__driver_door_open_is_valid :null))
   (if (not (eq __driver_door_open_is_valid :null)) (setq _driver_door_open_is_valid __driver_door_open_is_valid)) _driver_door_open_is_valid)
  (:passenger_door_open
   (&optional (__passenger_door_open :null))
   (if (not (eq __passenger_door_open :null)) (setq _passenger_door_open __passenger_door_open)) _passenger_door_open)
  (:passenger_door_open_is_valid
   (&optional (__passenger_door_open_is_valid :null))
   (if (not (eq __passenger_door_open_is_valid :null)) (setq _passenger_door_open_is_valid __passenger_door_open_is_valid)) _passenger_door_open_is_valid)
  (:rear_driver_door_open
   (&optional (__rear_driver_door_open :null))
   (if (not (eq __rear_driver_door_open :null)) (setq _rear_driver_door_open __rear_driver_door_open)) _rear_driver_door_open)
  (:rear_driver_door_open_is_valid
   (&optional (__rear_driver_door_open_is_valid :null))
   (if (not (eq __rear_driver_door_open_is_valid :null)) (setq _rear_driver_door_open_is_valid __rear_driver_door_open_is_valid)) _rear_driver_door_open_is_valid)
  (:rear_passenger_door_open
   (&optional (__rear_passenger_door_open :null))
   (if (not (eq __rear_passenger_door_open :null)) (setq _rear_passenger_door_open __rear_passenger_door_open)) _rear_passenger_door_open)
  (:rear_passenger_door_open_is_valid
   (&optional (__rear_passenger_door_open_is_valid :null))
   (if (not (eq __rear_passenger_door_open_is_valid :null)) (setq _rear_passenger_door_open_is_valid __rear_passenger_door_open_is_valid)) _rear_passenger_door_open_is_valid)
  (:hood_open
   (&optional (__hood_open :null))
   (if (not (eq __hood_open :null)) (setq _hood_open __hood_open)) _hood_open)
  (:hood_open_is_valid
   (&optional (__hood_open_is_valid :null))
   (if (not (eq __hood_open_is_valid :null)) (setq _hood_open_is_valid __hood_open_is_valid)) _hood_open_is_valid)
  (:trunk_open
   (&optional (__trunk_open :null))
   (if (not (eq __trunk_open :null)) (setq _trunk_open __trunk_open)) _trunk_open)
  (:trunk_open_is_valid
   (&optional (__trunk_open_is_valid :null))
   (if (not (eq __trunk_open_is_valid :null)) (setq _trunk_open_is_valid __trunk_open_is_valid)) _trunk_open_is_valid)
  (:fuel_door_open
   (&optional (__fuel_door_open :null))
   (if (not (eq __fuel_door_open :null)) (setq _fuel_door_open __fuel_door_open)) _fuel_door_open)
  (:fuel_door_open_is_valid
   (&optional (__fuel_door_open_is_valid :null))
   (if (not (eq __fuel_door_open_is_valid :null)) (setq _fuel_door_open_is_valid __fuel_door_open_is_valid)) _fuel_door_open_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _driver_door_open
    1
    ;; bool _driver_door_open_is_valid
    1
    ;; bool _passenger_door_open
    1
    ;; bool _passenger_door_open_is_valid
    1
    ;; bool _rear_driver_door_open
    1
    ;; bool _rear_driver_door_open_is_valid
    1
    ;; bool _rear_passenger_door_open
    1
    ;; bool _rear_passenger_door_open_is_valid
    1
    ;; bool _hood_open
    1
    ;; bool _hood_open_is_valid
    1
    ;; bool _trunk_open
    1
    ;; bool _trunk_open_is_valid
    1
    ;; bool _fuel_door_open
    1
    ;; bool _fuel_door_open_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _driver_door_open
       (if _driver_door_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_door_open_is_valid
       (if _driver_door_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_door_open
       (if _passenger_door_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_door_open_is_valid
       (if _passenger_door_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_driver_door_open
       (if _rear_driver_door_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_driver_door_open_is_valid
       (if _rear_driver_door_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_passenger_door_open
       (if _rear_passenger_door_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_passenger_door_open_is_valid
       (if _rear_passenger_door_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _hood_open
       (if _hood_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _hood_open_is_valid
       (if _hood_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _trunk_open
       (if _trunk_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _trunk_open_is_valid
       (if _trunk_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _fuel_door_open
       (if _fuel_door_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _fuel_door_open_is_valid
       (if _fuel_door_open_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _driver_door_open
     (setq _driver_door_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_door_open_is_valid
     (setq _driver_door_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_door_open
     (setq _passenger_door_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_door_open_is_valid
     (setq _passenger_door_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_driver_door_open
     (setq _rear_driver_door_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_driver_door_open_is_valid
     (setq _rear_driver_door_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_passenger_door_open
     (setq _rear_passenger_door_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_passenger_door_open_is_valid
     (setq _rear_passenger_door_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _hood_open
     (setq _hood_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _hood_open_is_valid
     (setq _hood_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _trunk_open
     (setq _trunk_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _trunk_open_is_valid
     (setq _trunk_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fuel_door_open
     (setq _fuel_door_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fuel_door_open_is_valid
     (setq _fuel_door_open_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::DoorRpt :md5sum-) "a2ffa235d04f8d5d5e349a5d9caead12")
(setf (get pacmod_msgs::DoorRpt :datatype-) "pacmod_msgs/DoorRpt")
(setf (get pacmod_msgs::DoorRpt :definition-)
      "std_msgs/Header header

bool driver_door_open
bool driver_door_open_is_valid
bool passenger_door_open
bool passenger_door_open_is_valid
bool rear_driver_door_open
bool rear_driver_door_open_is_valid
bool rear_passenger_door_open
bool rear_passenger_door_open_is_valid
bool hood_open
bool hood_open_is_valid
bool trunk_open
bool trunk_open_is_valid
bool fuel_door_open
bool fuel_door_open_is_valid

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



(provide :pacmod_msgs/DoorRpt "a2ffa235d04f8d5d5e349a5d9caead12")


