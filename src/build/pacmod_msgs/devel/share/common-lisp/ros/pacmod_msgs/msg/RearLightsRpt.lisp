; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude RearLightsRpt.msg.html

(cl:defclass <RearLightsRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brake_lights_on
    :reader brake_lights_on
    :initarg :brake_lights_on
    :type cl:boolean
    :initform cl:nil)
   (brake_lights_on_is_valid
    :reader brake_lights_on_is_valid
    :initarg :brake_lights_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (reverse_lights_on
    :reader reverse_lights_on
    :initarg :reverse_lights_on
    :type cl:boolean
    :initform cl:nil)
   (reverse_lights_on_is_valid
    :reader reverse_lights_on_is_valid
    :initarg :reverse_lights_on_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RearLightsRpt (<RearLightsRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RearLightsRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RearLightsRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<RearLightsRpt> is deprecated: use pacmod_msgs-msg:RearLightsRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RearLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brake_lights_on-val :lambda-list '(m))
(cl:defmethod brake_lights_on-val ((m <RearLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:brake_lights_on-val is deprecated.  Use pacmod_msgs-msg:brake_lights_on instead.")
  (brake_lights_on m))

(cl:ensure-generic-function 'brake_lights_on_is_valid-val :lambda-list '(m))
(cl:defmethod brake_lights_on_is_valid-val ((m <RearLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:brake_lights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:brake_lights_on_is_valid instead.")
  (brake_lights_on_is_valid m))

(cl:ensure-generic-function 'reverse_lights_on-val :lambda-list '(m))
(cl:defmethod reverse_lights_on-val ((m <RearLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:reverse_lights_on-val is deprecated.  Use pacmod_msgs-msg:reverse_lights_on instead.")
  (reverse_lights_on m))

(cl:ensure-generic-function 'reverse_lights_on_is_valid-val :lambda-list '(m))
(cl:defmethod reverse_lights_on_is_valid-val ((m <RearLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:reverse_lights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:reverse_lights_on_is_valid instead.")
  (reverse_lights_on_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RearLightsRpt>) ostream)
  "Serializes a message object of type '<RearLightsRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_lights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_lights_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse_lights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse_lights_on_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RearLightsRpt>) istream)
  "Deserializes a message object of type '<RearLightsRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'brake_lights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_lights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse_lights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse_lights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RearLightsRpt>)))
  "Returns string type for a message object of type '<RearLightsRpt>"
  "pacmod_msgs/RearLightsRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RearLightsRpt)))
  "Returns string type for a message object of type 'RearLightsRpt"
  "pacmod_msgs/RearLightsRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RearLightsRpt>)))
  "Returns md5sum for a message object of type '<RearLightsRpt>"
  "5adfcaa5d9423963ef8c117009d03bbe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RearLightsRpt)))
  "Returns md5sum for a message object of type 'RearLightsRpt"
  "5adfcaa5d9423963ef8c117009d03bbe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RearLightsRpt>)))
  "Returns full string definition for message of type '<RearLightsRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool brake_lights_on~%bool brake_lights_on_is_valid~%bool reverse_lights_on~%bool reverse_lights_on_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RearLightsRpt)))
  "Returns full string definition for message of type 'RearLightsRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool brake_lights_on~%bool brake_lights_on_is_valid~%bool reverse_lights_on~%bool reverse_lights_on_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RearLightsRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RearLightsRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'RearLightsRpt
    (cl:cons ':header (header msg))
    (cl:cons ':brake_lights_on (brake_lights_on msg))
    (cl:cons ':brake_lights_on_is_valid (brake_lights_on_is_valid msg))
    (cl:cons ':reverse_lights_on (reverse_lights_on msg))
    (cl:cons ':reverse_lights_on_is_valid (reverse_lights_on_is_valid msg))
))
