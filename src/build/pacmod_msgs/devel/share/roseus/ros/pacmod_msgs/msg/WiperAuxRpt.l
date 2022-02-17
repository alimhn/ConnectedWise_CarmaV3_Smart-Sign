;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::WiperAuxRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'WiperAuxRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::WIPERAUXRPT")
  (make-package "PACMOD_MSGS::WIPERAUXRPT"))

(in-package "ROS")
;;//! \htmlinclude WiperAuxRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::WiperAuxRpt
  :super ros::object
  :slots (_header _front_wiping _front_wiping_is_valid _front_spraying _front_spraying_is_valid _rear_wiping _rear_wiping_is_valid _rear_spraying _rear_spraying_is_valid _spray_near_empty _spray_near_empty_is_valid _spray_empty _spray_empty_is_valid ))

(defmethod pacmod_msgs::WiperAuxRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_wiping __front_wiping) nil)
    ((:front_wiping_is_valid __front_wiping_is_valid) nil)
    ((:front_spraying __front_spraying) nil)
    ((:front_spraying_is_valid __front_spraying_is_valid) nil)
    ((:rear_wiping __rear_wiping) nil)
    ((:rear_wiping_is_valid __rear_wiping_is_valid) nil)
    ((:rear_spraying __rear_spraying) nil)
    ((:rear_spraying_is_valid __rear_spraying_is_valid) nil)
    ((:spray_near_empty __spray_near_empty) nil)
    ((:spray_near_empty_is_valid __spray_near_empty_is_valid) nil)
    ((:spray_empty __spray_empty) nil)
    ((:spray_empty_is_valid __spray_empty_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_wiping __front_wiping)
   (setq _front_wiping_is_valid __front_wiping_is_valid)
   (setq _front_spraying __front_spraying)
   (setq _front_spraying_is_valid __front_spraying_is_valid)
   (setq _rear_wiping __rear_wiping)
   (setq _rear_wiping_is_valid __rear_wiping_is_valid)
   (setq _rear_spraying __rear_spraying)
   (setq _rear_spraying_is_valid __rear_spraying_is_valid)
   (setq _spray_near_empty __spray_near_empty)
   (setq _spray_near_empty_is_valid __spray_near_empty_is_valid)
   (setq _spray_empty __spray_empty)
   (setq _spray_empty_is_valid __spray_empty_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_wiping
   (&optional (__front_wiping :null))
   (if (not (eq __front_wiping :null)) (setq _front_wiping __front_wiping)) _front_wiping)
  (:front_wiping_is_valid
   (&optional (__front_wiping_is_valid :null))
   (if (not (eq __front_wiping_is_valid :null)) (setq _front_wiping_is_valid __front_wiping_is_valid)) _front_wiping_is_valid)
  (:front_spraying
   (&optional (__front_spraying :null))
   (if (not (eq __front_spraying :null)) (setq _front_spraying __front_spraying)) _front_spraying)
  (:front_spraying_is_valid
   (&optional (__front_spraying_is_valid :null))
   (if (not (eq __front_spraying_is_valid :null)) (setq _front_spraying_is_valid __front_spraying_is_valid)) _front_spraying_is_valid)
  (:rear_wiping
   (&optional (__rear_wiping :null))
   (if (not (eq __rear_wiping :null)) (setq _rear_wiping __rear_wiping)) _rear_wiping)
  (:rear_wiping_is_valid
   (&optional (__rear_wiping_is_valid :null))
   (if (not (eq __rear_wiping_is_valid :null)) (setq _rear_wiping_is_valid __rear_wiping_is_valid)) _rear_wiping_is_valid)
  (:rear_spraying
   (&optional (__rear_spraying :null))
   (if (not (eq __rear_spraying :null)) (setq _rear_spraying __rear_spraying)) _rear_spraying)
  (:rear_spraying_is_valid
   (&optional (__rear_spraying_is_valid :null))
   (if (not (eq __rear_spraying_is_valid :null)) (setq _rear_spraying_is_valid __rear_spraying_is_valid)) _rear_spraying_is_valid)
  (:spray_near_empty
   (&optional (__spray_near_empty :null))
   (if (not (eq __spray_near_empty :null)) (setq _spray_near_empty __spray_near_empty)) _spray_near_empty)
  (:spray_near_empty_is_valid
   (&optional (__spray_near_empty_is_valid :null))
   (if (not (eq __spray_near_empty_is_valid :null)) (setq _spray_near_empty_is_valid __spray_near_empty_is_valid)) _spray_near_empty_is_valid)
  (:spray_empty
   (&optional (__spray_empty :null))
   (if (not (eq __spray_empty :null)) (setq _spray_empty __spray_empty)) _spray_empty)
  (:spray_empty_is_valid
   (&optional (__spray_empty_is_valid :null))
   (if (not (eq __spray_empty_is_valid :null)) (setq _spray_empty_is_valid __spray_empty_is_valid)) _spray_empty_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _front_wiping
    1
    ;; bool _front_wiping_is_valid
    1
    ;; bool _front_spraying
    1
    ;; bool _front_spraying_is_valid
    1
    ;; bool _rear_wiping
    1
    ;; bool _rear_wiping_is_valid
    1
    ;; bool _rear_spraying
    1
    ;; bool _rear_spraying_is_valid
    1
    ;; bool _spray_near_empty
    1
    ;; bool _spray_near_empty_is_valid
    1
    ;; bool _spray_empty
    1
    ;; bool _spray_empty_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _front_wiping
       (if _front_wiping (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_wiping_is_valid
       (if _front_wiping_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_spraying
       (if _front_spraying (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_spraying_is_valid
       (if _front_spraying_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_wiping
       (if _rear_wiping (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_wiping_is_valid
       (if _rear_wiping_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_spraying
       (if _rear_spraying (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_spraying_is_valid
       (if _rear_spraying_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _spray_near_empty
       (if _spray_near_empty (write-byte -1 s) (write-byte 0 s))
     ;; bool _spray_near_empty_is_valid
       (if _spray_near_empty_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _spray_empty
       (if _spray_empty (write-byte -1 s) (write-byte 0 s))
     ;; bool _spray_empty_is_valid
       (if _spray_empty_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _front_wiping
     (setq _front_wiping (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_wiping_is_valid
     (setq _front_wiping_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_spraying
     (setq _front_spraying (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_spraying_is_valid
     (setq _front_spraying_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_wiping
     (setq _rear_wiping (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_wiping_is_valid
     (setq _rear_wiping_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_spraying
     (setq _rear_spraying (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_spraying_is_valid
     (setq _rear_spraying_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _spray_near_empty
     (setq _spray_near_empty (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _spray_near_empty_is_valid
     (setq _spray_near_empty_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _spray_empty
     (setq _spray_empty (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _spray_empty_is_valid
     (setq _spray_empty_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::WiperAuxRpt :md5sum-) "663ea0989c9628effd21f08690caa7d1")
(setf (get pacmod_msgs::WiperAuxRpt :datatype-) "pacmod_msgs/WiperAuxRpt")
(setf (get pacmod_msgs::WiperAuxRpt :definition-)
      "std_msgs/Header header

bool front_wiping
bool front_wiping_is_valid
bool front_spraying
bool front_spraying_is_valid
bool rear_wiping
bool rear_wiping_is_valid
bool rear_spraying
bool rear_spraying_is_valid
bool spray_near_empty
bool spray_near_empty_is_valid
bool spray_empty
bool spray_empty_is_valid

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



(provide :pacmod_msgs/WiperAuxRpt "663ea0989c9628effd21f08690caa7d1")


