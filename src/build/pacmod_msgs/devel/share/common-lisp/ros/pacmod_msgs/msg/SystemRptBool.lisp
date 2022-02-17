; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SystemRptBool.msg.html

(cl:defclass <SystemRptBool> (roslisp-msg-protocol:ros-message)
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
    :type cl:boolean
    :initform cl:nil)
   (command
    :reader command
    :initarg :command
    :type cl:boolean
    :initform cl:nil)
   (output
    :reader output
    :initarg :output
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SystemRptBool (<SystemRptBool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemRptBool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemRptBool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SystemRptBool> is deprecated: use pacmod_msgs-msg:SystemRptBool instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enabled-val is deprecated.  Use pacmod_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'override_active-val :lambda-list '(m))
(cl:defmethod override_active-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:override_active-val is deprecated.  Use pacmod_msgs-msg:override_active instead.")
  (override_active m))

(cl:ensure-generic-function 'command_output_fault-val :lambda-list '(m))
(cl:defmethod command_output_fault-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command_output_fault-val is deprecated.  Use pacmod_msgs-msg:command_output_fault instead.")
  (command_output_fault m))

(cl:ensure-generic-function 'input_output_fault-val :lambda-list '(m))
(cl:defmethod input_output_fault-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:input_output_fault-val is deprecated.  Use pacmod_msgs-msg:input_output_fault instead.")
  (input_output_fault m))

(cl:ensure-generic-function 'output_reported_fault-val :lambda-list '(m))
(cl:defmethod output_reported_fault-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:output_reported_fault-val is deprecated.  Use pacmod_msgs-msg:output_reported_fault instead.")
  (output_reported_fault m))

(cl:ensure-generic-function 'pacmod_fault-val :lambda-list '(m))
(cl:defmethod pacmod_fault-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:pacmod_fault-val is deprecated.  Use pacmod_msgs-msg:pacmod_fault instead.")
  (pacmod_fault m))

(cl:ensure-generic-function 'vehicle_fault-val :lambda-list '(m))
(cl:defmethod vehicle_fault-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_fault-val is deprecated.  Use pacmod_msgs-msg:vehicle_fault instead.")
  (vehicle_fault m))

(cl:ensure-generic-function 'manual_input-val :lambda-list '(m))
(cl:defmethod manual_input-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:manual_input-val is deprecated.  Use pacmod_msgs-msg:manual_input instead.")
  (manual_input m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command-val is deprecated.  Use pacmod_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <SystemRptBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:output-val is deprecated.  Use pacmod_msgs-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemRptBool>) ostream)
  "Serializes a message object of type '<SystemRptBool>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command_output_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'input_output_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output_reported_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pacmod_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_input) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemRptBool>) istream)
  "Deserializes a message object of type '<SystemRptBool>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'override_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'command_output_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'input_output_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'output_reported_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pacmod_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual_input) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'command) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'output) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemRptBool>)))
  "Returns string type for a message object of type '<SystemRptBool>"
  "pacmod_msgs/SystemRptBool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemRptBool)))
  "Returns string type for a message object of type 'SystemRptBool"
  "pacmod_msgs/SystemRptBool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemRptBool>)))
  "Returns md5sum for a message object of type '<SystemRptBool>"
  "843d7a149b32373c9508d0ea0544b94a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemRptBool)))
  "Returns md5sum for a message object of type 'SystemRptBool"
  "843d7a149b32373c9508d0ea0544b94a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemRptBool>)))
  "Returns full string definition for message of type '<SystemRptBool>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled~%bool override_active~%bool command_output_fault~%bool input_output_fault~%bool output_reported_fault~%bool pacmod_fault~%bool vehicle_fault~%~%bool manual_input~%bool command~%bool output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemRptBool)))
  "Returns full string definition for message of type 'SystemRptBool"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled~%bool override_active~%bool command_output_fault~%bool input_output_fault~%bool output_reported_fault~%bool pacmod_fault~%bool vehicle_fault~%~%bool manual_input~%bool command~%bool output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemRptBool>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemRptBool>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemRptBool
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
