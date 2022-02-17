; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude EngineRpt.msg.html

(cl:defclass <EngineRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (engine_speed
    :reader engine_speed
    :initarg :engine_speed
    :type cl:float
    :initform 0.0)
   (engine_torque
    :reader engine_torque
    :initarg :engine_torque
    :type cl:float
    :initform 0.0)
   (engine_coolant_temp
    :reader engine_coolant_temp
    :initarg :engine_coolant_temp
    :type cl:fixnum
    :initform 0)
   (engine_speed_avail
    :reader engine_speed_avail
    :initarg :engine_speed_avail
    :type cl:boolean
    :initform cl:nil)
   (engine_torque_avail
    :reader engine_torque_avail
    :initarg :engine_torque_avail
    :type cl:boolean
    :initform cl:nil)
   (engine_coolant_temp_avail
    :reader engine_coolant_temp_avail
    :initarg :engine_coolant_temp_avail
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EngineRpt (<EngineRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EngineRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EngineRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<EngineRpt> is deprecated: use pacmod_msgs-msg:EngineRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'engine_speed-val :lambda-list '(m))
(cl:defmethod engine_speed-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:engine_speed-val is deprecated.  Use pacmod_msgs-msg:engine_speed instead.")
  (engine_speed m))

(cl:ensure-generic-function 'engine_torque-val :lambda-list '(m))
(cl:defmethod engine_torque-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:engine_torque-val is deprecated.  Use pacmod_msgs-msg:engine_torque instead.")
  (engine_torque m))

(cl:ensure-generic-function 'engine_coolant_temp-val :lambda-list '(m))
(cl:defmethod engine_coolant_temp-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:engine_coolant_temp-val is deprecated.  Use pacmod_msgs-msg:engine_coolant_temp instead.")
  (engine_coolant_temp m))

(cl:ensure-generic-function 'engine_speed_avail-val :lambda-list '(m))
(cl:defmethod engine_speed_avail-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:engine_speed_avail-val is deprecated.  Use pacmod_msgs-msg:engine_speed_avail instead.")
  (engine_speed_avail m))

(cl:ensure-generic-function 'engine_torque_avail-val :lambda-list '(m))
(cl:defmethod engine_torque_avail-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:engine_torque_avail-val is deprecated.  Use pacmod_msgs-msg:engine_torque_avail instead.")
  (engine_torque_avail m))

(cl:ensure-generic-function 'engine_coolant_temp_avail-val :lambda-list '(m))
(cl:defmethod engine_coolant_temp_avail-val ((m <EngineRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:engine_coolant_temp_avail-val is deprecated.  Use pacmod_msgs-msg:engine_coolant_temp_avail instead.")
  (engine_coolant_temp_avail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EngineRpt>) ostream)
  "Serializes a message object of type '<EngineRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engine_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engine_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'engine_coolant_temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engine_speed_avail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engine_torque_avail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engine_coolant_temp_avail) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EngineRpt>) istream)
  "Deserializes a message object of type '<EngineRpt>"
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
    (cl:setf (cl:slot-value msg 'engine_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engine_coolant_temp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'engine_speed_avail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'engine_torque_avail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'engine_coolant_temp_avail) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EngineRpt>)))
  "Returns string type for a message object of type '<EngineRpt>"
  "pacmod_msgs/EngineRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EngineRpt)))
  "Returns string type for a message object of type 'EngineRpt"
  "pacmod_msgs/EngineRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EngineRpt>)))
  "Returns md5sum for a message object of type '<EngineRpt>"
  "ce4743585f6b90cb725120aba6ddfafc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EngineRpt)))
  "Returns md5sum for a message object of type 'EngineRpt"
  "ce4743585f6b90cb725120aba6ddfafc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EngineRpt>)))
  "Returns full string definition for message of type '<EngineRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 engine_speed~%float64 engine_torque~%int16 engine_coolant_temp~%bool engine_speed_avail~%bool engine_torque_avail~%bool engine_coolant_temp_avail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EngineRpt)))
  "Returns full string definition for message of type 'EngineRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 engine_speed~%float64 engine_torque~%int16 engine_coolant_temp~%bool engine_speed_avail~%bool engine_torque_avail~%bool engine_coolant_temp_avail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EngineRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EngineRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'EngineRpt
    (cl:cons ':header (header msg))
    (cl:cons ':engine_speed (engine_speed msg))
    (cl:cons ':engine_torque (engine_torque msg))
    (cl:cons ':engine_coolant_temp (engine_coolant_temp msg))
    (cl:cons ':engine_speed_avail (engine_speed_avail msg))
    (cl:cons ':engine_torque_avail (engine_torque_avail msg))
    (cl:cons ':engine_coolant_temp_avail (engine_coolant_temp_avail msg))
))
