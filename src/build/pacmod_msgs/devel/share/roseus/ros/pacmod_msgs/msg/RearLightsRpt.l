;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::RearLightsRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'RearLightsRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::REARLIGHTSRPT")
  (make-package "PACMOD_MSGS::REARLIGHTSRPT"))

(in-package "ROS")
;;//! \htmlinclude RearLightsRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::RearLightsRpt
  :super ros::object
  :slots (_header _brake_lights_on _brake_lights_on_is_valid _reverse_lights_on _reverse_lights_on_is_valid ))

(defmethod pacmod_msgs::RearLightsRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brake_lights_on __brake_lights_on) nil)
    ((:brake_lights_on_is_valid __brake_lights_on_is_valid) nil)
    ((:reverse_lights_on __reverse_lights_on) nil)
    ((:reverse_lights_on_is_valid __reverse_lights_on_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brake_lights_on __brake_lights_on)
   (setq _brake_lights_on_is_valid __brake_lights_on_is_valid)
   (setq _reverse_lights_on __reverse_lights_on)
   (setq _reverse_lights_on_is_valid __reverse_lights_on_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brake_lights_on
   (&optional (__brake_lights_on :null))
   (if (not (eq __brake_lights_on :null)) (setq _brake_lights_on __brake_lights_on)) _brake_lights_on)
  (:brake_lights_on_is_valid
   (&optional (__brake_lights_on_is_valid :null))
   (if (not (eq __brake_lights_on_is_valid :null)) (setq _brake_lights_on_is_valid __brake_lights_on_is_valid)) _brake_lights_on_is_valid)
  (:reverse_lights_on
   (&optional (__reverse_lights_on :null))
   (if (not (eq __reverse_lights_on :null)) (setq _reverse_lights_on __reverse_lights_on)) _reverse_lights_on)
  (:reverse_lights_on_is_valid
   (&optional (__reverse_lights_on_is_valid :null))
   (if (not (eq __reverse_lights_on_is_valid :null)) (setq _reverse_lights_on_is_valid __reverse_lights_on_is_valid)) _reverse_lights_on_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _brake_lights_on
    1
    ;; bool _brake_lights_on_is_valid
    1
    ;; bool _reverse_lights_on
    1
    ;; bool _reverse_lights_on_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _brake_lights_on
       (if _brake_lights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_lights_on_is_valid
       (if _brake_lights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse_lights_on
       (if _reverse_lights_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse_lights_on_is_valid
       (if _reverse_lights_on_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _brake_lights_on
     (setq _brake_lights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_lights_on_is_valid
     (setq _brake_lights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse_lights_on
     (setq _reverse_lights_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse_lights_on_is_valid
     (setq _reverse_lights_on_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::RearLightsRpt :md5sum-) "5adfcaa5d9423963ef8c117009d03bbe")
(setf (get pacmod_msgs::RearLightsRpt :datatype-) "pacmod_msgs/RearLightsRpt")
(setf (get pacmod_msgs::RearLightsRpt :definition-)
      "std_msgs/Header header

bool brake_lights_on
bool brake_lights_on_is_valid
bool reverse_lights_on
bool reverse_lights_on_is_valid

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



(provide :pacmod_msgs/RearLightsRpt "5adfcaa5d9423963ef8c117009d03bbe")


