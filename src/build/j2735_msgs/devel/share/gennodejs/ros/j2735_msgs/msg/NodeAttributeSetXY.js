// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeAttributeXYList = require('./NodeAttributeXYList.js');
let SegmentAttributeXYList = require('./SegmentAttributeXYList.js');
let LaneDataAttributeList = require('./LaneDataAttributeList.js');

//-----------------------------------------------------------

class NodeAttributeSetXY {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local_node = null;
      this.local_node_exists = null;
      this.disabled = null;
      this.disabled_exists = null;
      this.enabled = null;
      this.enabled_exists = null;
      this.data = null;
      this.data_exists = null;
      this.dWitdh = null;
      this.dWitdh_exists = null;
      this.dElevation = null;
      this.dElevation_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('local_node')) {
        this.local_node = initObj.local_node
      }
      else {
        this.local_node = new NodeAttributeXYList();
      }
      if (initObj.hasOwnProperty('local_node_exists')) {
        this.local_node_exists = initObj.local_node_exists
      }
      else {
        this.local_node_exists = false;
      }
      if (initObj.hasOwnProperty('disabled')) {
        this.disabled = initObj.disabled
      }
      else {
        this.disabled = new SegmentAttributeXYList();
      }
      if (initObj.hasOwnProperty('disabled_exists')) {
        this.disabled_exists = initObj.disabled_exists
      }
      else {
        this.disabled_exists = false;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = new SegmentAttributeXYList();
      }
      if (initObj.hasOwnProperty('enabled_exists')) {
        this.enabled_exists = initObj.enabled_exists
      }
      else {
        this.enabled_exists = false;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new LaneDataAttributeList();
      }
      if (initObj.hasOwnProperty('data_exists')) {
        this.data_exists = initObj.data_exists
      }
      else {
        this.data_exists = false;
      }
      if (initObj.hasOwnProperty('dWitdh')) {
        this.dWitdh = initObj.dWitdh
      }
      else {
        this.dWitdh = 0.0;
      }
      if (initObj.hasOwnProperty('dWitdh_exists')) {
        this.dWitdh_exists = initObj.dWitdh_exists
      }
      else {
        this.dWitdh_exists = false;
      }
      if (initObj.hasOwnProperty('dElevation')) {
        this.dElevation = initObj.dElevation
      }
      else {
        this.dElevation = 0.0;
      }
      if (initObj.hasOwnProperty('dElevation_exists')) {
        this.dElevation_exists = initObj.dElevation_exists
      }
      else {
        this.dElevation_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeAttributeSetXY
    // Serialize message field [local_node]
    bufferOffset = NodeAttributeXYList.serialize(obj.local_node, buffer, bufferOffset);
    // Serialize message field [local_node_exists]
    bufferOffset = _serializer.bool(obj.local_node_exists, buffer, bufferOffset);
    // Serialize message field [disabled]
    bufferOffset = SegmentAttributeXYList.serialize(obj.disabled, buffer, bufferOffset);
    // Serialize message field [disabled_exists]
    bufferOffset = _serializer.bool(obj.disabled_exists, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = SegmentAttributeXYList.serialize(obj.enabled, buffer, bufferOffset);
    // Serialize message field [enabled_exists]
    bufferOffset = _serializer.bool(obj.enabled_exists, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = LaneDataAttributeList.serialize(obj.data, buffer, bufferOffset);
    // Serialize message field [data_exists]
    bufferOffset = _serializer.bool(obj.data_exists, buffer, bufferOffset);
    // Serialize message field [dWitdh]
    bufferOffset = _serializer.float32(obj.dWitdh, buffer, bufferOffset);
    // Serialize message field [dWitdh_exists]
    bufferOffset = _serializer.bool(obj.dWitdh_exists, buffer, bufferOffset);
    // Serialize message field [dElevation]
    bufferOffset = _serializer.float32(obj.dElevation, buffer, bufferOffset);
    // Serialize message field [dElevation_exists]
    bufferOffset = _serializer.bool(obj.dElevation_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeAttributeSetXY
    let len;
    let data = new NodeAttributeSetXY(null);
    // Deserialize message field [local_node]
    data.local_node = NodeAttributeXYList.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_node_exists]
    data.local_node_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disabled]
    data.disabled = SegmentAttributeXYList.deserialize(buffer, bufferOffset);
    // Deserialize message field [disabled_exists]
    data.disabled_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = SegmentAttributeXYList.deserialize(buffer, bufferOffset);
    // Deserialize message field [enabled_exists]
    data.enabled_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = LaneDataAttributeList.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_exists]
    data.data_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dWitdh]
    data.dWitdh = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dWitdh_exists]
    data.dWitdh_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dElevation]
    data.dElevation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dElevation_exists]
    data.dElevation_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NodeAttributeXYList.getMessageSize(object.local_node);
    length += SegmentAttributeXYList.getMessageSize(object.disabled);
    length += SegmentAttributeXYList.getMessageSize(object.enabled);
    length += LaneDataAttributeList.getMessageSize(object.data);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/NodeAttributeSetXY';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e75cafda077f3683a1724bd1ccd8baf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
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
    # Used to "cant" the stop line of the lane.
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeAttributeSetXY(null);
    if (msg.local_node !== undefined) {
      resolved.local_node = NodeAttributeXYList.Resolve(msg.local_node)
    }
    else {
      resolved.local_node = new NodeAttributeXYList()
    }

    if (msg.local_node_exists !== undefined) {
      resolved.local_node_exists = msg.local_node_exists;
    }
    else {
      resolved.local_node_exists = false
    }

    if (msg.disabled !== undefined) {
      resolved.disabled = SegmentAttributeXYList.Resolve(msg.disabled)
    }
    else {
      resolved.disabled = new SegmentAttributeXYList()
    }

    if (msg.disabled_exists !== undefined) {
      resolved.disabled_exists = msg.disabled_exists;
    }
    else {
      resolved.disabled_exists = false
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = SegmentAttributeXYList.Resolve(msg.enabled)
    }
    else {
      resolved.enabled = new SegmentAttributeXYList()
    }

    if (msg.enabled_exists !== undefined) {
      resolved.enabled_exists = msg.enabled_exists;
    }
    else {
      resolved.enabled_exists = false
    }

    if (msg.data !== undefined) {
      resolved.data = LaneDataAttributeList.Resolve(msg.data)
    }
    else {
      resolved.data = new LaneDataAttributeList()
    }

    if (msg.data_exists !== undefined) {
      resolved.data_exists = msg.data_exists;
    }
    else {
      resolved.data_exists = false
    }

    if (msg.dWitdh !== undefined) {
      resolved.dWitdh = msg.dWitdh;
    }
    else {
      resolved.dWitdh = 0.0
    }

    if (msg.dWitdh_exists !== undefined) {
      resolved.dWitdh_exists = msg.dWitdh_exists;
    }
    else {
      resolved.dWitdh_exists = false
    }

    if (msg.dElevation !== undefined) {
      resolved.dElevation = msg.dElevation;
    }
    else {
      resolved.dElevation = 0.0
    }

    if (msg.dElevation_exists !== undefined) {
      resolved.dElevation_exists = msg.dElevation_exists;
    }
    else {
      resolved.dElevation_exists = false
    }

    return resolved;
    }
};

module.exports = NodeAttributeSetXY;
