; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude SpeedConfidence.msg.html

(cl:defclass <SpeedConfidence> (roslisp-msg-protocol:ros-message)
  ((speed_confidence
    :reader speed_confidence
    :initarg :speed_confidence
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedConfidence (<SpeedConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<SpeedConfidence> is deprecated: use j2735_msgs-msg:SpeedConfidence instead.")))

(cl:ensure-generic-function 'speed_confidence-val :lambda-list '(m))
(cl:defmethod speed_confidence-val ((m <SpeedConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed_confidence-val is deprecated.  Use j2735_msgs-msg:speed_confidence instead.")
  (speed_confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedConfidence>)))
    "Constants for message type '<SpeedConfidence>"
  '((:UNAVAILABLE . 0)
    (:PREC100MS . 1)
    (:PREC10MS . 2)
    (:PREC5MS . 3)
    (:PREC1MS . 4)
    (:PREC0_1MS . 5)
    (:PREC0_05MS . 6)
    (:PREC0_01MS . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedConfidence)))
    "Constants for message type 'SpeedConfidence"
  '((:UNAVAILABLE . 0)
    (:PREC100MS . 1)
    (:PREC10MS . 2)
    (:PREC5MS . 3)
    (:PREC1MS . 4)
    (:PREC0_1MS . 5)
    (:PREC0_05MS . 6)
    (:PREC0_01MS . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedConfidence>) ostream)
  "Serializes a message object of type '<SpeedConfidence>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedConfidence>) istream)
  "Deserializes a message object of type '<SpeedConfidence>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedConfidence>)))
  "Returns string type for a message object of type '<SpeedConfidence>"
  "j2735_msgs/SpeedConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedConfidence)))
  "Returns string type for a message object of type 'SpeedConfidence"
  "j2735_msgs/SpeedConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedConfidence>)))
  "Returns md5sum for a message object of type '<SpeedConfidence>"
  "a542e0efd9d48eb9bcc3e9968cb696e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedConfidence)))
  "Returns md5sum for a message object of type 'SpeedConfidence"
  "a542e0efd9d48eb9bcc3e9968cb696e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedConfidence>)))
  "Returns full string definition for message of type '<SpeedConfidence>"
  (cl:format cl:nil "#~%# SpeedConfidence.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported~%# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or~%# calculate the value.~%~%# SpeedConfidence ::= ENUMERATED {~%# unavailable (0), -- Not Equipped or unavailable~%# prec100ms (1), -- 100 meters / sec~%# prec10ms(2), -- 10 meters / sec~%# prec5ms (3), -- 5 meters / sec~%# prec1ms (4), -- 1 meters / sec~%# prec0-1ms (5), -- 0.1 meters / sec~%# prec0-05ms (6), -- -- 0.05 meters / sec~%# prec0-01ms (7) -- -- 0.01 meters / sec~%# }~%~%uint8 speed_confidence~%~%uint8 UNAVAILABLE=0~%uint8 PREC100MS=1~%uint8 PREC10MS=2~%uint8 PREC5MS=3~%uint8 PREC1MS=4~%uint8 PREC0_1MS=5~%uint8 PREC0_05MS=6~%uint8 PREC0_01MS=7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedConfidence)))
  "Returns full string definition for message of type 'SpeedConfidence"
  (cl:format cl:nil "#~%# SpeedConfidence.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported~%# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or~%# calculate the value.~%~%# SpeedConfidence ::= ENUMERATED {~%# unavailable (0), -- Not Equipped or unavailable~%# prec100ms (1), -- 100 meters / sec~%# prec10ms(2), -- 10 meters / sec~%# prec5ms (3), -- 5 meters / sec~%# prec1ms (4), -- 1 meters / sec~%# prec0-1ms (5), -- 0.1 meters / sec~%# prec0-05ms (6), -- -- 0.05 meters / sec~%# prec0-01ms (7) -- -- 0.01 meters / sec~%# }~%~%uint8 speed_confidence~%~%uint8 UNAVAILABLE=0~%uint8 PREC100MS=1~%uint8 PREC10MS=2~%uint8 PREC5MS=3~%uint8 PREC1MS=4~%uint8 PREC0_1MS=5~%uint8 PREC0_05MS=6~%uint8 PREC0_01MS=7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedConfidence>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedConfidence
    (cl:cons ':speed_confidence (speed_confidence msg))
))
