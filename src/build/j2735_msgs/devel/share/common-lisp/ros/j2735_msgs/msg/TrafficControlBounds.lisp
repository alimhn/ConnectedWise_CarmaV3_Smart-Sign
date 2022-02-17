; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlBounds.msg.html

(cl:defclass <TrafficControlBounds> (roslisp-msg-protocol:ros-message)
  ((oldest
    :reader oldest
    :initarg :oldest
    :type cl:integer
    :initform 0)
   (reflon
    :reader reflon
    :initarg :reflon
    :type cl:integer
    :initform 0)
   (reflat
    :reader reflat
    :initarg :reflat
    :type cl:integer
    :initform 0)
   (offsets
    :reader offsets
    :initarg :offsets
    :type (cl:vector j2735_msgs-msg:OffsetPoint)
   :initform (cl:make-array 3 :element-type 'j2735_msgs-msg:OffsetPoint :initial-element (cl:make-instance 'j2735_msgs-msg:OffsetPoint))))
)

(cl:defclass TrafficControlBounds (<TrafficControlBounds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlBounds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlBounds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlBounds> is deprecated: use j2735_msgs-msg:TrafficControlBounds instead.")))

(cl:ensure-generic-function 'oldest-val :lambda-list '(m))
(cl:defmethod oldest-val ((m <TrafficControlBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:oldest-val is deprecated.  Use j2735_msgs-msg:oldest instead.")
  (oldest m))

(cl:ensure-generic-function 'reflon-val :lambda-list '(m))
(cl:defmethod reflon-val ((m <TrafficControlBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reflon-val is deprecated.  Use j2735_msgs-msg:reflon instead.")
  (reflon m))

(cl:ensure-generic-function 'reflat-val :lambda-list '(m))
(cl:defmethod reflat-val ((m <TrafficControlBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reflat-val is deprecated.  Use j2735_msgs-msg:reflat instead.")
  (reflat m))

(cl:ensure-generic-function 'offsets-val :lambda-list '(m))
(cl:defmethod offsets-val ((m <TrafficControlBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:offsets-val is deprecated.  Use j2735_msgs-msg:offsets instead.")
  (offsets m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficControlBounds>)))
    "Constants for message type '<TrafficControlBounds>"
  '((:REFLON_MAX . 1800000000)
    (:REFLON_MIN . -1799999999)
    (:REFLON_UNAVAILABLE . 1800000001)
    (:REFLAT_MAX . 900000000)
    (:REFLAT_MIN . -900000000)
    (:REFLAT_UNAVAILABLE . 900000001))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficControlBounds)))
    "Constants for message type 'TrafficControlBounds"
  '((:REFLON_MAX . 1800000000)
    (:REFLON_MIN . -1799999999)
    (:REFLON_UNAVAILABLE . 1800000001)
    (:REFLAT_MAX . 900000000)
    (:REFLAT_MIN . -900000000)
    (:REFLAT_UNAVAILABLE . 900000001))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlBounds>) ostream)
  "Serializes a message object of type '<TrafficControlBounds>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'oldest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'oldest)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reflon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reflat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'offsets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlBounds>) istream)
  "Deserializes a message object of type '<TrafficControlBounds>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'oldest)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reflon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reflat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'offsets) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'offsets)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:OffsetPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlBounds>)))
  "Returns string type for a message object of type '<TrafficControlBounds>"
  "j2735_msgs/TrafficControlBounds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlBounds)))
  "Returns string type for a message object of type 'TrafficControlBounds"
  "j2735_msgs/TrafficControlBounds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlBounds>)))
  "Returns md5sum for a message object of type '<TrafficControlBounds>"
  "306f71a9cda43001373a32c7e26b44da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlBounds)))
  "Returns md5sum for a message object of type 'TrafficControlBounds"
  "306f71a9cda43001373a32c7e26b44da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlBounds>)))
  "Returns full string definition for message of type '<TrafficControlBounds>"
  (cl:format cl:nil "#~%# TrafficControlBounds.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%~%#TrafficControlBounds ::= SEQUENCE~%#{~%#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds~%#	reflon Longitude, -- initial vertex reference longitude~%#	reflat Latitude, -- initial vertex reference latitude~%#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters~%#}~%~%#oldest ::= EpochMins~%uint64 oldest~%~%# reflon ::= INTEGER (-1799999999..1800000000)~%#  -- initial vertex reference longitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflon~%~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%int32 REFLON_UNAVAILABLE = 1800000001~%~%~%# reflat ::= INTEGER (-900000000..900000000)~%#  -- initial vertex reference latitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflat~%~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%int32 REFLAT_UNAVAILABLE = 900000001~%~%#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint ~%j2735_msgs/OffsetPoint[3] offsets~%~%================================================================================~%MSG: j2735_msgs/OffsetPoint~%#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlBounds)))
  "Returns full string definition for message of type 'TrafficControlBounds"
  (cl:format cl:nil "#~%# TrafficControlBounds.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%~%#TrafficControlBounds ::= SEQUENCE~%#{~%#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds~%#	reflon Longitude, -- initial vertex reference longitude~%#	reflat Latitude, -- initial vertex reference latitude~%#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters~%#}~%~%#oldest ::= EpochMins~%uint64 oldest~%~%# reflon ::= INTEGER (-1799999999..1800000000)~%#  -- initial vertex reference longitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflon~%~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%int32 REFLON_UNAVAILABLE = 1800000001~%~%~%# reflat ::= INTEGER (-900000000..900000000)~%#  -- initial vertex reference latitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflat~%~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%int32 REFLAT_UNAVAILABLE = 900000001~%~%#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint ~%j2735_msgs/OffsetPoint[3] offsets~%~%================================================================================~%MSG: j2735_msgs/OffsetPoint~%#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlBounds>))
  (cl:+ 0
     8
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlBounds>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlBounds
    (cl:cons ':oldest (oldest msg))
    (cl:cons ':reflon (reflon msg))
    (cl:cons ':reflat (reflat msg))
    (cl:cons ':offsets (offsets msg))
))
