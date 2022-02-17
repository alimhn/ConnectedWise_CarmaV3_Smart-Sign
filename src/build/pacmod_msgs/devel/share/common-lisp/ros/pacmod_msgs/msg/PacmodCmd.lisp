; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude PacmodCmd.msg.html

(cl:defclass <PacmodCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (f64_cmd
    :reader f64_cmd
    :initarg :f64_cmd
    :type cl:float
    :initform 0.0)
   (ui16_cmd
    :reader ui16_cmd
    :initarg :ui16_cmd
    :type cl:fixnum
    :initform 0)
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (clear
    :reader clear
    :initarg :clear
    :type cl:boolean
    :initform cl:nil)
   (ignore
    :reader ignore
    :initarg :ignore
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PacmodCmd (<PacmodCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PacmodCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PacmodCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<PacmodCmd> is deprecated: use pacmod_msgs-msg:PacmodCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PacmodCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'f64_cmd-val :lambda-list '(m))
(cl:defmethod f64_cmd-val ((m <PacmodCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:f64_cmd-val is deprecated.  Use pacmod_msgs-msg:f64_cmd instead.")
  (f64_cmd m))

(cl:ensure-generic-function 'ui16_cmd-val :lambda-list '(m))
(cl:defmethod ui16_cmd-val ((m <PacmodCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:ui16_cmd-val is deprecated.  Use pacmod_msgs-msg:ui16_cmd instead.")
  (ui16_cmd m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <PacmodCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enable-val is deprecated.  Use pacmod_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'clear-val :lambda-list '(m))
(cl:defmethod clear-val ((m <PacmodCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:clear-val is deprecated.  Use pacmod_msgs-msg:clear instead.")
  (clear m))

(cl:ensure-generic-function 'ignore-val :lambda-list '(m))
(cl:defmethod ignore-val ((m <PacmodCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:ignore-val is deprecated.  Use pacmod_msgs-msg:ignore instead.")
  (ignore m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PacmodCmd>)))
    "Constants for message type '<PacmodCmd>"
  '((:TURN_RIGHT . 0)
    (:TURN_NONE . 1)
    (:TURN_LEFT . 2)
    (:TURN_HAZARDS . 3)
    (:SHIFT_PARK . 0)
    (:SHIFT_REVERSE . 1)
    (:SHIFT_NEUTRAL . 2)
    (:SHIFT_FORWARD . 3)
    (:SHIFT_HIGH . 3)
    (:SHIFT_LOW . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PacmodCmd)))
    "Constants for message type 'PacmodCmd"
  '((:TURN_RIGHT . 0)
    (:TURN_NONE . 1)
    (:TURN_LEFT . 2)
    (:TURN_HAZARDS . 3)
    (:SHIFT_PARK . 0)
    (:SHIFT_REVERSE . 1)
    (:SHIFT_NEUTRAL . 2)
    (:SHIFT_FORWARD . 3)
    (:SHIFT_HIGH . 3)
    (:SHIFT_LOW . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PacmodCmd>) ostream)
  "Serializes a message object of type '<PacmodCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'f64_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ui16_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ui16_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignore) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PacmodCmd>) istream)
  "Deserializes a message object of type '<PacmodCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f64_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ui16_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ui16_cmd)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ignore) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PacmodCmd>)))
  "Returns string type for a message object of type '<PacmodCmd>"
  "pacmod_msgs/PacmodCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PacmodCmd)))
  "Returns string type for a message object of type 'PacmodCmd"
  "pacmod_msgs/PacmodCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PacmodCmd>)))
  "Returns md5sum for a message object of type '<PacmodCmd>"
  "5651e3d1d38e01689421d6d8a4e924f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PacmodCmd)))
  "Returns md5sum for a message object of type 'PacmodCmd"
  "5651e3d1d38e01689421d6d8a4e924f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PacmodCmd>)))
  "Returns full string definition for message of type '<PacmodCmd>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 f64_cmd~%uint16 ui16_cmd~%bool enable~%bool clear~%bool ignore~%~%uint16 TURN_RIGHT = 0~%uint16 TURN_NONE = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_HAZARDS = 3~%~%uint16 SHIFT_PARK = 0~%uint16 SHIFT_REVERSE = 1~%uint16 SHIFT_NEUTRAL = 2~%uint16 SHIFT_FORWARD = 3~%uint16 SHIFT_HIGH = 3 # For Polaris Ranger~%uint16 SHIFT_LOW = 4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PacmodCmd)))
  "Returns full string definition for message of type 'PacmodCmd"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 f64_cmd~%uint16 ui16_cmd~%bool enable~%bool clear~%bool ignore~%~%uint16 TURN_RIGHT = 0~%uint16 TURN_NONE = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_HAZARDS = 3~%~%uint16 SHIFT_PARK = 0~%uint16 SHIFT_REVERSE = 1~%uint16 SHIFT_NEUTRAL = 2~%uint16 SHIFT_FORWARD = 3~%uint16 SHIFT_HIGH = 3 # For Polaris Ranger~%uint16 SHIFT_LOW = 4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PacmodCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PacmodCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PacmodCmd
    (cl:cons ':header (header msg))
    (cl:cons ':f64_cmd (f64_cmd msg))
    (cl:cons ':ui16_cmd (ui16_cmd msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':clear (clear msg))
    (cl:cons ':ignore (ignore msg))
))
