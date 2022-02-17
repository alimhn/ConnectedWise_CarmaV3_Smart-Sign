; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RegulatorySpeedLimit.msg.html

(cl:defclass <RegulatorySpeedLimit> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type j2735_msgs-msg:SpeedLimitType
    :initform (cl:make-instance 'j2735_msgs-msg:SpeedLimitType))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass RegulatorySpeedLimit (<RegulatorySpeedLimit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegulatorySpeedLimit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegulatorySpeedLimit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RegulatorySpeedLimit> is deprecated: use j2735_msgs-msg:RegulatorySpeedLimit instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RegulatorySpeedLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:type-val is deprecated.  Use j2735_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <RegulatorySpeedLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed-val is deprecated.  Use j2735_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegulatorySpeedLimit>) ostream)
  "Serializes a message object of type '<RegulatorySpeedLimit>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegulatorySpeedLimit>) istream)
  "Deserializes a message object of type '<RegulatorySpeedLimit>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegulatorySpeedLimit>)))
  "Returns string type for a message object of type '<RegulatorySpeedLimit>"
  "j2735_msgs/RegulatorySpeedLimit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegulatorySpeedLimit)))
  "Returns string type for a message object of type 'RegulatorySpeedLimit"
  "j2735_msgs/RegulatorySpeedLimit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegulatorySpeedLimit>)))
  "Returns md5sum for a message object of type '<RegulatorySpeedLimit>"
  "cef067aea5329792cd32d5c233033d98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegulatorySpeedLimit)))
  "Returns md5sum for a message object of type 'RegulatorySpeedLimit"
  "cef067aea5329792cd32d5c233033d98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegulatorySpeedLimit>)))
  "Returns full string definition for message of type '<RegulatorySpeedLimit>"
  (cl:format cl:nil "#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegulatorySpeedLimit)))
  "Returns full string definition for message of type 'RegulatorySpeedLimit"
  (cl:format cl:nil "#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegulatorySpeedLimit>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegulatorySpeedLimit>))
  "Converts a ROS message object to a list"
  (cl:list 'RegulatorySpeedLimit
    (cl:cons ':type (type msg))
    (cl:cons ':speed (speed msg))
))
