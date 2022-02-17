;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::VehicleSpeedRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'VehicleSpeedRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::VEHICLESPEEDRPT")
  (make-package "PACMOD_MSGS::VEHICLESPEEDRPT"))

(in-package "ROS")
;;//! \htmlinclude VehicleSpeedRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::VehicleSpeedRpt
  :super ros::object
  :slots (_header _vehicle_speed _vehicle_speed_valid _vehicle_speed_raw ))

(defmethod pacmod_msgs::VehicleSpeedRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_speed __vehicle_speed) 0.0)
    ((:vehicle_speed_valid __vehicle_speed_valid) nil)
    ((:vehicle_speed_raw __vehicle_speed_raw) (make-array 2 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_speed (float __vehicle_speed))
   (setq _vehicle_speed_valid __vehicle_speed_valid)
   (setq _vehicle_speed_raw __vehicle_speed_raw)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_speed
   (&optional __vehicle_speed)
   (if __vehicle_speed (setq _vehicle_speed __vehicle_speed)) _vehicle_speed)
  (:vehicle_speed_valid
   (&optional (__vehicle_speed_valid :null))
   (if (not (eq __vehicle_speed_valid :null)) (setq _vehicle_speed_valid __vehicle_speed_valid)) _vehicle_speed_valid)
  (:vehicle_speed_raw
   (&optional __vehicle_speed_raw)
   (if __vehicle_speed_raw (setq _vehicle_speed_raw __vehicle_speed_raw)) _vehicle_speed_raw)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _vehicle_speed
    8
    ;; bool _vehicle_speed_valid
    1
    ;; uint8[2] _vehicle_speed_raw
    (* 1    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _vehicle_speed
       (sys::poke _vehicle_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _vehicle_speed_valid
       (if _vehicle_speed_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint8[2] _vehicle_speed_raw
     (princ _vehicle_speed_raw s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _vehicle_speed
     (setq _vehicle_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _vehicle_speed_valid
     (setq _vehicle_speed_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8[2] _vehicle_speed_raw
   (setq _vehicle_speed_raw (make-array 2 :element-type :char))
   (replace _vehicle_speed_raw buf :start2 ptr-) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pacmod_msgs::VehicleSpeedRpt :md5sum-) "33c26f1bbea2c9136f0821ddc90cd049")
(setf (get pacmod_msgs::VehicleSpeedRpt :datatype-) "pacmod_msgs/VehicleSpeedRpt")
(setf (get pacmod_msgs::VehicleSpeedRpt :definition-)
      "std_msgs/Header header

float64 vehicle_speed         # Measured vehicle speed
bool vehicle_speed_valid      # Flag indicating if measured vehicle speed is valid
uint8[2] vehicle_speed_raw    # Raw bytes from vehicle CAN bus                


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



(provide :pacmod_msgs/VehicleSpeedRpt "33c26f1bbea2c9136f0821ddc90cd049")


