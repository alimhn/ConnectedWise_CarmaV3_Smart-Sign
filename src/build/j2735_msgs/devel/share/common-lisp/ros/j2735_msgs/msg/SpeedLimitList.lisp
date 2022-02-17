; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude SpeedLimitList.msg.html

(cl:defclass <SpeedLimitList> (roslisp-msg-protocol:ros-message)
  ((speed_limits
    :reader speed_limits
    :initarg :speed_limits
    :type (cl:vector j2735_msgs-msg:RegulatorySpeedLimit)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:RegulatorySpeedLimit :initial-element (cl:make-instance 'j2735_msgs-msg:RegulatorySpeedLimit))))
)

(cl:defclass SpeedLimitList (<SpeedLimitList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedLimitList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedLimitList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<SpeedLimitList> is deprecated: use j2735_msgs-msg:SpeedLimitList instead.")))

(cl:ensure-generic-function 'speed_limits-val :lambda-list '(m))
(cl:defmethod speed_limits-val ((m <SpeedLimitList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed_limits-val is deprecated.  Use j2735_msgs-msg:speed_limits instead.")
  (speed_limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedLimitList>) ostream)
  "Serializes a message object of type '<SpeedLimitList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'speed_limits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedLimitList>) istream)
  "Deserializes a message object of type '<SpeedLimitList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:RegulatorySpeedLimit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedLimitList>)))
  "Returns string type for a message object of type '<SpeedLimitList>"
  "j2735_msgs/SpeedLimitList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedLimitList)))
  "Returns string type for a message object of type 'SpeedLimitList"
  "j2735_msgs/SpeedLimitList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedLimitList>)))
  "Returns md5sum for a message object of type '<SpeedLimitList>"
  "aa3a8bdd3d4567c7dd66a46382a0f4b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedLimitList)))
  "Returns md5sum for a message object of type 'SpeedLimitList"
  "aa3a8bdd3d4567c7dd66a46382a0f4b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedLimitList>)))
  "Returns full string definition for message of type '<SpeedLimitList>"
  (cl:format cl:nil "#~%# SpeedLimitList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%~%#A list of RegulatorySpeedLimit~%j2735_msgs/RegulatorySpeedLimit[] speed_limits~%================================================================================~%MSG: j2735_msgs/RegulatorySpeedLimit~%#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedLimitList)))
  "Returns full string definition for message of type 'SpeedLimitList"
  (cl:format cl:nil "#~%# SpeedLimitList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%~%#A list of RegulatorySpeedLimit~%j2735_msgs/RegulatorySpeedLimit[] speed_limits~%================================================================================~%MSG: j2735_msgs/RegulatorySpeedLimit~%#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedLimitList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedLimitList>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedLimitList
    (cl:cons ':speed_limits (speed_limits msg))
))
