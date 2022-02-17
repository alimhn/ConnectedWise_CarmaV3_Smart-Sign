; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlRequestV01.msg.html

(cl:defclass <TrafficControlRequestV01> (roslisp-msg-protocol:ros-message)
  ((reqid
    :reader reqid
    :initarg :reqid
    :type j2735_msgs-msg:Id64b
    :initform (cl:make-instance 'j2735_msgs-msg:Id64b))
   (reqseq
    :reader reqseq
    :initarg :reqseq
    :type cl:fixnum
    :initform 0)
   (scale
    :reader scale
    :initarg :scale
    :type cl:fixnum
    :initform 0)
   (bounds
    :reader bounds
    :initarg :bounds
    :type (cl:vector j2735_msgs-msg:TrafficControlBounds)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:TrafficControlBounds :initial-element (cl:make-instance 'j2735_msgs-msg:TrafficControlBounds))))
)

(cl:defclass TrafficControlRequestV01 (<TrafficControlRequestV01>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlRequestV01>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlRequestV01)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlRequestV01> is deprecated: use j2735_msgs-msg:TrafficControlRequestV01 instead.")))

(cl:ensure-generic-function 'reqid-val :lambda-list '(m))
(cl:defmethod reqid-val ((m <TrafficControlRequestV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reqid-val is deprecated.  Use j2735_msgs-msg:reqid instead.")
  (reqid m))

(cl:ensure-generic-function 'reqseq-val :lambda-list '(m))
(cl:defmethod reqseq-val ((m <TrafficControlRequestV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reqseq-val is deprecated.  Use j2735_msgs-msg:reqseq instead.")
  (reqseq m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <TrafficControlRequestV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:scale-val is deprecated.  Use j2735_msgs-msg:scale instead.")
  (scale m))

(cl:ensure-generic-function 'bounds-val :lambda-list '(m))
(cl:defmethod bounds-val ((m <TrafficControlRequestV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:bounds-val is deprecated.  Use j2735_msgs-msg:bounds instead.")
  (bounds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlRequestV01>) ostream)
  "Serializes a message object of type '<TrafficControlRequestV01>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reqid) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reqseq)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'scale)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bounds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bounds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlRequestV01>) istream)
  "Deserializes a message object of type '<TrafficControlRequestV01>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reqid) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reqseq)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scale) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bounds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bounds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:TrafficControlBounds))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlRequestV01>)))
  "Returns string type for a message object of type '<TrafficControlRequestV01>"
  "j2735_msgs/TrafficControlRequestV01")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlRequestV01)))
  "Returns string type for a message object of type 'TrafficControlRequestV01"
  "j2735_msgs/TrafficControlRequestV01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlRequestV01>)))
  "Returns md5sum for a message object of type '<TrafficControlRequestV01>"
  "5c9add83cd83b8c7ef3a3df866b7f621")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlRequestV01)))
  "Returns md5sum for a message object of type 'TrafficControlRequestV01"
  "5c9add83cd83b8c7ef3a3df866b7f621")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlRequestV01>)))
  "Returns full string definition for message of type '<TrafficControlRequestV01>"
  (cl:format cl:nil "#~%# TrafficControlRequestV01.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlRequestV01 ::= SEQUENCE~%#{~%#	reqid Id64b, -- randomly generated ephemeral request identifier~%#	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests~%#	scale INTEGER (-3..3), -- vertex offset units 10^n meters~%#	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%#}~%~%~%# reqid ::= Id64b~%j2735_msgs/Id64b reqid~%~%# reqseq ::= INTEGER (0..255)~%uint8 reqseq~%~%# Scale ::= INTEGER (-3..3)  ~%int8 scale~%~%# Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%j2735_msgs/TrafficControlBounds[] bounds~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%================================================================================~%MSG: j2735_msgs/Id64b~%#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%================================================================================~%MSG: j2735_msgs/TrafficControlBounds~%#~%# TrafficControlBounds.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%~%#TrafficControlBounds ::= SEQUENCE~%#{~%#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds~%#	reflon Longitude, -- initial vertex reference longitude~%#	reflat Latitude, -- initial vertex reference latitude~%#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters~%#}~%~%#oldest ::= EpochMins~%uint64 oldest~%~%# reflon ::= INTEGER (-1799999999..1800000000)~%#  -- initial vertex reference longitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflon~%~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%int32 REFLON_UNAVAILABLE = 1800000001~%~%~%# reflat ::= INTEGER (-900000000..900000000)~%#  -- initial vertex reference latitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflat~%~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%int32 REFLAT_UNAVAILABLE = 900000001~%~%#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint ~%j2735_msgs/OffsetPoint[3] offsets~%~%================================================================================~%MSG: j2735_msgs/OffsetPoint~%#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlRequestV01)))
  "Returns full string definition for message of type 'TrafficControlRequestV01"
  (cl:format cl:nil "#~%# TrafficControlRequestV01.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlRequestV01 ::= SEQUENCE~%#{~%#	reqid Id64b, -- randomly generated ephemeral request identifier~%#	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests~%#	scale INTEGER (-3..3), -- vertex offset units 10^n meters~%#	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%#}~%~%~%# reqid ::= Id64b~%j2735_msgs/Id64b reqid~%~%# reqseq ::= INTEGER (0..255)~%uint8 reqseq~%~%# Scale ::= INTEGER (-3..3)  ~%int8 scale~%~%# Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%j2735_msgs/TrafficControlBounds[] bounds~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%================================================================================~%MSG: j2735_msgs/Id64b~%#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%================================================================================~%MSG: j2735_msgs/TrafficControlBounds~%#~%# TrafficControlBounds.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%~%#TrafficControlBounds ::= SEQUENCE~%#{~%#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds~%#	reflon Longitude, -- initial vertex reference longitude~%#	reflat Latitude, -- initial vertex reference latitude~%#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters~%#}~%~%#oldest ::= EpochMins~%uint64 oldest~%~%# reflon ::= INTEGER (-1799999999..1800000000)~%#  -- initial vertex reference longitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflon~%~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%int32 REFLON_UNAVAILABLE = 1800000001~%~%~%# reflat ::= INTEGER (-900000000..900000000)~%#  -- initial vertex reference latitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflat~%~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%int32 REFLAT_UNAVAILABLE = 900000001~%~%#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint ~%j2735_msgs/OffsetPoint[3] offsets~%~%================================================================================~%MSG: j2735_msgs/OffsetPoint~%#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlRequestV01>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reqid))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bounds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlRequestV01>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlRequestV01
    (cl:cons ':reqid (reqid msg))
    (cl:cons ':reqseq (reqseq msg))
    (cl:cons ':scale (scale msg))
    (cl:cons ':bounds (bounds msg))
))
