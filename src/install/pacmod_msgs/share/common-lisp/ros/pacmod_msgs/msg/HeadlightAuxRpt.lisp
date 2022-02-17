; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude HeadlightAuxRpt.msg.html

(cl:defclass <HeadlightAuxRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (headlights_on
    :reader headlights_on
    :initarg :headlights_on
    :type cl:boolean
    :initform cl:nil)
   (headlights_on_is_valid
    :reader headlights_on_is_valid
    :initarg :headlights_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (headlights_on_bright
    :reader headlights_on_bright
    :initarg :headlights_on_bright
    :type cl:boolean
    :initform cl:nil)
   (headlights_on_bright_is_valid
    :reader headlights_on_bright_is_valid
    :initarg :headlights_on_bright_is_valid
    :type cl:boolean
    :initform cl:nil)
   (fog_lights_on
    :reader fog_lights_on
    :initarg :fog_lights_on
    :type cl:boolean
    :initform cl:nil)
   (fog_lights_on_is_valid
    :reader fog_lights_on_is_valid
    :initarg :fog_lights_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (headlights_mode
    :reader headlights_mode
    :initarg :headlights_mode
    :type cl:fixnum
    :initform 0)
   (headlights_mode_is_valid
    :reader headlights_mode_is_valid
    :initarg :headlights_mode_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HeadlightAuxRpt (<HeadlightAuxRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadlightAuxRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadlightAuxRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<HeadlightAuxRpt> is deprecated: use pacmod_msgs-msg:HeadlightAuxRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'headlights_on-val :lambda-list '(m))
(cl:defmethod headlights_on-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:headlights_on-val is deprecated.  Use pacmod_msgs-msg:headlights_on instead.")
  (headlights_on m))

(cl:ensure-generic-function 'headlights_on_is_valid-val :lambda-list '(m))
(cl:defmethod headlights_on_is_valid-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:headlights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:headlights_on_is_valid instead.")
  (headlights_on_is_valid m))

(cl:ensure-generic-function 'headlights_on_bright-val :lambda-list '(m))
(cl:defmethod headlights_on_bright-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:headlights_on_bright-val is deprecated.  Use pacmod_msgs-msg:headlights_on_bright instead.")
  (headlights_on_bright m))

(cl:ensure-generic-function 'headlights_on_bright_is_valid-val :lambda-list '(m))
(cl:defmethod headlights_on_bright_is_valid-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:headlights_on_bright_is_valid-val is deprecated.  Use pacmod_msgs-msg:headlights_on_bright_is_valid instead.")
  (headlights_on_bright_is_valid m))

(cl:ensure-generic-function 'fog_lights_on-val :lambda-list '(m))
(cl:defmethod fog_lights_on-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:fog_lights_on-val is deprecated.  Use pacmod_msgs-msg:fog_lights_on instead.")
  (fog_lights_on m))

(cl:ensure-generic-function 'fog_lights_on_is_valid-val :lambda-list '(m))
(cl:defmethod fog_lights_on_is_valid-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:fog_lights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:fog_lights_on_is_valid instead.")
  (fog_lights_on_is_valid m))

(cl:ensure-generic-function 'headlights_mode-val :lambda-list '(m))
(cl:defmethod headlights_mode-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:headlights_mode-val is deprecated.  Use pacmod_msgs-msg:headlights_mode instead.")
  (headlights_mode m))

(cl:ensure-generic-function 'headlights_mode_is_valid-val :lambda-list '(m))
(cl:defmethod headlights_mode_is_valid-val ((m <HeadlightAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:headlights_mode_is_valid-val is deprecated.  Use pacmod_msgs-msg:headlights_mode_is_valid instead.")
  (headlights_mode_is_valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadlightAuxRpt>)))
    "Constants for message type '<HeadlightAuxRpt>"
  '((:HEADLIGHTS_OFF . 0)
    (:HEADLIGHTS_PARKING . 1)
    (:HEADLIGHTS_MANUAL . 2)
    (:HEADLIGHTS_AUTO . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadlightAuxRpt)))
    "Constants for message type 'HeadlightAuxRpt"
  '((:HEADLIGHTS_OFF . 0)
    (:HEADLIGHTS_PARKING . 1)
    (:HEADLIGHTS_MANUAL . 2)
    (:HEADLIGHTS_AUTO . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadlightAuxRpt>) ostream)
  "Serializes a message object of type '<HeadlightAuxRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'headlights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'headlights_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'headlights_on_bright) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'headlights_on_bright_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fog_lights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fog_lights_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headlights_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'headlights_mode_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadlightAuxRpt>) istream)
  "Deserializes a message object of type '<HeadlightAuxRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'headlights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'headlights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'headlights_on_bright) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'headlights_on_bright_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fog_lights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fog_lights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headlights_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'headlights_mode_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadlightAuxRpt>)))
  "Returns string type for a message object of type '<HeadlightAuxRpt>"
  "pacmod_msgs/HeadlightAuxRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadlightAuxRpt)))
  "Returns string type for a message object of type 'HeadlightAuxRpt"
  "pacmod_msgs/HeadlightAuxRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadlightAuxRpt>)))
  "Returns md5sum for a message object of type '<HeadlightAuxRpt>"
  "512cf6494650979b84da331a515edaf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadlightAuxRpt)))
  "Returns md5sum for a message object of type 'HeadlightAuxRpt"
  "512cf6494650979b84da331a515edaf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadlightAuxRpt>)))
  "Returns full string definition for message of type '<HeadlightAuxRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool headlights_on~%bool headlights_on_is_valid~%bool headlights_on_bright~%bool headlights_on_bright_is_valid~%bool fog_lights_on~%bool fog_lights_on_is_valid~%uint8 headlights_mode~%bool headlights_mode_is_valid~%~%uint8 HEADLIGHTS_OFF = 0~%uint8 HEADLIGHTS_PARKING = 1~%uint8 HEADLIGHTS_MANUAL = 2~%uint8 HEADLIGHTS_AUTO = 3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadlightAuxRpt)))
  "Returns full string definition for message of type 'HeadlightAuxRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool headlights_on~%bool headlights_on_is_valid~%bool headlights_on_bright~%bool headlights_on_bright_is_valid~%bool fog_lights_on~%bool fog_lights_on_is_valid~%uint8 headlights_mode~%bool headlights_mode_is_valid~%~%uint8 HEADLIGHTS_OFF = 0~%uint8 HEADLIGHTS_PARKING = 1~%uint8 HEADLIGHTS_MANUAL = 2~%uint8 HEADLIGHTS_AUTO = 3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadlightAuxRpt>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadlightAuxRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadlightAuxRpt
    (cl:cons ':header (header msg))
    (cl:cons ':headlights_on (headlights_on msg))
    (cl:cons ':headlights_on_is_valid (headlights_on_is_valid msg))
    (cl:cons ':headlights_on_bright (headlights_on_bright msg))
    (cl:cons ':headlights_on_bright_is_valid (headlights_on_bright_is_valid msg))
    (cl:cons ':fog_lights_on (fog_lights_on msg))
    (cl:cons ':fog_lights_on_is_valid (fog_lights_on_is_valid msg))
    (cl:cons ':headlights_mode (headlights_mode msg))
    (cl:cons ':headlights_mode_is_valid (headlights_mode_is_valid msg))
))
