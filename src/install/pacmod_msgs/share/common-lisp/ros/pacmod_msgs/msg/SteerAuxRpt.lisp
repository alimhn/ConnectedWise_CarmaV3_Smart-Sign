; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SteerAuxRpt.msg.html

(cl:defclass <SteerAuxRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (raw_position
    :reader raw_position
    :initarg :raw_position
    :type cl:float
    :initform 0.0)
   (raw_position_is_valid
    :reader raw_position_is_valid
    :initarg :raw_position_is_valid
    :type cl:boolean
    :initform cl:nil)
   (raw_torque
    :reader raw_torque
    :initarg :raw_torque
    :type cl:float
    :initform 0.0)
   (raw_torque_is_valid
    :reader raw_torque_is_valid
    :initarg :raw_torque_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rotation_rate
    :reader rotation_rate
    :initarg :rotation_rate
    :type cl:float
    :initform 0.0)
   (rotation_rate_is_valid
    :reader rotation_rate_is_valid
    :initarg :rotation_rate_is_valid
    :type cl:boolean
    :initform cl:nil)
   (user_interaction
    :reader user_interaction
    :initarg :user_interaction
    :type cl:boolean
    :initform cl:nil)
   (user_interaction_is_valid
    :reader user_interaction_is_valid
    :initarg :user_interaction_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SteerAuxRpt (<SteerAuxRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerAuxRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerAuxRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SteerAuxRpt> is deprecated: use pacmod_msgs-msg:SteerAuxRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'raw_position-val :lambda-list '(m))
(cl:defmethod raw_position-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_position-val is deprecated.  Use pacmod_msgs-msg:raw_position instead.")
  (raw_position m))

(cl:ensure-generic-function 'raw_position_is_valid-val :lambda-list '(m))
(cl:defmethod raw_position_is_valid-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_position_is_valid-val is deprecated.  Use pacmod_msgs-msg:raw_position_is_valid instead.")
  (raw_position_is_valid m))

(cl:ensure-generic-function 'raw_torque-val :lambda-list '(m))
(cl:defmethod raw_torque-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_torque-val is deprecated.  Use pacmod_msgs-msg:raw_torque instead.")
  (raw_torque m))

(cl:ensure-generic-function 'raw_torque_is_valid-val :lambda-list '(m))
(cl:defmethod raw_torque_is_valid-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_torque_is_valid-val is deprecated.  Use pacmod_msgs-msg:raw_torque_is_valid instead.")
  (raw_torque_is_valid m))

(cl:ensure-generic-function 'rotation_rate-val :lambda-list '(m))
(cl:defmethod rotation_rate-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rotation_rate-val is deprecated.  Use pacmod_msgs-msg:rotation_rate instead.")
  (rotation_rate m))

(cl:ensure-generic-function 'rotation_rate_is_valid-val :lambda-list '(m))
(cl:defmethod rotation_rate_is_valid-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rotation_rate_is_valid-val is deprecated.  Use pacmod_msgs-msg:rotation_rate_is_valid instead.")
  (rotation_rate_is_valid m))

(cl:ensure-generic-function 'user_interaction-val :lambda-list '(m))
(cl:defmethod user_interaction-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:user_interaction-val is deprecated.  Use pacmod_msgs-msg:user_interaction instead.")
  (user_interaction m))

(cl:ensure-generic-function 'user_interaction_is_valid-val :lambda-list '(m))
(cl:defmethod user_interaction_is_valid-val ((m <SteerAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:user_interaction_is_valid-val is deprecated.  Use pacmod_msgs-msg:user_interaction_is_valid instead.")
  (user_interaction_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerAuxRpt>) ostream)
  "Serializes a message object of type '<SteerAuxRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'raw_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_position_is_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'raw_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_torque_is_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotation_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotation_rate_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_interaction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_interaction_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerAuxRpt>) istream)
  "Deserializes a message object of type '<SteerAuxRpt>"
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
    (cl:setf (cl:slot-value msg 'raw_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'raw_position_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'raw_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'raw_torque_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotation_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rotation_rate_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_interaction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_interaction_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerAuxRpt>)))
  "Returns string type for a message object of type '<SteerAuxRpt>"
  "pacmod_msgs/SteerAuxRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerAuxRpt)))
  "Returns string type for a message object of type 'SteerAuxRpt"
  "pacmod_msgs/SteerAuxRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerAuxRpt>)))
  "Returns md5sum for a message object of type '<SteerAuxRpt>"
  "64ab1937ad919cdc25271e7f81c721e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerAuxRpt)))
  "Returns md5sum for a message object of type 'SteerAuxRpt"
  "64ab1937ad919cdc25271e7f81c721e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerAuxRpt>)))
  "Returns full string definition for message of type '<SteerAuxRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 raw_position~%bool raw_position_is_valid~%float64 raw_torque~%bool raw_torque_is_valid~%float64 rotation_rate~%bool rotation_rate_is_valid~%bool user_interaction~%bool user_interaction_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerAuxRpt)))
  "Returns full string definition for message of type 'SteerAuxRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 raw_position~%bool raw_position_is_valid~%float64 raw_torque~%bool raw_torque_is_valid~%float64 rotation_rate~%bool rotation_rate_is_valid~%bool user_interaction~%bool user_interaction_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerAuxRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     8
     1
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerAuxRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerAuxRpt
    (cl:cons ':header (header msg))
    (cl:cons ':raw_position (raw_position msg))
    (cl:cons ':raw_position_is_valid (raw_position_is_valid msg))
    (cl:cons ':raw_torque (raw_torque msg))
    (cl:cons ':raw_torque_is_valid (raw_torque_is_valid msg))
    (cl:cons ':rotation_rate (rotation_rate msg))
    (cl:cons ':rotation_rate_is_valid (rotation_rate_is_valid msg))
    (cl:cons ':user_interaction (user_interaction msg))
    (cl:cons ':user_interaction_is_valid (user_interaction_is_valid msg))
))
