// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneAttributes = require('./LaneAttributes.js');
let AllowedManeuvers = require('./AllowedManeuvers.js');
let NodeListXY = require('./NodeListXY.js');
let ConnectsToList = require('./ConnectsToList.js');
let OverlayLaneList = require('./OverlayLaneList.js');

//-----------------------------------------------------------

class GenericLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.name = null;
      this.name_exists = null;
      this.ingress_approach = null;
      this.ingress_approach_exists = null;
      this.egress_approach = null;
      this.egress_approach_exists = null;
      this.lane_attributes = null;
      this.maneuvers = null;
      this.maneuvers_exists = null;
      this.node_list = null;
      this.connects_to = null;
      this.connects_to_exists = null;
      this.overlay_lane_list = null;
      this.overlay_lane_list_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('name_exists')) {
        this.name_exists = initObj.name_exists
      }
      else {
        this.name_exists = false;
      }
      if (initObj.hasOwnProperty('ingress_approach')) {
        this.ingress_approach = initObj.ingress_approach
      }
      else {
        this.ingress_approach = 0;
      }
      if (initObj.hasOwnProperty('ingress_approach_exists')) {
        this.ingress_approach_exists = initObj.ingress_approach_exists
      }
      else {
        this.ingress_approach_exists = false;
      }
      if (initObj.hasOwnProperty('egress_approach')) {
        this.egress_approach = initObj.egress_approach
      }
      else {
        this.egress_approach = 0;
      }
      if (initObj.hasOwnProperty('egress_approach_exists')) {
        this.egress_approach_exists = initObj.egress_approach_exists
      }
      else {
        this.egress_approach_exists = false;
      }
      if (initObj.hasOwnProperty('lane_attributes')) {
        this.lane_attributes = initObj.lane_attributes
      }
      else {
        this.lane_attributes = new LaneAttributes();
      }
      if (initObj.hasOwnProperty('maneuvers')) {
        this.maneuvers = initObj.maneuvers
      }
      else {
        this.maneuvers = new AllowedManeuvers();
      }
      if (initObj.hasOwnProperty('maneuvers_exists')) {
        this.maneuvers_exists = initObj.maneuvers_exists
      }
      else {
        this.maneuvers_exists = false;
      }
      if (initObj.hasOwnProperty('node_list')) {
        this.node_list = initObj.node_list
      }
      else {
        this.node_list = new NodeListXY();
      }
      if (initObj.hasOwnProperty('connects_to')) {
        this.connects_to = initObj.connects_to
      }
      else {
        this.connects_to = new ConnectsToList();
      }
      if (initObj.hasOwnProperty('connects_to_exists')) {
        this.connects_to_exists = initObj.connects_to_exists
      }
      else {
        this.connects_to_exists = false;
      }
      if (initObj.hasOwnProperty('overlay_lane_list')) {
        this.overlay_lane_list = initObj.overlay_lane_list
      }
      else {
        this.overlay_lane_list = new OverlayLaneList();
      }
      if (initObj.hasOwnProperty('overlay_lane_list_exists')) {
        this.overlay_lane_list_exists = initObj.overlay_lane_list_exists
      }
      else {
        this.overlay_lane_list_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenericLane
    // Serialize message field [lane_id]
    bufferOffset = _serializer.uint8(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [name_exists]
    bufferOffset = _serializer.bool(obj.name_exists, buffer, bufferOffset);
    // Serialize message field [ingress_approach]
    bufferOffset = _serializer.uint8(obj.ingress_approach, buffer, bufferOffset);
    // Serialize message field [ingress_approach_exists]
    bufferOffset = _serializer.bool(obj.ingress_approach_exists, buffer, bufferOffset);
    // Serialize message field [egress_approach]
    bufferOffset = _serializer.uint8(obj.egress_approach, buffer, bufferOffset);
    // Serialize message field [egress_approach_exists]
    bufferOffset = _serializer.bool(obj.egress_approach_exists, buffer, bufferOffset);
    // Serialize message field [lane_attributes]
    bufferOffset = LaneAttributes.serialize(obj.lane_attributes, buffer, bufferOffset);
    // Serialize message field [maneuvers]
    bufferOffset = AllowedManeuvers.serialize(obj.maneuvers, buffer, bufferOffset);
    // Serialize message field [maneuvers_exists]
    bufferOffset = _serializer.bool(obj.maneuvers_exists, buffer, bufferOffset);
    // Serialize message field [node_list]
    bufferOffset = NodeListXY.serialize(obj.node_list, buffer, bufferOffset);
    // Serialize message field [connects_to]
    bufferOffset = ConnectsToList.serialize(obj.connects_to, buffer, bufferOffset);
    // Serialize message field [connects_to_exists]
    bufferOffset = _serializer.bool(obj.connects_to_exists, buffer, bufferOffset);
    // Serialize message field [overlay_lane_list]
    bufferOffset = OverlayLaneList.serialize(obj.overlay_lane_list, buffer, bufferOffset);
    // Serialize message field [overlay_lane_list_exists]
    bufferOffset = _serializer.bool(obj.overlay_lane_list_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenericLane
    let len;
    let data = new GenericLane(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name_exists]
    data.name_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ingress_approach]
    data.ingress_approach = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ingress_approach_exists]
    data.ingress_approach_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [egress_approach]
    data.egress_approach = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [egress_approach_exists]
    data.egress_approach_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_attributes]
    data.lane_attributes = LaneAttributes.deserialize(buffer, bufferOffset);
    // Deserialize message field [maneuvers]
    data.maneuvers = AllowedManeuvers.deserialize(buffer, bufferOffset);
    // Deserialize message field [maneuvers_exists]
    data.maneuvers_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [node_list]
    data.node_list = NodeListXY.deserialize(buffer, bufferOffset);
    // Deserialize message field [connects_to]
    data.connects_to = ConnectsToList.deserialize(buffer, bufferOffset);
    // Deserialize message field [connects_to_exists]
    data.connects_to_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [overlay_lane_list]
    data.overlay_lane_list = OverlayLaneList.deserialize(buffer, bufferOffset);
    // Deserialize message field [overlay_lane_list_exists]
    data.overlay_lane_list_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += NodeListXY.getMessageSize(object.node_list);
    length += ConnectsToList.getMessageSize(object.connects_to);
    length += OverlayLaneList.getMessageSize(object.overlay_lane_list);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/GenericLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '560d9bfa8f1028b863643e101cde5b5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # GenericLane.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # GenericLane ::= SEQUENCE {
    #
    # laneID LaneID ::= INTEGER (0..255)
    # -- The unique ID number assigned
    # -- to this lane object
    uint8 lane_id
    
    # name DescriptiveName OPTIONAL := IA5String (SIZE(1..63))
    # -- often for debug use only
    # -- but at times used to name ped crossings
    string name
    bool name_exists
    
    # ingressApproach ApproachID OPTIONAL, -- inbound
    # ApproachID ::= INTEGER (0..15)
    uint8 ingress_approach
    bool ingress_approach_exists
    
    # egressApproach ApproachID OPTIONAL, -- outbound
    # -- Approach IDs to which this lane belongs
    uint8 egress_approach
    bool egress_approach_exists
    
    # laneAttributes LaneAttributes,
    # -- All Attribute information about
    # -- the basic selected lane type
    # -- Directions of use, Geometric co-sharing
    # -- and Type Specific Attributes
    # -- These Attributes are 'lane - global' that is,
    # -- they are true for the entire length of the lane
    j2735_msgs/LaneAttributes lane_attributes
    
    # maneuvers AllowedManeuvers OPTIONAL,
    # -- the permitted maneuvers for this lane
    j2735_msgs/AllowedManeuvers maneuvers
    bool maneuvers_exists
    
    # nodeList NodeListXY,
    # -- Lane spatial path information as well as
    # -- various Attribute information along the node path
    # -- Attributes found here are more general and may
    # -- come and go over the length of the lane.
    j2735_msgs/NodeListXY node_list
    
    # connectsTo ConnectsToList OPTIONAL,
    # -- a list of other lanes and their signal group IDs
    # -- each connecting lane and its signal group ID
    # -- is given, therefore this element provides the
    # -- information formerly in "signalGroups" in prior
    # -- editions.
    j2735_msgs/ConnectsToList connects_to
    bool connects_to_exists
    
    # overlays OverlayLaneList OPTIONAL,
    # -- A list of any lanes which have spatial paths that
    # -- overlay (run on top of, and not simply cross)
    # -- the path of this lane when used
    j2735_msgs/OverlayLaneList overlay_lane_list
    bool overlay_lane_list_exists
    
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-GenericLane} OPTIONAL,
    # ...
    # }
    ================================================================================
    MSG: j2735_msgs/LaneAttributes
    #
    # LaneAttributes.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # directionalUse LaneDirection, -- directions of lane use
    j2735_msgs/LaneDirection directional_use
    
    # sharedWith LaneSharing  -- co-users of the lane path
    j2735_msgs/LaneSharing shared_with
    
    # laneType LaneTypeAttributes, -- specific lane type data
    j2735_msgs/LaneTypeAttributes laneType
    
    # regional RegionalExtension {{REGION.Reg-LaneAttributes}} OPTIONAL
    #TODO: RegionalExtensions are not yet implemented in asn1c
    
    
    ================================================================================
    MSG: j2735_msgs/LaneDirection
    #
    # LaneDirection.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneDirection data element is used to denote the allowed direction of travel over a lane object. By convention,
    # the lane object is always described from the stop line outwards away from the intersection. Therefore, the ingress
    # direction is from the end of the path to the stop line and the egress direction is from the stop line outwards. It should be
    # noted that some lane objects are not used for travel and that some lane objects allow bi-directional travel.
    #
    # LaneDirection ::= BIT STRING {
    # -- With bits as defined:
    # -- Allowed directions of travel in the lane object
    # -- All lanes are described from the stop line outwards
    # ingressPath (0),
    # -- travel from rear of path to front is allowed
    # egressPath (1)
    # -- travel from front of path to rear is allowed
    # -- Notes: No Travel, i.e. the lane object type does not support travel (medians, curbs, etc.)
    # is indicated by not asserting any bit value
    # - Bi-Directional Travel (such as a ped crosswalk) is indicated by asserting both of the bits
    # } (SIZE (2))
    
    uint8 lane_direction
    ================================================================================
    MSG: j2735_msgs/LaneSharing
    #
    # LaneSharing.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    #
    # LaneSharing ::= BIT STRING {
    # -- With bits as defined:
    # overlappingLaneDescriptionProvided (0),
    # -- Assert when another lane object is present to describe the
    # -- path of the overlapping shared lane
    # -- this construct is not used for lane objects which simply cross
    # multipleLanesTreatedAsOneLane(1),
    # -- Assert if the lane object path and width details represents
    # -- multiple lanes within it that are not further described
    # -- Various modes and type of traffic that may share this lane:
    # otherNonMotorizedTrafficTypes (2), -- horse drawn etc.
    # individualMotorizedVehicleTraffic (3),
    # busVehicleTraffic (4),
    # taxiVehicleTraffic (5),
    # pedestriansTraffic (6),
    # cyclistVehicleTraffic (7),
    # trackedVehicleTraffic (8),
    # pedestrianTraffic (9)
    # } (SIZE (10))
    # -- All zeros would indicate 'not shared' and 'not overlapping'
    
    uint16 lane_sharing
    ================================================================================
    MSG: j2735_msgs/LaneTypeAttributes
    #
    # LaneTypeAttributes.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Lane Type Attributes data frame is used to hold attribute information specific to a given lane type.
    # LaneTypeAttributes ::= CHOICE {
    # vehicle LaneAttributes-Vehicle, -- motor vehicle lanes
    # crosswalk LaneAttributes-Crosswalk, -- pedestrian crosswalks
    # bikeLane LaneAttributes-Bike, -- bike lanes
    # sidewalk LaneAttributes-Sidewalk, -- pedestrian sidewalk paths
    # median LaneAttributes-Barrier, -- medians & channelization
    # striping LaneAttributes-Striping, -- roadway markings
    # trackedVehicle LaneAttributes-TrackedVehicle, -- trains and trolleys
    # parking LaneAttributes-Parking, -- parking and stopping lanes
    # }
    
    uint8 choice
    uint8 VEHICLE=0
    uint8 CROSSWALK=1
    uint8 BIKE_LANE=2
    uint8 SIDEWALK=3
    uint8 MEDIAN=4
    uint8 STRIPING=5
    uint8 TRACKED_VEHICLE=6
    uint8 PARKING=7
    
    j2735_msgs/LaneAttributesVehicle vehicle
    j2735_msgs/LaneAttributesCrosswalk crosswalk
    j2735_msgs/LaneAttributesBike bikeLane
    j2735_msgs/LaneAttributesSidewalk sidewalk
    j2735_msgs/LaneAttributesBarrier median
    j2735_msgs/LaneAttributesStriping striping
    j2735_msgs/LaneAttributesTrackedVehicle trackedVehicle
    j2735_msgs/LaneAttributesParking parking
    ================================================================================
    MSG: j2735_msgs/LaneAttributesVehicle
    #
    # LaneAttributesVehicle.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # LaneAttributes-Vehicle ::= BIT STRING {
    # -- With bits as defined:
    # isVehicleRevocableLane (0),
    #       -- this lane may be activated or not based
    #       -- on the current SPAT message contents
    #       -- if not asserted, the lane is ALWAYS present
    # isVehicleFlyOverLane (1),
    #       -- path of lane is not at grade
    # hovLaneUseOnly (2),
    # restrictedToBusUse (3),
    # restrictedToTaxiUse(4),
    # restrictedFromPublicUse (5),
    # hasIRbeaconCoverage(6),
    # permissionOnRequest(7)
    #       -- e.g. to inform about a lane for e-cars
    # } (SIZE (8,...))
    
    uint8 lane_attributes_vehicle
    
    uint8 ISVEHICLEREVOCABLELANE=0
    uint8 ISVEHICLEFLYOVERLANE=1
    uint8 HOVLANEUSEONLY=2
    uint8 RESTRICTEDTOBUSUSE=3
    uint8 RESTRICTEDTOTAXIUSE=4
    uint8 RESTRICTEDFROMPUBLICUSE=5
    uint8 HASIRBEACONCOVERAGE=6
    uint8 PERMISSIONONREQUEST=7
    
    
    ================================================================================
    MSG: j2735_msgs/LaneAttributesCrosswalk
    #
    # LaneAttributesCrosswalk.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    
    # LaneAttributes-Crosswalk ::= BIT STRING {
    # 	-- With bits as defined:
    # 	-- MUTCD provides no suitable "types" to use here
    # 	crosswalkRevocableLane (0),
    # 		-- this lane may be activated or not based
    # 		-- on the current SPAT message contents
    # 		-- if not asserted, the lane is ALWAYS present
    # 	bicyleUseAllowed (1),
    # 		-- The path allows bicycle traffic,
    # 		-- if not set, this mode is prohibited
    # 	isXwalkFlyOverLane (2),
    # 		-- path of lane is not at grade
    # 	fixedCycleTime (3),
    # 		-- ped walk phases use preset times
    # 		-- i.e. there is not a 'push to cross' button
    # 	biDirectionalCycleTimes (4),
    # 		-- ped walk phases use different SignalGroupID
    # 		-- for each direction. The first SignalGroupID
    # 		-- in the first Connection represents 'inbound'
    # 		-- flow (the direction of travel towards the first
    # 		-- node point) while second SignalGroupID in the
    # 		-- next Connection entry represents the 'outbound'
    # 		-- flow. And use of RestrictionClassID entries
    # 		-- in the Connect follow this same pattern in pairs.
    # 	hasPushToWalkButton (5),
    # 		-- Has a demand input
    # 	audioSupport (6),
    # 		-- audio crossing cues present
    # 	rfSignalRequestPresent (7),
    # 		-- Supports RF push to walk technologies
    # 	unsignalizedSegmentsPresent (8)
    # 		-- The lane path consists of one of more segments
    # 		-- which are not part of a signal group ID
    # } (SIZE (16))
    
    uint16  lane_attributes_crosswalk
    ================================================================================
    MSG: j2735_msgs/LaneAttributesBike
    #
    # LaneAttributesBike.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.
    #
    # LaneAttributes-Bike ::= BIT STRING {
    #	-- With bits as defined:
    #	bikeRevocableLane (0),
    #		-- this lane may be activated or not based
    #		-- on the current SPAT message contents
    #		-- if not asserted, the lane is ALWAYS present
    #	pedestrianUseAllowed (1),
    #		-- The path allows pedestrian traffic,
    #		-- if not set, this mode is prohibited
    #	isBikeFlyOverLane (2),
    #		-- path of lane is not at grade
    #	fixedCycleTime (3),
    #		-- the phases use preset times
    #		-- Bits 7~15 reserved and set to zero
    #	} (SIZE (16))
    
    uint16 lane_attributes_bike
    ================================================================================
    MSG: j2735_msgs/LaneAttributesSidewalk
    #
    # LaneAttributesSidewalk.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type
    #
    # LaneAttributes-Sidewalk ::= BIT STRING {
    # -- With bits as defined:
    # sidewalk-RevocableLane (0),
    # -- this lane may be activated or not based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # bicyleUseAllowed (1),
    # -- The path allows bicycle traffic,
    # -- if not set, this mode is prohibited
    # isSidewalkFlyOverLane (2),
    # -- path of lane is not at grade
    # walkBikes (3)
    # -- bike traffic must dismount and walk
    # -- Bits 4~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16 lane_attributes_sidewalk
    ================================================================================
    MSG: j2735_msgs/LaneAttributesBarrier
    #
    # LaneAttributesBarrier.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Barrier data element relates specific properties found in a Barrier
    # or Median lane type (a type of lane object used to separate traffic lanes).
    #
    # LaneAttributes-Barrier ::= BIT STRING {
    # -- With bits as defined:
    # median-RevocableLane (0),
    # -- this lane may be activated or not based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # median (1),
    # whiteLineHashing (2),
    # stripedLines (3),
    # doubleStripedLines (4),
    # trafficCones (5),
    # constructionBarrier(6),
    # trafficChannels(7),
    # lowCurbs(8),
    # highCurbs(9)
    # -- Bits 10~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16 lane_attributes_barrier
    ================================================================================
    MSG: j2735_msgs/LaneAttributesStriping
    #
    # LaneAttributesBarrier.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Striping data element relates specific properties found
    # in various types of ground striping lane types.
    #
    # LaneAttributes-Striping ::= BIT STRING {
    # -- With bits as defined:
    # stripeToConnectingLanesRevocableLane(0),
    # -- this lane may be activated or not activated based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # stripeDrawOnLeft(1),
    # stripeDrawOnRight(2),
    # -- which side of lane to mark
    # stripeToConnectingLanesLeft(3),
    # stripeToConnectingLanesRight(4),
    # stripeToConnectingLanesAhead(5)
    # -- the stripe type should be
    # -- presented to the user visually
    # -- to reflect stripes in the
    # -- intersection for the type of
    # -- movement indicated
    # -- Bits 6~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16 lane_attributes_striping
    ================================================================================
    MSG: j2735_msgs/LaneAttributesTrackedVehicle
    #
    # LaneAttributesTrackedVehicle.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Special data element relates specific properties found
    # in a tracked vehicle lane types (trolley and train lanes).
    # The term "rail vehicle" can be considered synonymous.
    # In this case, the term does not relate to vehicle types with tracks or treads.
    #
    # LaneAttributes-TrackedVehicle ::= BIT STRING {
    # -- With bits as defined:
    # spec-RevocableLane(0),
    # -- this lane may be activated or not based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # spec-commuterRailRoadTrack (1),
    # spec-lightRailRoadTrack(2),
    # spec-heavyRailRoadTrack(3),
    # spec-otherRailType(4)
    # -- Bits 5~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16 lane_attributes_trackedvehicle
    
    ================================================================================
    MSG: j2735_msgs/LaneAttributesParking
    #
    # LaneAttributesParking.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.
    #
    # LaneAttributes-Parking ::= BIT STRING {
    # -- With bits as defined:
    # -- Parking use details, note that detailed restrictions such as
    # -- allowed hours are sent by way of ITIS codes in the TIM message
    # parkingRevocableLane(0),
    # -- this lane may be activated or not based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # parallelParkingInUse(1),
    # headInParkingInUse(2),
    # doNotParkZone(3),
    # -- used to denote fire hydrants as well as
    # -- short disruptions in a parking zone
    # parkingForBusUse(4),
    # parkingForTaxiUse(5),
    # noPublicParkingUse(6)
    # -- private parking, as in front of
    # -- private property
    # -- Bits 7~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16  lane_attributes_parking
    ================================================================================
    MSG: j2735_msgs/AllowedManeuvers
    #
    # AllowedManeuvers.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # AllowedManeuvers ::= BIT STRING {
    # -- With bits as defined:
    # -- Allowed maneuvers at path end (stop line)
    # -- All maneuvers with bits not set are therefore prohibited !
    # -- A value of zero shall be used for unknown, indicating no Maneuver
    # maneuverStraightAllowed(0),
    # -- a Straight movement is allowed in this lane
    # maneuverLeftAllowed(1),
    # -- a Left Turn movement is allowed in this lane
    # maneuverRightAllowed(2),
    # -- a Right Turn movement is allowed in this lane
    # maneuverUTurnAllowed(3),
    # -- a U turn movement is allowed in this lane
    # maneuverLeftTurnOnRedAllowed (4),
    # -- a Stop, and then proceed when safe movement
    # -- is allowed in this lane
    # maneuverRightTurnOnRedAllowed (5),
    # -- a Stop, and then proceed when safe movement
    # -- is allowed in this lane
    # maneuverLaneChangeAllowed(6),
    # -- a movement which changes to an outer lane
    # -- on the egress side is allowed in this lane
    # -- (example: left into either outbound lane)
    # maneuverNoStoppingAllowed(7),
    # -- the vehicle should not stop at the stop line
    # -- (example: a flashing green arrow)
    # yieldAllwaysRequired(8),
    # -- the allowed movements above are not protected
    # -- (example: an permanent yellow condition)
    # goWithHalt(9),
    # -- after making a full stop, may proceed
    # caution(10),
    # -- proceed past stop line with caution
    # reserved1(11)
    # -- used to align to 12 Bit Field
    # } (SIZE(12))
    
    uint16 allowed_maneuvers
    
    # Bit flags
    uint16 STRAIGHT=1
    uint16 LEFT_TURN=2
    uint16 RIGHT_TURN=4
    uint16 U_TURN=8
    uint16 LEFT_TURN_ON_RED=16
    uint16 RIGHT_TURN_ON_RED=32
    uint16 LANE_CHANGE=64
    uint16 NO_STOPPING_ALLOWED=128
    uint16 ALWAYS_YIELD=256
    uint16 GO_WITH_HALT=512
    uint16 CAUTION=1024
    
    ================================================================================
    MSG: j2735_msgs/NodeListXY
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
    ================================================================================
    MSG: j2735_msgs/ConnectsToList
    #
    # ConnectsToList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The ConnectsToList data structure is used in the generic lane descriptions to provide a sequence of other defined
    # lanes to which each lane connects beyond its stop point. See the Connection data frame entry for details. Note that this
    # data frame is not used in some lane object types.
    #
    # ConnectsToList ::= SEQUENCE (SIZE(1..16)) OF Connection
    
    j2735_msgs/Connection[] connect_to_list
    
    ================================================================================
    MSG: j2735_msgs/Connection
    #
    # Connection.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at
    # the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound
    # (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this
    # to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected
    # conditions).
    #
    # Connection ::= SEQUENCE {
    # -- The subject lane connecting to this lane is:
    # connectingLane ConnectingLane,
    # -- The index of the connecting lane and also
    # -- the maneuver from the current lane to it
    # remoteIntersection IntersectionReferenceID OPTIONAL,
    # -- This entry is only used when the
    # -- indicated connecting lane belongs
    # -- to another intersection layout. This
    # -- provides a means to create meshes of lanes
    # -- SPAT mapping details at the stop line are:
    # signalGroup SignalGroupID OPTIONAL,
    # -- The matching signal group send by
    # -- the SPAT message for this lane/maneuver.
    # -- Shall be present unless the connectingLane
    # -- has no signal group (is un-signalized)
    # userClass RestrictionClassID OPTIONAL,
    # -- The Restriction Class of users this applies to
    # -- The use of some lane/maneuver and SignalGroupID
    # -- pairings are restricted to selected users.
    # -- When absent, the SignalGroupID applies to all
    # -- Movement assist details are given by:
    # connectionID LaneConnectionID OPTIONAL
    # -- An optional connection index used to
    # -- relate this lane connection to any dynamic
    # -- clearance data in the SPAT. Note that
    # -- the index may be shared with other
    # -- connections if the clearance data is common
    # }
    
    j2735_msgs/ConnectingLane connecting_lane
    
    j2735_msgs/IntersectionReferenceID remote_intersection
    bool remote_intersection_exists
    
    # SignalGroupID ::= INTEGER (0..255)
    uint8 signal_group
    bool signal_group_exists
    
    # RestrictionClassID ::= INTEGER (0..255)
    uint8 user_class
    bool user_class_exists
    
    # LaneConnectionID ::= INTEGER (0..255)
    uint8 connection_id
    bool connection_id_exists
    
    ================================================================================
    MSG: j2735_msgs/ConnectingLane
    #
    # ConnectingLane.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # ConnectingLane ::= SEQUENCE {
    # lane LaneID,
    # -- Index of the connecting lane
    # maneuver AllowedManeuvers OPTIONAL
    # -- The Maneuver between
    # -- the enclosing lane and this lane
    # -- at the stop line to connect them
    # }
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is
    # -- not available or not known
    # -- the value 255 is reserved for future use
    uint16 lane
    uint16 LANE_UNAVAILABLE=0
    
    # -- the permitted maneuvers for this lane
    # AllowedManeuvers ::= BIT STRING {
    # -- With bits as defined:
    # -- Allowed maneuvers at path end (stop line)
    # -- *** All maneuvers with bits not set are therefore prohibited ! ***
    # -- A value of zero shall be used for unknown, indicating no Maneuver
    j2735_msgs/AllowedManeuvers maneuver
    bool maneuver_exists
    
    
    
    ================================================================================
    MSG: j2735_msgs/IntersectionReferenceID
    #
    # IntersectionReferenceID.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an
    # IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is
    # guaranteed to be globally unique.
    
    # region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)
    # -- a globally unique regional assignment value
    # -- typical assigned to a regional DOT authority
    # -- the value zero shall be used for testing needs
    # 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.
    uint16 region
    uint16 REGION_UNAVAILABLE=0
    bool region_exists
    
    # id IntersectionID ::= INTEGER (0..65535)
    # -- a unique mapping to the intersection
    # -- in question within the above region of use
    uint16 id
    
    ================================================================================
    MSG: j2735_msgs/OverlayLaneList
    #
    # OverlayLaneList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Overlay Lane List data frame is a sequence of lane IDs which refers to lane objects that overlap or overlay the
    # current lane's spatial path.
    #  OverlayLaneList ::= SEQUENCE (SIZE(1..5)) OF LaneID
    # -- The unique ID numbers for any lane object which have
    # -- spatial paths that overlay (run on top of, and not
    # -- simply cross with) the current lane.
    # -- Such as a train path that overlays a motor vehicle
    # -- lane object for a roadway segment.
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is
    # -- not available or not known
    # -- the value 255 is reserved for future use
    uint16[] overlay_lane_list
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenericLane(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.name_exists !== undefined) {
      resolved.name_exists = msg.name_exists;
    }
    else {
      resolved.name_exists = false
    }

    if (msg.ingress_approach !== undefined) {
      resolved.ingress_approach = msg.ingress_approach;
    }
    else {
      resolved.ingress_approach = 0
    }

    if (msg.ingress_approach_exists !== undefined) {
      resolved.ingress_approach_exists = msg.ingress_approach_exists;
    }
    else {
      resolved.ingress_approach_exists = false
    }

    if (msg.egress_approach !== undefined) {
      resolved.egress_approach = msg.egress_approach;
    }
    else {
      resolved.egress_approach = 0
    }

    if (msg.egress_approach_exists !== undefined) {
      resolved.egress_approach_exists = msg.egress_approach_exists;
    }
    else {
      resolved.egress_approach_exists = false
    }

    if (msg.lane_attributes !== undefined) {
      resolved.lane_attributes = LaneAttributes.Resolve(msg.lane_attributes)
    }
    else {
      resolved.lane_attributes = new LaneAttributes()
    }

    if (msg.maneuvers !== undefined) {
      resolved.maneuvers = AllowedManeuvers.Resolve(msg.maneuvers)
    }
    else {
      resolved.maneuvers = new AllowedManeuvers()
    }

    if (msg.maneuvers_exists !== undefined) {
      resolved.maneuvers_exists = msg.maneuvers_exists;
    }
    else {
      resolved.maneuvers_exists = false
    }

    if (msg.node_list !== undefined) {
      resolved.node_list = NodeListXY.Resolve(msg.node_list)
    }
    else {
      resolved.node_list = new NodeListXY()
    }

    if (msg.connects_to !== undefined) {
      resolved.connects_to = ConnectsToList.Resolve(msg.connects_to)
    }
    else {
      resolved.connects_to = new ConnectsToList()
    }

    if (msg.connects_to_exists !== undefined) {
      resolved.connects_to_exists = msg.connects_to_exists;
    }
    else {
      resolved.connects_to_exists = false
    }

    if (msg.overlay_lane_list !== undefined) {
      resolved.overlay_lane_list = OverlayLaneList.Resolve(msg.overlay_lane_list)
    }
    else {
      resolved.overlay_lane_list = new OverlayLaneList()
    }

    if (msg.overlay_lane_list_exists !== undefined) {
      resolved.overlay_lane_list_exists = msg.overlay_lane_list_exists;
    }
    else {
      resolved.overlay_lane_list_exists = false
    }

    return resolved;
    }
};

module.exports = GenericLane;
