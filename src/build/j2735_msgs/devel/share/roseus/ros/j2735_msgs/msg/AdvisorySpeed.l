;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::AdvisorySpeed)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'AdvisorySpeed (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ADVISORYSPEED")
  (make-package "J2735_MSGS::ADVISORYSPEED"))

(in-package "ROS")
;;//! \htmlinclude AdvisorySpeed.msg.html


(intern "*SPEED_UNAVAILABLE*" (find-package "J2735_MSGS::ADVISORYSPEED"))
(shadow '*SPEED_UNAVAILABLE* (find-package "J2735_MSGS::ADVISORYSPEED"))
(defconstant j2735_msgs::AdvisorySpeed::*SPEED_UNAVAILABLE* 500.0)
(intern "*DISTANCE_UNKNOWN*" (find-package "J2735_MSGS::ADVISORYSPEED"))
(shadow '*DISTANCE_UNKNOWN* (find-package "J2735_MSGS::ADVISORYSPEED"))
(defconstant j2735_msgs::AdvisorySpeed::*DISTANCE_UNKNOWN* 0)

(defun j2735_msgs::AdvisorySpeed-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::AdvisorySpeed::*DISTANCE_UNKNOWN*)
        (t nil)))

(defclass j2735_msgs::AdvisorySpeed
  :super ros::object
  :slots (_type _speed _speed_exists _confidence _distance _distance_exists _restriction_class_id _restriction_class_id_exists ))

(defmethod j2735_msgs::AdvisorySpeed
  (:init
   (&key
    ((:type __type) (instance j2735_msgs::AdvisorySpeedType :init))
    ((:speed __speed) 0.0)
    ((:speed_exists __speed_exists) nil)
    ((:confidence __confidence) (instance j2735_msgs::SpeedConfidence :init))
    ((:distance __distance) 0)
    ((:distance_exists __distance_exists) nil)
    ((:restriction_class_id __restriction_class_id) 0)
    ((:restriction_class_id_exists __restriction_class_id_exists) nil)
    )
   (send-super :init)
   (setq _type __type)
   (setq _speed (float __speed))
   (setq _speed_exists __speed_exists)
   (setq _confidence __confidence)
   (setq _distance (round __distance))
   (setq _distance_exists __distance_exists)
   (setq _restriction_class_id (round __restriction_class_id))
   (setq _restriction_class_id_exists __restriction_class_id_exists)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:speed_exists
   (&optional (__speed_exists :null))
   (if (not (eq __speed_exists :null)) (setq _speed_exists __speed_exists)) _speed_exists)
  (:confidence
   (&rest __confidence)
   (if (keywordp (car __confidence))
       (send* _confidence __confidence)
     (progn
       (if __confidence (setq _confidence (car __confidence)))
       _confidence)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:distance_exists
   (&optional (__distance_exists :null))
   (if (not (eq __distance_exists :null)) (setq _distance_exists __distance_exists)) _distance_exists)
  (:restriction_class_id
   (&optional __restriction_class_id)
   (if __restriction_class_id (setq _restriction_class_id __restriction_class_id)) _restriction_class_id)
  (:restriction_class_id_exists
   (&optional (__restriction_class_id_exists :null))
   (if (not (eq __restriction_class_id_exists :null)) (setq _restriction_class_id_exists __restriction_class_id_exists)) _restriction_class_id_exists)
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/AdvisorySpeedType _type
    (send _type :serialization-length)
    ;; float32 _speed
    4
    ;; bool _speed_exists
    1
    ;; j2735_msgs/SpeedConfidence _confidence
    (send _confidence :serialization-length)
    ;; uint16 _distance
    2
    ;; bool _distance_exists
    1
    ;; uint8 _restriction_class_id
    1
    ;; bool _restriction_class_id_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/AdvisorySpeedType _type
       (send _type :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _speed_exists
       (if _speed_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/SpeedConfidence _confidence
       (send _confidence :serialize s)
     ;; uint16 _distance
       (write-word _distance s)
     ;; bool _distance_exists
       (if _distance_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _restriction_class_id
       (write-byte _restriction_class_id s)
     ;; bool _restriction_class_id_exists
       (if _restriction_class_id_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/AdvisorySpeedType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _speed_exists
     (setq _speed_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/SpeedConfidence _confidence
     (send _confidence :deserialize buf ptr-) (incf ptr- (send _confidence :serialization-length))
   ;; uint16 _distance
     (setq _distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _distance_exists
     (setq _distance_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _restriction_class_id
     (setq _restriction_class_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _restriction_class_id_exists
     (setq _restriction_class_id_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::AdvisorySpeed :md5sum-) "639b4e562eeb97caacd5b466a782e24a")
(setf (get j2735_msgs::AdvisorySpeed :datatype-) "j2735_msgs/AdvisorySpeed")
(setf (get j2735_msgs::AdvisorySpeed :definition-)
      "#
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



(provide :j2735_msgs/AdvisorySpeed "639b4e562eeb97caacd5b466a782e24a")


