; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude SpeedLimitType.msg.html

(cl:defclass <SpeedLimitType> (roslisp-msg-protocol:ros-message)
  ((speed_limit_type
    :reader speed_limit_type
    :initarg :speed_limit_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedLimitType (<SpeedLimitType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedLimitType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedLimitType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<SpeedLimitType> is deprecated: use j2735_msgs-msg:SpeedLimitType instead.")))

(cl:ensure-generic-function 'speed_limit_type-val :lambda-list '(m))
(cl:defmethod speed_limit_type-val ((m <SpeedLimitType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed_limit_type-val is deprecated.  Use j2735_msgs-msg:speed_limit_type instead.")
  (speed_limit_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedLimitType>)))
    "Constants for message type '<SpeedLimitType>"
  '((:UNKNOWN . 0)
    (:MAXSPEEDINSCHOOLZONE . 1)
    (:MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT . 2)
    (:MAXSPEEDINCONSTRUCTIONZONE . 3)
    (:VEHICLEMINSPEED . 4)
    (:VEHICLEMAXSPEED . 5)
    (:VEHICLENIGHTMAXSPEED . 6)
    (:TRUCKMINSPEED . 7)
    (:TRUCKMAXSPEED . 8)
    (:TRUCKNIGHTMAXSPEED . 9)
    (:VEHICLESWITHTRAILERSMINSPEED . 10)
    (:VEHICLESWITHTRAILERSMAXSPEED . 11)
    (:VEHICLESWITHTRAILERSNIGHTMAXSPEED . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedLimitType)))
    "Constants for message type 'SpeedLimitType"
  '((:UNKNOWN . 0)
    (:MAXSPEEDINSCHOOLZONE . 1)
    (:MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT . 2)
    (:MAXSPEEDINCONSTRUCTIONZONE . 3)
    (:VEHICLEMINSPEED . 4)
    (:VEHICLEMAXSPEED . 5)
    (:VEHICLENIGHTMAXSPEED . 6)
    (:TRUCKMINSPEED . 7)
    (:TRUCKMAXSPEED . 8)
    (:TRUCKNIGHTMAXSPEED . 9)
    (:VEHICLESWITHTRAILERSMINSPEED . 10)
    (:VEHICLESWITHTRAILERSMAXSPEED . 11)
    (:VEHICLESWITHTRAILERSNIGHTMAXSPEED . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedLimitType>) ostream)
  "Serializes a message object of type '<SpeedLimitType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedLimitType>) istream)
  "Deserializes a message object of type '<SpeedLimitType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedLimitType>)))
  "Returns string type for a message object of type '<SpeedLimitType>"
  "j2735_msgs/SpeedLimitType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedLimitType)))
  "Returns string type for a message object of type 'SpeedLimitType"
  "j2735_msgs/SpeedLimitType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedLimitType>)))
  "Returns md5sum for a message object of type '<SpeedLimitType>"
  "04fbf222f6540824b156a63c8174b9b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedLimitType)))
  "Returns md5sum for a message object of type 'SpeedLimitType"
  "04fbf222f6540824b156a63c8174b9b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedLimitType>)))
  "Returns full string definition for message of type '<SpeedLimitType>"
  (cl:format cl:nil "# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedLimitType)))
  "Returns full string definition for message of type 'SpeedLimitType"
  (cl:format cl:nil "# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedLimitType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedLimitType>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedLimitType
    (cl:cons ':speed_limit_type (speed_limit_type msg))
))
