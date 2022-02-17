// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneDirection = require('./LaneDirection.js');
let LaneSharing = require('./LaneSharing.js');
let LaneTypeAttributes = require('./LaneTypeAttributes.js');

//-----------------------------------------------------------

class LaneAttributes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.directional_use = null;
      this.shared_with = null;
      this.laneType = null;
    }
    else {
      if (initObj.hasOwnProperty('directional_use')) {
        this.directional_use = initObj.directional_use
      }
      else {
        this.directional_use = new LaneDirection();
      }
      if (initObj.hasOwnProperty('shared_with')) {
        this.shared_with = initObj.shared_with
      }
      else {
        this.shared_with = new LaneSharing();
      }
      if (initObj.hasOwnProperty('laneType')) {
        this.laneType = initObj.laneType
      }
      else {
        this.laneType = new LaneTypeAttributes();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributes
    // Serialize message field [directional_use]
    bufferOffset = LaneDirection.serialize(obj.directional_use, buffer, bufferOffset);
    // Serialize message field [shared_with]
    bufferOffset = LaneSharing.serialize(obj.shared_with, buffer, bufferOffset);
    // Serialize message field [laneType]
    bufferOffset = LaneTypeAttributes.serialize(obj.laneType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributes
    let len;
    let data = new LaneAttributes(null);
    // Deserialize message field [directional_use]
    data.directional_use = LaneDirection.deserialize(buffer, bufferOffset);
    // Deserialize message field [shared_with]
    data.shared_with = LaneSharing.deserialize(buffer, bufferOffset);
    // Deserialize message field [laneType]
    data.laneType = LaneTypeAttributes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '731dfe4ac04aa870412a17e513859055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributes(null);
    if (msg.directional_use !== undefined) {
      resolved.directional_use = LaneDirection.Resolve(msg.directional_use)
    }
    else {
      resolved.directional_use = new LaneDirection()
    }

    if (msg.shared_with !== undefined) {
      resolved.shared_with = LaneSharing.Resolve(msg.shared_with)
    }
    else {
      resolved.shared_with = new LaneSharing()
    }

    if (msg.laneType !== undefined) {
      resolved.laneType = LaneTypeAttributes.Resolve(msg.laneType)
    }
    else {
      resolved.laneType = new LaneTypeAttributes()
    }

    return resolved;
    }
};

module.exports = LaneAttributes;
