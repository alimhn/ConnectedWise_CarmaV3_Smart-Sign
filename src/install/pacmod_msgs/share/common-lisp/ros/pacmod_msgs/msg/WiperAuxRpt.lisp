; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude WiperAuxRpt.msg.html

(cl:defclass <WiperAuxRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_wiping
    :reader front_wiping
    :initarg :front_wiping
    :type cl:boolean
    :initform cl:nil)
   (front_wiping_is_valid
    :reader front_wiping_is_valid
    :initarg :front_wiping_is_valid
    :type cl:boolean
    :initform cl:nil)
   (front_spraying
    :reader front_spraying
    :initarg :front_spraying
    :type cl:boolean
    :initform cl:nil)
   (front_spraying_is_valid
    :reader front_spraying_is_valid
    :initarg :front_spraying_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_wiping
    :reader rear_wiping
    :initarg :rear_wiping
    :type cl:boolean
    :initform cl:nil)
   (rear_wiping_is_valid
    :reader rear_wiping_is_valid
    :initarg :rear_wiping_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_spraying
    :reader rear_spraying
    :initarg :rear_spraying
    :type cl:boolean
    :initform cl:nil)
   (rear_spraying_is_valid
    :reader rear_spraying_is_valid
    :initarg :rear_spraying_is_valid
    :type cl:boolean
    :initform cl:nil)
   (spray_near_empty
    :reader spray_near_empty
    :initarg :spray_near_empty
    :type cl:boolean
    :initform cl:nil)
   (spray_near_empty_is_valid
    :reader spray_near_empty_is_valid
    :initarg :spray_near_empty_is_valid
    :type cl:boolean
    :initform cl:nil)
   (spray_empty
    :reader spray_empty
    :initarg :spray_empty
    :type cl:boolean
    :initform cl:nil)
   (spray_empty_is_valid
    :reader spray_empty_is_valid
    :initarg :spray_empty_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WiperAuxRpt (<WiperAuxRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WiperAuxRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WiperAuxRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<WiperAuxRpt> is deprecated: use pacmod_msgs-msg:WiperAuxRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_wiping-val :lambda-list '(m))
(cl:defmethod front_wiping-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_wiping-val is deprecated.  Use pacmod_msgs-msg:front_wiping instead.")
  (front_wiping m))

(cl:ensure-generic-function 'front_wiping_is_valid-val :lambda-list '(m))
(cl:defmethod front_wiping_is_valid-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_wiping_is_valid-val is deprecated.  Use pacmod_msgs-msg:front_wiping_is_valid instead.")
  (front_wiping_is_valid m))

(cl:ensure-generic-function 'front_spraying-val :lambda-list '(m))
(cl:defmethod front_spraying-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_spraying-val is deprecated.  Use pacmod_msgs-msg:front_spraying instead.")
  (front_spraying m))

(cl:ensure-generic-function 'front_spraying_is_valid-val :lambda-list '(m))
(cl:defmethod front_spraying_is_valid-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_spraying_is_valid-val is deprecated.  Use pacmod_msgs-msg:front_spraying_is_valid instead.")
  (front_spraying_is_valid m))

(cl:ensure-generic-function 'rear_wiping-val :lambda-list '(m))
(cl:defmethod rear_wiping-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_wiping-val is deprecated.  Use pacmod_msgs-msg:rear_wiping instead.")
  (rear_wiping m))

(cl:ensure-generic-function 'rear_wiping_is_valid-val :lambda-list '(m))
(cl:defmethod rear_wiping_is_valid-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_wiping_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_wiping_is_valid instead.")
  (rear_wiping_is_valid m))

(cl:ensure-generic-function 'rear_spraying-val :lambda-list '(m))
(cl:defmethod rear_spraying-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_spraying-val is deprecated.  Use pacmod_msgs-msg:rear_spraying instead.")
  (rear_spraying m))

(cl:ensure-generic-function 'rear_spraying_is_valid-val :lambda-list '(m))
(cl:defmethod rear_spraying_is_valid-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_spraying_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_spraying_is_valid instead.")
  (rear_spraying_is_valid m))

(cl:ensure-generic-function 'spray_near_empty-val :lambda-list '(m))
(cl:defmethod spray_near_empty-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:spray_near_empty-val is deprecated.  Use pacmod_msgs-msg:spray_near_empty instead.")
  (spray_near_empty m))

(cl:ensure-generic-function 'spray_near_empty_is_valid-val :lambda-list '(m))
(cl:defmethod spray_near_empty_is_valid-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:spray_near_empty_is_valid-val is deprecated.  Use pacmod_msgs-msg:spray_near_empty_is_valid instead.")
  (spray_near_empty_is_valid m))

(cl:ensure-generic-function 'spray_empty-val :lambda-list '(m))
(cl:defmethod spray_empty-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:spray_empty-val is deprecated.  Use pacmod_msgs-msg:spray_empty instead.")
  (spray_empty m))

(cl:ensure-generic-function 'spray_empty_is_valid-val :lambda-list '(m))
(cl:defmethod spray_empty_is_valid-val ((m <WiperAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:spray_empty_is_valid-val is deprecated.  Use pacmod_msgs-msg:spray_empty_is_valid instead.")
  (spray_empty_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WiperAuxRpt>) ostream)
  "Serializes a message object of type '<WiperAuxRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_wiping) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_wiping_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_spraying) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_spraying_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_wiping) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_wiping_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_spraying) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_spraying_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spray_near_empty) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spray_near_empty_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spray_empty) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spray_empty_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WiperAuxRpt>) istream)
  "Deserializes a message object of type '<WiperAuxRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'front_wiping) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_wiping_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_spraying) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_spraying_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_wiping) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_wiping_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_spraying) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_spraying_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'spray_near_empty) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'spray_near_empty_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'spray_empty) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'spray_empty_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WiperAuxRpt>)))
  "Returns string type for a message object of type '<WiperAuxRpt>"
  "pacmod_msgs/WiperAuxRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WiperAuxRpt)))
  "Returns string type for a message object of type 'WiperAuxRpt"
  "pacmod_msgs/WiperAuxRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WiperAuxRpt>)))
  "Returns md5sum for a message object of type '<WiperAuxRpt>"
  "663ea0989c9628effd21f08690caa7d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WiperAuxRpt)))
  "Returns md5sum for a message object of type 'WiperAuxRpt"
  "663ea0989c9628effd21f08690caa7d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WiperAuxRpt>)))
  "Returns full string definition for message of type '<WiperAuxRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool front_wiping~%bool front_wiping_is_valid~%bool front_spraying~%bool front_spraying_is_valid~%bool rear_wiping~%bool rear_wiping_is_valid~%bool rear_spraying~%bool rear_spraying_is_valid~%bool spray_near_empty~%bool spray_near_empty_is_valid~%bool spray_empty~%bool spray_empty_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WiperAuxRpt)))
  "Returns full string definition for message of type 'WiperAuxRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool front_wiping~%bool front_wiping_is_valid~%bool front_spraying~%bool front_spraying_is_valid~%bool rear_wiping~%bool rear_wiping_is_valid~%bool rear_spraying~%bool rear_spraying_is_valid~%bool spray_near_empty~%bool spray_near_empty_is_valid~%bool spray_empty~%bool spray_empty_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WiperAuxRpt>))
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
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WiperAuxRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'WiperAuxRpt
    (cl:cons ':header (header msg))
    (cl:cons ':front_wiping (front_wiping msg))
    (cl:cons ':front_wiping_is_valid (front_wiping_is_valid msg))
    (cl:cons ':front_spraying (front_spraying msg))
    (cl:cons ':front_spraying_is_valid (front_spraying_is_valid msg))
    (cl:cons ':rear_wiping (rear_wiping msg))
    (cl:cons ':rear_wiping_is_valid (rear_wiping_is_valid msg))
    (cl:cons ':rear_spraying (rear_spraying msg))
    (cl:cons ':rear_spraying_is_valid (rear_spraying_is_valid msg))
    (cl:cons ':spray_near_empty (spray_near_empty msg))
    (cl:cons ':spray_near_empty_is_valid (spray_near_empty_is_valid msg))
    (cl:cons ':spray_empty (spray_empty msg))
    (cl:cons ':spray_empty_is_valid (spray_empty_is_valid msg))
))
