;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneDataAttributeList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneDataAttributeList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEDATAATTRIBUTELIST")
  (make-package "J2735_MSGS::LANEDATAATTRIBUTELIST"))

(in-package "ROS")
;;//! \htmlinclude LaneDataAttributeList.msg.html


(defclass j2735_msgs::LaneDataAttributeList
  :super ros::object
  :slots (_lane_attribute_list ))

(defmethod j2735_msgs::LaneDataAttributeList
  (:init
   (&key
    ((:lane_attribute_list __lane_attribute_list) ())
    )
   (send-super :init)
   (setq _lane_attribute_list __lane_attribute_list)
   self)
  (:lane_attribute_list
   (&rest __lane_attribute_list)
   (if (keywordp (car __lane_attribute_list))
       (send* _lane_attribute_list __lane_attribute_list)
     (progn
       (if __lane_attribute_list (setq _lane_attribute_list (car __lane_attribute_list)))
       _lane_attribute_list)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/LaneDataAttribute[] _lane_attribute_list
    (apply #'+ (send-all _lane_attribute_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/LaneDataAttribute[] _lane_attribute_list
     (write-long (length _lane_attribute_list) s)
     (dolist (elem _lane_attribute_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/LaneDataAttribute[] _lane_attribute_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_attribute_list (let (r) (dotimes (i n) (push (instance j2735_msgs::LaneDataAttribute :init) r)) r))
     (dolist (elem- _lane_attribute_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::LaneDataAttributeList :md5sum-) "9c9ddb9bab81288328635d91c5222ccb")
(setf (get j2735_msgs::LaneDataAttributeList :datatype-) "j2735_msgs/LaneDataAttributeList")
(setf (get j2735_msgs::LaneDataAttributeList :definition-)
      "#
# LaneDataAttributeList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneDataAttributeList data frame consists of a list of LaneDataAttribute entries.
#
# LaneDataAttributeList ::= SEQUENCE (SIZE(1..8)) OF LaneDataAttribute

j2735_msgs/LaneDataAttribute[] lane_attribute_list
================================================================================
MSG: j2735_msgs/LaneDataAttribute


# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a
# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and
# which is defined elsewhere in this standard.


# LaneDataAttribute ::= CHOICE {
# -- Segment attribute types and the data needed for each
# pathEndPointAngle DeltaAngle,
# -- adjusts final point/width slant
# -- of the lane to align with the stop line
# laneCrownPointCenter RoadwayCrownAngle,
# -- sets the canter of the road bed
# -- from centerline point
# laneCrownPointLeft RoadwayCrownAngle,
# -- sets the canter of the road bed
# -- from left edge
# laneCrownPointRight RoadwayCrownAngle,
# -- sets the canter of the road bed
# -- from right edge
# laneAngle MergeDivergeNodeAngle,
# -- the angle or direction of another lane
# -- this is required to support Japan style
# -- when a merge point angle is required
# speedLimits SpeedLimitList,
# -- Reference regulatory speed limits
# -- used by all segments
# -- Add others as needed, in regional space
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},
# ...
# }

uint8 choice
uint8 PATH_END_POINT_ANGLE=0
uint8 LANE_CROWN_POINT_CENTER=1
uint8 LANE_CROWN_POINT_LEFT=2
uint8 LANE_CROWN_POINT_RIGHT=3
uint8 LANE_ANGLE=4
uint8 SPEED_LIMITS=5

# DeltaAngle ::= INTEGER (-150..150)
# -- With an angle range from
# -- negative 150 to positive 150
# -- in one degree steps where zero is directly
# -- along the axis or the lane center line as defined by the
# -- two closest points
#
# The DeltaAngle data element provides the final angle used in the last point of the lane path.
# Used to \"cant\" the stop line of the lane.

int16 path_end_point_angle

# RoadwayCrownAngle ::= INTEGER (-128..127)
# -- In LSB units of 0.3 degrees of angle
# -- over a range of -38.1 to + 38.1 degrees
# -- The value -128 shall be used for unknown
# -- The value zero shall be used for angles
# -- which are between -0.15 and +0.15
#
# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to
# the local horizontal axis and is measured at the indicated part of the lane.

int8 lane_crown_point_center
int8 lane_crown_point_right
int8 lane_crown_point_left

# MergeDivergeNodeAngle ::= INTEGER (-180..180)
# -- In units of 1.5 degrees from north
# -- the value -180 shall be used to represent
# -- data is not available or unknown
int16 lane_angle

# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit
j2735_msgs/SpeedLimitList speed_limits

# regional #TODO: RegionalExtensions are not yet implemented in asn1c

================================================================================
MSG: j2735_msgs/SpeedLimitList
#
# SpeedLimitList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit

#A list of RegulatorySpeedLimit
j2735_msgs/RegulatorySpeedLimit[] speed_limits
================================================================================
MSG: j2735_msgs/RegulatorySpeedLimit
#
# RegulatorySpeedLimit.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# Used to convey a regulatory speed about a lane, lanes, or roadway segment.

# RegulatorySpeedLimit ::= SEQUENCE {
# type SpeedLimitType,
# -- The type of regulatory speed which follows
j2735_msgs/SpeedLimitType type

# speed Velocity
# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s
#-- The value 8191 indicates that velocity is unavailable
float64 speed
================================================================================
MSG: j2735_msgs/SpeedLimitType
# SpeedLimitType.msg
#
# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.
#
# SpeedLimitType ::= ENUMERATED {
#
# unknown, -- Speed limit type not available
# maxSpeedInSchoolZone, -- Only sent when the limit is active
# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time
# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present
#
# vehicleMinSpeed,
# vehicleMaxSpeed, -- Regulatory speed limit for general traffic
# vehicleNightMaxSpeed,
#
# truckMinSpeed,
# truckMaxSpeed,
# truckNightMaxSpeed,
#
# vehiclesWithTrailersMinSpeed,
# vehiclesWithTrailersMaxSpeed,
# vehiclesWithTrailersNightMaxSpeed,
# ...
# }

uint8 speed_limit_type

uint8 UNKNOWN=0
uint8 MAXSPEEDINSCHOOLZONE=1
uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2
uint8 MAXSPEEDINCONSTRUCTIONZONE=3
uint8 VEHICLEMINSPEED=4
uint8 VEHICLEMAXSPEED=5
uint8 VEHICLENIGHTMAXSPEED=6
uint8 TRUCKMINSPEED=7
uint8 TRUCKMAXSPEED=8
uint8 TRUCKNIGHTMAXSPEED=9
uint8 VEHICLESWITHTRAILERSMINSPEED=10
uint8 VEHICLESWITHTRAILERSMAXSPEED=11
uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12
")



(provide :j2735_msgs/LaneDataAttributeList "9c9ddb9bab81288328635d91c5222ccb")


