; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlParams.msg.html

(cl:defclass <TrafficControlParams> (roslisp-msg-protocol:ros-message)
  ((vclasses
    :reader vclasses
    :initarg :vclasses
    :type (cl:vector j2735_msgs-msg:TrafficControlVehClass)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:TrafficControlVehClass :initial-element (cl:make-instance 'j2735_msgs-msg:TrafficControlVehClass)))
   (schedule
    :reader schedule
    :initarg :schedule
    :type j2735_msgs-msg:TrafficControlSchedule
    :initform (cl:make-instance 'j2735_msgs-msg:TrafficControlSchedule))
   (regulatory
    :reader regulatory
    :initarg :regulatory
    :type cl:boolean
    :initform cl:nil)
   (detail
    :reader detail
    :initarg :detail
    :type j2735_msgs-msg:TrafficControlDetail
    :initform (cl:make-instance 'j2735_msgs-msg:TrafficControlDetail)))
)

(cl:defclass TrafficControlParams (<TrafficControlParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlParams> is deprecated: use j2735_msgs-msg:TrafficControlParams instead.")))

(cl:ensure-generic-function 'vclasses-val :lambda-list '(m))
(cl:defmethod vclasses-val ((m <TrafficControlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:vclasses-val is deprecated.  Use j2735_msgs-msg:vclasses instead.")
  (vclasses m))

(cl:ensure-generic-function 'schedule-val :lambda-list '(m))
(cl:defmethod schedule-val ((m <TrafficControlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:schedule-val is deprecated.  Use j2735_msgs-msg:schedule instead.")
  (schedule m))

(cl:ensure-generic-function 'regulatory-val :lambda-list '(m))
(cl:defmethod regulatory-val ((m <TrafficControlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:regulatory-val is deprecated.  Use j2735_msgs-msg:regulatory instead.")
  (regulatory m))

(cl:ensure-generic-function 'detail-val :lambda-list '(m))
(cl:defmethod detail-val ((m <TrafficControlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:detail-val is deprecated.  Use j2735_msgs-msg:detail instead.")
  (detail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlParams>) ostream)
  "Serializes a message object of type '<TrafficControlParams>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vclasses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vclasses))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'schedule) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'regulatory) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detail) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlParams>) istream)
  "Deserializes a message object of type '<TrafficControlParams>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vclasses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vclasses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:TrafficControlVehClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'schedule) istream)
    (cl:setf (cl:slot-value msg 'regulatory) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detail) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlParams>)))
  "Returns string type for a message object of type '<TrafficControlParams>"
  "j2735_msgs/TrafficControlParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlParams)))
  "Returns string type for a message object of type 'TrafficControlParams"
  "j2735_msgs/TrafficControlParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlParams>)))
  "Returns md5sum for a message object of type '<TrafficControlParams>"
  "2bc48933f6689ba2745ec3eb181fcbfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlParams)))
  "Returns md5sum for a message object of type 'TrafficControlParams"
  "2bc48933f6689ba2745ec3eb181fcbfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlParams>)))
  "Returns full string definition for message of type '<TrafficControlParams>"
  (cl:format cl:nil "#~%# TrafficControlParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlParams ::= SEQUENCE~%# {~%# 	vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%# 	schedule TrafficControlSchedule,~%# 	regulatory BOOLEAN,~%# 	detail TrafficControlDetail~%# }~%~%# vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%j2735_msgs/TrafficControlVehClass[] vclasses~%~%# schedule TrafficControlSchedule~%j2735_msgs/TrafficControlSchedule schedule~%~%# regulatory BOOLEAN~%bool regulatory~%~%# detail TrafficControlDetail~%j2735_msgs/TrafficControlDetail detail~%~%~%================================================================================~%MSG: j2735_msgs/TrafficControlVehClass~%#~%# TrafficControlVehClass.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlVehClass ::= ENUMERATED~%# {~%# 	any, ~%# 	pedestrian,~%# 	bicycle,~%# 	micromobile,~%# 	motorcycle,~%# 	passenger-car,~%# 	light-truck-van,~%# 	bus,~%# 	two-axle-six-tire-single-unit-truck,~%# 	three-axle-single-unit-truck,~%# 	four-or-more-axle-single-unit-truck,~%# 	four-or-fewer-axle-single-trailer-truck,~%# 	five-axle-single-trailer-truck,~%# 	six-or-more-axle-single-trailer-truck,~%# 	five-or-fewer-axle-multi-trailer-truck,~%# 	six-axle-multi-trailer-truck,~%# 	seven-or-more-axle-multi-trailer-truck,~%# 	rail,~%# 	unclassified, ~%# 	...~%# }~%~%uint8 vehicle_class~%~%# enumeration values for vehicle_class:~%~%uint8 ANY = 0~%uint8 PEDESTRIAN = 1~%uint8 BICYCLE = 2~%uint8 MICROMOBILE = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 LIGHT_TRUCK_VAN = 6~%uint8 BUS = 7~%uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8~%uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9~%uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10~%uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11~%uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12~%uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13~%uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14~%uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15~%uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16~%uint8 RAIL = 17~%uint8 UNCLASSIFIED = 18~%================================================================================~%MSG: j2735_msgs/TrafficControlSchedule~%#~%# TrafficControlSchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlSchedule ::= SEQUENCE~%# {~%# 	start EpochMins, -- start time required, even if it's the epoch value zero~%# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%# 	dow [1] DayOfWeek OPTIONAL, ~%# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%# 	repeat [3] RepeatParams OPTIONAL~%# }~%~%# start EpochMins, -- start time required, even if it's the epoch value zero~%uint64 start~%~%# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%uint64 end~%bool end_exists~%~%# dow [1] DayOfWeek OPTIONAL, ~%j2735_msgs/DayOfWeek dow~%bool dow_exists~%~%# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%j2735_msgs/DailySchedule[] between~%bool between_exists~%~%# repeat [3] RepeatParams OPTIONAL~%j2735_msgs/RepeatParams repeat~%bool repeat_exists~%~%================================================================================~%MSG: j2735_msgs/DayOfWeek~%#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%================================================================================~%MSG: j2735_msgs/DailySchedule~%#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%================================================================================~%MSG: j2735_msgs/RepeatParams~%#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%================================================================================~%MSG: j2735_msgs/TrafficControlDetail~%#~%# TrafficControlDetail.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlDetail ::= CHOICE~%#{~%#	signal OCTET STRING SIZE(0..63),~%#	stop NULL,~%#	yield NULL,~%#	notowing NULL,~%#	restricted NULL,~%#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},~%#	chains ENUMERATED {no, permitted, required},~%#	direction ENUMERATED {forward, reverse},~%#	lataffinity ENUMERATED {left, right},~%#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},~%#	parking ENUMERATED {no, parallel, angled},~%#	minspeed INTEGER (0..1023), -- tenths of m/s~%#	maxspeed INTEGER (0..1023), -- tenths of m/s~%#	minhdwy INTEGER (0..2047), -- tenths of meters~%#	maxvehmass INTEGER (0..65535), -- kg~%#	maxvehheight INTEGER (0..127), -- tenths of meters~%#	maxvehwidth INTEGER (0..127), -- tenths of meters~%#	maxvehlength INTEGER (0..1023), -- tenths of meters~%#	maxvehaxles INTEGER (2..15),~%#	minvehocc INTEGER (1..15), ~%#	...~%#}~%~%~%uint8 choice~%~%# enumeration values for choice:~%~%uint8 SIGNAL_CHOICE =0~%uint8 STOP_CHOICE =1~%uint8 YIELD_CHOICE =2~%uint8 NOTOWING_CHOICE =3~%uint8 RESTRICTED_CHOICE =4~%uint8 CLOSED_CHOICE =5~%uint8 CHAINS_CHOICE =6~%uint8 DIRECTION_CHOICE =7~%uint8 LATAFFINITY_CHOICE =8~%uint8 LATPERM_CHOICE =9~%uint8 PARKING_CHOICE =10~%uint8 MINSPEED_CHOICE =11~%uint8 MAXSPEED_CHOICE =12~%uint8 MINHDWY_CHOICE =13~%uint8 MAXVEHMASS_CHOICE =14~%uint8 MAXVEHHEIGHT_CHOICE =15~%uint8 MAXVEHWIDTH_CHOICE =16~%uint8 MAXVEHLENGTH_CHOICE =17~%uint8 MAXVEHAXLES_CHOICE =18~%uint8 MINVEHOCC_CHOICE =19~%~%# signal ::= OCTET STRING SIZE(0..63)~%uint8[] signal~%~%#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}~%~%uint8 closed~%~%# enumeration values for closed:~%~%uint8 OPEN=0~%~%uint8 CLOSED=1~%~%uint8 TAPERLEFT=2~%~%uint8 TAPERRIGHT=3~%~%uint8 OPENLEFT=4~%~%uint8 OPENRIGHT=5~%~%#chains ENUMERATED {no, permitted, required}~%~%uint8 chains~%~%# enumeration values for chains:~%~%uint8 NO=0~%~%uint8 PERMITTED=1~%~%uint8 REQUIRED=2~%~%~%#direction ENUMERATED {forward, reverse}~%~%uint8 direction~%~%# enumeration values for direction:~%~%uint8 FORWARD=0~%~%uint8 REVERSE=1~%~%#lataffinity ENUMERATED {left, right}~%~%uint8 lataffinity~%~%# enumeration values for lataffinity:~%~%uint8 LEFT=0~%~%uint8 RIGHT=1~%~%#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}~%~%uint8[2] latperm~%~%# enumeration values for latperm:~%~%uint8 NONE=0~%~%# uint8 PERMITTED=1 redeclaration~%~%uint8 PASSINGONLY=2~%~%uint8 EMERGENCYONLY=3~%~%#parking ENUMERATED {no, parallel, angled}~%~%uint8 parking~%~%# enumeration values for parking:~%~%# uint8 NO=0 redeclaration~%~%uint8 PARALLEL=1~%~%uint8 ANGLED=2~%~%#minspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 minspeed~%~%#maxspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 maxspeed~%~%#minhdwy ::= INTEGER (0..2047), -- tenths of meters~%uint16 minhdwy~%~%#maxvehmass ::= INTEGER (0..65535), -- kg~%uint16 maxvehmass~%~%#maxvehheight ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehheight~%~%#maxvehwidth ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehwidth~%~%#maxvehlength ::= INTEGER (0..1023), -- tenths of meters~%uint16 maxvehlength~%~%#maxvehaxles ::= INTEGER (2..15)~%uint8 maxvehaxles~%~%#minvehocc ::= INTEGER (1..15)~%uint8 minvehocc~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlParams)))
  "Returns full string definition for message of type 'TrafficControlParams"
  (cl:format cl:nil "#~%# TrafficControlParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlParams ::= SEQUENCE~%# {~%# 	vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%# 	schedule TrafficControlSchedule,~%# 	regulatory BOOLEAN,~%# 	detail TrafficControlDetail~%# }~%~%# vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,~%j2735_msgs/TrafficControlVehClass[] vclasses~%~%# schedule TrafficControlSchedule~%j2735_msgs/TrafficControlSchedule schedule~%~%# regulatory BOOLEAN~%bool regulatory~%~%# detail TrafficControlDetail~%j2735_msgs/TrafficControlDetail detail~%~%~%================================================================================~%MSG: j2735_msgs/TrafficControlVehClass~%#~%# TrafficControlVehClass.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlVehClass ::= ENUMERATED~%# {~%# 	any, ~%# 	pedestrian,~%# 	bicycle,~%# 	micromobile,~%# 	motorcycle,~%# 	passenger-car,~%# 	light-truck-van,~%# 	bus,~%# 	two-axle-six-tire-single-unit-truck,~%# 	three-axle-single-unit-truck,~%# 	four-or-more-axle-single-unit-truck,~%# 	four-or-fewer-axle-single-trailer-truck,~%# 	five-axle-single-trailer-truck,~%# 	six-or-more-axle-single-trailer-truck,~%# 	five-or-fewer-axle-multi-trailer-truck,~%# 	six-axle-multi-trailer-truck,~%# 	seven-or-more-axle-multi-trailer-truck,~%# 	rail,~%# 	unclassified, ~%# 	...~%# }~%~%uint8 vehicle_class~%~%# enumeration values for vehicle_class:~%~%uint8 ANY = 0~%uint8 PEDESTRIAN = 1~%uint8 BICYCLE = 2~%uint8 MICROMOBILE = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 LIGHT_TRUCK_VAN = 6~%uint8 BUS = 7~%uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8~%uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9~%uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10~%uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11~%uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12~%uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13~%uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14~%uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15~%uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16~%uint8 RAIL = 17~%uint8 UNCLASSIFIED = 18~%================================================================================~%MSG: j2735_msgs/TrafficControlSchedule~%#~%# TrafficControlSchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlSchedule ::= SEQUENCE~%# {~%# 	start EpochMins, -- start time required, even if it's the epoch value zero~%# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%# 	dow [1] DayOfWeek OPTIONAL, ~%# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%# 	repeat [3] RepeatParams OPTIONAL~%# }~%~%# start EpochMins, -- start time required, even if it's the epoch value zero~%uint64 start~%~%# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%uint64 end~%bool end_exists~%~%# dow [1] DayOfWeek OPTIONAL, ~%j2735_msgs/DayOfWeek dow~%bool dow_exists~%~%# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%j2735_msgs/DailySchedule[] between~%bool between_exists~%~%# repeat [3] RepeatParams OPTIONAL~%j2735_msgs/RepeatParams repeat~%bool repeat_exists~%~%================================================================================~%MSG: j2735_msgs/DayOfWeek~%#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%================================================================================~%MSG: j2735_msgs/DailySchedule~%#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%================================================================================~%MSG: j2735_msgs/RepeatParams~%#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%================================================================================~%MSG: j2735_msgs/TrafficControlDetail~%#~%# TrafficControlDetail.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlDetail ::= CHOICE~%#{~%#	signal OCTET STRING SIZE(0..63),~%#	stop NULL,~%#	yield NULL,~%#	notowing NULL,~%#	restricted NULL,~%#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},~%#	chains ENUMERATED {no, permitted, required},~%#	direction ENUMERATED {forward, reverse},~%#	lataffinity ENUMERATED {left, right},~%#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},~%#	parking ENUMERATED {no, parallel, angled},~%#	minspeed INTEGER (0..1023), -- tenths of m/s~%#	maxspeed INTEGER (0..1023), -- tenths of m/s~%#	minhdwy INTEGER (0..2047), -- tenths of meters~%#	maxvehmass INTEGER (0..65535), -- kg~%#	maxvehheight INTEGER (0..127), -- tenths of meters~%#	maxvehwidth INTEGER (0..127), -- tenths of meters~%#	maxvehlength INTEGER (0..1023), -- tenths of meters~%#	maxvehaxles INTEGER (2..15),~%#	minvehocc INTEGER (1..15), ~%#	...~%#}~%~%~%uint8 choice~%~%# enumeration values for choice:~%~%uint8 SIGNAL_CHOICE =0~%uint8 STOP_CHOICE =1~%uint8 YIELD_CHOICE =2~%uint8 NOTOWING_CHOICE =3~%uint8 RESTRICTED_CHOICE =4~%uint8 CLOSED_CHOICE =5~%uint8 CHAINS_CHOICE =6~%uint8 DIRECTION_CHOICE =7~%uint8 LATAFFINITY_CHOICE =8~%uint8 LATPERM_CHOICE =9~%uint8 PARKING_CHOICE =10~%uint8 MINSPEED_CHOICE =11~%uint8 MAXSPEED_CHOICE =12~%uint8 MINHDWY_CHOICE =13~%uint8 MAXVEHMASS_CHOICE =14~%uint8 MAXVEHHEIGHT_CHOICE =15~%uint8 MAXVEHWIDTH_CHOICE =16~%uint8 MAXVEHLENGTH_CHOICE =17~%uint8 MAXVEHAXLES_CHOICE =18~%uint8 MINVEHOCC_CHOICE =19~%~%# signal ::= OCTET STRING SIZE(0..63)~%uint8[] signal~%~%#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}~%~%uint8 closed~%~%# enumeration values for closed:~%~%uint8 OPEN=0~%~%uint8 CLOSED=1~%~%uint8 TAPERLEFT=2~%~%uint8 TAPERRIGHT=3~%~%uint8 OPENLEFT=4~%~%uint8 OPENRIGHT=5~%~%#chains ENUMERATED {no, permitted, required}~%~%uint8 chains~%~%# enumeration values for chains:~%~%uint8 NO=0~%~%uint8 PERMITTED=1~%~%uint8 REQUIRED=2~%~%~%#direction ENUMERATED {forward, reverse}~%~%uint8 direction~%~%# enumeration values for direction:~%~%uint8 FORWARD=0~%~%uint8 REVERSE=1~%~%#lataffinity ENUMERATED {left, right}~%~%uint8 lataffinity~%~%# enumeration values for lataffinity:~%~%uint8 LEFT=0~%~%uint8 RIGHT=1~%~%#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}~%~%uint8[2] latperm~%~%# enumeration values for latperm:~%~%uint8 NONE=0~%~%# uint8 PERMITTED=1 redeclaration~%~%uint8 PASSINGONLY=2~%~%uint8 EMERGENCYONLY=3~%~%#parking ENUMERATED {no, parallel, angled}~%~%uint8 parking~%~%# enumeration values for parking:~%~%# uint8 NO=0 redeclaration~%~%uint8 PARALLEL=1~%~%uint8 ANGLED=2~%~%#minspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 minspeed~%~%#maxspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 maxspeed~%~%#minhdwy ::= INTEGER (0..2047), -- tenths of meters~%uint16 minhdwy~%~%#maxvehmass ::= INTEGER (0..65535), -- kg~%uint16 maxvehmass~%~%#maxvehheight ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehheight~%~%#maxvehwidth ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehwidth~%~%#maxvehlength ::= INTEGER (0..1023), -- tenths of meters~%uint16 maxvehlength~%~%#maxvehaxles ::= INTEGER (2..15)~%uint8 maxvehaxles~%~%#minvehocc ::= INTEGER (1..15)~%uint8 minvehocc~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlParams>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vclasses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'schedule))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlParams>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlParams
    (cl:cons ':vclasses (vclasses msg))
    (cl:cons ':schedule (schedule msg))
    (cl:cons ':regulatory (regulatory msg))
    (cl:cons ':detail (detail msg))
))