;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::LatLonHeadingRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'LatLonHeadingRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::LATLONHEADINGRPT")
  (make-package "PACMOD_MSGS::LATLONHEADINGRPT"))

(in-package "ROS")
;;//! \htmlinclude LatLonHeadingRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::LatLonHeadingRpt
  :super ros::object
  :slots (_header _latitude_degrees _latitude_minutes _latitude_seconds _longitude_degrees _longitude_minutes _longitude_seconds _heading ))

(defmethod pacmod_msgs::LatLonHeadingRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude_degrees __latitude_degrees) 0)
    ((:latitude_minutes __latitude_minutes) 0)
    ((:latitude_seconds __latitude_seconds) 0)
    ((:longitude_degrees __longitude_degrees) 0)
    ((:longitude_minutes __longitude_minutes) 0)
    ((:longitude_seconds __longitude_seconds) 0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude_degrees (round __latitude_degrees))
   (setq _latitude_minutes (round __latitude_minutes))
   (setq _latitude_seconds (round __latitude_seconds))
   (setq _longitude_degrees (round __longitude_degrees))
   (setq _longitude_minutes (round __longitude_minutes))
   (setq _longitude_seconds (round __longitude_seconds))
   (setq _heading (float __heading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude_degrees
   (&optional __latitude_degrees)
   (if __latitude_degrees (setq _latitude_degrees __latitude_degrees)) _latitude_degrees)
  (:latitude_minutes
   (&optional __latitude_minutes)
   (if __latitude_minutes (setq _latitude_minutes __latitude_minutes)) _latitude_minutes)
  (:latitude_seconds
   (&optional __latitude_seconds)
   (if __latitude_seconds (setq _latitude_seconds __latitude_seconds)) _latitude_seconds)
  (:longitude_degrees
   (&optional __longitude_degrees)
   (if __longitude_degrees (setq _longitude_degrees __longitude_degrees)) _longitude_degrees)
  (:longitude_minutes
   (&optional __longitude_minutes)
   (if __longitude_minutes (setq _longitude_minutes __longitude_minutes)) _longitude_minutes)
  (:longitude_seconds
   (&optional __longitude_seconds)
   (if __longitude_seconds (setq _longitude_seconds __longitude_seconds)) _longitude_seconds)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _latitude_degrees
    1
    ;; uint8 _latitude_minutes
    1
    ;; uint8 _latitude_seconds
    1
    ;; int8 _longitude_degrees
    1
    ;; uint8 _longitude_minutes
    1
    ;; uint8 _longitude_seconds
    1
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _latitude_degrees
       (write-byte _latitude_degrees s)
     ;; uint8 _latitude_minutes
       (write-byte _latitude_minutes s)
     ;; uint8 _latitude_seconds
       (write-byte _latitude_seconds s)
     ;; int8 _longitude_degrees
       (write-byte _longitude_degrees s)
     ;; uint8 _longitude_minutes
       (write-byte _longitude_minutes s)
     ;; uint8 _longitude_seconds
       (write-byte _longitude_seconds s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _latitude_degrees
     (setq _latitude_degrees (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _latitude_degrees 127) (setq _latitude_degrees (- _latitude_degrees 256)))
   ;; uint8 _latitude_minutes
     (setq _latitude_minutes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _latitude_seconds
     (setq _latitude_seconds (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _longitude_degrees
     (setq _longitude_degrees (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _longitude_degrees 127) (setq _longitude_degrees (- _longitude_degrees 256)))
   ;; uint8 _longitude_minutes
     (setq _longitude_minutes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _longitude_seconds
     (setq _longitude_seconds (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::LatLonHeadingRpt :md5sum-) "137a7c22b052c703f38a29aa79de4e50")
(setf (get pacmod_msgs::LatLonHeadingRpt :datatype-) "pacmod_msgs/LatLonHeadingRpt")
(setf (get pacmod_msgs::LatLonHeadingRpt :definition-)
      "std_msgs/Header header

int8 latitude_degrees
uint8 latitude_minutes
uint8 latitude_seconds
int8 longitude_degrees
uint8 longitude_minutes
uint8 longitude_seconds
float64 heading

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



(provide :pacmod_msgs/LatLonHeadingRpt "137a7c22b052c703f38a29aa79de4e50")


