// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeSetXY = require('./NodeSetXY.js');
let ComputedLane = require('./ComputedLane.js');

//-----------------------------------------------------------

class NodeListXY {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.nodes = null;
      this.computed = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = new NodeSetXY();
      }
      if (initObj.hasOwnProperty('computed')) {
        this.computed = initObj.computed
      }
      else {
        this.computed = new ComputedLane();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeListXY
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [nodes]
    bufferOffset = NodeSetXY.serialize(obj.nodes, buffer, bufferOffset);
    // Serialize message field [computed]
    bufferOffset = ComputedLane.serialize(obj.computed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeListXY
    let len;
    let data = new NodeListXY(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nodes]
    data.nodes = NodeSetXY.deserialize(buffer, bufferOffset);
    // Deserialize message field [computed]
    data.computed = ComputedLane.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NodeSetXY.getMessageSize(object.nodes);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/NodeListXY';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1800b634ba1ded6d1de24bb50c1d3ac3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # NodeListXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The NodeListXY data structure provides the sequence of signed offset node point values for determining the Xs and
    # Ys (and possibly Width or Zs when present), using the then current Position3D object to build a path for the centerline of
    # the subject lane type. Each X,Y point is referred to as a Node Point. The straight line paths between these points are
    # referred to as Segments.
    #
    # NodeListXY ::= CHOICE {
    # nodes NodeSetXY,
    # -- a lane made up of two or more
    # -- XY node points and any attributes
    # -- defined in those nodes
    # computed ComputedLane,
    # -- a lane path computed by translating
    # -- the data defined by another lane
    # ...
    # }
    
    uint8 choice
    uint8 NODE_SET_XY=0
    uint8 COMPUTED_LANE=1
    
    j2735_msgs/NodeSetXY nodes
    j2735_msgs/ComputedLane computed
    ================================================================================
    MSG: j2735_msgs/NodeSetXY
    #
    # NodeListXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The NodeSetXY data frame consists of a list of Node entries using XY offsets.
    #
    # NodeSetXY ::= SEQUENCE (SIZE(2..63)) OF NodeXY
    
    j2735_msgs/NodeXY[] node_set_xy
    ================================================================================
    MSG: j2735_msgs/NodeXY
    #
    # NodeXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_NodeXY data frame presents a structure to hold data for a single node point in a path. Each selected node
    # has an X and Y offset from the prior node point (or a complete lat-long representation in some cases) as well as optional
    # attribute information.
    #
    # NodeXY ::= SEQUENCE {
    # delta NodeOffsetPointXY,
    # -- A choice of which X,Y offset value to use
    # -- this includes various delta values as well a regional choices
    # attributes NodeAttributeSetXY OPTIONAL,
    # -- Any optional Attributes which are needed
    # -- This includes changes to the current lane width and elevation
    # ...
    # }
    
    j2735_msgs/NodeOffsetPointXY delta
    
    j2735_msgs/NodeAttributeSetXY attributes
    bool attributes_exists
    
    ================================================================================
    MSG: j2735_msgs/NodeOffsetPointXY
    #
    # NodeOffsetPointXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_NodeOffsetPointXY data frame presents a structure to hold different sized data frames for a single node
    # point in a lane. Nodes are described in terms of X and Y offsets in units of 1 centimeter (when zoom is 1:1).
    #
    # NodeOffsetPointXY ::= CHOICE {
    # -- Nodes with X,Y content
    # node-XY1 Node-XY-20b, -- node is within 5.11m of last node
    # node-XY2 Node-XY-22b, -- node is within 10.23m of last node
    # node-XY3 Node-XY-24b, -- node is within 20.47m of last node
    # node-XY4 Node-XY-26b, -- node is within 40.96m of last node
    # node-XY5 Node-XY-28b, -- node is within 81.91m of last node
    # node-XY6 Node-XY-32b, -- node is within 327.67m of last node
    # node-LatLon Node-LLmD-64b, -- node is a full 32b Lat/Lon range
    # regional RegionalExtension {{REGION.Reg-NodeOffsetPointXY}}
    # 	-- node which follows is of a
    # 	-- regional definition type
    # }
    #
    
    uint8 choice
    uint8 NODE_XY1=0
    uint8 NODE_XY2=1
    uint8 NODE_XY3=2
    uint8 NODE_XY4=3
    uint8 NODE_XY5=4
    uint8 NODE_XY6=5
    uint8 NODE_LATLON=6
    
    j2735_msgs/NodeXY20b node_xy1
    j2735_msgs/NodeXY22b node_xy2
    j2735_msgs/NodeXY24b node_xy3
    j2735_msgs/NodeXY26b node_xy4
    j2735_msgs/NodeXY28b node_xy5
    j2735_msgs/NodeXY32b node_xy6
    j2735_msgs/NodeLLmD64b node_latlon
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    ================================================================================
    MSG: j2735_msgs/NodeXY20b
    #
    # NodeXY20b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 20-bit node type with offset values from the last point in X and Y.
    #
    # Node-XY-20b ::= SEQUENCE {
    # x Offset-B10,
    # y Offset-B10
    # }
    
    # Offset-B10 ::= INTEGER (-512..511)
    # -- a range of +- 5.11 meters
    # A 10-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY22b
    #
    # NodeXY22b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 22-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-22b ::= SEQUENCE {
    # x Offset-B11,
    # y Offset-B11
    # }
    
    # Offset-B11 ::= INTEGER (-1024..1023)
    # -- a range of +- 10.23 meters
    # An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY24b
    #
    # NodeXY24b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 24-bit node type with offset values from the last point in X and Y.
    #
    # Node-XY-24b ::= SEQUENCE {
    # x Offset-B12,
    # y Offset-B12
    # }
    
    
    # Offset-B12 ::= INTEGER (-2048..2047)
    # -- a range of +- 20.47 meters
    # A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
    # reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)
    # directions. The most negative value shall be used to indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY26b
    #
    # NodeXY26b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 26-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-26b ::= SEQUENCE {
    # x Offset-B13,
    # y Offset-B13
    # }
    
    # Offset-B13 ::= INTEGER (-4096..4095)
    # -- a range of +- 40.95 meters
    # A 13-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY28b
    #
    # NodeXY28b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 28-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-28b ::= SEQUENCE {
    # x Offset-B14,
    # y Offset-B14
    # }
    
    # A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions.
    # Offset-B14 ::= INTEGER (-8192..8191)
    # -- a range of +- 81.91 meters
    
    float32 x
    float32 y
    
    ================================================================================
    MSG: j2735_msgs/NodeXY32b
    #
    # NodeXY32b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 32-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-32b ::= SEQUENCE {
    # x Offset-B16,
    # y Offset-B16
    # }
    
    # A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    # Offset-B16 ::= INTEGER (-32768..32767)
    # -- a range of +- 327.68 meters
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeLLmD64b
    #
    # NodeLLmD64b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.
    
    # Node-LLmD-64b ::= SEQUENCE {
    # lon Longitude,
    # lat Latitude
    # }
    
    #Longitude ::= INTEGER (-1799999999..1800000001)
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 180 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 longitude
    
    int32 LONGITUDE_UNAVAILABLE = 1800000001
    int32 LONGITUDE_MAX = 1800000000
    int32 LONGITUDE_MIN = -1799999999
    
    #Latitude ::= INTEGER (-900000000..900000001)
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 90 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 latitude
    
    int32 LATITUDE_UNAVAILABLE = 900000001
    int32 LATITUDE_MAX = 900000000
    int32 LATITUDE_MIN = -900000000
    
    
    
    
    
    ================================================================================
    MSG: j2735_msgs/NodeAttributeSetXY
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
    ================================================================================
    MSG: j2735_msgs/ComputedLane
    #
    # NodeListXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # ComputedLane ::= SEQUENCE {
    # -- Data needed to created a computed lane
    # referenceLaneId LaneID,
    # 	-- the lane ID upon which this
    # 	-- computed lane will be based
    # 	-- Lane Offset in X and Y direction
    # offsetXaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    # offsetYaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    #
    # -- Lane Rotation
    # rotateXY Angle OPTIONAL,
    # 	-- A path rotation value for the entire lane
    # 	-- Observe that this rotates the existing orientation
    # 	-- of the referenced lane, it does not replace it.
    # 	-- Rotation occurs about the initial path point.
    # -- Lane Path Scale (zooming)
    # scaleXaxis Scale-B12 OPTIONAL,
    # scaleYaxis Scale-B12 OPTIONAL,
    # 	-- value for translations or zooming of the path's
    # 	-- points. The values found in the reference lane
    # 	-- are all expanded or contracted based on the X
    # 	-- and Y and width values from the coordinates of
    # 	-- the reference lane's initial path point.
    # 	-- The Z axis remains untouched.
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ComputedLane}} OPTIONAL,
    # ...
    # }
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is
    # -- not available or not known
    # -- the value 255 is reserved for future use
    uint16 reference_lane_id
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    
    j2735_msgs/OffsetXaxis offset_x_axis
    
    j2735_msgs/OffsetYaxis offset_y_axis
    
    # Angle ::= INTEGER (0..239)
    #  -- Unsigned units of 1.5 degree, in 1 octet
    #  -- the true north is 0, positive is clockwise
    #  -- the values 240 to 254 shall not be sent
    #  -- the value 255 (0xFF) indicates an invalid value
    # NOTE: use invalid value to indicate unavailability as well.
    uint16 rotateXY
    uint16 ROTATEXY_INVALID=255
    bool rotatexy_exists
    
    # Scale-B12 ::= INTEGER (-2048..2047)
    # A 12-bit signed scaling factor supporting scales from zero (which is not used) to >200%.
    # In this data element, the value zero is taken to represent a value of one (scale 1:1).
    int16 scale_x_axis
    bool scale_x_axis_exists
    
    int16 scale_y_axis
    bool scale_y_axis_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    ================================================================================
    MSG: j2735_msgs/OffsetXaxis
    #
    # OffsetXaxis.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    # offsetXaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    
    
    uint8 choice
    uint8 SMALL=0
    uint8 LARGE=1
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    int16 small
    
    
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    int16 large
    ================================================================================
    MSG: j2735_msgs/OffsetYaxis
    #
    # OffsetYaxis.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    # offsetYaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    
    uint8 choice
    uint8 SMALL=0
    uint8 LARGE=1
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    int16 small
    
    
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    int16 large
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeListXY(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.nodes !== undefined) {
      resolved.nodes = NodeSetXY.Resolve(msg.nodes)
    }
    else {
      resolved.nodes = new NodeSetXY()
    }

    if (msg.computed !== undefined) {
      resolved.computed = ComputedLane.Resolve(msg.computed)
    }
    else {
      resolved.computed = new ComputedLane()
    }

    return resolved;
    }
};

// Constants for message
NodeListXY.Constants = {
  NODE_SET_XY: 0,
  COMPUTED_LANE: 1,
}

module.exports = NodeListXY;
