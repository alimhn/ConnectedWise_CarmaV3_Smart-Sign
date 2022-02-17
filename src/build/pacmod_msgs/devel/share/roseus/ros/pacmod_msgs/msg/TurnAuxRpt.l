;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::TurnAuxRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'TurnAuxRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::TURNAUXRPT")
  (make-package "PACMOD_MSGS::TURNAUXRPT"))

(in-package "ROS")
;;//! \htmlinclude TurnAuxRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::TurnAuxRpt
  :super ros::object
  :slots (_header _driver_blinker_bulb_on _driver_blinker_bulb_on_is_valid _passenger_blinker_bulb_on _passenger_blinker_bulb_on_is_valid ))

(defmethod pacmod_msgs::TurnAuxRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driver_blinker_bulb_on __driver_blinker_bulb_on) nil)
    ((:driver_blinker_bulb_on_is_valid __driver_blinker_bulb_on_is_valid) nil)
    ((:passenger_blinker_bulb_on __passenger_blinker_bulb_on) nil)
    ((:passenger_blinker_bulb_on_is_valid __passenger_blinker_bulb_on_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _driver_blinker_bulb_on __driver_blinker_bulb_on)
   (setq _driver_blinker_bulb_on_is_valid __driver_blinker_bulb_on_is_valid)
   (setq _passenger_blinker_bulb_on __passenger_blinker_bulb_on)
   (setq _passenger_blinker_bulb_on_is_valid __passenger_blinker_bulb_on_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:driver_blinker_bulb_on
   (&optional (__driver_blinker_bulb_on :null))
   (if (not (eq __driver_blinker_bulb_on :null)) (setq _driver_blinker_bulb_on __driver_blinker_bulb_on)) _driver_blinker_bulb_on)
  (:driver_blinker_bulb_on_is_valid
   (&optional (__driver_blinker_bulb_on_is_valid :null))
   (if (not (eq __driver_blinker_bulb_on_is_valid :null)) (setq _driver_blinker_bulb_on_is_valid __driver_blinker_bulb_on_is_valid)) _driver_blinker_bulb_on_is_valid)
  (:passenger_blinker_bulb_on
   (&optional (__passenger_blinker_bulb_on :null))
   (if (not (eq __passenger_blinker_bulb_on :null)) (setq _passenger_blinker_bulb_on __passenger_blinker_bulb_on)) _passenger_blinker_bulb_on)
  (:passenger_blinker_bulb_on_is_valid
   (&optional (__passenger_blinker_bulb_on_is_valid :null))
   (if (not (eq __passenger_blinker_bulb_on_is_valid :null)) (setq _passenger_blinker_bulb_on_is_valid __passenger_blinker_bulb_on_is_valid)) _passenger_blinker_bulb_on_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _driver_blinker_bulb_on
    1
    ;; bool _driver_blinker_bulb_on_is_valid
    1
    ;; bool _passenger_blinker_bulb_on
    1
    ;; bool _passenger_blinker_bulb_on_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _driver_blinker_bulb_on
       (if _driver_blinker_bulb_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_blinker_bulb_on_is_valid
       (if _driver_blinker_bulb_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_blinker_bulb_on
       (if _passenger_blinker_bulb_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_blinker_bulb_on_is_valid
       (if _passenger_blinker_bulb_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _driver_blinker_bulb_on
     (setq _driver_blinker_bulb_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_blinker_bulb_on_is_valid
     (setq _driver_blinker_bulb_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_blinker_bulb_on
     (setq _passenger_blinker_bulb_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_blinker_bulb_on_is_valid
     (setq _passenger_blinker_bulb_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::TurnAuxRpt :md5sum-) "c04dad80913279be4de094443dc50dca")
(setf (get pacmod_msgs::TurnAuxRpt :datatype-) "pacmod_msgs/TurnAuxRpt")
(setf (get pacmod_msgs::TurnAuxRpt :definition-)
      "std_msgs/Header header

bool driver_blinker_bulb_on
bool driver_blinker_bulb_on_is_valid
bool passenger_blinker_bulb_on
bool passenger_blinker_bulb_on_is_valid

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



(provide :pacmod_msgs/TurnAuxRpt "c04dad80913279be4de094443dc50dca")


