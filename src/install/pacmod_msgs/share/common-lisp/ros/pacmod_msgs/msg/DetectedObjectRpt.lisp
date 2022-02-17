; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude DetectedObjectRpt.msg.html

(cl:defclass <DetectedObjectRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_object_distance_low_res
    :reader front_object_distance_low_res
    :initarg :front_object_distance_low_res
    :type cl:float
    :initform 0.0)
   (front_object_distance_high_res
    :reader front_object_distance_high_res
    :initarg :front_object_distance_high_res
    :type cl:float
    :initform 0.0))
)

(cl:defclass DetectedObjectRpt (<DetectedObjectRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObjectRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObjectRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<DetectedObjectRpt> is deprecated: use pacmod_msgs-msg:DetectedObjectRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObjectRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_object_distance_low_res-val :lambda-list '(m))
(cl:defmethod front_object_distance_low_res-val ((m <DetectedObjectRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_object_distance_low_res-val is deprecated.  Use pacmod_msgs-msg:front_object_distance_low_res instead.")
  (front_object_distance_low_res m))

(cl:ensure-generic-function 'front_object_distance_high_res-val :lambda-list '(m))
(cl:defmethod front_object_distance_high_res-val ((m <DetectedObjectRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_object_distance_high_res-val is deprecated.  Use pacmod_msgs-msg:front_object_distance_high_res instead.")
  (front_object_distance_high_res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObjectRpt>) ostream)
  "Serializes a message object of type '<DetectedObjectRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_object_distance_low_res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_object_distance_high_res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObjectRpt>) istream)
  "Deserializes a message object of type '<DetectedObjectRpt>"
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
    (cl:setf (cl:slot-value msg 'front_object_distance_low_res) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_object_distance_high_res) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObjectRpt>)))
  "Returns string type for a message object of type '<DetectedObjectRpt>"
  "pacmod_msgs/DetectedObjectRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObjectRpt)))
  "Returns string type for a message object of type 'DetectedObjectRpt"
  "pacmod_msgs/DetectedObjectRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObjectRpt>)))
  "Returns md5sum for a message object of type '<DetectedObjectRpt>"
  "bc712b16be2ea6767f3e682c00a854bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObjectRpt)))
  "Returns md5sum for a message object of type 'DetectedObjectRpt"
  "bc712b16be2ea6767f3e682c00a854bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObjectRpt>)))
  "Returns full string definition for message of type '<DetectedObjectRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 front_object_distance_low_res         # Measured distance to nearest front object~%float64 front_object_distance_high_res        # Measured distance to nearest front object (high res)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObjectRpt)))
  "Returns full string definition for message of type 'DetectedObjectRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 front_object_distance_low_res         # Measured distance to nearest front object~%float64 front_object_distance_high_res        # Measured distance to nearest front object (high res)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObjectRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObjectRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObjectRpt
    (cl:cons ':header (header msg))
    (cl:cons ':front_object_distance_low_res (front_object_distance_low_res msg))
    (cl:cons ':front_object_distance_high_res (front_object_distance_high_res msg))
))
