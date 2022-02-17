;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::SteeringPIDRpt2)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'SteeringPIDRpt2 (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::STEERINGPIDRPT2")
  (make-package "PACMOD_MSGS::STEERINGPIDRPT2"))

(in-package "ROS")
;;//! \htmlinclude SteeringPIDRpt2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::SteeringPIDRpt2
  :super ros::object
  :slots (_header _p_term _i_term _d_term _all_terms ))

(defmethod pacmod_msgs::SteeringPIDRpt2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:p_term __p_term) 0.0)
    ((:i_term __i_term) 0.0)
    ((:d_term __d_term) 0.0)
    ((:all_terms __all_terms) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _p_term (float __p_term))
   (setq _i_term (float __i_term))
   (setq _d_term (float __d_term))
   (setq _all_terms (float __all_terms))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:p_term
   (&optional __p_term)
   (if __p_term (setq _p_term __p_term)) _p_term)
  (:i_term
   (&optional __i_term)
   (if __i_term (setq _i_term __i_term)) _i_term)
  (:d_term
   (&optional __d_term)
   (if __d_term (setq _d_term __d_term)) _d_term)
  (:all_terms
   (&optional __all_terms)
   (if __all_terms (setq _all_terms __all_terms)) _all_terms)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _p_term
    8
    ;; float64 _i_term
    8
    ;; float64 _d_term
    8
    ;; float64 _all_terms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _p_term
       (sys::poke _p_term (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i_term
       (sys::poke _i_term (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_term
       (sys::poke _d_term (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _all_terms
       (sys::poke _all_terms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _p_term
     (setq _p_term (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i_term
     (setq _i_term (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_term
     (setq _d_term (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _all_terms
     (setq _all_terms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pacmod_msgs::SteeringPIDRpt2 :md5sum-) "1adfcb7e7b84f38f1763878f5d8e8ff5")
(setf (get pacmod_msgs::SteeringPIDRpt2 :datatype-) "pacmod_msgs/SteeringPIDRpt2")
(setf (get pacmod_msgs::SteeringPIDRpt2 :definition-)
      "std_msgs/Header header

float64 p_term
float64 i_term
float64 d_term
float64 all_terms      # sum of P, I, and D terms

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



(provide :pacmod_msgs/SteeringPIDRpt2 "1adfcb7e7b84f38f1763878f5d8e8ff5")


