;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::MovementEvent)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'MovementEvent (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::MOVEMENTEVENT")
  (make-package "J2735_MSGS::MOVEMENTEVENT"))

(in-package "ROS")
;;//! \htmlinclude MovementEvent.msg.html


(defclass j2735_msgs::MovementEvent
  :super ros::object
  :slots (_event_state _timing _timing_exists _speeds _speeds_exists ))

(defmethod j2735_msgs::MovementEvent
  (:init
   (&key
    ((:event_state __event_state) (instance j2735_msgs::MovementPhaseState :init))
    ((:timing __timing) (instance j2735_msgs::TimeChangeDetails :init))
    ((:timing_exists __timing_exists) nil)
    ((:speeds __speeds) (instance j2735_msgs::AdvisorySpeedList :init))
    ((:speeds_exists __speeds_exists) nil)
    )
   (send-super :init)
   (setq _event_state __event_state)
   (setq _timing __timing)
   (setq _timing_exists __timing_exists)
   (setq _speeds __speeds)
   (setq _speeds_exists __speeds_exists)
   self)
  (:event_state
   (&rest __event_state)
   (if (keywordp (car __event_state))
       (send* _event_state __event_state)
     (progn
       (if __event_state (setq _event_state (car __event_state)))
       _event_state)))
  (:timing
   (&rest __timing)
   (if (keywordp (car __timing))
       (send* _timing __timing)
     (progn
       (if __timing (setq _timing (car __timing)))
       _timing)))
  (:timing_exists
   (&optional (__timing_exists :null))
   (if (not (eq __timing_exists :null)) (setq _timing_exists __timing_exists)) _timing_exists)
  (:speeds
   (&rest __speeds)
   (if (keywordp (car __speeds))
       (send* _speeds __speeds)
     (progn
       (if __speeds (setq _speeds (car __speeds)))
       _speeds)))
  (:speeds_exists
   (&optional (__speeds_exists :null))
   (if (not (eq __speeds_exists :null)) (setq _speeds_exists __speeds_exists)) _speeds_exists)
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/MovementPhaseState _event_state
    (send _event_state :serialization-length)
    ;; j2735_msgs/TimeChangeDetails _timing
    (send _timing :serialization-length)
    ;; bool _timing_exists
    1
    ;; j2735_msgs/AdvisorySpeedList _speeds
    (send _speeds :serialization-length)
    ;; bool _speeds_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/MovementPhaseState _event_state
       (send _event_state :serialize s)
     ;; j2735_msgs/TimeChangeDetails _timing
       (send _timing :serialize s)
     ;; bool _timing_exists
       (if _timing_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/AdvisorySpeedList _speeds
       (send _speeds :serialize s)
     ;; bool _speeds_exists
       (if _speeds_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/MovementPhaseState _event_state
     (send _event_state :deserialize buf ptr-) (incf ptr- (send _event_state :serialization-length))
   ;; j2735_msgs/TimeChangeDetails _timing
     (send _timing :deserialize buf ptr-) (incf ptr- (send _timing :serialization-length))
   ;; bool _timing_exists
     (setq _timing_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/AdvisorySpeedList _speeds
     (send _speeds :deserialize buf ptr-) (incf ptr- (send _speeds :serialization-length))
   ;; bool _speeds_exists
     (setq _speeds_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::MovementEvent :md5sum-) "761599329944c7cfb6a4fdf84a54a500")
(setf (get j2735_msgs::MovementEvent :datatype-) "j2735_msgs/MovementEvent")
(setf (get j2735_msgs::MovementEvent :definition-)
      "#
# MovementEvent.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The MovementEvent data frame contains details about a single movement. It is used by the movement state to
# convey one of number of movements (typically occurring over a sequence of times) for a SignalGroupID.
#
# MovementEvent ::= SEQUENCE {
# eventState MovementPhaseState,
# -- Consisting of:
# -- Phase state (the basic 11 states)
# -- Directional, protected, or permissive state
# timing TimeChangeDetails OPTIONAL,
# -- Timing Data in UTC time stamps for event
# -- includes start and min/max end times of phase
# -- confidence and estimated next occurrence
# speeds AdvisorySpeedList OPTIONAL,
# -- various speed advisories for use by
# -- general and specific types of vehicles
# -- supporting green-wave and other flow needs
# -- See Section 11 for converting and translating
# -- speed expressed in mph into units of m/s
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-MovementEvent}} OPTIONAL,
# ...
# }

j2735_msgs/MovementPhaseState event_state

j2735_msgs/TimeChangeDetails timing
bool timing_exists

j2735_msgs/AdvisorySpeedList speeds
bool speeds_exists

#regional #TODO: RegionalExtensions are not yet implemented in asn1c



================================================================================
MSG: j2735_msgs/MovementPhaseState
#
# MovementEvent.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_MovementPhaseState data element provides the overall current state of the movement (in many cases a
# signal state), including its core phase state and an indication of whether this state is permissive or protected.
#
# MovementPhaseState ::= ENUMERATED {
# -- Note that based on the regions and the operating mode not every
# -- phase will be used in all transportation modes and that not
# -- every phase will be used in all transportation modes
# unavailable (0),
# -- This state is used for unknown or error
# dark (1),
# -- The signal head is dark (unlit)
# -- Reds
# stop-Then-Proceed (2),
# -- Often called 'flashing red' in US
# -- Driver Action:
# -Stop vehicle at stop line.
# -Do not proceed unless it is safe.
# -- Note that the right to proceed either right or left
# -- it is safe may be contained in the lane description
# -- handle what is called a 'right on red'
# stop-And-Remain (3),
# -- e.g. called 'red light' in US
# -- Driver Action:
# -Stop vehicle at stop line.
# -Do not proceed.
# -- Note that the right to proceed either right or left
# -- it is safe may be contained in the lane description
# -- handle what is called a 'right on red'
# -- Greens
# pre-Movement (4),
# -- Not used in the US, red+yellow partly in EU
# -- Driver Action:
# -Stop vehicle.
# -Prepare to proceed (pending green)
# -(Prepare for transition to green/go)
# permissive-Movement-Allowed (5),
# -- Often called 'permissive green' in US
# -- Driver Action:
# -Proceed with caution,
# -must yield to all conflicting traffic
# -- Conflicting traffic may be present
# -- in the intersection conflict area
# protected-Movement-Allowed (6),
# -- Often called 'protected green' in US
# -- Driver Action:
# -Proceed, tossing caution to the wind,
# -in indicated (allowed) direction.
# -- Yellows / Ambers
# -- The vehicle is not allowed to cross the stop bar if it is possible
# -- to stop without danger.
# permissive-clearance (7),
# -- Often called 'permissive yellow' in US
# -- Driver Action:
# -Prepare to stop.
# -Proceed if unable to stop,
# -Clear Intersection.
# -- Conflicting traffic may be present
# -- in the intersection conflict area
# protected-clearance (8),
# -- Often called 'protected yellow' in US
# -- Driver Action:
# -Prepare to stop.
# -Proceed if unable to stop,
# -in indicated direction (to connected lane)
# -Clear Intersection.
# caution-Conflicting-Traffic (9)
# -- Often called 'flashing yellow' in US
# -- Often used for extended periods of time
# -- Driver Action:
# -Proceed with caution,
# -- Conflicting traffic may be present
# -- in the intersection conflict area
# }
# -- The above number assignments are not used with UPER encoding
# -- and are only to be used with DER or implicit encoding

uint8 movement_phase_state

uint8 UNAVAILABLE=0
uint8 DARK=1
uint8 STOP_THEN_PROCEED=2
uint8 STOP_AND_REMAIN=3
uint8 PRE_MOVEMENT=4
uint8 PERMISSIVE_MOVEMENT_ALLOWED=5
uint8 PROTECTED_MOVEMENT_ALLOWED=6
uint8 PERMISSIVE_CLEARANCE=7
uint8 PROTECTED_CLEARANCE=8
uint8 CAUTION_CONFLICTING_TRAFFIC=9


================================================================================
MSG: j2735_msgs/TimeChangeDetails
#
# TimeChangeDetails.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
# timing is employed.
#
#
# TimeChangeDetails ::= SEQUENCE {
# startTime TimeMark OPTIONAL,
# -- When this phase 1st started
# minEndTime TimeMark,
# -- Expected shortest end time
# maxEndTime TimeMark OPTIONAL,
# -- Expected longest end time
# likelyTime TimeMark OPTIONAL,
# -- Best predicted value based on other data
# confidence TimeIntervalConfidence OPTIONAL,
# -- Applies to above time element only
# nextTime TimeMark OPTIONAL
# -- A rough estimate of time when
# -- this phase may next occur again
# -- used to support various ECO driving power
# -- management needs.
# }

# TimeMark ::= INTEGER (0..36001)
# -- Tenths of a second in the current or next hour
# -- In units of 1/10th second from UTC time
# -- A range of 0~36000 covers one hour
# -- The values 35991..35999 are used when a leap second occurs
# -- The value 36000 is used to indicate time >3600 seconds
# -- 36001 is to be used when value undefined or unknown
# -- Note that this is NOT expressed in GPS time
# -- or in local time
uint16 start_time
bool start_time_exists

uint16 min_end_time

uint16 max_end_time
bool max_end_time_exists

uint16 likely_time
bool likely_time_exists

#TimeIntervalConfidence ::= INTEGER (0..15)
uint8 confidence
bool confidence_exists

# TimeMark ::= INTEGER (0..36001)
uint16 next_time
bool next_time_exists


================================================================================
MSG: j2735_msgs/AdvisorySpeedList
#
# AdvisorySpeedList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The AdvisorySpeedList data frame consists of a list of AdvisorySpeed entries.
#
# AdvisorySpeedList ::= SEQUENCE (SIZE(1..16)) OF AdvisorySpeed

j2735_msgs/AdvisorySpeed[] advisory_speed_list
================================================================================
MSG: j2735_msgs/AdvisorySpeed
#
# AdvisorySpeed.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection
# from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this
# allows transmitting recommended speeds for specialty vehicles such as transit buses.
# AdvisorySpeed ::= SEQUENCE {
# type AdvisorySpeedType,
# -- the type of advisory which this is.
# speed SpeedAdvice OPTIONAL,
# -- See Section 11 for converting and translating speed
# -- expressed in mph into units of m/s
# -- This element is optional ONLY when superceded
# -- by the presence of a regional speed element found in
# -- Reg-AdvisorySpeed entry
# confidence SpeedConfidence OPTIONAL,
# -- A confidence value for the above speed
# distance ZoneLength OPTIONAL,
# -- Unit = 1 meter,
# -- The distance indicates the region for which the advised speed
# -- is recommended, it is specified upstream from the stop bar
# -- along the connected egressing lane
# class RestrictionClassID OPTIONAL,
# -- the vehicle types to which it applies
# -- when absent, the AdvisorySpeed applies to
# -- all motor vehicle types
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,
# ...
# }

j2735_msgs/AdvisorySpeedType type

# SpeedAdvice ::= INTEGER (0..500) OPTIONAL
# This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,
# expressed in unsigned units of 0.1 meters per second.
#-- LSB units are 0.1 m/s^2
#-- the value 499 shall be used for values at or greater than 49.9 m/s
#-- the value 500 shall be used to indicate that speed is unavailable
float32 speed
float32 SPEED_UNAVAILABLE = 500
bool speed_exists

# SpeedConfidence is an enum already with 0 as unavailable.
j2735_msgs/SpeedConfidence confidence

# ZoneLength ::= INTEGER (0..10000)
# -- Unit = 1 meter, 0 = unknown,
# -- The value 10000 to be used for Distances >=10000 m
# -- (e.g. from known point to another point along a
# -- known path, often against traffic flow direction
# -- when used for measuring queues)
uint16 distance
uint16 DISTANCE_UNKNOWN=0
bool distance_exists

# RestrictionClassID ::= INTEGER (0..255)
uint8 restriction_class_id
bool restriction_class_id_exists

# regional #TODO: RegionalExtensions are not yet implemented in asn1c



================================================================================
MSG: j2735_msgs/AdvisorySpeedType
#
# AdvisorySpeedType.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is
# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.
#
# AdvisorySpeedType ::= ENUMERATED {
# none (0),
# greenwave (1),
# ecoDrive (2),
# transit (3),
# ...
# } -- Note: subject to further growth

uint8 advisory_speed_type

uint8 NONE=0
uint8 GREENWAVE=1
uint8 ECODRIVE=2
uint8 TRANSIT=3

================================================================================
MSG: j2735_msgs/SpeedConfidence
#
# SpeedConfidence.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported
# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or
# calculate the value.

# SpeedConfidence ::= ENUMERATED {
# unavailable (0), -- Not Equipped or unavailable
# prec100ms (1), -- 100 meters / sec
# prec10ms(2), -- 10 meters / sec
# prec5ms (3), -- 5 meters / sec
# prec1ms (4), -- 1 meters / sec
# prec0-1ms (5), -- 0.1 meters / sec
# prec0-05ms (6), -- -- 0.05 meters / sec
# prec0-01ms (7) -- -- 0.01 meters / sec
# }

uint8 speed_confidence

uint8 UNAVAILABLE=0
uint8 PREC100MS=1
uint8 PREC10MS=2
uint8 PREC5MS=3
uint8 PREC1MS=4
uint8 PREC0_1MS=5
uint8 PREC0_05MS=6
uint8 PREC0_01MS=7
")



(provide :j2735_msgs/MovementEvent "761599329944c7cfb6a4fdf84a54a500")


