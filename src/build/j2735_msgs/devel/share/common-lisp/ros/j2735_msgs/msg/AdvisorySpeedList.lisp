; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AdvisorySpeedList.msg.html

(cl:defclass <AdvisorySpeedList> (roslisp-msg-protocol:ros-message)
  ((advisory_speed_list
    :reader advisory_speed_list
    :initarg :advisory_speed_list
    :type (cl:vector j2735_msgs-msg:AdvisorySpeed)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:AdvisorySpeed :initial-element (cl:make-instance 'j2735_msgs-msg:AdvisorySpeed))))
)

(cl:defclass AdvisorySpeedList (<AdvisorySpeedList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvisorySpeedList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvisorySpeedList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AdvisorySpeedList> is deprecated: use j2735_msgs-msg:AdvisorySpeedList instead.")))

(cl:ensure-generic-function 'advisory_speed_list-val :lambda-list '(m))
(cl:defmethod advisory_speed_list-val ((m <AdvisorySpeedList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:advisory_speed_list-val is deprecated.  Use j2735_msgs-msg:advisory_speed_list instead.")
  (advisory_speed_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvisorySpeedList>) ostream)
  "Serializes a message object of type '<AdvisorySpeedList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'advisory_speed_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'advisory_speed_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvisorySpeedList>) istream)
  "Deserializes a message object of type '<AdvisorySpeedList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'advisory_speed_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'advisory_speed_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:AdvisorySpeed))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvisorySpeedList>)))
  "Returns string type for a message object of type '<AdvisorySpeedList>"
  "j2735_msgs/AdvisorySpeedList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvisorySpeedList)))
  "Returns string type for a message object of type 'AdvisorySpeedList"
  "j2735_msgs/AdvisorySpeedList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvisorySpeedList>)))
  "Returns md5sum for a message object of type '<AdvisorySpeedList>"
  "57e8f178d0ed548ff5c89e1c779b4790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvisorySpeedList)))
  "Returns md5sum for a message object of type 'AdvisorySpeedList"
  "57e8f178d0ed548ff5c89e1c779b4790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvisorySpeedList>)))
  "Returns full string definition for message of type '<AdvisorySpeedList>"
  (cl:format cl:nil "#~%# AdvisorySpeedList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The AdvisorySpeedList data frame consists of a list of AdvisorySpeed entries.~%#~%# AdvisorySpeedList ::= SEQUENCE (SIZE(1..16)) OF AdvisorySpeed~%~%j2735_msgs/AdvisorySpeed[] advisory_speed_list~%================================================================================~%MSG: j2735_msgs/AdvisorySpeed~%#~%# AdvisorySpeed.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection~%# from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this~%# allows transmitting recommended speeds for specialty vehicles such as transit buses.~%# AdvisorySpeed ::= SEQUENCE {~%# type AdvisorySpeedType,~%# -- the type of advisory which this is.~%# speed SpeedAdvice OPTIONAL,~%# -- See Section 11 for converting and translating speed~%# -- expressed in mph into units of m/s~%# -- This element is optional ONLY when superceded~%# -- by the presence of a regional speed element found in~%# -- Reg-AdvisorySpeed entry~%# confidence SpeedConfidence OPTIONAL,~%# -- A confidence value for the above speed~%# distance ZoneLength OPTIONAL,~%# -- Unit = 1 meter,~%# -- The distance indicates the region for which the advised speed~%# -- is recommended, it is specified upstream from the stop bar~%# -- along the connected egressing lane~%# class RestrictionClassID OPTIONAL,~%# -- the vehicle types to which it applies~%# -- when absent, the AdvisorySpeed applies to~%# -- all motor vehicle types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,~%# ...~%# }~%~%j2735_msgs/AdvisorySpeedType type~%~%# SpeedAdvice ::= INTEGER (0..500) OPTIONAL~%# This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,~%# expressed in unsigned units of 0.1 meters per second.~%#-- LSB units are 0.1 m/s^2~%#-- the value 499 shall be used for values at or greater than 49.9 m/s~%#-- the value 500 shall be used to indicate that speed is unavailable~%float32 speed~%float32 SPEED_UNAVAILABLE = 500~%bool speed_exists~%~%# SpeedConfidence is an enum already with 0 as unavailable.~%j2735_msgs/SpeedConfidence confidence~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 distance~%uint16 DISTANCE_UNKNOWN=0~%bool distance_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 restriction_class_id~%bool restriction_class_id_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%~%~%================================================================================~%MSG: j2735_msgs/AdvisorySpeedType~%#~%# AdvisorySpeedType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is~%# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.~%#~%# AdvisorySpeedType ::= ENUMERATED {~%# none (0),~%# greenwave (1),~%# ecoDrive (2),~%# transit (3),~%# ...~%# } -- Note: subject to further growth~%~%uint8 advisory_speed_type~%~%uint8 NONE=0~%uint8 GREENWAVE=1~%uint8 ECODRIVE=2~%uint8 TRANSIT=3~%~%================================================================================~%MSG: j2735_msgs/SpeedConfidence~%#~%# SpeedConfidence.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported~%# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or~%# calculate the value.~%~%# SpeedConfidence ::= ENUMERATED {~%# unavailable (0), -- Not Equipped or unavailable~%# prec100ms (1), -- 100 meters / sec~%# prec10ms(2), -- 10 meters / sec~%# prec5ms (3), -- 5 meters / sec~%# prec1ms (4), -- 1 meters / sec~%# prec0-1ms (5), -- 0.1 meters / sec~%# prec0-05ms (6), -- -- 0.05 meters / sec~%# prec0-01ms (7) -- -- 0.01 meters / sec~%# }~%~%uint8 speed_confidence~%~%uint8 UNAVAILABLE=0~%uint8 PREC100MS=1~%uint8 PREC10MS=2~%uint8 PREC5MS=3~%uint8 PREC1MS=4~%uint8 PREC0_1MS=5~%uint8 PREC0_05MS=6~%uint8 PREC0_01MS=7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvisorySpeedList)))
  "Returns full string definition for message of type 'AdvisorySpeedList"
  (cl:format cl:nil "#~%# AdvisorySpeedList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The AdvisorySpeedList data frame consists of a list of AdvisorySpeed entries.~%#~%# AdvisorySpeedList ::= SEQUENCE (SIZE(1..16)) OF AdvisorySpeed~%~%j2735_msgs/AdvisorySpeed[] advisory_speed_list~%================================================================================~%MSG: j2735_msgs/AdvisorySpeed~%#~%# AdvisorySpeed.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection~%# from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this~%# allows transmitting recommended speeds for specialty vehicles such as transit buses.~%# AdvisorySpeed ::= SEQUENCE {~%# type AdvisorySpeedType,~%# -- the type of advisory which this is.~%# speed SpeedAdvice OPTIONAL,~%# -- See Section 11 for converting and translating speed~%# -- expressed in mph into units of m/s~%# -- This element is optional ONLY when superceded~%# -- by the presence of a regional speed element found in~%# -- Reg-AdvisorySpeed entry~%# confidence SpeedConfidence OPTIONAL,~%# -- A confidence value for the above speed~%# distance ZoneLength OPTIONAL,~%# -- Unit = 1 meter,~%# -- The distance indicates the region for which the advised speed~%# -- is recommended, it is specified upstream from the stop bar~%# -- along the connected egressing lane~%# class RestrictionClassID OPTIONAL,~%# -- the vehicle types to which it applies~%# -- when absent, the AdvisorySpeed applies to~%# -- all motor vehicle types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,~%# ...~%# }~%~%j2735_msgs/AdvisorySpeedType type~%~%# SpeedAdvice ::= INTEGER (0..500) OPTIONAL~%# This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,~%# expressed in unsigned units of 0.1 meters per second.~%#-- LSB units are 0.1 m/s^2~%#-- the value 499 shall be used for values at or greater than 49.9 m/s~%#-- the value 500 shall be used to indicate that speed is unavailable~%float32 speed~%float32 SPEED_UNAVAILABLE = 500~%bool speed_exists~%~%# SpeedConfidence is an enum already with 0 as unavailable.~%j2735_msgs/SpeedConfidence confidence~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 distance~%uint16 DISTANCE_UNKNOWN=0~%bool distance_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 restriction_class_id~%bool restriction_class_id_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%~%~%================================================================================~%MSG: j2735_msgs/AdvisorySpeedType~%#~%# AdvisorySpeedType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is~%# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.~%#~%# AdvisorySpeedType ::= ENUMERATED {~%# none (0),~%# greenwave (1),~%# ecoDrive (2),~%# transit (3),~%# ...~%# } -- Note: subject to further growth~%~%uint8 advisory_speed_type~%~%uint8 NONE=0~%uint8 GREENWAVE=1~%uint8 ECODRIVE=2~%uint8 TRANSIT=3~%~%================================================================================~%MSG: j2735_msgs/SpeedConfidence~%#~%# SpeedConfidence.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported~%# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or~%# calculate the value.~%~%# SpeedConfidence ::= ENUMERATED {~%# unavailable (0), -- Not Equipped or unavailable~%# prec100ms (1), -- 100 meters / sec~%# prec10ms(2), -- 10 meters / sec~%# prec5ms (3), -- 5 meters / sec~%# prec1ms (4), -- 1 meters / sec~%# prec0-1ms (5), -- 0.1 meters / sec~%# prec0-05ms (6), -- -- 0.05 meters / sec~%# prec0-01ms (7) -- -- 0.01 meters / sec~%# }~%~%uint8 speed_confidence~%~%uint8 UNAVAILABLE=0~%uint8 PREC100MS=1~%uint8 PREC10MS=2~%uint8 PREC5MS=3~%uint8 PREC1MS=4~%uint8 PREC0_1MS=5~%uint8 PREC0_05MS=6~%uint8 PREC0_01MS=7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvisorySpeedList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'advisory_speed_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvisorySpeedList>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvisorySpeedList
    (cl:cons ':advisory_speed_list (advisory_speed_list msg))
))
