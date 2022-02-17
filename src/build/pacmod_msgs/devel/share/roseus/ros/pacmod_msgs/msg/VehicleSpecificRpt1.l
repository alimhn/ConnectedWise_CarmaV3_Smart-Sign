;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::VehicleSpecificRpt1)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'VehicleSpecificRpt1 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::VEHICLESPECIFICRPT1")
  (make-package "PACMOD_MSGS::VEHICLESPECIFICRPT1"))

(in-package "ROS")
;;//! \htmlinclude VehicleSpecificRpt1.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::VehicleSpecificRpt1
  :super ros::object
  :slots (_header _shift_pos_1 _shift_pos_2 ))

(defmethod pacmod_msgs::VehicleSpecificRpt1
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:shift_pos_1 __shift_pos_1) 0)
    ((:shift_pos_2 __shift_pos_2) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _shift_pos_1 (round __shift_pos_1))
   (setq _shift_pos_2 (round __shift_pos_2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:shift_pos_1
   (&optional __shift_pos_1)
   (if __shift_pos_1 (setq _shift_pos_1 __shift_pos_1)) _shift_pos_1)
  (:shift_pos_2
   (&optional __shift_pos_2)
   (if __shift_pos_2 (setq _shift_pos_2 __shift_pos_2)) _shift_pos_2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _shift_pos_1
    1
    ;; uint8 _shift_pos_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _shift_pos_1
       (write-byte _shift_pos_1 s)
     ;; uint8 _shift_pos_2
       (write-byte _shift_pos_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _shift_pos_1
     (setq _shift_pos_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _shift_pos_2
     (setq _shift_pos_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::VehicleSpecificRpt1 :md5sum-) "e61481747bb1386c6b9f8ef5c5adad62")
(setf (get pacmod_msgs::VehicleSpecificRpt1 :datatype-) "pacmod_msgs/VehicleSpecificRpt1")
(setf (get pacmod_msgs::VehicleSpecificRpt1 :definition-)
      "std_msgs/Header header

uint8 shift_pos_1
uint8 shift_pos_2

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



(provide :pacmod_msgs/VehicleSpecificRpt1 "e61481747bb1386c6b9f8ef5c5adad62")


