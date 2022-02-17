; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AdvisorySpeed.msg.html

(cl:defclass <AdvisorySpeed> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type j2735_msgs-msg:AdvisorySpeedType
    :initform (cl:make-instance 'j2735_msgs-msg:AdvisorySpeedType))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (speed_exists
    :reader speed_exists
    :initarg :speed_exists
    :type cl:boolean
    :initform cl:nil)
   (confidence
    :reader confidence
    :initarg :confidence
    :type j2735_msgs-msg:SpeedConfidence
    :initform (cl:make-instance 'j2735_msgs-msg:SpeedConfidence))
   (distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0)
   (distance_exists
    :reader distance_exists
    :initarg :distance_exists
    :type cl:boolean
    :initform cl:nil)
   (restriction_class_id
    :reader restriction_class_id
    :initarg :restriction_class_id
    :type cl:fixnum
    :initform 0)
   (restriction_class_id_exists
    :reader restriction_class_id_exists
    :initarg :restriction_class_id_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AdvisorySpeed (<AdvisorySpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvisorySpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvisorySpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AdvisorySpeed> is deprecated: use j2735_msgs-msg:AdvisorySpeed instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:type-val is deprecated.  Use j2735_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed-val is deprecated.  Use j2735_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_exists-val :lambda-list '(m))
(cl:defmethod speed_exists-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed_exists-val is deprecated.  Use j2735_msgs-msg:speed_exists instead.")
  (speed_exists m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:confidence-val is deprecated.  Use j2735_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:distance-val is deprecated.  Use j2735_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'distance_exists-val :lambda-list '(m))
(cl:defmethod distance_exists-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:distance_exists-val is deprecated.  Use j2735_msgs-msg:distance_exists instead.")
  (distance_exists m))

(cl:ensure-generic-function 'restriction_class_id-val :lambda-list '(m))
(cl:defmethod restriction_class_id-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:restriction_class_id-val is deprecated.  Use j2735_msgs-msg:restriction_class_id instead.")
  (restriction_class_id m))

(cl:ensure-generic-function 'restriction_class_id_exists-val :lambda-list '(m))
(cl:defmethod restriction_class_id_exists-val ((m <AdvisorySpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:restriction_class_id_exists-val is deprecated.  Use j2735_msgs-msg:restriction_class_id_exists instead.")
  (restriction_class_id_exists m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AdvisorySpeed>)))
    "Constants for message type '<AdvisorySpeed>"
  '((:SPEED_UNAVAILABLE . 500.0)
    (:DISTANCE_UNKNOWN . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AdvisorySpeed)))
    "Constants for message type 'AdvisorySpeed"
  '((:SPEED_UNAVAILABLE . 500.0)
    (:DISTANCE_UNKNOWN . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvisorySpeed>) ostream)
  "Serializes a message object of type '<AdvisorySpeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speed_exists) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'confidence) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'distance_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restriction_class_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'restriction_class_id_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvisorySpeed>) istream)
  "Deserializes a message object of type '<AdvisorySpeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'speed_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'confidence) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restriction_class_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'restriction_class_id_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvisorySpeed>)))
  "Returns string type for a message object of type '<AdvisorySpeed>"
  "j2735_msgs/AdvisorySpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvisorySpeed)))
  "Returns string type for a message object of type 'AdvisorySpeed"
  "j2735_msgs/AdvisorySpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvisorySpeed>)))
  "Returns md5sum for a message object of type '<AdvisorySpeed>"
  "639b4e562eeb97caacd5b466a782e24a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvisorySpeed)))
  "Returns md5sum for a message object of type 'AdvisorySpeed"
  "639b4e562eeb97caacd5b466a782e24a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvisorySpeed>)))
  "Returns full string definition for message of type '<AdvisorySpeed>"
  (cl:format cl:nil "#~%# AdvisorySpeed.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection~%# from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this~%# allows transmitting recommended speeds for specialty vehicles such as transit buses.~%# AdvisorySpeed ::= SEQUENCE {~%# type AdvisorySpeedType,~%# -- the type of advisory which this is.~%# speed SpeedAdvice OPTIONAL,~%# -- See Section 11 for converting and translating speed~%# -- expressed in mph into units of m/s~%# -- This element is optional ONLY when superceded~%# -- by the presence of a regional speed element found in~%# -- Reg-AdvisorySpeed entry~%# confidence SpeedConfidence OPTIONAL,~%# -- A confidence value for the above speed~%# distance ZoneLength OPTIONAL,~%# -- Unit = 1 meter,~%# -- The distance indicates the region for which the advised speed~%# -- is recommended, it is specified upstream from the stop bar~%# -- along the connected egressing lane~%# class RestrictionClassID OPTIONAL,~%# -- the vehicle types to which it applies~%# -- when absent, the AdvisorySpeed applies to~%# -- all motor vehicle types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,~%# ...~%# }~%~%j2735_msgs/AdvisorySpeedType type~%~%# SpeedAdvice ::= INTEGER (0..500) OPTIONAL~%# This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,~%# expressed in unsigned units of 0.1 meters per second.~%#-- LSB units are 0.1 m/s^2~%#-- the value 499 shall be used for values at or greater than 49.9 m/s~%#-- the value 500 shall be used to indicate that speed is unavailable~%float32 speed~%float32 SPEED_UNAVAILABLE = 500~%bool speed_exists~%~%# SpeedConfidence is an enum already with 0 as unavailable.~%j2735_msgs/SpeedConfidence confidence~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 distance~%uint16 DISTANCE_UNKNOWN=0~%bool distance_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 restriction_class_id~%bool restriction_class_id_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%~%~%================================================================================~%MSG: j2735_msgs/AdvisorySpeedType~%#~%# AdvisorySpeedType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is~%# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.~%#~%# AdvisorySpeedType ::= ENUMERATED {~%# none (0),~%# greenwave (1),~%# ecoDrive (2),~%# transit (3),~%# ...~%# } -- Note: subject to further growth~%~%uint8 advisory_speed_type~%~%uint8 NONE=0~%uint8 GREENWAVE=1~%uint8 ECODRIVE=2~%uint8 TRANSIT=3~%~%================================================================================~%MSG: j2735_msgs/SpeedConfidence~%#~%# SpeedConfidence.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported~%# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or~%# calculate the value.~%~%# SpeedConfidence ::= ENUMERATED {~%# unavailable (0), -- Not Equipped or unavailable~%# prec100ms (1), -- 100 meters / sec~%# prec10ms(2), -- 10 meters / sec~%# prec5ms (3), -- 5 meters / sec~%# prec1ms (4), -- 1 meters / sec~%# prec0-1ms (5), -- 0.1 meters / sec~%# prec0-05ms (6), -- -- 0.05 meters / sec~%# prec0-01ms (7) -- -- 0.01 meters / sec~%# }~%~%uint8 speed_confidence~%~%uint8 UNAVAILABLE=0~%uint8 PREC100MS=1~%uint8 PREC10MS=2~%uint8 PREC5MS=3~%uint8 PREC1MS=4~%uint8 PREC0_1MS=5~%uint8 PREC0_05MS=6~%uint8 PREC0_01MS=7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvisorySpeed)))
  "Returns full string definition for message of type 'AdvisorySpeed"
  (cl:format cl:nil "#~%# AdvisorySpeed.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection~%# from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this~%# allows transmitting recommended speeds for specialty vehicles such as transit buses.~%# AdvisorySpeed ::= SEQUENCE {~%# type AdvisorySpeedType,~%# -- the type of advisory which this is.~%# speed SpeedAdvice OPTIONAL,~%# -- See Section 11 for converting and translating speed~%# -- expressed in mph into units of m/s~%# -- This element is optional ONLY when superceded~%# -- by the presence of a regional speed element found in~%# -- Reg-AdvisorySpeed entry~%# confidence SpeedConfidence OPTIONAL,~%# -- A confidence value for the above speed~%# distance ZoneLength OPTIONAL,~%# -- Unit = 1 meter,~%# -- The distance indicates the region for which the advised speed~%# -- is recommended, it is specified upstream from the stop bar~%# -- along the connected egressing lane~%# class RestrictionClassID OPTIONAL,~%# -- the vehicle types to which it applies~%# -- when absent, the AdvisorySpeed applies to~%# -- all motor vehicle types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,~%# ...~%# }~%~%j2735_msgs/AdvisorySpeedType type~%~%# SpeedAdvice ::= INTEGER (0..500) OPTIONAL~%# This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,~%# expressed in unsigned units of 0.1 meters per second.~%#-- LSB units are 0.1 m/s^2~%#-- the value 499 shall be used for values at or greater than 49.9 m/s~%#-- the value 500 shall be used to indicate that speed is unavailable~%float32 speed~%float32 SPEED_UNAVAILABLE = 500~%bool speed_exists~%~%# SpeedConfidence is an enum already with 0 as unavailable.~%j2735_msgs/SpeedConfidence confidence~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 distance~%uint16 DISTANCE_UNKNOWN=0~%bool distance_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 restriction_class_id~%bool restriction_class_id_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%~%~%================================================================================~%MSG: j2735_msgs/AdvisorySpeedType~%#~%# AdvisorySpeedType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is~%# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.~%#~%# AdvisorySpeedType ::= ENUMERATED {~%# none (0),~%# greenwave (1),~%# ecoDrive (2),~%# transit (3),~%# ...~%# } -- Note: subject to further growth~%~%uint8 advisory_speed_type~%~%uint8 NONE=0~%uint8 GREENWAVE=1~%uint8 ECODRIVE=2~%uint8 TRANSIT=3~%~%================================================================================~%MSG: j2735_msgs/SpeedConfidence~%#~%# SpeedConfidence.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported~%# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or~%# calculate the value.~%~%# SpeedConfidence ::= ENUMERATED {~%# unavailable (0), -- Not Equipped or unavailable~%# prec100ms (1), -- 100 meters / sec~%# prec10ms(2), -- 10 meters / sec~%# prec5ms (3), -- 5 meters / sec~%# prec1ms (4), -- 1 meters / sec~%# prec0-1ms (5), -- 0.1 meters / sec~%# prec0-05ms (6), -- -- 0.05 meters / sec~%# prec0-01ms (7) -- -- 0.01 meters / sec~%# }~%~%uint8 speed_confidence~%~%uint8 UNAVAILABLE=0~%uint8 PREC100MS=1~%uint8 PREC10MS=2~%uint8 PREC5MS=3~%uint8 PREC1MS=4~%uint8 PREC0_1MS=5~%uint8 PREC0_05MS=6~%uint8 PREC0_01MS=7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvisorySpeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'confidence))
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvisorySpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvisorySpeed
    (cl:cons ':type (type msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_exists (speed_exists msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':distance_exists (distance_exists msg))
    (cl:cons ':restriction_class_id (restriction_class_id msg))
    (cl:cons ':restriction_class_id_exists (restriction_class_id_exists msg))
))
