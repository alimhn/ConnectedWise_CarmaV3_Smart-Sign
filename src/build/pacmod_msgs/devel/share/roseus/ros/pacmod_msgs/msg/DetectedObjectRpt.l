;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::DetectedObjectRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'DetectedObjectRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::DETECTEDOBJECTRPT")
  (make-package "PACMOD_MSGS::DETECTEDOBJECTRPT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::DetectedObjectRpt
  :super ros::object
  :slots (_header _front_object_distance_low_res _front_object_distance_high_res ))

(defmethod pacmod_msgs::DetectedObjectRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_object_distance_low_res __front_object_distance_low_res) 0.0)
    ((:front_object_distance_high_res __front_object_distance_high_res) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_object_distance_low_res (float __front_object_distance_low_res))
   (setq _front_object_distance_high_res (float __front_object_distance_high_res))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_object_distance_low_res
   (&optional __front_object_distance_low_res)
   (if __front_object_distance_low_res (setq _front_object_distance_low_res __front_object_distance_low_res)) _front_object_distance_low_res)
  (:front_object_distance_high_res
   (&optional __front_object_distance_high_res)
   (if __front_object_distance_high_res (setq _front_object_distance_high_res __front_object_distance_high_res)) _front_object_distance_high_res)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _front_object_distance_low_res
    8
    ;; float64 _front_object_distance_high_res
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _front_object_distance_low_res
       (sys::poke _front_object_distance_low_res (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_object_distance_high_res
       (sys::poke _front_object_distance_high_res (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _front_object_distance_low_res
     (setq _front_object_distance_low_res (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_object_distance_high_res
     (setq _front_object_distance_high_res (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::DetectedObjectRpt :md5sum-) "bc712b16be2ea6767f3e682c00a854bc")
(setf (get pacmod_msgs::DetectedObjectRpt :datatype-) "pacmod_msgs/DetectedObjectRpt")
(setf (get pacmod_msgs::DetectedObjectRpt :definition-)
      "std_msgs/Header header

float64 front_object_distance_low_res         # Measured distance to nearest front object
float64 front_object_distance_high_res        # Measured distance to nearest front object (high res)

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



(provide :pacmod_msgs/DetectedObjectRpt "bc712b16be2ea6767f3e682c00a854bc")


