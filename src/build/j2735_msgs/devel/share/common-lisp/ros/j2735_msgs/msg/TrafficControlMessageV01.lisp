; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlMessageV01.msg.html

(cl:defclass <TrafficControlMessageV01> (roslisp-msg-protocol:ros-message)
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
   (msgtot
    :reader msgtot
    :initarg :msgtot
    :type cl:fixnum
    :initform 0)
   (msgnum
    :reader msgnum
    :initarg :msgnum
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type j2735_msgs-msg:Id128b
    :initform (cl:make-instance 'j2735_msgs-msg:Id128b))
   (updated
    :reader updated
    :initarg :updated
    :type cl:integer
    :initform 0)
   (package
    :reader package
    :initarg :package
    :type j2735_msgs-msg:TrafficControlPackage
    :initform (cl:make-instance 'j2735_msgs-msg:TrafficControlPackage))
   (package_exists
    :reader package_exists
    :initarg :package_exists
    :type cl:boolean
    :initform cl:nil)
   (params
    :reader params
    :initarg :params
    :type j2735_msgs-msg:TrafficControlParams
    :initform (cl:make-instance 'j2735_msgs-msg:TrafficControlParams))
   (params_exists
    :reader params_exists
    :initarg :params_exists
    :type cl:boolean
    :initform cl:nil)
   (geometry
    :reader geometry
    :initarg :geometry
    :type j2735_msgs-msg:TrafficControlGeometry
    :initform (cl:make-instance 'j2735_msgs-msg:TrafficControlGeometry))
   (geometry_exists
    :reader geometry_exists
    :initarg :geometry_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficControlMessageV01 (<TrafficControlMessageV01>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlMessageV01>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlMessageV01)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlMessageV01> is deprecated: use j2735_msgs-msg:TrafficControlMessageV01 instead.")))

(cl:ensure-generic-function 'reqid-val :lambda-list '(m))
(cl:defmethod reqid-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reqid-val is deprecated.  Use j2735_msgs-msg:reqid instead.")
  (reqid m))

(cl:ensure-generic-function 'reqseq-val :lambda-list '(m))
(cl:defmethod reqseq-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reqseq-val is deprecated.  Use j2735_msgs-msg:reqseq instead.")
  (reqseq m))

(cl:ensure-generic-function 'msgtot-val :lambda-list '(m))
(cl:defmethod msgtot-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:msgtot-val is deprecated.  Use j2735_msgs-msg:msgtot instead.")
  (msgtot m))

(cl:ensure-generic-function 'msgnum-val :lambda-list '(m))
(cl:defmethod msgnum-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:msgnum-val is deprecated.  Use j2735_msgs-msg:msgnum instead.")
  (msgnum m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'updated-val :lambda-list '(m))
(cl:defmethod updated-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:updated-val is deprecated.  Use j2735_msgs-msg:updated instead.")
  (updated m))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:package-val is deprecated.  Use j2735_msgs-msg:package instead.")
  (package m))

(cl:ensure-generic-function 'package_exists-val :lambda-list '(m))
(cl:defmethod package_exists-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:package_exists-val is deprecated.  Use j2735_msgs-msg:package_exists instead.")
  (package_exists m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:params-val is deprecated.  Use j2735_msgs-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'params_exists-val :lambda-list '(m))
(cl:defmethod params_exists-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:params_exists-val is deprecated.  Use j2735_msgs-msg:params_exists instead.")
  (params_exists m))

(cl:ensure-generic-function 'geometry-val :lambda-list '(m))
(cl:defmethod geometry-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:geometry-val is deprecated.  Use j2735_msgs-msg:geometry instead.")
  (geometry m))

(cl:ensure-generic-function 'geometry_exists-val :lambda-list '(m))
(cl:defmethod geometry_exists-val ((m <TrafficControlMessageV01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:geometry_exists-val is deprecated.  Use j2735_msgs-msg:geometry_exists instead.")
  (geometry_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlMessageV01>) ostream)
  "Serializes a message object of type '<TrafficControlMessageV01>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reqid) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reqseq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgtot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgtot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgnum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgnum)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'updated)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'package) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'package_exists) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'params_exists) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geometry) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'geometry_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlMessageV01>) istream)
  "Deserializes a message object of type '<TrafficControlMessageV01>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reqid) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reqseq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgtot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgtot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgnum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgnum)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'updated)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'package) istream)
    (cl:setf (cl:slot-value msg 'package_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
    (cl:setf (cl:slot-value msg 'params_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geometry) istream)
    (cl:setf (cl:slot-value msg 'geometry_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlMessageV01>)))
  "Returns string type for a message object of type '<TrafficControlMessageV01>"
  "j2735_msgs/TrafficControlMessageV01")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlMessageV01)))
  "Returns string type for a message object of type 'TrafficControlMessageV01"
  "j2735_msgs/TrafficControlMessageV01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlMessageV01>)))
  "Returns md5sum for a message object of type '<TrafficControlMessageV01>"
  "4f97b09c87e6e6469c02453e968d2688")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlMessageV01)))
  "Returns md5sum for a message object of type 'TrafficControlMessageV01"
  "4f97b09c87e6e6469c02453e968d2688")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlMessageV01>)))
  "Returns full string definition for message of type '<TrafficControlMessageV01>"
  (cl:format cl:nil "#~%# TrafficControlMessageV01.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlMessageV01 ::= SEQUENCE~%# {~%# 	reqid Id64b, -- ephemeral identifier of originating request~%# 	reqseq INTEGER (0..255), -- sequential counter for originating request~%# 	msgtot INTEGER (0..65535), -- total expected traffic control message responses~%# 	msgnum INTEGER (0..65535), -- message index for each response out of total responses~%# 	id Id128b, -- unique traffic control id~%# 	updated EpochMins, ~%# 	package [0] TrafficControlPackage OPTIONAL, -- related traffic control ids~%# 	params [1] TrafficControlParams OPTIONAL, ~%# 	geometry [2] TrafficControlGeometry OPTIONAL~%# }~%~%# reqid ::= Id64b~%j2735_msgs/Id64b reqid~%~%# reqseq ::= INTEGER (0..255)~%uint8 reqseq~%~%# msgtot INTEGER (0..65535), -- total expected traffic control message responses~%uint16 msgtot~%~%# msgnum INTEGER (0..65535), -- message index for each response out of total responses~%uint16 msgnum~%~%# id Id128b, -- unique traffic control id~%j2735_msgs/Id128b id~%~%# updated EpochMins~%uint64 updated~%~%# package [0] TrafficControlPackage OPTIONAL, -- related traffic control ids~%j2735_msgs/TrafficControlPackage package~%bool package_exists~%~%# params [1] TrafficControlParams OPTIONAL~%j2735_msgs/TrafficControlParams params~%bool params_exists~%~%# geometry [2] TrafficControlGeometry OPTIONAL~%j2735_msgs/TrafficControlGeometry geometry~%bool geometry_exists~%~%================================================================================~%MSG: j2735_msgs/Id64b~%#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%================================================================================~%MSG: j2735_msgs/Id128b~%#~%# Id128b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids~%~%uint8[16] id~%================================================================================~%MSG: j2735_msgs/TrafficControlPackage~%#~%# TrafficControlPackage.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlPackage ::= SEQUENCE~%# {~%# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%# }~%~%# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%string label~%~%bool label_exists~%~%# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%j2735_msgs/Id128b[] tcids~%~%================================================================================~%MSG: j2735_msgs/TrafficControlParams~%#~%# TrafficControlParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlParams ::= SEQUENCE~%# {~%# 	vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%# 	schedule TrafficControlSchedule,~%# 	regulatory BOOLEAN,~%# 	detail TrafficControlDetail~%# }~%~%# vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%j2735_msgs/TrafficControlVehClass[] vclasses~%~%# schedule TrafficControlSchedule~%j2735_msgs/TrafficControlSchedule schedule~%~%# regulatory BOOLEAN~%bool regulatory~%~%# detail TrafficControlDetail~%j2735_msgs/TrafficControlDetail detail~%~%~%================================================================================~%MSG: j2735_msgs/TrafficControlVehClass~%#~%# TrafficControlVehClass.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlVehClass ::= ENUMERATED~%# {~%# 	any, ~%# 	pedestrian,~%# 	bicycle,~%# 	micromobile,~%# 	motorcycle,~%# 	passenger-car,~%# 	light-truck-van,~%# 	bus,~%# 	two-axle-six-tire-single-unit-truck,~%# 	three-axle-single-unit-truck,~%# 	four-or-more-axle-single-unit-truck,~%# 	four-or-fewer-axle-single-trailer-truck,~%# 	five-axle-single-trailer-truck,~%# 	six-or-more-axle-single-trailer-truck,~%# 	five-or-fewer-axle-multi-trailer-truck,~%# 	six-axle-multi-trailer-truck,~%# 	seven-or-more-axle-multi-trailer-truck,~%# 	rail,~%# 	unclassified, ~%# 	...~%# }~%~%uint8 vehicle_class~%~%# enumeration values for vehicle_class:~%~%uint8 ANY = 0~%uint8 PEDESTRIAN = 1~%uint8 BICYCLE = 2~%uint8 MICROMOBILE = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 LIGHT_TRUCK_VAN = 6~%uint8 BUS = 7~%uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8~%uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9~%uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10~%uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11~%uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12~%uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13~%uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14~%uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15~%uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16~%uint8 RAIL = 17~%uint8 UNCLASSIFIED = 18~%================================================================================~%MSG: j2735_msgs/TrafficControlSchedule~%#~%# TrafficControlSchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlSchedule ::= SEQUENCE~%# {~%# 	start EpochMins, -- start time required, even if it's the epoch value zero~%# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%# 	dow [1] DayOfWeek OPTIONAL, ~%# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%# 	repeat [3] RepeatParams OPTIONAL~%# }~%~%# start EpochMins, -- start time required, even if it's the epoch value zero~%uint64 start~%~%# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%uint64 end~%bool end_exists~%~%# dow [1] DayOfWeek OPTIONAL, ~%j2735_msgs/DayOfWeek dow~%bool dow_exists~%~%# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%j2735_msgs/DailySchedule[] between~%bool between_exists~%~%# repeat [3] RepeatParams OPTIONAL~%j2735_msgs/RepeatParams repeat~%bool repeat_exists~%~%================================================================================~%MSG: j2735_msgs/DayOfWeek~%#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%================================================================================~%MSG: j2735_msgs/DailySchedule~%#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%================================================================================~%MSG: j2735_msgs/RepeatParams~%#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%================================================================================~%MSG: j2735_msgs/TrafficControlDetail~%#~%# TrafficControlDetail.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlDetail ::= CHOICE~%#{~%#	signal OCTET STRING SIZE(0..63),~%#	stop NULL,~%#	yield NULL,~%#	notowing NULL,~%#	restricted NULL,~%#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},~%#	chains ENUMERATED {no, permitted, required},~%#	direction ENUMERATED {forward, reverse},~%#	lataffinity ENUMERATED {left, right},~%#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},~%#	parking ENUMERATED {no, parallel, angled},~%#	minspeed INTEGER (0..1023), -- tenths of m/s~%#	maxspeed INTEGER (0..1023), -- tenths of m/s~%#	minhdwy INTEGER (0..2047), -- tenths of meters~%#	maxvehmass INTEGER (0..65535), -- kg~%#	maxvehheight INTEGER (0..127), -- tenths of meters~%#	maxvehwidth INTEGER (0..127), -- tenths of meters~%#	maxvehlength INTEGER (0..1023), -- tenths of meters~%#	maxvehaxles INTEGER (2..15),~%#	minvehocc INTEGER (1..15), ~%#	...~%#}~%~%~%uint8 choice~%~%# enumeration values for choice:~%~%uint8 SIGNAL_CHOICE =0~%uint8 STOP_CHOICE =1~%uint8 YIELD_CHOICE =2~%uint8 NOTOWING_CHOICE =3~%uint8 RESTRICTED_CHOICE =4~%uint8 CLOSED_CHOICE =5~%uint8 CHAINS_CHOICE =6~%uint8 DIRECTION_CHOICE =7~%uint8 LATAFFINITY_CHOICE =8~%uint8 LATPERM_CHOICE =9~%uint8 PARKING_CHOICE =10~%uint8 MINSPEED_CHOICE =11~%uint8 MAXSPEED_CHOICE =12~%uint8 MINHDWY_CHOICE =13~%uint8 MAXVEHMASS_CHOICE =14~%uint8 MAXVEHHEIGHT_CHOICE =15~%uint8 MAXVEHWIDTH_CHOICE =16~%uint8 MAXVEHLENGTH_CHOICE =17~%uint8 MAXVEHAXLES_CHOICE =18~%uint8 MINVEHOCC_CHOICE =19~%~%# signal ::= OCTET STRING SIZE(0..63)~%uint8[] signal~%~%#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}~%~%uint8 closed~%~%# enumeration values for closed:~%~%uint8 OPEN=0~%~%uint8 CLOSED=1~%~%uint8 TAPERLEFT=2~%~%uint8 TAPERRIGHT=3~%~%uint8 OPENLEFT=4~%~%uint8 OPENRIGHT=5~%~%#chains ENUMERATED {no, permitted, required}~%~%uint8 chains~%~%# enumeration values for chains:~%~%uint8 NO=0~%~%uint8 PERMITTED=1~%~%uint8 REQUIRED=2~%~%~%#direction ENUMERATED {forward, reverse}~%~%uint8 direction~%~%# enumeration values for direction:~%~%uint8 FORWARD=0~%~%uint8 REVERSE=1~%~%#lataffinity ENUMERATED {left, right}~%~%uint8 lataffinity~%~%# enumeration values for lataffinity:~%~%uint8 LEFT=0~%~%uint8 RIGHT=1~%~%#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}~%~%uint8[2] latperm~%~%# enumeration values for latperm:~%~%uint8 NONE=0~%~%# uint8 PERMITTED=1 redeclaration~%~%uint8 PASSINGONLY=2~%~%uint8 EMERGENCYONLY=3~%~%#parking ENUMERATED {no, parallel, angled}~%~%uint8 parking~%~%# enumeration values for parking:~%~%# uint8 NO=0 redeclaration~%~%uint8 PARALLEL=1~%~%uint8 ANGLED=2~%~%#minspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 minspeed~%~%#maxspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 maxspeed~%~%#minhdwy ::= INTEGER (0..2047), -- tenths of meters~%uint16 minhdwy~%~%#maxvehmass ::= INTEGER (0..65535), -- kg~%uint16 maxvehmass~%~%#maxvehheight ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehheight~%~%#maxvehwidth ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehwidth~%~%#maxvehlength ::= INTEGER (0..1023), -- tenths of meters~%uint16 maxvehlength~%~%#maxvehaxles ::= INTEGER (2..15)~%uint8 maxvehaxles~%~%#minvehocc ::= INTEGER (1..15)~%uint8 minvehocc~%~%~%~%~%~%================================================================================~%MSG: j2735_msgs/TrafficControlGeometry~%#~%# TrafficControlGeometry.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlGeometry ::= SEQUENCE~%# {~%# 	proj IA5String (SIZE(0..63)),~%# 	datum IA5String (SIZE(0..63)),~%# 	reftime EpochMins,~%# 	reflon Longitude,~%# 	reflat Latitude,~%# 	refelv Elevation, -- decimeter offset -4096 from reference datum~%# 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees~%# 	nodes SEQUENCE (SIZE(1..255)) OF PathNode~%# }~%~%# proj IA5String (SIZE(0..63)),~%string proj~%~%# datum IA5String (SIZE(0..63)),~%string datum~%~%# reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC~%uint64 reftime~%~%# reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null~%int32 reflon~%~%int32 REFLON_UNAVAILABLE = 1800000001~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%~%# reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null~%int32 reflat~%~%int32 REFLAT_UNAVAILABLE = 900000001~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%~%# refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum~%int32 refelv~%~%int32 REFELV_UNKNOWN = 0~%int32 REFELV_MAX = 65535~%int32 REFELV_MIN = 1~%~%# heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees~%uint16 heading~%uint16 HEADING_MAX = 3599~%uint16 HEADING_MIN = 0~%~%# nodes SEQUENCE (SIZE(1..255)) OF PathNode~%j2735_msgs/PathNode[] nodes~%~%~%~%================================================================================~%MSG: j2735_msgs/PathNode~%#~%# PathNode.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# @author Misheel Bayartsengel~%# @version 0.1~%#~%# The positive x direction proceeds eastward, positive y proceeds~%# northward, and positive z proceeds away from the center of the Earth. ~%~%# X ::= INTEGER (-32768..32767)~%#   -- units are in cm~%int16 x~%int16 y~%int16 z~%~%bool z_exists~%~%# Width ::= INTEGER (-128..127)~%#   -- units are in cm~%int8 width~%bool width_exists~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlMessageV01)))
  "Returns full string definition for message of type 'TrafficControlMessageV01"
  (cl:format cl:nil "#~%# TrafficControlMessageV01.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlMessageV01 ::= SEQUENCE~%# {~%# 	reqid Id64b, -- ephemeral identifier of originating request~%# 	reqseq INTEGER (0..255), -- sequential counter for originating request~%# 	msgtot INTEGER (0..65535), -- total expected traffic control message responses~%# 	msgnum INTEGER (0..65535), -- message index for each response out of total responses~%# 	id Id128b, -- unique traffic control id~%# 	updated EpochMins, ~%# 	package [0] TrafficControlPackage OPTIONAL, -- related traffic control ids~%# 	params [1] TrafficControlParams OPTIONAL, ~%# 	geometry [2] TrafficControlGeometry OPTIONAL~%# }~%~%# reqid ::= Id64b~%j2735_msgs/Id64b reqid~%~%# reqseq ::= INTEGER (0..255)~%uint8 reqseq~%~%# msgtot INTEGER (0..65535), -- total expected traffic control message responses~%uint16 msgtot~%~%# msgnum INTEGER (0..65535), -- message index for each response out of total responses~%uint16 msgnum~%~%# id Id128b, -- unique traffic control id~%j2735_msgs/Id128b id~%~%# updated EpochMins~%uint64 updated~%~%# package [0] TrafficControlPackage OPTIONAL, -- related traffic control ids~%j2735_msgs/TrafficControlPackage package~%bool package_exists~%~%# params [1] TrafficControlParams OPTIONAL~%j2735_msgs/TrafficControlParams params~%bool params_exists~%~%# geometry [2] TrafficControlGeometry OPTIONAL~%j2735_msgs/TrafficControlGeometry geometry~%bool geometry_exists~%~%================================================================================~%MSG: j2735_msgs/Id64b~%#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%================================================================================~%MSG: j2735_msgs/Id128b~%#~%# Id128b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids~%~%uint8[16] id~%================================================================================~%MSG: j2735_msgs/TrafficControlPackage~%#~%# TrafficControlPackage.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlPackage ::= SEQUENCE~%# {~%# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%# }~%~%# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%string label~%~%bool label_exists~%~%# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%j2735_msgs/Id128b[] tcids~%~%================================================================================~%MSG: j2735_msgs/TrafficControlParams~%#~%# TrafficControlParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlParams ::= SEQUENCE~%# {~%# 	vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%# 	schedule TrafficControlSchedule,~%# 	regulatory BOOLEAN,~%# 	detail TrafficControlDetail~%# }~%~%# vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%j2735_msgs/TrafficControlVehClass[] vclasses~%~%# schedule TrafficControlSchedule~%j2735_msgs/TrafficControlSchedule schedule~%~%# regulatory BOOLEAN~%bool regulatory~%~%# detail TrafficControlDetail~%j2735_msgs/TrafficControlDetail detail~%~%~%================================================================================~%MSG: j2735_msgs/TrafficControlVehClass~%#~%# TrafficControlVehClass.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlVehClass ::= ENUMERATED~%# {~%# 	any, ~%# 	pedestrian,~%# 	bicycle,~%# 	micromobile,~%# 	motorcycle,~%# 	passenger-car,~%# 	light-truck-van,~%# 	bus,~%# 	two-axle-six-tire-single-unit-truck,~%# 	three-axle-single-unit-truck,~%# 	four-or-more-axle-single-unit-truck,~%# 	four-or-fewer-axle-single-trailer-truck,~%# 	five-axle-single-trailer-truck,~%# 	six-or-more-axle-single-trailer-truck,~%# 	five-or-fewer-axle-multi-trailer-truck,~%# 	six-axle-multi-trailer-truck,~%# 	seven-or-more-axle-multi-trailer-truck,~%# 	rail,~%# 	unclassified, ~%# 	...~%# }~%~%uint8 vehicle_class~%~%# enumeration values for vehicle_class:~%~%uint8 ANY = 0~%uint8 PEDESTRIAN = 1~%uint8 BICYCLE = 2~%uint8 MICROMOBILE = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 LIGHT_TRUCK_VAN = 6~%uint8 BUS = 7~%uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8~%uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9~%uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10~%uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11~%uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12~%uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13~%uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14~%uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15~%uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16~%uint8 RAIL = 17~%uint8 UNCLASSIFIED = 18~%================================================================================~%MSG: j2735_msgs/TrafficControlSchedule~%#~%# TrafficControlSchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlSchedule ::= SEQUENCE~%# {~%# 	start EpochMins, -- start time required, even if it's the epoch value zero~%# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%# 	dow [1] DayOfWeek OPTIONAL, ~%# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%# 	repeat [3] RepeatParams OPTIONAL~%# }~%~%# start EpochMins, -- start time required, even if it's the epoch value zero~%uint64 start~%~%# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%uint64 end~%bool end_exists~%~%# dow [1] DayOfWeek OPTIONAL, ~%j2735_msgs/DayOfWeek dow~%bool dow_exists~%~%# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%j2735_msgs/DailySchedule[] between~%bool between_exists~%~%# repeat [3] RepeatParams OPTIONAL~%j2735_msgs/RepeatParams repeat~%bool repeat_exists~%~%================================================================================~%MSG: j2735_msgs/DayOfWeek~%#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%================================================================================~%MSG: j2735_msgs/DailySchedule~%#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%================================================================================~%MSG: j2735_msgs/RepeatParams~%#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%================================================================================~%MSG: j2735_msgs/TrafficControlDetail~%#~%# TrafficControlDetail.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlDetail ::= CHOICE~%#{~%#	signal OCTET STRING SIZE(0..63),~%#	stop NULL,~%#	yield NULL,~%#	notowing NULL,~%#	restricted NULL,~%#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},~%#	chains ENUMERATED {no, permitted, required},~%#	direction ENUMERATED {forward, reverse},~%#	lataffinity ENUMERATED {left, right},~%#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},~%#	parking ENUMERATED {no, parallel, angled},~%#	minspeed INTEGER (0..1023), -- tenths of m/s~%#	maxspeed INTEGER (0..1023), -- tenths of m/s~%#	minhdwy INTEGER (0..2047), -- tenths of meters~%#	maxvehmass INTEGER (0..65535), -- kg~%#	maxvehheight INTEGER (0..127), -- tenths of meters~%#	maxvehwidth INTEGER (0..127), -- tenths of meters~%#	maxvehlength INTEGER (0..1023), -- tenths of meters~%#	maxvehaxles INTEGER (2..15),~%#	minvehocc INTEGER (1..15), ~%#	...~%#}~%~%~%uint8 choice~%~%# enumeration values for choice:~%~%uint8 SIGNAL_CHOICE =0~%uint8 STOP_CHOICE =1~%uint8 YIELD_CHOICE =2~%uint8 NOTOWING_CHOICE =3~%uint8 RESTRICTED_CHOICE =4~%uint8 CLOSED_CHOICE =5~%uint8 CHAINS_CHOICE =6~%uint8 DIRECTION_CHOICE =7~%uint8 LATAFFINITY_CHOICE =8~%uint8 LATPERM_CHOICE =9~%uint8 PARKING_CHOICE =10~%uint8 MINSPEED_CHOICE =11~%uint8 MAXSPEED_CHOICE =12~%uint8 MINHDWY_CHOICE =13~%uint8 MAXVEHMASS_CHOICE =14~%uint8 MAXVEHHEIGHT_CHOICE =15~%uint8 MAXVEHWIDTH_CHOICE =16~%uint8 MAXVEHLENGTH_CHOICE =17~%uint8 MAXVEHAXLES_CHOICE =18~%uint8 MINVEHOCC_CHOICE =19~%~%# signal ::= OCTET STRING SIZE(0..63)~%uint8[] signal~%~%#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}~%~%uint8 closed~%~%# enumeration values for closed:~%~%uint8 OPEN=0~%~%uint8 CLOSED=1~%~%uint8 TAPERLEFT=2~%~%uint8 TAPERRIGHT=3~%~%uint8 OPENLEFT=4~%~%uint8 OPENRIGHT=5~%~%#chains ENUMERATED {no, permitted, required}~%~%uint8 chains~%~%# enumeration values for chains:~%~%uint8 NO=0~%~%uint8 PERMITTED=1~%~%uint8 REQUIRED=2~%~%~%#direction ENUMERATED {forward, reverse}~%~%uint8 direction~%~%# enumeration values for direction:~%~%uint8 FORWARD=0~%~%uint8 REVERSE=1~%~%#lataffinity ENUMERATED {left, right}~%~%uint8 lataffinity~%~%# enumeration values for lataffinity:~%~%uint8 LEFT=0~%~%uint8 RIGHT=1~%~%#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}~%~%uint8[2] latperm~%~%# enumeration values for latperm:~%~%uint8 NONE=0~%~%# uint8 PERMITTED=1 redeclaration~%~%uint8 PASSINGONLY=2~%~%uint8 EMERGENCYONLY=3~%~%#parking ENUMERATED {no, parallel, angled}~%~%uint8 parking~%~%# enumeration values for parking:~%~%# uint8 NO=0 redeclaration~%~%uint8 PARALLEL=1~%~%uint8 ANGLED=2~%~%#minspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 minspeed~%~%#maxspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 maxspeed~%~%#minhdwy ::= INTEGER (0..2047), -- tenths of meters~%uint16 minhdwy~%~%#maxvehmass ::= INTEGER (0..65535), -- kg~%uint16 maxvehmass~%~%#maxvehheight ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehheight~%~%#maxvehwidth ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehwidth~%~%#maxvehlength ::= INTEGER (0..1023), -- tenths of meters~%uint16 maxvehlength~%~%#maxvehaxles ::= INTEGER (2..15)~%uint8 maxvehaxles~%~%#minvehocc ::= INTEGER (1..15)~%uint8 minvehocc~%~%~%~%~%~%================================================================================~%MSG: j2735_msgs/TrafficControlGeometry~%#~%# TrafficControlGeometry.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlGeometry ::= SEQUENCE~%# {~%# 	proj IA5String (SIZE(0..63)),~%# 	datum IA5String (SIZE(0..63)),~%# 	reftime EpochMins,~%# 	reflon Longitude,~%# 	reflat Latitude,~%# 	refelv Elevation, -- decimeter offset -4096 from reference datum~%# 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees~%# 	nodes SEQUENCE (SIZE(1..255)) OF PathNode~%# }~%~%# proj IA5String (SIZE(0..63)),~%string proj~%~%# datum IA5String (SIZE(0..63)),~%string datum~%~%# reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC~%uint64 reftime~%~%# reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null~%int32 reflon~%~%int32 REFLON_UNAVAILABLE = 1800000001~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%~%# reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null~%int32 reflat~%~%int32 REFLAT_UNAVAILABLE = 900000001~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%~%# refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum~%int32 refelv~%~%int32 REFELV_UNKNOWN = 0~%int32 REFELV_MAX = 65535~%int32 REFELV_MIN = 1~%~%# heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees~%uint16 heading~%uint16 HEADING_MAX = 3599~%uint16 HEADING_MIN = 0~%~%# nodes SEQUENCE (SIZE(1..255)) OF PathNode~%j2735_msgs/PathNode[] nodes~%~%~%~%================================================================================~%MSG: j2735_msgs/PathNode~%#~%# PathNode.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# @author Misheel Bayartsengel~%# @version 0.1~%#~%# The positive x direction proceeds eastward, positive y proceeds~%# northward, and positive z proceeds away from the center of the Earth. ~%~%# X ::= INTEGER (-32768..32767)~%#   -- units are in cm~%int16 x~%int16 y~%int16 z~%~%bool z_exists~%~%# Width ::= INTEGER (-128..127)~%#   -- units are in cm~%int8 width~%bool width_exists~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlMessageV01>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reqid))
     1
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'package))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geometry))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlMessageV01>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlMessageV01
    (cl:cons ':reqid (reqid msg))
    (cl:cons ':reqseq (reqseq msg))
    (cl:cons ':msgtot (msgtot msg))
    (cl:cons ':msgnum (msgnum msg))
    (cl:cons ':id (id msg))
    (cl:cons ':updated (updated msg))
    (cl:cons ':package (package msg))
    (cl:cons ':package_exists (package_exists msg))
    (cl:cons ':params (params msg))
    (cl:cons ':params_exists (params_exists msg))
    (cl:cons ':geometry (geometry msg))
    (cl:cons ':geometry_exists (geometry_exists msg))
))
