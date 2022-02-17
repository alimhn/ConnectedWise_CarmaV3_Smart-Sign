; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude BrakeAuxRpt.msg.html

(cl:defclass <BrakeAuxRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (raw_pedal_pos
    :reader raw_pedal_pos
    :initarg :raw_pedal_pos
    :type cl:float
    :initform 0.0)
   (raw_pedal_pos_is_valid
    :reader raw_pedal_pos_is_valid
    :initarg :raw_pedal_pos_is_valid
    :type cl:boolean
    :initform cl:nil)
   (raw_pedal_force
    :reader raw_pedal_force
    :initarg :raw_pedal_force
    :type cl:float
    :initform 0.0)
   (raw_pedal_force_is_valid
    :reader raw_pedal_force_is_valid
    :initarg :raw_pedal_force_is_valid
    :type cl:boolean
    :initform cl:nil)
   (raw_brake_pressure
    :reader raw_brake_pressure
    :initarg :raw_brake_pressure
    :type cl:float
    :initform 0.0)
   (raw_brake_pressure_is_valid
    :reader raw_brake_pressure_is_valid
    :initarg :raw_brake_pressure_is_valid
    :type cl:boolean
    :initform cl:nil)
   (brake_on_off
    :reader brake_on_off
    :initarg :brake_on_off
    :type cl:boolean
    :initform cl:nil)
   (brake_on_off_is_valid
    :reader brake_on_off_is_valid
    :initarg :brake_on_off_is_valid
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

(cl:defclass BrakeAuxRpt (<BrakeAuxRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeAuxRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeAuxRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<BrakeAuxRpt> is deprecated: use pacmod_msgs-msg:BrakeAuxRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'raw_pedal_pos-val :lambda-list '(m))
(cl:defmethod raw_pedal_pos-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_pedal_pos-val is deprecated.  Use pacmod_msgs-msg:raw_pedal_pos instead.")
  (raw_pedal_pos m))

(cl:ensure-generic-function 'raw_pedal_pos_is_valid-val :lambda-list '(m))
(cl:defmethod raw_pedal_pos_is_valid-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_pedal_pos_is_valid-val is deprecated.  Use pacmod_msgs-msg:raw_pedal_pos_is_valid instead.")
  (raw_pedal_pos_is_valid m))

(cl:ensure-generic-function 'raw_pedal_force-val :lambda-list '(m))
(cl:defmethod raw_pedal_force-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_pedal_force-val is deprecated.  Use pacmod_msgs-msg:raw_pedal_force instead.")
  (raw_pedal_force m))

(cl:ensure-generic-function 'raw_pedal_force_is_valid-val :lambda-list '(m))
(cl:defmethod raw_pedal_force_is_valid-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_pedal_force_is_valid-val is deprecated.  Use pacmod_msgs-msg:raw_pedal_force_is_valid instead.")
  (raw_pedal_force_is_valid m))

(cl:ensure-generic-function 'raw_brake_pressure-val :lambda-list '(m))
(cl:defmethod raw_brake_pressure-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_brake_pressure-val is deprecated.  Use pacmod_msgs-msg:raw_brake_pressure instead.")
  (raw_brake_pressure m))

(cl:ensure-generic-function 'raw_brake_pressure_is_valid-val :lambda-list '(m))
(cl:defmethod raw_brake_pressure_is_valid-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:raw_brake_pressure_is_valid-val is deprecated.  Use pacmod_msgs-msg:raw_brake_pressure_is_valid instead.")
  (raw_brake_pressure_is_valid m))

(cl:ensure-generic-function 'brake_on_off-val :lambda-list '(m))
(cl:defmethod brake_on_off-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:brake_on_off-val is deprecated.  Use pacmod_msgs-msg:brake_on_off instead.")
  (brake_on_off m))

(cl:ensure-generic-function 'brake_on_off_is_valid-val :lambda-list '(m))
(cl:defmethod brake_on_off_is_valid-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:brake_on_off_is_valid-val is deprecated.  Use pacmod_msgs-msg:brake_on_off_is_valid instead.")
  (brake_on_off_is_valid m))

(cl:ensure-generic-function 'user_interaction-val :lambda-list '(m))
(cl:defmethod user_interaction-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:user_interaction-val is deprecated.  Use pacmod_msgs-msg:user_interaction instead.")
  (user_interaction m))

(cl:ensure-generic-function 'user_interaction_is_valid-val :lambda-list '(m))
(cl:defmethod user_interaction_is_valid-val ((m <BrakeAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:user_interaction_is_valid-val is deprecated.  Use pacmod_msgs-msg:user_interaction_is_valid instead.")
  (user_interaction_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeAuxRpt>) ostream)
  "Serializes a message object of type '<BrakeAuxRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'raw_pedal_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_pedal_pos_is_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'raw_pedal_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_pedal_force_is_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'raw_brake_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_brake_pressure_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_on_off) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_on_off_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_interaction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_interaction_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeAuxRpt>) istream)
  "Deserializes a message object of type '<BrakeAuxRpt>"
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
    (cl:setf (cl:slot-value msg 'raw_pedal_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'raw_pedal_pos_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'raw_pedal_force) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'raw_pedal_force_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'raw_brake_pressure) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'raw_brake_pressure_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_on_off) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_on_off_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_interaction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_interaction_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeAuxRpt>)))
  "Returns string type for a message object of type '<BrakeAuxRpt>"
  "pacmod_msgs/BrakeAuxRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeAuxRpt)))
  "Returns string type for a message object of type 'BrakeAuxRpt"
  "pacmod_msgs/BrakeAuxRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeAuxRpt>)))
  "Returns md5sum for a message object of type '<BrakeAuxRpt>"
  "1b24f296f5fabbe64603c0988f5aae5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeAuxRpt)))
  "Returns md5sum for a message object of type 'BrakeAuxRpt"
  "1b24f296f5fabbe64603c0988f5aae5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeAuxRpt>)))
  "Returns full string definition for message of type '<BrakeAuxRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 raw_pedal_pos~%bool raw_pedal_pos_is_valid~%float64 raw_pedal_force~%bool raw_pedal_force_is_valid~%float64 raw_brake_pressure~%bool raw_brake_pressure_is_valid~%bool brake_on_off~%bool brake_on_off_is_valid~%bool user_interaction~%bool user_interaction_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeAuxRpt)))
  "Returns full string definition for message of type 'BrakeAuxRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 raw_pedal_pos~%bool raw_pedal_pos_is_valid~%float64 raw_pedal_force~%bool raw_pedal_force_is_valid~%float64 raw_brake_pressure~%bool raw_brake_pressure_is_valid~%bool brake_on_off~%bool brake_on_off_is_valid~%bool user_interaction~%bool user_interaction_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeAuxRpt>))
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
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeAuxRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeAuxRpt
    (cl:cons ':header (header msg))
    (cl:cons ':raw_pedal_pos (raw_pedal_pos msg))
    (cl:cons ':raw_pedal_pos_is_valid (raw_pedal_pos_is_valid msg))
    (cl:cons ':raw_pedal_force (raw_pedal_force msg))
    (cl:cons ':raw_pedal_force_is_valid (raw_pedal_force_is_valid msg))
    (cl:cons ':raw_brake_pressure (raw_brake_pressure msg))
    (cl:cons ':raw_brake_pressure_is_valid (raw_brake_pressure_is_valid msg))
    (cl:cons ':brake_on_off (brake_on_off msg))
    (cl:cons ':brake_on_off_is_valid (brake_on_off_is_valid msg))
    (cl:cons ':user_interaction (user_interaction msg))
    (cl:cons ':user_interaction_is_valid (user_interaction_is_valid msg))
))
