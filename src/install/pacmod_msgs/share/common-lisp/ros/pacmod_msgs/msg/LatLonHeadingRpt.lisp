; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude LatLonHeadingRpt.msg.html

(cl:defclass <LatLonHeadingRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latitude_degrees
    :reader latitude_degrees
    :initarg :latitude_degrees
    :type cl:fixnum
    :initform 0)
   (latitude_minutes
    :reader latitude_minutes
    :initarg :latitude_minutes
    :type cl:fixnum
    :initform 0)
   (latitude_seconds
    :reader latitude_seconds
    :initarg :latitude_seconds
    :type cl:fixnum
    :initform 0)
   (longitude_degrees
    :reader longitude_degrees
    :initarg :longitude_degrees
    :type cl:fixnum
    :initform 0)
   (longitude_minutes
    :reader longitude_minutes
    :initarg :longitude_minutes
    :type cl:fixnum
    :initform 0)
   (longitude_seconds
    :reader longitude_seconds
    :initarg :longitude_seconds
    :type cl:fixnum
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0))
)

(cl:defclass LatLonHeadingRpt (<LatLonHeadingRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatLonHeadingRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatLonHeadingRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<LatLonHeadingRpt> is deprecated: use pacmod_msgs-msg:LatLonHeadingRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latitude_degrees-val :lambda-list '(m))
(cl:defmethod latitude_degrees-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:latitude_degrees-val is deprecated.  Use pacmod_msgs-msg:latitude_degrees instead.")
  (latitude_degrees m))

(cl:ensure-generic-function 'latitude_minutes-val :lambda-list '(m))
(cl:defmethod latitude_minutes-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:latitude_minutes-val is deprecated.  Use pacmod_msgs-msg:latitude_minutes instead.")
  (latitude_minutes m))

(cl:ensure-generic-function 'latitude_seconds-val :lambda-list '(m))
(cl:defmethod latitude_seconds-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:latitude_seconds-val is deprecated.  Use pacmod_msgs-msg:latitude_seconds instead.")
  (latitude_seconds m))

(cl:ensure-generic-function 'longitude_degrees-val :lambda-list '(m))
(cl:defmethod longitude_degrees-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:longitude_degrees-val is deprecated.  Use pacmod_msgs-msg:longitude_degrees instead.")
  (longitude_degrees m))

(cl:ensure-generic-function 'longitude_minutes-val :lambda-list '(m))
(cl:defmethod longitude_minutes-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:longitude_minutes-val is deprecated.  Use pacmod_msgs-msg:longitude_minutes instead.")
  (longitude_minutes m))

(cl:ensure-generic-function 'longitude_seconds-val :lambda-list '(m))
(cl:defmethod longitude_seconds-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:longitude_seconds-val is deprecated.  Use pacmod_msgs-msg:longitude_seconds instead.")
  (longitude_seconds m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <LatLonHeadingRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:heading-val is deprecated.  Use pacmod_msgs-msg:heading instead.")
  (heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatLonHeadingRpt>) ostream)
  "Serializes a message object of type '<LatLonHeadingRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'latitude_degrees)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latitude_minutes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latitude_seconds)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'longitude_degrees)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'longitude_minutes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'longitude_seconds)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatLonHeadingRpt>) istream)
  "Deserializes a message object of type '<LatLonHeadingRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latitude_degrees) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latitude_minutes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latitude_seconds)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitude_degrees) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'longitude_minutes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'longitude_seconds)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatLonHeadingRpt>)))
  "Returns string type for a message object of type '<LatLonHeadingRpt>"
  "pacmod_msgs/LatLonHeadingRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatLonHeadingRpt)))
  "Returns string type for a message object of type 'LatLonHeadingRpt"
  "pacmod_msgs/LatLonHeadingRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatLonHeadingRpt>)))
  "Returns md5sum for a message object of type '<LatLonHeadingRpt>"
  "137a7c22b052c703f38a29aa79de4e50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatLonHeadingRpt)))
  "Returns md5sum for a message object of type 'LatLonHeadingRpt"
  "137a7c22b052c703f38a29aa79de4e50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatLonHeadingRpt>)))
  "Returns full string definition for message of type '<LatLonHeadingRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%int8 latitude_degrees~%uint8 latitude_minutes~%uint8 latitude_seconds~%int8 longitude_degrees~%uint8 longitude_minutes~%uint8 longitude_seconds~%float64 heading~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatLonHeadingRpt)))
  "Returns full string definition for message of type 'LatLonHeadingRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%int8 latitude_degrees~%uint8 latitude_minutes~%uint8 latitude_seconds~%int8 longitude_degrees~%uint8 longitude_minutes~%uint8 longitude_seconds~%float64 heading~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatLonHeadingRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatLonHeadingRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'LatLonHeadingRpt
    (cl:cons ':header (header msg))
    (cl:cons ':latitude_degrees (latitude_degrees msg))
    (cl:cons ':latitude_minutes (latitude_minutes msg))
    (cl:cons ':latitude_seconds (latitude_seconds msg))
    (cl:cons ':longitude_degrees (longitude_degrees msg))
    (cl:cons ':longitude_minutes (longitude_minutes msg))
    (cl:cons ':longitude_seconds (longitude_seconds msg))
    (cl:cons ':heading (heading msg))
))
