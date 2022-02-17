; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SystemCmdBool.msg.html

(cl:defclass <SystemCmdBool> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (ignore_overrides
    :reader ignore_overrides
    :initarg :ignore_overrides
    :type cl:boolean
    :initform cl:nil)
   (clear_override
    :reader clear_override
    :initarg :clear_override
    :type cl:boolean
    :initform cl:nil)
   (clear_faults
    :reader clear_faults
    :initarg :clear_faults
    :type cl:boolean
    :initform cl:nil)
   (command
    :reader command
    :initarg :command
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SystemCmdBool (<SystemCmdBool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemCmdBool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemCmdBool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SystemCmdBool> is deprecated: use pacmod_msgs-msg:SystemCmdBool instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemCmdBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SystemCmdBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enable-val is deprecated.  Use pacmod_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'ignore_overrides-val :lambda-list '(m))
(cl:defmethod ignore_overrides-val ((m <SystemCmdBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:ignore_overrides-val is deprecated.  Use pacmod_msgs-msg:ignore_overrides instead.")
  (ignore_overrides m))

(cl:ensure-generic-function 'clear_override-val :lambda-list '(m))
(cl:defmethod clear_override-val ((m <SystemCmdBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:clear_override-val is deprecated.  Use pacmod_msgs-msg:clear_override instead.")
  (clear_override m))

(cl:ensure-generic-function 'clear_faults-val :lambda-list '(m))
(cl:defmethod clear_faults-val ((m <SystemCmdBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:clear_faults-val is deprecated.  Use pacmod_msgs-msg:clear_faults instead.")
  (clear_faults m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SystemCmdBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command-val is deprecated.  Use pacmod_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemCmdBool>) ostream)
  "Serializes a message object of type '<SystemCmdBool>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignore_overrides) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_override) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_faults) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemCmdBool>) istream)
  "Deserializes a message object of type '<SystemCmdBool>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ignore_overrides) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_faults) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'command) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemCmdBool>)))
  "Returns string type for a message object of type '<SystemCmdBool>"
  "pacmod_msgs/SystemCmdBool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemCmdBool)))
  "Returns string type for a message object of type 'SystemCmdBool"
  "pacmod_msgs/SystemCmdBool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemCmdBool>)))
  "Returns md5sum for a message object of type '<SystemCmdBool>"
  "ebee3259c3c8f34dec0d921f3c0fa804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemCmdBool)))
  "Returns md5sum for a message object of type 'SystemCmdBool"
  "ebee3259c3c8f34dec0d921f3c0fa804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemCmdBool>)))
  "Returns full string definition for message of type '<SystemCmdBool>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enable~%bool ignore_overrides~%bool clear_override~%bool clear_faults~%~%bool command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemCmdBool)))
  "Returns full string definition for message of type 'SystemCmdBool"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enable~%bool ignore_overrides~%bool clear_override~%bool clear_faults~%~%bool command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemCmdBool>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemCmdBool>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemCmdBool
    (cl:cons ':header (header msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':ignore_overrides (ignore_overrides msg))
    (cl:cons ':clear_override (clear_override msg))
    (cl:cons ':clear_faults (clear_faults msg))
    (cl:cons ':command (command msg))
))
