; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneDataAttributeList.msg.html

(cl:defclass <LaneDataAttributeList> (roslisp-msg-protocol:ros-message)
  ((lane_attribute_list
    :reader lane_attribute_list
    :initarg :lane_attribute_list
    :type (cl:vector j2735_msgs-msg:LaneDataAttribute)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:LaneDataAttribute :initial-element (cl:make-instance 'j2735_msgs-msg:LaneDataAttribute))))
)

(cl:defclass LaneDataAttributeList (<LaneDataAttributeList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneDataAttributeList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneDataAttributeList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneDataAttributeList> is deprecated: use j2735_msgs-msg:LaneDataAttributeList instead.")))

(cl:ensure-generic-function 'lane_attribute_list-val :lambda-list '(m))
(cl:defmethod lane_attribute_list-val ((m <LaneDataAttributeList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attribute_list-val is deprecated.  Use j2735_msgs-msg:lane_attribute_list instead.")
  (lane_attribute_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneDataAttributeList>) ostream)
  "Serializes a message object of type '<LaneDataAttributeList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_attribute_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_attribute_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneDataAttributeList>) istream)
  "Deserializes a message object of type '<LaneDataAttributeList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_attribute_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_attribute_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:LaneDataAttribute))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneDataAttributeList>)))
  "Returns string type for a message object of type '<LaneDataAttributeList>"
  "j2735_msgs/LaneDataAttributeList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneDataAttributeList)))
  "Returns string type for a message object of type 'LaneDataAttributeList"
  "j2735_msgs/LaneDataAttributeList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneDataAttributeList>)))
  "Returns md5sum for a message object of type '<LaneDataAttributeList>"
  "9c9ddb9bab81288328635d91c5222ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneDataAttributeList)))
  "Returns md5sum for a message object of type 'LaneDataAttributeList"
  "9c9ddb9bab81288328635d91c5222ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneDataAttributeList>)))
  "Returns full string definition for message of type '<LaneDataAttributeList>"
  (cl:format cl:nil "#~%# LaneDataAttributeList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneDataAttributeList data frame consists of a list of LaneDataAttribute entries.~%#~%# LaneDataAttributeList ::= SEQUENCE (SIZE(1..8)) OF LaneDataAttribute~%~%j2735_msgs/LaneDataAttribute[] lane_attribute_list~%================================================================================~%MSG: j2735_msgs/LaneDataAttribute~%~%~%# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a~%# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and~%# which is defined elsewhere in this standard.~%~%~%# LaneDataAttribute ::= CHOICE {~%# -- Segment attribute types and the data needed for each~%# pathEndPointAngle DeltaAngle,~%# -- adjusts final point/width slant~%# -- of the lane to align with the stop line~%# laneCrownPointCenter RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from centerline point~%# laneCrownPointLeft RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from left edge~%# laneCrownPointRight RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from right edge~%# laneAngle MergeDivergeNodeAngle,~%# -- the angle or direction of another lane~%# -- this is required to support Japan style~%# -- when a merge point angle is required~%# speedLimits SpeedLimitList,~%# -- Reference regulatory speed limits~%# -- used by all segments~%# -- Add others as needed, in regional space~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},~%# ...~%# }~%~%uint8 choice~%uint8 PATH_END_POINT_ANGLE=0~%uint8 LANE_CROWN_POINT_CENTER=1~%uint8 LANE_CROWN_POINT_LEFT=2~%uint8 LANE_CROWN_POINT_RIGHT=3~%uint8 LANE_ANGLE=4~%uint8 SPEED_LIMITS=5~%~%# DeltaAngle ::= INTEGER (-150..150)~%# -- With an angle range from~%# -- negative 150 to positive 150~%# -- in one degree steps where zero is directly~%# -- along the axis or the lane center line as defined by the~%# -- two closest points~%#~%# The DeltaAngle data element provides the final angle used in the last point of the lane path.~%# Used to \"cant\" the stop line of the lane.~%~%int16 path_end_point_angle~%~%# RoadwayCrownAngle ::= INTEGER (-128..127)~%# -- In LSB units of 0.3 degrees of angle~%# -- over a range of -38.1 to + 38.1 degrees~%# -- The value -128 shall be used for unknown~%# -- The value zero shall be used for angles~%# -- which are between -0.15 and +0.15~%#~%# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to~%# the local horizontal axis and is measured at the indicated part of the lane.~%~%int8 lane_crown_point_center~%int8 lane_crown_point_right~%int8 lane_crown_point_left~%~%# MergeDivergeNodeAngle ::= INTEGER (-180..180)~%# -- In units of 1.5 degrees from north~%# -- the value -180 shall be used to represent~%# -- data is not available or unknown~%int16 lane_angle~%~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%j2735_msgs/SpeedLimitList speed_limits~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/SpeedLimitList~%#~%# SpeedLimitList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%~%#A list of RegulatorySpeedLimit~%j2735_msgs/RegulatorySpeedLimit[] speed_limits~%================================================================================~%MSG: j2735_msgs/RegulatorySpeedLimit~%#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneDataAttributeList)))
  "Returns full string definition for message of type 'LaneDataAttributeList"
  (cl:format cl:nil "#~%# LaneDataAttributeList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneDataAttributeList data frame consists of a list of LaneDataAttribute entries.~%#~%# LaneDataAttributeList ::= SEQUENCE (SIZE(1..8)) OF LaneDataAttribute~%~%j2735_msgs/LaneDataAttribute[] lane_attribute_list~%================================================================================~%MSG: j2735_msgs/LaneDataAttribute~%~%~%# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a~%# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and~%# which is defined elsewhere in this standard.~%~%~%# LaneDataAttribute ::= CHOICE {~%# -- Segment attribute types and the data needed for each~%# pathEndPointAngle DeltaAngle,~%# -- adjusts final point/width slant~%# -- of the lane to align with the stop line~%# laneCrownPointCenter RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from centerline point~%# laneCrownPointLeft RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from left edge~%# laneCrownPointRight RoadwayCrownAngle,~%# -- sets the canter of the road bed~%# -- from right edge~%# laneAngle MergeDivergeNodeAngle,~%# -- the angle or direction of another lane~%# -- this is required to support Japan style~%# -- when a merge point angle is required~%# speedLimits SpeedLimitList,~%# -- Reference regulatory speed limits~%# -- used by all segments~%# -- Add others as needed, in regional space~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},~%# ...~%# }~%~%uint8 choice~%uint8 PATH_END_POINT_ANGLE=0~%uint8 LANE_CROWN_POINT_CENTER=1~%uint8 LANE_CROWN_POINT_LEFT=2~%uint8 LANE_CROWN_POINT_RIGHT=3~%uint8 LANE_ANGLE=4~%uint8 SPEED_LIMITS=5~%~%# DeltaAngle ::= INTEGER (-150..150)~%# -- With an angle range from~%# -- negative 150 to positive 150~%# -- in one degree steps where zero is directly~%# -- along the axis or the lane center line as defined by the~%# -- two closest points~%#~%# The DeltaAngle data element provides the final angle used in the last point of the lane path.~%# Used to \"cant\" the stop line of the lane.~%~%int16 path_end_point_angle~%~%# RoadwayCrownAngle ::= INTEGER (-128..127)~%# -- In LSB units of 0.3 degrees of angle~%# -- over a range of -38.1 to + 38.1 degrees~%# -- The value -128 shall be used for unknown~%# -- The value zero shall be used for angles~%# -- which are between -0.15 and +0.15~%#~%# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to~%# the local horizontal axis and is measured at the indicated part of the lane.~%~%int8 lane_crown_point_center~%int8 lane_crown_point_right~%int8 lane_crown_point_left~%~%# MergeDivergeNodeAngle ::= INTEGER (-180..180)~%# -- In units of 1.5 degrees from north~%# -- the value -180 shall be used to represent~%# -- data is not available or unknown~%int16 lane_angle~%~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%j2735_msgs/SpeedLimitList speed_limits~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/SpeedLimitList~%#~%# SpeedLimitList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit~%~%#A list of RegulatorySpeedLimit~%j2735_msgs/RegulatorySpeedLimit[] speed_limits~%================================================================================~%MSG: j2735_msgs/RegulatorySpeedLimit~%#~%# RegulatorySpeedLimit.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Used to convey a regulatory speed about a lane, lanes, or roadway segment.~%~%# RegulatorySpeedLimit ::= SEQUENCE {~%# type SpeedLimitType,~%# -- The type of regulatory speed which follows~%j2735_msgs/SpeedLimitType type~%~%# speed Velocity~%# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#-- The value 8191 indicates that velocity is unavailable~%float64 speed~%================================================================================~%MSG: j2735_msgs/SpeedLimitType~%# SpeedLimitType.msg~%#~%# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.~%#~%# SpeedLimitType ::= ENUMERATED {~%#~%# unknown, -- Speed limit type not available~%# maxSpeedInSchoolZone, -- Only sent when the limit is active~%# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time~%# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present~%#~%# vehicleMinSpeed,~%# vehicleMaxSpeed, -- Regulatory speed limit for general traffic~%# vehicleNightMaxSpeed,~%#~%# truckMinSpeed,~%# truckMaxSpeed,~%# truckNightMaxSpeed,~%#~%# vehiclesWithTrailersMinSpeed,~%# vehiclesWithTrailersMaxSpeed,~%# vehiclesWithTrailersNightMaxSpeed,~%# ...~%# }~%~%uint8 speed_limit_type~%~%uint8 UNKNOWN=0~%uint8 MAXSPEEDINSCHOOLZONE=1~%uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2~%uint8 MAXSPEEDINCONSTRUCTIONZONE=3~%uint8 VEHICLEMINSPEED=4~%uint8 VEHICLEMAXSPEED=5~%uint8 VEHICLENIGHTMAXSPEED=6~%uint8 TRUCKMINSPEED=7~%uint8 TRUCKMAXSPEED=8~%uint8 TRUCKNIGHTMAXSPEED=9~%uint8 VEHICLESWITHTRAILERSMINSPEED=10~%uint8 VEHICLESWITHTRAILERSMAXSPEED=11~%uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneDataAttributeList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_attribute_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneDataAttributeList>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneDataAttributeList
    (cl:cons ':lane_attribute_list (lane_attribute_list msg))
))
