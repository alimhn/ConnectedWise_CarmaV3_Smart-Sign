; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude ByteArray.msg.html

(cl:defclass <ByteArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (messageType
    :reader messageType
    :initarg :messageType
    :type cl:string
    :initform "")
   (content
    :reader content
    :initarg :content
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ByteArray (<ByteArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ByteArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ByteArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<ByteArray> is deprecated: use j2735_msgs-msg:ByteArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ByteArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:header-val is deprecated.  Use j2735_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'messageType-val :lambda-list '(m))
(cl:defmethod messageType-val ((m <ByteArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:messageType-val is deprecated.  Use j2735_msgs-msg:messageType instead.")
  (messageType m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <ByteArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:content-val is deprecated.  Use j2735_msgs-msg:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ByteArray>) ostream)
  "Serializes a message object of type '<ByteArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'messageType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'messageType))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ByteArray>) istream)
  "Deserializes a message object of type '<ByteArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'messageType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'messageType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'content) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'content)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ByteArray>)))
  "Returns string type for a message object of type '<ByteArray>"
  "j2735_msgs/ByteArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ByteArray)))
  "Returns string type for a message object of type 'ByteArray"
  "j2735_msgs/ByteArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ByteArray>)))
  "Returns md5sum for a message object of type '<ByteArray>"
  "6b87f87806cca414ef2cd41baf1a8ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ByteArray)))
  "Returns md5sum for a message object of type 'ByteArray"
  "6b87f87806cca414ef2cd41baf1a8ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ByteArray>)))
  "Returns full string definition for message of type '<ByteArray>"
  (cl:format cl:nil "#~%# ByteArray.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Raw binary blobs from Drivers.Comms package and then parse the raw data according to the header. ~%# Currently all messages are DSRC message. ~%# ~%# NOTE: Initial version only considers Part I. Part II will be defined for later use. ~%~%std_msgs/Header header~%~%# Need to know the type before parsing. MessageTypes are MAP, SPAT, TIM, BSM, Mobility.~%string messageType~%~%# The DSRC message content~%uint8[] content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ByteArray)))
  "Returns full string definition for message of type 'ByteArray"
  (cl:format cl:nil "#~%# ByteArray.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Raw binary blobs from Drivers.Comms package and then parse the raw data according to the header. ~%# Currently all messages are DSRC message. ~%# ~%# NOTE: Initial version only considers Part I. Part II will be defined for later use. ~%~%std_msgs/Header header~%~%# Need to know the type before parsing. MessageTypes are MAP, SPAT, TIM, BSM, Mobility.~%string messageType~%~%# The DSRC message content~%uint8[] content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ByteArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'messageType))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'content) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ByteArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ByteArray
    (cl:cons ':header (header msg))
    (cl:cons ':messageType (messageType msg))
    (cl:cons ':content (content msg))
))
