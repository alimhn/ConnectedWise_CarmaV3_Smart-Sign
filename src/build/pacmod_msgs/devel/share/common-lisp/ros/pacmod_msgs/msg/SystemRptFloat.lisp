; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SystemRptFloat.msg.html

(cl:defclass <SystemRptFloat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (override_active
    :reader override_active
    :initarg :override_active
    :type cl:boolean
    :initform cl:nil)
   (command_output_fault
    :reader command_output_fault
    :initarg :command_output_fault
    :type cl:boolean
    :initform cl:nil)
   (input_output_fault
    :reader input_output_fault
    :initarg :input_output_fault
    :type cl:boolean
    :initform cl:nil)
   (output_reported_fault
    :reader output_reported_fault
    :initarg :output_reported_fault
    :type cl:boolean
    :initform cl:nil)
   (pacmod_fault
    :reader pacmod_fault
    :initarg :pacmod_fault
    :type cl:boolean
    :initform cl:nil)
   (vehicle_fault
    :reader vehicle_fault
    :initarg :vehicle_fault
    :type cl:boolean
    :initform cl:nil)
   (manual_input
    :reader manual_input
    :initarg :manual_input
    :type cl:float
    :initform 0.0)
   (command
    :reader command
    :initarg :command
    :type cl:float
    :initform 0.0)
   (output
    :reader output
    :initarg :output
    :type cl:float
    :initform 0.0))
)

(cl:defclass SystemRptFloat (<SystemRptFloat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemRptFloat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemRptFloat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SystemRptFloat> is deprecated: use pacmod_msgs-msg:SystemRptFloat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enabled-val is deprecated.  Use pacmod_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'override_active-val :lambda-list '(m))
(cl:defmethod override_active-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:override_active-val is deprecated.  Use pacmod_msgs-msg:override_active instead.")
  (override_active m))

(cl:ensure-generic-function 'command_output_fault-val :lambda-list '(m))
(cl:defmethod command_output_fault-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command_output_fault-val is deprecated.  Use pacmod_msgs-msg:command_output_fault instead.")
  (command_output_fault m))

(cl:ensure-generic-function 'input_output_fault-val :lambda-list '(m))
(cl:defmethod input_output_fault-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:input_output_fault-val is deprecated.  Use pacmod_msgs-msg:input_output_fault instead.")
  (input_output_fault m))

(cl:ensure-generic-function 'output_reported_fault-val :lambda-list '(m))
(cl:defmethod output_reported_fault-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:output_reported_fault-val is deprecated.  Use pacmod_msgs-msg:output_reported_fault instead.")
  (output_reported_fault m))

(cl:ensure-generic-function 'pacmod_fault-val :lambda-list '(m))
(cl:defmethod pacmod_fault-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:pacmod_fault-val is deprecated.  Use pacmod_msgs-msg:pacmod_fault instead.")
  (pacmod_fault m))

(cl:ensure-generic-function 'vehicle_fault-val :lambda-list '(m))
(cl:defmethod vehicle_fault-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_fault-val is deprecated.  Use pacmod_msgs-msg:vehicle_fault instead.")
  (vehicle_fault m))

(cl:ensure-generic-function 'manual_input-val :lambda-list '(m))
(cl:defmethod manual_input-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:manual_input-val is deprecated.  Use pacmod_msgs-msg:manual_input instead.")
  (manual_input m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command-val is deprecated.  Use pacmod_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <SystemRptFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:output-val is deprecated.  Use pacmod_msgs-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemRptFloat>) ostream)
  "Serializes a message object of type '<SystemRptFloat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command_output_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'input_output_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output_reported_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pacmod_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_fault) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'manual_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemRptFloat>) istream)
  "Deserializes a message object of type '<SystemRptFloat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'override_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'command_output_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'input_output_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'output_reported_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pacmod_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'manual_input) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemRptFloat>)))
  "Returns string type for a message object of type '<SystemRptFloat>"
  "pacmod_msgs/SystemRptFloat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemRptFloat)))
  "Returns string type for a message object of type 'SystemRptFloat"
  "pacmod_msgs/SystemRptFloat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemRptFloat>)))
  "Returns md5sum for a message object of type '<SystemRptFloat>"
  "e3af53d7d085bbad777634bcc2681141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemRptFloat)))
  "Returns md5sum for a message object of type 'SystemRptFloat"
  "e3af53d7d085bbad777634bcc2681141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemRptFloat>)))
  "Returns full string definition for message of type '<SystemRptFloat>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled~%bool override_active~%bool command_output_fault~%bool input_output_fault~%bool output_reported_fault~%bool pacmod_fault~%bool vehicle_fault~%~%float64 manual_input~%float64 command~%float64 output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemRptFloat)))
  "Returns full string definition for message of type 'SystemRptFloat"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled~%bool override_active~%bool command_output_fault~%bool input_output_fault~%bool output_reported_fault~%bool pacmod_fault~%bool vehicle_fault~%~%float64 manual_input~%float64 command~%float64 output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemRptFloat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemRptFloat>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemRptFloat
    (cl:cons ':header (header msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':override_active (override_active msg))
    (cl:cons ':command_output_fault (command_output_fault msg))
    (cl:cons ':input_output_fault (input_output_fault msg))
    (cl:cons ':output_reported_fault (output_reported_fault msg))
    (cl:cons ':pacmod_fault (pacmod_fault msg))
    (cl:cons ':vehicle_fault (vehicle_fault msg))
    (cl:cons ':manual_input (manual_input msg))
    (cl:cons ':command (command msg))
    (cl:cons ':output (output msg))
))
