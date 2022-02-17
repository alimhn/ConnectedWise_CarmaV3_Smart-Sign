;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlParams)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlParams (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLPARAMS")
  (make-package "J2735_MSGS::TRAFFICCONTROLPARAMS"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlParams.msg.html


(defclass j2735_msgs::TrafficControlParams
  :super ros::object
  :slots (_vclasses _schedule _regulatory _detail ))

(defmethod j2735_msgs::TrafficControlParams
  (:init
   (&key
    ((:vclasses __vclasses) ())
    ((:schedule __schedule) (instance j2735_msgs::TrafficControlSchedule :init))
    ((:regulatory __regulatory) nil)
    ((:detail __detail) (instance j2735_msgs::TrafficControlDetail :init))
    )
   (send-super :init)
   (setq _vclasses __vclasses)
   (setq _schedule __schedule)
   (setq _regulatory __regulatory)
   (setq _detail __detail)
   self)
  (:vclasses
   (&rest __vclasses)
   (if (keywordp (car __vclasses))
       (send* _vclasses __vclasses)
     (progn
       (if __vclasses (setq _vclasses (car __vclasses)))
       _vclasses)))
  (:schedule
   (&rest __schedule)
   (if (keywordp (car __schedule))
       (send* _schedule __schedule)
     (progn
       (if __schedule (setq _schedule (car __schedule)))
       _schedule)))
  (:regulatory
   (&optional (__regulatory :null))
   (if (not (eq __regulatory :null)) (setq _regulatory __regulatory)) _regulatory)
  (:detail
   (&rest __detail)
   (if (keywordp (car __detail))
       (send* _detail __detail)
     (progn
       (if __detail (setq _detail (car __detail)))
       _detail)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/TrafficControlVehClass[] _vclasses
    (apply #'+ (send-all _vclasses :serialization-length)) 4
    ;; j2735_msgs/TrafficControlSchedule _schedule
    (send _schedule :serialization-length)
    ;; bool _regulatory
    1
    ;; j2735_msgs/TrafficControlDetail _detail
    (send _detail :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/TrafficControlVehClass[] _vclasses
     (write-long (length _vclasses) s)
     (dolist (elem _vclasses)
       (send elem :serialize s)
       )
     ;; j2735_msgs/TrafficControlSchedule _schedule
       (send _schedule :serialize s)
     ;; bool _regulatory
       (if _regulatory (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/TrafficControlDetail _detail
       (send _detail :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/TrafficControlVehClass[] _vclasses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vclasses (let (r) (dotimes (i n) (push (instance j2735_msgs::TrafficControlVehClass :init) r)) r))
     (dolist (elem- _vclasses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; j2735_msgs/TrafficControlSchedule _schedule
     (send _schedule :deserialize buf ptr-) (incf ptr- (send _schedule :serialization-length))
   ;; bool _regulatory
     (setq _regulatory (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/TrafficControlDetail _detail
     (send _detail :deserialize buf ptr-) (incf ptr- (send _detail :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlParams :md5sum-) "2bc48933f6689ba2745ec3eb181fcbfe")
(setf (get j2735_msgs::TrafficControlParams :datatype-) "j2735_msgs/TrafficControlParams")
(setf (get j2735_msgs::TrafficControlParams :definition-)
      "#
# TrafficControlParams.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# TrafficControlParams ::= SEQUENCE
# {
# 	vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,
# 	schedule TrafficControlSchedule,
# 	regulatory BOOLEAN,
# 	detail TrafficControlDetail
# }

# vclasses SEQUENCE (SIZE(1..255)) OF TrafficControlVehClass,
j2735_msgs/TrafficControlVehClass[] vclasses

# schedule TrafficControlSchedule
j2735_msgs/TrafficControlSchedule schedule

# regulatory BOOLEAN
bool regulatory

# detail TrafficControlDetail
j2735_msgs/TrafficControlDetail detail


================================================================================
MSG: j2735_msgs/TrafficControlVehClass
#
# TrafficControlVehClass.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# TrafficControlVehClass ::= ENUMERATED
# {
# 	any, 
# 	pedestrian,
# 	bicycle,
# 	micromobile,
# 	motorcycle,
# 	passenger-car,
# 	light-truck-van,
# 	bus,
# 	two-axle-six-tire-single-unit-truck,
# 	three-axle-single-unit-truck,
# 	four-or-more-axle-single-unit-truck,
# 	four-or-fewer-axle-single-trailer-truck,
# 	five-axle-single-trailer-truck,
# 	six-or-more-axle-single-trailer-truck,
# 	five-or-fewer-axle-multi-trailer-truck,
# 	six-axle-multi-trailer-truck,
# 	seven-or-more-axle-multi-trailer-truck,
# 	rail,
# 	unclassified, 
# 	...
# }

uint8 vehicle_class

# enumeration values for vehicle_class:

uint8 ANY = 0
uint8 PEDESTRIAN = 1
uint8 BICYCLE = 2
uint8 MICROMOBILE = 3
uint8 MOTORCYCLE = 4
uint8 PASSENGER_CAR = 5
uint8 LIGHT_TRUCK_VAN = 6
uint8 BUS = 7
uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8
uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9
uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10
uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11
uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12
uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13
uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14
uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15
uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16
uint8 RAIL = 17
uint8 UNCLASSIFIED = 18
================================================================================
MSG: j2735_msgs/TrafficControlSchedule
#
# TrafficControlSchedule.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# TrafficControlSchedule ::= SEQUENCE
# {
# 	start EpochMins, -- start time required, even if it's the epoch value zero
# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
# 	dow [1] DayOfWeek OPTIONAL, 
# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
# 	repeat [3] RepeatParams OPTIONAL
# }

# start EpochMins, -- start time required, even if it's the epoch value zero
uint64 start

# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
uint64 end
bool end_exists

# dow [1] DayOfWeek OPTIONAL, 
j2735_msgs/DayOfWeek dow
bool dow_exists

# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
j2735_msgs/DailySchedule[] between
bool between_exists

# repeat [3] RepeatParams OPTIONAL
j2735_msgs/RepeatParams repeat
bool repeat_exists

================================================================================
MSG: j2735_msgs/DayOfWeek
#
# DayOfWeek.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# DayOfWeek ::= BIT STRING //only J
# {
# 	sun (6), 
# 	mon (5), 
# 	tue (4), 
# 	wed (3), 
# 	thu (2), 
# 	fri (1), 
# 	sat (0)
# }

uint8[7] dow

# enumeration values for day of week
uint8 SUN = 6  
uint8 MON = 5
uint8 TUE = 4  
uint8 WED = 3  
uint8 THU = 2  
uint8 FRI = 1  
uint8 SAT = 0
================================================================================
MSG: j2735_msgs/DailySchedule
#
# DailySchedule.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# The schedule bounds of a geofence within a specific day of the week

# DailySchedule ::= SEQUENCE
# {
# 	begin INTEGER (0..1439), -- minutes relative to midnight local time
# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day
# }

# begin INTEGER (0..1439), -- minutes relative to midnight local time
uint16 begin

# duration INTEGER (0..1439) -- the number of active minutes, up to one day
uint16 duration
================================================================================
MSG: j2735_msgs/RepeatParams
#
# RepeatParams.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# ...

# RepeatParams ::= SEQUENCE
# {
# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time
# 	period INTEGER (0..1439), -- minutes between successive time spans
# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period
# }

# Offset 
# shift repetition start relative to midnight local time
uint16 offset

# Period
# minutes between successive time spans
uint16 period

# Span
# number of minutes schedule is active, must be less than the period
uint16 span

================================================================================
MSG: j2735_msgs/TrafficControlDetail
#
# TrafficControlDetail.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

#TrafficControlDetail ::= CHOICE
#{
#	signal OCTET STRING SIZE(0..63),
#	stop NULL,
#	yield NULL,
#	notowing NULL,
#	restricted NULL,
#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},
#	chains ENUMERATED {no, permitted, required},
#	direction ENUMERATED {forward, reverse},
#	lataffinity ENUMERATED {left, right},
#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},
#	parking ENUMERATED {no, parallel, angled},
#	minspeed INTEGER (0..1023), -- tenths of m/s
#	maxspeed INTEGER (0..1023), -- tenths of m/s
#	minhdwy INTEGER (0..2047), -- tenths of meters
#	maxvehmass INTEGER (0..65535), -- kg
#	maxvehheight INTEGER (0..127), -- tenths of meters
#	maxvehwidth INTEGER (0..127), -- tenths of meters
#	maxvehlength INTEGER (0..1023), -- tenths of meters
#	maxvehaxles INTEGER (2..15),
#	minvehocc INTEGER (1..15), 
#	...
#}


uint8 choice

# enumeration values for choice:

uint8 SIGNAL_CHOICE =0
uint8 STOP_CHOICE =1
uint8 YIELD_CHOICE =2
uint8 NOTOWING_CHOICE =3
uint8 RESTRICTED_CHOICE =4
uint8 CLOSED_CHOICE =5
uint8 CHAINS_CHOICE =6
uint8 DIRECTION_CHOICE =7
uint8 LATAFFINITY_CHOICE =8
uint8 LATPERM_CHOICE =9
uint8 PARKING_CHOICE =10
uint8 MINSPEED_CHOICE =11
uint8 MAXSPEED_CHOICE =12
uint8 MINHDWY_CHOICE =13
uint8 MAXVEHMASS_CHOICE =14
uint8 MAXVEHHEIGHT_CHOICE =15
uint8 MAXVEHWIDTH_CHOICE =16
uint8 MAXVEHLENGTH_CHOICE =17
uint8 MAXVEHAXLES_CHOICE =18
uint8 MINVEHOCC_CHOICE =19

# signal ::= OCTET STRING SIZE(0..63)
uint8[] signal

#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}

uint8 closed

# enumeration values for closed:

uint8 OPEN=0

uint8 CLOSED=1

uint8 TAPERLEFT=2

uint8 TAPERRIGHT=3

uint8 OPENLEFT=4

uint8 OPENRIGHT=5

#chains ENUMERATED {no, permitted, required}

uint8 chains

# enumeration values for chains:

uint8 NO=0

uint8 PERMITTED=1

uint8 REQUIRED=2


#direction ENUMERATED {forward, reverse}

uint8 direction

# enumeration values for direction:

uint8 FORWARD=0

uint8 REVERSE=1

#lataffinity ENUMERATED {left, right}

uint8 lataffinity

# enumeration values for lataffinity:

uint8 LEFT=0

uint8 RIGHT=1

#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}

uint8[2] latperm

# enumeration values for latperm:

uint8 NONE=0

# uint8 PERMITTED=1 redeclaration

uint8 PASSINGONLY=2

uint8 EMERGENCYONLY=3

#parking ENUMERATED {no, parallel, angled}

uint8 parking

# enumeration values for parking:

# uint8 NO=0 redeclaration

uint8 PARALLEL=1

uint8 ANGLED=2

#minspeed ::= INTEGER (0..1023), -- tenths of m/s
uint16 minspeed

#maxspeed ::= INTEGER (0..1023), -- tenths of m/s
uint16 maxspeed

#minhdwy ::= INTEGER (0..2047), -- tenths of meters
uint16 minhdwy

#maxvehmass ::= INTEGER (0..65535), -- kg
uint16 maxvehmass

#maxvehheight ::= INTEGER (0..127), -- tenths of meters
uint8 maxvehheight

#maxvehwidth ::= INTEGER (0..127), -- tenths of meters
uint8 maxvehwidth

#maxvehlength ::= INTEGER (0..1023), -- tenths of meters
uint16 maxvehlength

#maxvehaxles ::= INTEGER (2..15)
uint8 maxvehaxles

#minvehocc ::= INTEGER (1..15)
uint8 minvehocc





")



(provide :j2735_msgs/TrafficControlParams "2bc48933f6689ba2745ec3eb181fcbfe")


