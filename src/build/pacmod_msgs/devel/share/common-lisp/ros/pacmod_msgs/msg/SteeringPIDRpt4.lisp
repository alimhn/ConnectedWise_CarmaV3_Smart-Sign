; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SteeringPIDRpt4.msg.html

(cl:defclass <SteeringPIDRpt4> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (angular_acceleration
    :reader angular_acceleration
    :initarg :angular_acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SteeringPIDRpt4 (<SteeringPIDRpt4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringPIDRpt4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringPIDRpt4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SteeringPIDRpt4> is deprecated: use pacmod_msgs-msg:SteeringPIDRpt4 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteeringPIDRpt4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <SteeringPIDRpt4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:angular_velocity-val is deprecated.  Use pacmod_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'angular_acceleration-val :lambda-list '(m))
(cl:defmethod angular_acceleration-val ((m <SteeringPIDRpt4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:angular_acceleration-val is deprecated.  Use pacmod_msgs-msg:angular_acceleration instead.")
  (angular_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringPIDRpt4>) ostream)
  "Serializes a message object of type '<SteeringPIDRpt4>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringPIDRpt4>) istream)
  "Deserializes a message object of type '<SteeringPIDRpt4>"
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
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_acceleration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringPIDRpt4>)))
  "Returns string type for a message object of type '<SteeringPIDRpt4>"
  "pacmod_msgs/SteeringPIDRpt4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringPIDRpt4)))
  "Returns string type for a message object of type 'SteeringPIDRpt4"
  "pacmod_msgs/SteeringPIDRpt4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringPIDRpt4>)))
  "Returns md5sum for a message object of type '<SteeringPIDRpt4>"
  "2bc4404ec9df7da4ed993a2081a68002")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringPIDRpt4)))
  "Returns md5sum for a message object of type 'SteeringPIDRpt4"
  "2bc4404ec9df7da4ed993a2081a68002")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringPIDRpt4>)))
  "Returns full string definition for message of type '<SteeringPIDRpt4>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 angular_velocity         ~%float64 angular_acceleration~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringPIDRpt4)))
  "Returns full string definition for message of type 'SteeringPIDRpt4"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 angular_velocity         ~%float64 angular_acceleration~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringPIDRpt4>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringPIDRpt4>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringPIDRpt4
    (cl:cons ':header (header msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':angular_acceleration (angular_acceleration msg))
))
