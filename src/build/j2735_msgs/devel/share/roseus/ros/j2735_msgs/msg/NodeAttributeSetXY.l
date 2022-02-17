;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::NodeAttributeSetXY)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'NodeAttributeSetXY (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::NODEATTRIBUTESETXY")
  (make-package "J2735_MSGS::NODEATTRIBUTESETXY"))

(in-package "ROS")
;;//! \htmlinclude NodeAttributeSetXY.msg.html


(defclass j2735_msgs::NodeAttributeSetXY
  :super ros::object
  :slots (_local_node _local_node_exists _disabled _disabled_exists _enabled _enabled_exists _data _data_exists _dWitdh _dWitdh_exists _dElevation _dElevation_exists ))

(defmethod j2735_msgs::NodeAttributeSetXY
  (:init
   (&key
    ((:local_node __local_node) (instance j2735_msgs::NodeAttributeXYList :init))
    ((:local_node_exists __local_node_exists) nil)
    ((:disabled __disabled) (instance j2735_msgs::SegmentAttributeXYList :init))
    ((:disabled_exists __disabled_exists) nil)
    ((:enabled __enabled) (instance j2735_msgs::SegmentAttributeXYList :init))
    ((:enabled_exists __enabled_exists) nil)
    ((:data __data) (instance j2735_msgs::LaneDataAttributeList :init))
    ((:data_exists __data_exists) nil)
    ((:dWitdh __dWitdh) 0.0)
    ((:dWitdh_exists __dWitdh_exists) nil)
    ((:dElevation __dElevation) 0.0)
    ((:dElevation_exists __dElevation_exists) nil)
    )
   (send-super :init)
   (setq _local_node __local_node)
   (setq _local_node_exists __local_node_exists)
   (setq _disabled __disabled)
   (setq _disabled_exists __disabled_exists)
   (setq _enabled __enabled)
   (setq _enabled_exists __enabled_exists)
   (setq _data __data)
   (setq _data_exists __data_exists)
   (setq _dWitdh (float __dWitdh))
   (setq _dWitdh_exists __dWitdh_exists)
   (setq _dElevation (float __dElevation))
   (setq _dElevation_exists __dElevation_exists)
   self)
  (:local_node
   (&rest __local_node)
   (if (keywordp (car __local_node))
       (send* _local_node __local_node)
     (progn
       (if __local_node (setq _local_node (car __local_node)))
       _local_node)))
  (:local_node_exists
   (&optional (__local_node_exists :null))
   (if (not (eq __local_node_exists :null)) (setq _local_node_exists __local_node_exists)) _local_node_exists)
  (:disabled
   (&rest __disabled)
   (if (keywordp (car __disabled))
       (send* _disabled __disabled)
     (progn
       (if __disabled (setq _disabled (car __disabled)))
       _disabled)))
  (:disabled_exists
   (&optional (__disabled_exists :null))
   (if (not (eq __disabled_exists :null)) (setq _disabled_exists __disabled_exists)) _disabled_exists)
  (:enabled
   (&rest __enabled)
   (if (keywordp (car __enabled))
       (send* _enabled __enabled)
     (progn
       (if __enabled (setq _enabled (car __enabled)))
       _enabled)))
  (:enabled_exists
   (&optional (__enabled_exists :null))
   (if (not (eq __enabled_exists :null)) (setq _enabled_exists __enabled_exists)) _enabled_exists)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:data_exists
   (&optional (__data_exists :null))
   (if (not (eq __data_exists :null)) (setq _data_exists __data_exists)) _data_exists)
  (:dWitdh
   (&optional __dWitdh)
   (if __dWitdh (setq _dWitdh __dWitdh)) _dWitdh)
  (:dWitdh_exists
   (&optional (__dWitdh_exists :null))
   (if (not (eq __dWitdh_exists :null)) (setq _dWitdh_exists __dWitdh_exists)) _dWitdh_exists)
  (:dElevation
   (&optional __dElevation)
   (if __dElevation (setq _dElevation __dElevation)) _dElevation)
  (:dElevation_exists
   (&optional (__dElevation_exists :null))
   (if (not (eq __dElevation_exists :null)) (setq _dElevation_exists __dElevation_exists)) _dElevation_exists)
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/NodeAttributeXYList _local_node
    (send _local_node :serialization-length)
    ;; bool _local_node_exists
    1
    ;; j2735_msgs/SegmentAttributeXYList _disabled
    (send _disabled :serialization-length)
    ;; bool _disabled_exists
    1
    ;; j2735_msgs/SegmentAttributeXYList _enabled
    (send _enabled :serialization-length)
    ;; bool _enabled_exists
    1
    ;; j2735_msgs/LaneDataAttributeList _data
    (send _data :serialization-length)
    ;; bool _data_exists
    1
    ;; float32 _dWitdh
    4
    ;; bool _dWitdh_exists
    1
    ;; float32 _dElevation
    4
    ;; bool _dElevation_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/NodeAttributeXYList _local_node
       (send _local_node :serialize s)
     ;; bool _local_node_exists
       (if _local_node_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/SegmentAttributeXYList _disabled
       (send _disabled :serialize s)
     ;; bool _disabled_exists
       (if _disabled_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/SegmentAttributeXYList _enabled
       (send _enabled :serialize s)
     ;; bool _enabled_exists
       (if _enabled_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/LaneDataAttributeList _data
       (send _data :serialize s)
     ;; bool _data_exists
       (if _data_exists (write-byte -1 s) (write-byte 0 s))
     ;; float32 _dWitdh
       (sys::poke _dWitdh (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _dWitdh_exists
       (if _dWitdh_exists (write-byte -1 s) (write-byte 0 s))
     ;; float32 _dElevation
       (sys::poke _dElevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _dElevation_exists
       (if _dElevation_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/NodeAttributeXYList _local_node
     (send _local_node :deserialize buf ptr-) (incf ptr- (send _local_node :serialization-length))
   ;; bool _local_node_exists
     (setq _local_node_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/SegmentAttributeXYList _disabled
     (send _disabled :deserialize buf ptr-) (incf ptr- (send _disabled :serialization-length))
   ;; bool _disabled_exists
     (setq _disabled_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/SegmentAttributeXYList _enabled
     (send _enabled :deserialize buf ptr-) (incf ptr- (send _enabled :serialization-length))
   ;; bool _enabled_exists
     (setq _enabled_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/LaneDataAttributeList _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;; bool _data_exists
     (setq _data_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _dWitdh
     (setq _dWitdh (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _dWitdh_exists
     (setq _dWitdh_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _dElevation
     (setq _dElevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _dElevation_exists
     (setq _dElevation_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::NodeAttributeSetXY :md5sum-) "e75cafda077f3683a1724bd1ccd8baf4")
(setf (get j2735_msgs::NodeAttributeSetXY :datatype-) "j2735_msgs/NodeAttributeSetXY")
(setf (get j2735_msgs::NodeAttributeSetXY :definition-)
      "#
# NodeAttributeSetXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_NodeAttributeSetXY is a data frame used to convey one or more changes in the attribute set which occur
# at the node point at which it is used. Some of these attributes persist until the end of the lane or until changed again or
# turned off.
#
# NodeAttributeSetXY ::= SEQUENCE {
# localNode NodeAttributeXYList OPTIONAL,
# -- Attribute states which pertain to this node point
# disabled SegmentAttributeXYList OPTIONAL,
# -- Attribute states which are disabled at this node point
# enabled SegmentAttributeXYList OPTIONAL,
# -- Attribute states which are enabled at this node point
# -- and which remain enabled until disabled or the lane ends
# data LaneDataAttributeList OPTIONAL,
# -- Attributes which require an additional data values
# -- some of these are local to the node point, while others
# -- persist with the provided values until changed
# -- and this is indicated in each entry
# dWidth Offset-B10 OPTIONAL,
# -- A value added to the current lane width
# -- at this node and from this node onwards, in 1cm steps
# -- lane width between nodes are a linear taper between pts
# -- the value of zero shall not be sent here
# dElevation Offset-B10 OPTIONAL,
# -- A value added to the current Elevation
# -- at this node from this node onwards, in 10cm steps
# -- elevations between nodes are a linear taper between pts
# -- the value of zero shall not be sent here
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-NodeAttributeSetXY}}OPTIONAL,
# ...
# }

j2735_msgs/NodeAttributeXYList local_node
bool local_node_exists

j2735_msgs/SegmentAttributeXYList disabled
bool disabled_exists

j2735_msgs/SegmentAttributeXYList enabled
bool enabled_exists

j2735_msgs/LaneDataAttributeList data
bool data_exists

# Offset-B10 ::= INTEGER (-512..511)
# -- a range of +- 5.11 meters
float32 dWitdh
bool dWitdh_exists

float32 dElevation
bool dElevation_exists

# regional #TODO: RegionalExtensions are not yet implemented in asn1c
================================================================================
MSG: j2735_msgs/NodeAttributeXYList
#
# NodeAttributeXYList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The NodeAttributeXYList data frame consists of a list of NodeAttributeXY entries.
#
# NodeAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF NodeAttributeXY

j2735_msgs/NodeAttributeXY[] node_attribute_xy_List

================================================================================
MSG: j2735_msgs/NodeAttributeXY
#
# NodeAttributeXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node
# point.
#
# NodeAttributeXY ::= ENUMERATED {
# -- Various values which pertain only to the current node point
#
# -- General Items
# reserved,
# stopLine,		-- point where a mid-path stop line exists
# 			-- See also 'do not block' for segments
# -- Path finish details
# roundedCapStyleA, 	-- Used to control final path rounded end shape
# 		   	-- with edge of curve at final point in a circle
# roundedCapStyleB,	-- Used to control final path rounded end shape
# 			-- with edge of curve extending 50% of width past
# 			-- final point in a circle
#
# -- Topography Points (items with no concept of a distance along the path)
# mergePoint,		-- Japan merge with 1 or more lanes
# divergePoint,		-- Japan diverge with 1 or more lanes
# downstreamStopLine,	-- Japan style downstream intersection
# 			-- (a 2nd intersection) stop line
# downstreamStartNode, 	-- Japan style downstream intersection
# 			-- (a 2nd intersection) start node
#
# -- Pedestrian Support Attributes
# closedToTraffic,	-- where a pedestrian may NOT go
# 			-- to be used during construction events
# safeIsland,		-- a pedestrian safe stopping point
# 			-- also called a traffic island
# 			-- This usage described a point feature on a path,
# 			-- other entries can describe a path
# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT
# 			-- angled where it meets the edge of the
# 			-- roadway (user must step up/down)
# -- Lane geometry details (see standard for defined shapes)
# hydrantPresent,		-- Or other services access
# ...
# }


uint8  node_attribute_xy

# enumeration values for status:
uint8 RESERVED=0
uint8 STOPLINE=1
uint8 ROUNDEDCAPSTYLEA=2
uint8 ROUNDEDCAPSTYLEB=3
uint8 MERGEPOINT=4
uint8 DIVERGEPOINT=5
uint8 DOWNSTREAMSTOPLINE=6
uint8 DOWNSTREAMSTARTNODE=7
uint8 CLOSEDTOTRAFFIC=8
uint8 SAFEISLAND=9
uint8 CURBPRESENTATSTEPOFF=10
uint8 HYDRANTPRESENT=11

================================================================================
MSG: j2735_msgs/SegmentAttributeXYList
#
# NodeAttributeXYList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
#The DF_SegmentAttributeXYList data frame consists of a list of SegmentAttributeXY entries.

#SegmentAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF SegmentAttributeXY

j2735_msgs/SegmentAttributeXY[] segment_attribute_xy


================================================================================
MSG: j2735_msgs/SegmentAttributeXY
#
# SegmentAttributeXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which
# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.
#
# SegmentAttributeXY ::= ENUMERATED {
# -- Various values which can be Enabled and Disabled for a lane segment
#
# -- General Items
# reserved	,
# doNotBlock	, 	-- segment where a vehicle
# 		  	-- may not come to a stop
# whiteLine	, 	-- segment where lane crossing not allowed
# 		  	-- such as the final few meters of a lane
#
# -- Porous Lane states, merging, turn outs, parking etc.
# mergingLaneLeft,  	-- indicates porous lanes
# mergingLaneRight,
# curbOnLeft,	  	-- indicates presence of curbs
# curbOnRight,
# loadingzoneOnLeft,	-- loading or drop off zones
# loadingzoneOnRight,
# turnOutPointOnLeft,	-- opening to adjacent street/alley/road
# turnOutPointOnRight,
# adjacentParkingOnLeft, 	-- side of road parking
# adjacentParkingOnRight,
#
# -- Bike Lane Needs
# adjacentBikeLaneOnLeft, -- presence of marked bike lanes
# adjacentBikeLaneOnRight,
# sharedBikeLane, 	-- right of way is shared with bikes
# 			-- who may occupy entire lane width
# bikeBoxInFront,
#
# -- Transit Needs
# transitStopOnLeft,	-- any form of bus/transit loading
# 			-- with pull in-out access to lane on left
# transitStopOnRight, 	-- any form of bus/transit loading
# 			-- with pull in-out access to lane on right
# transitStopInLane, 	-- any form of bus/transit loading
# 			-- in mid path of the lane
# sharedWithTrackedVehicle, -- lane is shared with train or trolley
# 			-- not used for crossing tracks
#
# -- Pedestrian Support Attributes
# safeIsland, 		-- begin/end a safety island in path
# lowCurbsPresent, 	-- for ADA support
# rumbleStripPresent, 	-- for ADA support
# audibleSignalingPresent, -- for ADA support
# adaptiveTimingPresent, 	-- for ADA support
# rfSignalRequestPresent, -- Supports RF push to walk technologies
# partialCurbIntrusion, 	-- path is blocked by a median or curb
# 			-- but at least 1 meter remains open for use
# 			-- and at-grade passage
#
# -- Lane geometry details
# taperToLeft,		-- Used to control final path shape
# taperToRight,		-- Used to control final path shape
# taperToCenterLine,	-- Used to control final path shape
#
# -- Parking Lane and Curb Attributes
# parallelParking, 	-- Parking at an angle with the street
# freeParking, 		-- no restriction on use of parking
# timeRestrictionsOnParking , -- Parking is not permitted at all times
# 			-- typically used when the 'parking' lane
# 			-- becomes a driving lane at times
# costToPark, 		-- Used where parking has a cost
# midBlockCurbPresent, 	-- a protruding curb near lane edge
# unEvenPavementPresent, 	-- a disjoint height at lane edge
# ...
# }

uint8  segment_attribute_xy

uint8 RESERVED=0
uint8 DONOTBLOCK=1
uint8 WHITELINE=2
uint8 MERGINGLANELEFT=3
uint8 MERGINGLANERIGHT=4
uint8 CURBONLEFT=5
uint8 CURBONRIGHT=6
uint8 LOADINGZONEONLEFT=7
uint8 LOADINGZONEONRIGHT=8
uint8 TURNOUTPOINTONLEFT=9
uint8 TURNOUTPOINTONRIGHT=10
uint8 ADJACENTPARKINGONLEFT=11
uint8 ADJACENTPARKINGONRIGHT=12
uint8 ADJACENTBIKELANEONLEFT=13
uint8 ADJACENTBIKELANEONRIGHT=14
uint8 SHAREDBIKELANE=15
uint8 BIKEBOXINFRONT=16
uint8 TRANSITSTOPONLEFT=17
uint8 TRANSITSTOPONRIGHT=18
uint8 TRANSITSTOPINLANE=19
uint8 SHAREDWITHTRACKEDVEHICLE=20
uint8 SAFEISLAND=21
uint8 LOWCURBSPRESENT=22
uint8 RUMBLESTRIPPRESENT=23
uint8 AUDIBLESIGNALINGPRESENT=24
uint8 ADAPTIVETIMINGPRESENT=25
uint8 RFSIGNALREQUESTPRESENT=26
uint8 PARTIALCURBINTRUSION=27
uint8 TAPERTOLEFT=28
uint8 TAPERTORIGHT=29
uint8 TAPERTOCENTERLINE=30
uint8 PARALLELPARKING=31
uint8 FREEPARKING=32
uint8 TIMERESTRICTIONSONPARKING=33
uint8 COSTTOPARK=34
uint8 MIDBLOCKCURBPRESENT=35
uint8 UNEVENPAVEMENTPRESENT=36


================================================================================
MSG: j2735_msgs/LaneDataAttributeList
#
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



(provide :j2735_msgs/NodeAttributeSetXY "e75cafda077f3683a1724bd1ccd8baf4")


