;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlMessageV01)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlMessageV01 (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLMESSAGEV01")
  (make-package "J2735_MSGS::TRAFFICCONTROLMESSAGEV01"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlMessageV01.msg.html


(defclass j2735_msgs::TrafficControlMessageV01
  :super ros::object
  :slots (_reqid _reqseq _msgtot _msgnum _id _updated _package _package_exists _params _params_exists _geometry _geometry_exists ))

(defmethod j2735_msgs::TrafficControlMessageV01
  (:init
   (&key
    ((:reqid __reqid) (instance j2735_msgs::Id64b :init))
    ((:reqseq __reqseq) 0)
    ((:msgtot __msgtot) 0)
    ((:msgnum __msgnum) 0)
    ((:id __id) (instance j2735_msgs::Id128b :init))
    ((:updated __updated) 0)
    ((:package __package) (instance j2735_msgs::TrafficControlPackage :init))
    ((:package_exists __package_exists) nil)
    ((:params __params) (instance j2735_msgs::TrafficControlParams :init))
    ((:params_exists __params_exists) nil)
    ((:geometry __geometry) (instance j2735_msgs::TrafficControlGeometry :init))
    ((:geometry_exists __geometry_exists) nil)
    )
   (send-super :init)
   (setq _reqid __reqid)
   (setq _reqseq (round __reqseq))
   (setq _msgtot (round __msgtot))
   (setq _msgnum (round __msgnum))
   (setq _id __id)
   (setq _updated (round __updated))
   (setq _package __package)
   (setq _package_exists __package_exists)
   (setq _params __params)
   (setq _params_exists __params_exists)
   (setq _geometry __geometry)
   (setq _geometry_exists __geometry_exists)
   self)
  (:reqid
   (&rest __reqid)
   (if (keywordp (car __reqid))
       (send* _reqid __reqid)
     (progn
       (if __reqid (setq _reqid (car __reqid)))
       _reqid)))
  (:reqseq
   (&optional __reqseq)
   (if __reqseq (setq _reqseq __reqseq)) _reqseq)
  (:msgtot
   (&optional __msgtot)
   (if __msgtot (setq _msgtot __msgtot)) _msgtot)
  (:msgnum
   (&optional __msgnum)
   (if __msgnum (setq _msgnum __msgnum)) _msgnum)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:updated
   (&optional __updated)
   (if __updated (setq _updated __updated)) _updated)
  (:package
   (&rest __package)
   (if (keywordp (car __package))
       (send* _package __package)
     (progn
       (if __package (setq _package (car __package)))
       _package)))
  (:package_exists
   (&optional (__package_exists :null))
   (if (not (eq __package_exists :null)) (setq _package_exists __package_exists)) _package_exists)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:params_exists
   (&optional (__params_exists :null))
   (if (not (eq __params_exists :null)) (setq _params_exists __params_exists)) _params_exists)
  (:geometry
   (&rest __geometry)
   (if (keywordp (car __geometry))
       (send* _geometry __geometry)
     (progn
       (if __geometry (setq _geometry (car __geometry)))
       _geometry)))
  (:geometry_exists
   (&optional (__geometry_exists :null))
   (if (not (eq __geometry_exists :null)) (setq _geometry_exists __geometry_exists)) _geometry_exists)
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/Id64b _reqid
    (send _reqid :serialization-length)
    ;; uint8 _reqseq
    1
    ;; uint16 _msgtot
    2
    ;; uint16 _msgnum
    2
    ;; j2735_msgs/Id128b _id
    (send _id :serialization-length)
    ;; uint64 _updated
    8
    ;; j2735_msgs/TrafficControlPackage _package
    (send _package :serialization-length)
    ;; bool _package_exists
    1
    ;; j2735_msgs/TrafficControlParams _params
    (send _params :serialization-length)
    ;; bool _params_exists
    1
    ;; j2735_msgs/TrafficControlGeometry _geometry
    (send _geometry :serialization-length)
    ;; bool _geometry_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/Id64b _reqid
       (send _reqid :serialize s)
     ;; uint8 _reqseq
       (write-byte _reqseq s)
     ;; uint16 _msgtot
       (write-word _msgtot s)
     ;; uint16 _msgnum
       (write-word _msgnum s)
     ;; j2735_msgs/Id128b _id
       (send _id :serialize s)
     ;; uint64 _updated
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _updated (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _updated) (= (length (_updated . bv)) 2)) ;; bignum
              (write-long (ash (elt (_updated . bv) 0) 0) s)
              (write-long (ash (elt (_updated . bv) 1) -1) s))
             ((and (class _updated) (= (length (_updated . bv)) 1)) ;; big1
              (write-long (elt (_updated . bv) 0) s)
              (write-long (if (>= _updated 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _updated s)(write-long (if (>= _updated 0) 0 #xffffffff) s)))
     ;; j2735_msgs/TrafficControlPackage _package
       (send _package :serialize s)
     ;; bool _package_exists
       (if _package_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/TrafficControlParams _params
       (send _params :serialize s)
     ;; bool _params_exists
       (if _params_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/TrafficControlGeometry _geometry
       (send _geometry :serialize s)
     ;; bool _geometry_exists
       (if _geometry_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/Id64b _reqid
     (send _reqid :deserialize buf ptr-) (incf ptr- (send _reqid :serialization-length))
   ;; uint8 _reqseq
     (setq _reqseq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _msgtot
     (setq _msgtot (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _msgnum
     (setq _msgnum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; j2735_msgs/Id128b _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uint64 _updated
     
#+(or :alpha :irix6 :x86_64)
      (setf _updated (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _updated (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; j2735_msgs/TrafficControlPackage _package
     (send _package :deserialize buf ptr-) (incf ptr- (send _package :serialization-length))
   ;; bool _package_exists
     (setq _package_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/TrafficControlParams _params
     (send _params :deserialize buf ptr-) (incf ptr- (send _params :serialization-length))
   ;; bool _params_exists
     (setq _params_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/TrafficControlGeometry _geometry
     (send _geometry :deserialize buf ptr-) (incf ptr- (send _geometry :serialization-length))
   ;; bool _geometry_exists
     (setq _geometry_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlMessageV01 :md5sum-) "4f97b09c87e6e6469c02453e968d2688")
(setf (get j2735_msgs::TrafficControlMessageV01 :datatype-) "j2735_msgs/TrafficControlMessageV01")
(setf (get j2735_msgs::TrafficControlMessageV01 :definition-)
      "#
# TrafficControlMessageV01.msg
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

# TrafficControlMessageV01 ::= SEQUENCE
# {
# 	reqid Id64b, -- ephemeral identifier of originating request
# 	reqseq INTEGER (0..255), -- sequential counter for originating request
# 	msgtot INTEGER (0..65535), -- total expected traffic control message responses
# 	msgnum INTEGER (0..65535), -- message index for each response out of total responses
# 	id Id128b, -- unique traffic control id
# 	updated EpochMins, 
# 	package [0] TrafficControlPackage OPTIONAL, -- related traffic control ids
# 	params [1] TrafficControlParams OPTIONAL, 
# 	geometry [2] TrafficControlGeometry OPTIONAL
# }

# reqid ::= Id64b
j2735_msgs/Id64b reqid

# reqseq ::= INTEGER (0..255)
uint8 reqseq

# msgtot INTEGER (0..65535), -- total expected traffic control message responses
uint16 msgtot

# msgnum INTEGER (0..65535), -- message index for each response out of total responses
uint16 msgnum

# id Id128b, -- unique traffic control id
j2735_msgs/Id128b id

# updated EpochMins
uint64 updated

# package [0] TrafficControlPackage OPTIONAL, -- related traffic control ids
j2735_msgs/TrafficControlPackage package
bool package_exists

# params [1] TrafficControlParams OPTIONAL
j2735_msgs/TrafficControlParams params
bool params_exists

# geometry [2] TrafficControlGeometry OPTIONAL
j2735_msgs/TrafficControlGeometry geometry
bool geometry_exists

================================================================================
MSG: j2735_msgs/Id64b
#
# Id64b.msg
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

# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids

uint8[8] id
================================================================================
MSG: j2735_msgs/Id128b
#
# Id128b.msg
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

# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids

uint8[16] id
================================================================================
MSG: j2735_msgs/TrafficControlPackage
#
# TrafficControlPackage.msg
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

# TrafficControlPackage ::= SEQUENCE
# {
# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
# }

# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
string label

bool label_exists

# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
j2735_msgs/Id128b[] tcids

================================================================================
MSG: j2735_msgs/TrafficControlParams
#
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





================================================================================
MSG: j2735_msgs/TrafficControlGeometry
#
# TrafficControlGeometry.msg
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

# TrafficControlGeometry ::= SEQUENCE
# {
# 	proj IA5String (SIZE(0..63)),
# 	datum IA5String (SIZE(0..63)),
# 	reftime EpochMins,
# 	reflon Longitude,
# 	reflat Latitude,
# 	refelv Elevation, -- decimeter offset -4096 from reference datum
# 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees
# 	nodes SEQUENCE (SIZE(1..255)) OF PathNode
# }

# proj IA5String (SIZE(0..63)),
string proj

# datum IA5String (SIZE(0..63)),
string datum

# reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC
uint64 reftime

# reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null
int32 reflon

int32 REFLON_UNAVAILABLE = 1800000001
int32 REFLON_MAX = 1800000000
int32 REFLON_MIN = -1799999999

# reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null
int32 reflat

int32 REFLAT_UNAVAILABLE = 900000001
int32 REFLAT_MAX = 900000000
int32 REFLAT_MIN = -900000000

# refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum
int32 refelv

int32 REFELV_UNKNOWN = 0
int32 REFELV_MAX = 65535
int32 REFELV_MIN = 1

# heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees
uint16 heading
uint16 HEADING_MAX = 3599
uint16 HEADING_MIN = 0

# nodes SEQUENCE (SIZE(1..255)) OF PathNode
j2735_msgs/PathNode[] nodes



================================================================================
MSG: j2735_msgs/PathNode
#
# PathNode.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The positive x direction proceeds eastward, positive y proceeds
# northward, and positive z proceeds away from the center of the Earth. 

# X ::= INTEGER (-32768..32767)
#   -- units are in cm
int16 x
int16 y
int16 z

bool z_exists

# Width ::= INTEGER (-128..127)
#   -- units are in cm
int8 width
bool width_exists
")



(provide :j2735_msgs/TrafficControlMessageV01 "4f97b09c87e6e6469c02453e968d2688")


