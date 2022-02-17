; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude PositionWithSpeed.msg.html

(cl:defclass <PositionWithSpeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angular_position
    :reader angular_position
    :initarg :angular_position
    :type cl:float
    :initform 0.0)
   (angular_velocity_limit
    :reader angular_velocity_limit
    :initarg :angular_velocity_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionWithSpeed (<PositionWithSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionWithSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionWithSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<PositionWithSpeed> is deprecated: use pacmod_msgs-msg:PositionWithSpeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionWithSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angular_position-val :lambda-list '(m))
(cl:defmethod angular_position-val ((m <PositionWithSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:angular_position-val is deprecated.  Use pacmod_msgs-msg:angular_position instead.")
  (angular_position m))

(cl:ensure-generic-function 'angular_velocity_limit-val :lambda-list '(m))
(cl:defmethod angular_velocity_limit-val ((m <PositionWithSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:angular_velocity_limit-val is deprecated.  Use pacmod_msgs-msg:angular_velocity_limit instead.")
  (angular_velocity_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionWithSpeed>) ostream)
  "Serializes a message object of type '<PositionWithSpeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_velocity_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionWithSpeed>) istream)
  "Deserializes a message object of type '<PositionWithSpeed>"
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
    (cl:setf (cl:slot-value msg 'angular_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_limit) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionWithSpeed>)))
  "Returns string type for a message object of type '<PositionWithSpeed>"
  "pacmod_msgs/PositionWithSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionWithSpeed)))
  "Returns string type for a message object of type 'PositionWithSpeed"
  "pacmod_msgs/PositionWithSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionWithSpeed>)))
  "Returns md5sum for a message object of type '<PositionWithSpeed>"
  "7e96a8c8cbc8234d4d2c87880ddb7cfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionWithSpeed)))
  "Returns md5sum for a message object of type 'PositionWithSpeed"
  "7e96a8c8cbc8234d4d2c87880ddb7cfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionWithSpeed>)))
  "Returns full string definition for message of type '<PositionWithSpeed>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 angular_position                # The desired rotational position of the motor shaft about it's z axis in Radians~%float64 angular_velocity_limit          # The desired speed limit to acheive the desired position in Radians/second (z axis)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionWithSpeed)))
  "Returns full string definition for message of type 'PositionWithSpeed"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 angular_position                # The desired rotational position of the motor shaft about it's z axis in Radians~%float64 angular_velocity_limit          # The desired speed limit to acheive the desired position in Radians/second (z axis)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionWithSpeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionWithSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionWithSpeed
    (cl:cons ':header (header msg))
    (cl:cons ':angular_position (angular_position msg))
    (cl:cons ':angular_velocity_limit (angular_velocity_limit msg))
))
