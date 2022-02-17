; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlRequest.msg.html

(cl:defclass <TrafficControlRequest> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (tcrV01
    :reader tcrV01
    :initarg :tcrV01
    :type j2735_msgs-msg:TrafficControlRequestV01
    :initform (cl:make-instance 'j2735_msgs-msg:TrafficControlRequestV01)))
)

(cl:defclass TrafficControlRequest (<TrafficControlRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlRequest> is deprecated: use j2735_msgs-msg:TrafficControlRequest instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <TrafficControlRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'tcrV01-val :lambda-list '(m))
(cl:defmethod tcrV01-val ((m <TrafficControlRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:tcrV01-val is deprecated.  Use j2735_msgs-msg:tcrV01 instead.")
  (tcrV01 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficControlRequest>)))
    "Constants for message type '<TrafficControlRequest>"
  '((:RESERVED . 0)
    (:TCRV01 . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficControlRequest)))
    "Constants for message type 'TrafficControlRequest"
  '((:RESERVED . 0)
    (:TCRV01 . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlRequest>) ostream)
  "Serializes a message object of type '<TrafficControlRequest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tcrV01) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlRequest>) istream)
  "Deserializes a message object of type '<TrafficControlRequest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tcrV01) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlRequest>)))
  "Returns string type for a message object of type '<TrafficControlRequest>"
  "j2735_msgs/TrafficControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlRequest)))
  "Returns string type for a message object of type 'TrafficControlRequest"
  "j2735_msgs/TrafficControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlRequest>)))
  "Returns md5sum for a message object of type '<TrafficControlRequest>"
  "a4cf6cce1430d4d443b6d27e379c1881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlRequest)))
  "Returns md5sum for a message object of type 'TrafficControlRequest"
  "a4cf6cce1430d4d443b6d27e379c1881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlRequest>)))
  "Returns full string definition for message of type '<TrafficControlRequest>"
  (cl:format cl:nil "#~%# TrafficControlRequest.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlRequest ::= CHOICE~%#{~%#	reserved NULL, -- skip version zero~%#	tcrV01 TrafficControlRequestV01, -- traffic control request version 1~%#	...~%#}~%~%uint8 choice~%~%uint8 RESERVED=0~%uint8 TCRV01=1~%~%#tcrV01 ::= TrafficControlRequestV01~%j2735_msgs/TrafficControlRequestV01 tcrV01~%~%================================================================================~%MSG: j2735_msgs/TrafficControlRequestV01~%#~%# TrafficControlRequestV01.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlRequestV01 ::= SEQUENCE~%#{~%#	reqid Id64b, -- randomly generated ephemeral request identifier~%#	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests~%#	scale INTEGER (-3..3), -- vertex offset units 10^n meters~%#	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%#}~%~%~%# reqid ::= Id64b~%j2735_msgs/Id64b reqid~%~%# reqseq ::= INTEGER (0..255)~%uint8 reqseq~%~%# Scale ::= INTEGER (-3..3)  ~%int8 scale~%~%# Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%j2735_msgs/TrafficControlBounds[] bounds~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%================================================================================~%MSG: j2735_msgs/Id64b~%#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%================================================================================~%MSG: j2735_msgs/TrafficControlBounds~%#~%# TrafficControlBounds.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%~%#TrafficControlBounds ::= SEQUENCE~%#{~%#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds~%#	reflon Longitude, -- initial vertex reference longitude~%#	reflat Latitude, -- initial vertex reference latitude~%#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters~%#}~%~%#oldest ::= EpochMins~%uint64 oldest~%~%# reflon ::= INTEGER (-1799999999..1800000000)~%#  -- initial vertex reference longitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflon~%~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%int32 REFLON_UNAVAILABLE = 1800000001~%~%~%# reflat ::= INTEGER (-900000000..900000000)~%#  -- initial vertex reference latitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflat~%~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%int32 REFLAT_UNAVAILABLE = 900000001~%~%#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint ~%j2735_msgs/OffsetPoint[3] offsets~%~%================================================================================~%MSG: j2735_msgs/OffsetPoint~%#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlRequest)))
  "Returns full string definition for message of type 'TrafficControlRequest"
  (cl:format cl:nil "#~%# TrafficControlRequest.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlRequest ::= CHOICE~%#{~%#	reserved NULL, -- skip version zero~%#	tcrV01 TrafficControlRequestV01, -- traffic control request version 1~%#	...~%#}~%~%uint8 choice~%~%uint8 RESERVED=0~%uint8 TCRV01=1~%~%#tcrV01 ::= TrafficControlRequestV01~%j2735_msgs/TrafficControlRequestV01 tcrV01~%~%================================================================================~%MSG: j2735_msgs/TrafficControlRequestV01~%#~%# TrafficControlRequestV01.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlRequestV01 ::= SEQUENCE~%#{~%#	reqid Id64b, -- randomly generated ephemeral request identifier~%#	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests~%#	scale INTEGER (-3..3), -- vertex offset units 10^n meters~%#	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%#}~%~%~%# reqid ::= Id64b~%j2735_msgs/Id64b reqid~%~%# reqseq ::= INTEGER (0..255)~%uint8 reqseq~%~%# Scale ::= INTEGER (-3..3)  ~%int8 scale~%~%# Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds~%j2735_msgs/TrafficControlBounds[] bounds~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%================================================================================~%MSG: j2735_msgs/Id64b~%#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%================================================================================~%MSG: j2735_msgs/TrafficControlBounds~%#~%# TrafficControlBounds.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%~%#TrafficControlBounds ::= SEQUENCE~%#{~%#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds~%#	reflon Longitude, -- initial vertex reference longitude~%#	reflat Latitude, -- initial vertex reference latitude~%#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters~%#}~%~%#oldest ::= EpochMins~%uint64 oldest~%~%# reflon ::= INTEGER (-1799999999..1800000000)~%#  -- initial vertex reference longitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflon~%~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%int32 REFLON_UNAVAILABLE = 1800000001~%~%~%# reflat ::= INTEGER (-900000000..900000000)~%#  -- initial vertex reference latitude~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 reflat~%~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%int32 REFLAT_UNAVAILABLE = 900000001~%~%#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint ~%j2735_msgs/OffsetPoint[3] offsets~%~%================================================================================~%MSG: j2735_msgs/OffsetPoint~%#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlRequest>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tcrV01))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlRequest
    (cl:cons ':choice (choice msg))
    (cl:cons ':tcrV01 (tcrV01 msg))
))
