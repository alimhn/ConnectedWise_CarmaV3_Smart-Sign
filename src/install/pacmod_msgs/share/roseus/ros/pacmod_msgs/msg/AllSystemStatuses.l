;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::AllSystemStatuses)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'AllSystemStatuses (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::ALLSYSTEMSTATUSES")
  (make-package "PACMOD_MSGS::ALLSYSTEMSTATUSES"))

(in-package "ROS")
;;//! \htmlinclude AllSystemStatuses.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::AllSystemStatuses
  :super ros::object
  :slots (_header _enabled_status _overridden_status _fault_status ))

(defmethod pacmod_msgs::AllSystemStatuses
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enabled_status __enabled_status) ())
    ((:overridden_status __overridden_status) ())
    ((:fault_status __fault_status) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _enabled_status __enabled_status)
   (setq _overridden_status __overridden_status)
   (setq _fault_status __fault_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enabled_status
   (&rest __enabled_status)
   (if (keywordp (car __enabled_status))
       (send* _enabled_status __enabled_status)
     (progn
       (if __enabled_status (setq _enabled_status (car __enabled_status)))
       _enabled_status)))
  (:overridden_status
   (&rest __overridden_status)
   (if (keywordp (car __overridden_status))
       (send* _overridden_status __overridden_status)
     (progn
       (if __overridden_status (setq _overridden_status (car __overridden_status)))
       _overridden_status)))
  (:fault_status
   (&rest __fault_status)
   (if (keywordp (car __fault_status))
       (send* _fault_status __fault_status)
     (progn
       (if __fault_status (setq _fault_status (car __fault_status)))
       _fault_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pacmod_msgs/KeyValuePair[] _enabled_status
    (apply #'+ (send-all _enabled_status :serialization-length)) 4
    ;; pacmod_msgs/KeyValuePair[] _overridden_status
    (apply #'+ (send-all _overridden_status :serialization-length)) 4
    ;; pacmod_msgs/KeyValuePair[] _fault_status
    (apply #'+ (send-all _fault_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pacmod_msgs/KeyValuePair[] _enabled_status
     (write-long (length _enabled_status) s)
     (dolist (elem _enabled_status)
       (send elem :serialize s)
       )
     ;; pacmod_msgs/KeyValuePair[] _overridden_status
     (write-long (length _overridden_status) s)
     (dolist (elem _overridden_status)
       (send elem :serialize s)
       )
     ;; pacmod_msgs/KeyValuePair[] _fault_status
     (write-long (length _fault_status) s)
     (dolist (elem _fault_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pacmod_msgs/KeyValuePair[] _enabled_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enabled_status (let (r) (dotimes (i n) (push (instance pacmod_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _enabled_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pacmod_msgs/KeyValuePair[] _overridden_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _overridden_status (let (r) (dotimes (i n) (push (instance pacmod_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _overridden_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pacmod_msgs/KeyValuePair[] _fault_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fault_status (let (r) (dotimes (i n) (push (instance pacmod_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _fault_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pacmod_msgs::AllSystemStatuses :md5sum-) "c02f347061ed74b0bef510eb7368d90a")
(setf (get pacmod_msgs::AllSystemStatuses :datatype-) "pacmod_msgs/AllSystemStatuses")
(setf (get pacmod_msgs::AllSystemStatuses :definition-)
      "std_msgs/Header header

pacmod_msgs/KeyValuePair[] enabled_status
pacmod_msgs/KeyValuePair[] overridden_status
pacmod_msgs/KeyValuePair[] fault_status

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

================================================================================
MSG: pacmod_msgs/KeyValuePair
string key
string value

")



(provide :pacmod_msgs/AllSystemStatuses "c02f347061ed74b0bef510eb7368d90a")


