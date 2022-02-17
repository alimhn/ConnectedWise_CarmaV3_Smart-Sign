;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::VehicleDynamicsRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'VehicleDynamicsRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::VEHICLEDYNAMICSRPT")
  (make-package "PACMOD_MSGS::VEHICLEDYNAMICSRPT"))

(in-package "ROS")
;;//! \htmlinclude VehicleDynamicsRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::VehicleDynamicsRpt
  :super ros::object
  :slots (_header _brake_torque _g_forces ))

(defmethod pacmod_msgs::VehicleDynamicsRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brake_torque __brake_torque) 0.0)
    ((:g_forces __g_forces) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brake_torque (float __brake_torque))
   (setq _g_forces (round __g_forces))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brake_torque
   (&optional __brake_torque)
   (if __brake_torque (setq _brake_torque __brake_torque)) _brake_torque)
  (:g_forces
   (&optional __g_forces)
   (if __g_forces (setq _g_forces __g_forces)) _g_forces)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _brake_torque
    8
    ;; uint8 _g_forces
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _brake_torque
       (sys::poke _brake_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _g_forces
       (write-byte _g_forces s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _brake_torque
     (setq _brake_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _g_forces
     (setq _g_forces (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::VehicleDynamicsRpt :md5sum-) "76c5ee0fb5b1065da372a973e2ffdd31")
(setf (get pacmod_msgs::VehicleDynamicsRpt :datatype-) "pacmod_msgs/VehicleDynamicsRpt")
(setf (get pacmod_msgs::VehicleDynamicsRpt :definition-)
      "std_msgs/Header header

float64 brake_torque       # Measured brake torque
uint8 g_forces             # Measured g forces

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



(provide :pacmod_msgs/VehicleDynamicsRpt "76c5ee0fb5b1065da372a973e2ffdd31")


