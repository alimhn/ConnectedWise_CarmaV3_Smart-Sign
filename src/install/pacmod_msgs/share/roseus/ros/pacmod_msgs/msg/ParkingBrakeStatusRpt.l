;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::ParkingBrakeStatusRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'ParkingBrakeStatusRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::PARKINGBRAKESTATUSRPT")
  (make-package "PACMOD_MSGS::PARKINGBRAKESTATUSRPT"))

(in-package "ROS")
;;//! \htmlinclude ParkingBrakeStatusRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::ParkingBrakeStatusRpt
  :super ros::object
  :slots (_header _parking_brake_engaged ))

(defmethod pacmod_msgs::ParkingBrakeStatusRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_brake_engaged __parking_brake_engaged) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_brake_engaged __parking_brake_engaged)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parking_brake_engaged
   (&optional (__parking_brake_engaged :null))
   (if (not (eq __parking_brake_engaged :null)) (setq _parking_brake_engaged __parking_brake_engaged)) _parking_brake_engaged)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _parking_brake_engaged
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _parking_brake_engaged
       (if _parking_brake_engaged (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _parking_brake_engaged
     (setq _parking_brake_engaged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::ParkingBrakeStatusRpt :md5sum-) "28531874ceb48a58d4faa42b130fc228")
(setf (get pacmod_msgs::ParkingBrakeStatusRpt :datatype-) "pacmod_msgs/ParkingBrakeStatusRpt")
(setf (get pacmod_msgs::ParkingBrakeStatusRpt :definition-)
      "std_msgs/Header header

bool parking_brake_engaged

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



(provide :pacmod_msgs/ParkingBrakeStatusRpt "28531874ceb48a58d4faa42b130fc228")


