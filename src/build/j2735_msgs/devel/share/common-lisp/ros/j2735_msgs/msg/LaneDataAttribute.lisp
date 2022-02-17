; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneDataAttribute.msg.html

(cl:defclass <LaneDataAttribute> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (path_end_point_angle
    :reader path_end_point_angle
    :initarg :path_end_point_angle
    :type cl:fixnum
    :initform 0)
   (lane_crown_point_center
    :reader lane_crown_point_center
    :initarg :lane_crown_point_center
    :type cl:fixnum
    :initform 0)
   (lane_crown_point_right
    :reader lane_crown_point_right
    :initarg :lane_crown_point_right
    :type cl:fixnum
    :initform 0)
   (lane_crown_point_left
    :reader lane_crown_point_left
    :initarg :lane_crown_point_left
    :type cl:fixnum
    :initform 0)
   (lane_angle
    :reader lane_angle
    :initarg :lane_angle
    :type cl:fixnum
    :initform 0)
   (speed_limits
    :reader speed_limits
    :initarg :speed_limits
    :type j2735_msgs-msg:SpeedLimitList
    :initform (cl:make-instance 'j2735_msgs-msg:SpeedLimitList)))
)

(cl:defclass LaneDataAttribute (<LaneDataAttribute>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneDataAttribute>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneDataAttribute)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneDataAttribute> is deprecated: use j2735_msgs-msg:LaneDataAttribute instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'path_end_point_angle-val :lambda-list '(m))
(cl:defmethod path_end_point_angle-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:path_end_point_angle-val is deprecated.  Use j2735_msgs-msg:path_end_point_angle instead.")
  (path_end_point_angle m))

(cl:ensure-generic-function 'lane_crown_point_center-val :lambda-list '(m))
(cl:defmethod lane_crown_point_center-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_crown_point_center-val is deprecated.  Use j2735_msgs-msg:lane_crown_point_center instead.")
  (lane_crown_point_center m))

(cl:ensure-generic-function 'lane_crown_point_right-val :lambda-list '(m))
(cl:defmethod lane_crown_point_right-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_crown_point_right-val is deprecated.  Use j2735_msgs-msg:lane_crown_point_right instead.")
  (lane_crown_point_right m))

(cl:ensure-generic-function 'lane_crown_point_left-val :lambda-list '(m))
(cl:defmethod lane_crown_point_left-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_crown_point_left-val is deprecated.  Use j2735_msgs-msg:lane_crown_point_left instead.")
  (lane_crown_point_left m))

(cl:ensure-generic-function 'lane_angle-val :lambda-list '(m))
(cl:defmethod lane_angle-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_angle-val is deprecated.  Use j2735_msgs-msg:lane_angle instead.")
  (lane_angle m))

(cl:ensure-generic-function 'speed_limits-val :lambda-list '(m))
(cl:defmethod speed_limits-val ((m <LaneDataAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed_limits-val is deprecated.  Use j2735_msgs-msg:speed_limits instead.")
  (speed_limits m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneDataAttribute>)))
    "Constants for message type '<LaneDataAttribute>"
  '((:PATH_END_POINT_ANGLE . 0)
    (:LANE_CROWN_POINT_CENTER . 1)
    (:LANE_CROWN_POINT_LEFT . 2)
    (:LANE_CROWN_POINT_RIGHT . 3)
    (:LANE_ANGLE . 4)
    (:SPEED_LIMITS . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneDataAttribute)))
    "Constants for message type 'LaneDataAttribute"
  '((:PATH_END_POINT_ANGLE . 0)
    (:LANE_CROWN_POINT_CENTER . 1)
    (:LANE_CROWN_POINT_LEFT . 2)
    (:LANE_CROWN_POINT_RIGHT . 3)
    (:LANE_ANGLE . 4)
    (:SPEED_LIMITS . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneDataAttribute>) ostream)
  "Serializes a message object of type '<LaneDataAttribute>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'path_end_point_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_crown_point_center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_crown_point_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_crown_point_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_limits) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneDataAttribute>) istream)
  "Deserializes a message object of type '<LaneDataAttribute>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_end_point_angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_crown_point_center) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_crown_point_right) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_crown_point_left) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_limits) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneDataAttribute>)))
  "Returns string type for a message object of type '<LaneDataAttribute>"
  "j2735_msgs/LaneDataAttribute")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneDataAttribute)))
  "Returns string type for a message object of type 'LaneDataAttribute"
  "j2735_msgs/LaneDataAttribute")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneDataAttribute>)))
  "Returns md5sum for a message object of type '<LaneDataAttribute>"
  "60767373006c4dcaecb2eed2a25e812b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneDataAttribute)))
  "Returns md5sum for a message object of type 'LaneDataAttribute"
  "60767373006c4dcaecb2eed2a25e812b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneDataAttribute>)))
  "Returns full string definition for message of type '<LaneDataAttribute>"
  (cl:format cl:nil "~%~%# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a~%# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and~%# which is defined elsewhere in this standard.~%~%~%# LaneDataAttribute ::= CHOICE {~%# -- Segment attribute types and the data needed for each~%# pathEndPointAngle DeltaAngle,~%# -- adjusts final point/width slant~%# -- of the lane to align with the stop line~%# laneCrownPointCenter RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from centerline point~%# laneCrownPointLeft RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from left edge~%# laneCrownPointRight RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from right edge~%# laneAngle MergeDivergeNodeAngle,~%# -- the angle or direction of another lane~%# -- this is required to support Japan style~%# -- when a merge point angle is required~%# speedLimits SpeedLimitList,~%# -- Reference regulatory speed limits~%# -- used by all segments~%# -- Add others as needed, in regional space~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},~%# ...~%# }~%~%uint8 choice~%uint8 PATH_END_POINT_ANGLE=0~%uint8 LANE_CROWN_POINT_CENTER=1~%uint8 LANE_CROWN_POINT_LEFT=2~%uint8 LANE_CROWN_POINT_RIGHT=3~%uint8 LANE_ANGLE=4~%uint8 SPEED_LIMITS=5~%~%# DeltaAngle ::= INTEGER (-150..150)~%# -- With an angle range from~%# -- negative 150 to positive 150~%# -- in one degree steps where zero is directly~%# -- along the axis or the lane center line as defined by the~%# -- two closest points~%#~%# The DeltaAngle data element provides the final angle used in the last point of the lane path.~%# Used to \"cant\" the stop line of the lane.~%~%int16 path_end_point_angle~%~%# RoadwayCrownAngle ::= INTEGER (-128..127)~%# -- In LSB units of 0.3 degrees of angle~%# -- over a range of -38.1 to + 38.1 degrees~%# -- The value -128 shall be used for unknown~%# -- The value zero shall be used for angles~%# -- which are between -0.15 and +0.15~%#~%# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to~%# the local horizontal axis and is measured at the indicated part of the lane.~%~%int8 lane_crown_point_center~%int8 lane_crown_point_right~%int8 lane_crown_point_left~%~%# MergeDivergeNodeAngle ::= INTEGER (-180..180)~%# -- In units of 1.5 degrees from north~%# -- the value -180 shall be used to represent~%# -- data is not available or unknown~%int16 lane_angle~%~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%j2735_msgs/SpeedLimitList speed_limits~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/SpeedLimitList~%#~%# SpeedLimitList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%~%#A list of RegulatorySpeedLimit~%j2735_msgs/RegulatorySpeedLimit[] speed_limits~%================================================================================~%MSG: j2735_msgs/RegulatorySpeedLimit~%#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneDataAttribute)))
  "Returns full string definition for message of type 'LaneDataAttribute"
  (cl:format cl:nil "~%~%# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a~%# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and~%# which is defined elsewhere in this standard.~%~%~%# LaneDataAttribute ::= CHOICE {~%# -- Segment attribute types and the data needed for each~%# pathEndPointAngle DeltaAngle,~%# -- adjusts final point/width slant~%# -- of the lane to align with the stop line~%# laneCrownPointCenter RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from centerline point~%# laneCrownPointLeft RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from left edge~%# laneCrownPointRight RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from right edge~%# laneAngle MergeDivergeNodeAngle,~%# -- the angle or direction of another lane~%# -- this is required to support Japan style~%# -- when a merge point angle is required~%# speedLimits SpeedLimitList,~%# -- Reference regulatory speed limits~%# -- used by all segments~%# -- Add others as needed, in regional space~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},~%# ...~%# }~%~%uint8 choice~%uint8 PATH_END_POINT_ANGLE=0~%uint8 LANE_CROWN_POINT_CENTER=1~%uint8 LANE_CROWN_POINT_LEFT=2~%uint8 LANE_CROWN_POINT_RIGHT=3~%uint8 LANE_ANGLE=4~%uint8 SPEED_LIMITS=5~%~%# DeltaAngle ::= INTEGER (-150..150)~%# -- With an angle range from~%# -- negative 150 to positive 150~%# -- in one degree steps where zero is directly~%# -- along the axis or the lane center line as defined by the~%# -- two closest points~%#~%# The DeltaAngle data element provides the final angle used in the last point of the lane path.~%# Used to \"cant\" the stop line of the lane.~%~%int16 path_end_point_angle~%~%# RoadwayCrownAngle ::= INTEGER (-128..127)~%# -- In LSB units of 0.3 degrees of angle~%# -- over a range of -38.1 to + 38.1 degrees~%# -- The value -128 shall be used for unknown~%# -- The value zero shall be used for angles~%# -- which are between -0.15 and +0.15~%#~%# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to~%# the local horizontal axis and is measured at the indicated part of the lane.~%~%int8 lane_crown_point_center~%int8 lane_crown_point_right~%int8 lane_crown_point_left~%~%# MergeDivergeNodeAngle ::= INTEGER (-180..180)~%# -- In units of 1.5 degrees from north~%# -- the value -180 shall be used to represent~%# -- data is not available or unknown~%int16 lane_angle~%~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%j2735_msgs/SpeedLimitList speed_limits~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/SpeedLimitList~%#~%# SpeedLimitList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%~%#A list of RegulatorySpeedLimit~%j2735_msgs/RegulatorySpeedLimit[] speed_limits~%================================================================================~%MSG: j2735_msgs/RegulatorySpeedLimit~%#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneDataAttribute>))
  (cl:+ 0
     1
     2
     1
     1
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_limits))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneDataAttribute>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneDataAttribute
    (cl:cons ':choice (choice msg))
    (cl:cons ':path_end_point_angle (path_end_point_angle msg))
    (cl:cons ':lane_crown_point_center (lane_crown_point_center msg))
    (cl:cons ':lane_crown_point_right (lane_crown_point_right msg))
    (cl:cons ':lane_crown_point_left (lane_crown_point_left msg))
    (cl:cons ':lane_angle (lane_angle msg))
    (cl:cons ':speed_limits (speed_limits msg))
))
