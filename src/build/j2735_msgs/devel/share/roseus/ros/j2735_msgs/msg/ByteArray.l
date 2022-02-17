;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::ByteArray)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'ByteArray (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::BYTEARRAY")
  (make-package "J2735_MSGS::BYTEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ByteArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass j2735_msgs::ByteArray
  :super ros::object
  :slots (_header _messageType _content ))

(defmethod j2735_msgs::ByteArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:messageType __messageType) "")
    ((:content __content) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _messageType (string __messageType))
   (setq _content __content)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:messageType
   (&optional __messageType)
   (if __messageType (setq _messageType __messageType)) _messageType)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _messageType
    4 (length _messageType)
    ;; uint8[] _content
    (* 1    (length _content)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _messageType
       (write-long (length _messageType) s) (princ _messageType s)
     ;; uint8[] _content
     (write-long (length _content) s)
     (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _messageType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _messageType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _content
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _content (make-array n :element-type :char))
     (replace _content buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get j2735_msgs::ByteArray :md5sum-) "6b87f87806cca414ef2cd41baf1a8ce0")
(setf (get j2735_msgs::ByteArray :datatype-) "j2735_msgs/ByteArray")
(setf (get j2735_msgs::ByteArray :definition-)
      "#
# ByteArray.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Raw binary blobs from Drivers.Comms package and then parse the raw data according to the header. 
# Currently all messages are DSRC message. 
# 
# NOTE: Initial version only considers Part I. Part II will be defined for later use. 

std_msgs/Header header

# Need to know the type before parsing. MessageTypes are MAP, SPAT, TIM, BSM, Mobility.
string messageType

# The DSRC message content
uint8[] content

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



(provide :j2735_msgs/ByteArray "6b87f87806cca414ef2cd41baf1a8ce0")


