// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneAttributesVehicle = require('./LaneAttributesVehicle.js');
let LaneAttributesCrosswalk = require('./LaneAttributesCrosswalk.js');
let LaneAttributesBike = require('./LaneAttributesBike.js');
let LaneAttributesSidewalk = require('./LaneAttributesSidewalk.js');
let LaneAttributesBarrier = require('./LaneAttributesBarrier.js');
let LaneAttributesStriping = require('./LaneAttributesStriping.js');
let LaneAttributesTrackedVehicle = require('./LaneAttributesTrackedVehicle.js');
let LaneAttributesParking = require('./LaneAttributesParking.js');

//-----------------------------------------------------------

class LaneTypeAttributes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.vehicle = null;
      this.crosswalk = null;
      this.bikeLane = null;
      this.sidewalk = null;
      this.median = null;
      this.striping = null;
      this.trackedVehicle = null;
      this.parking = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('vehicle')) {
        this.vehicle = initObj.vehicle
      }
      else {
        this.vehicle = new LaneAttributesVehicle();
      }
      if (initObj.hasOwnProperty('crosswalk')) {
        this.crosswalk = initObj.crosswalk
      }
      else {
        this.crosswalk = new LaneAttributesCrosswalk();
      }
      if (initObj.hasOwnProperty('bikeLane')) {
        this.bikeLane = initObj.bikeLane
      }
      else {
        this.bikeLane = new LaneAttributesBike();
      }
      if (initObj.hasOwnProperty('sidewalk')) {
        this.sidewalk = initObj.sidewalk
      }
      else {
        this.sidewalk = new LaneAttributesSidewalk();
      }
      if (initObj.hasOwnProperty('median')) {
        this.median = initObj.median
      }
      else {
        this.median = new LaneAttributesBarrier();
      }
      if (initObj.hasOwnProperty('striping')) {
        this.striping = initObj.striping
      }
      else {
        this.striping = new LaneAttributesStriping();
      }
      if (initObj.hasOwnProperty('trackedVehicle')) {
        this.trackedVehicle = initObj.trackedVehicle
      }
      else {
        this.trackedVehicle = new LaneAttributesTrackedVehicle();
      }
      if (initObj.hasOwnProperty('parking')) {
        this.parking = initObj.parking
      }
      else {
        this.parking = new LaneAttributesParking();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneTypeAttributes
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [vehicle]
    bufferOffset = LaneAttributesVehicle.serialize(obj.vehicle, buffer, bufferOffset);
    // Serialize message field [crosswalk]
    bufferOffset = LaneAttributesCrosswalk.serialize(obj.crosswalk, buffer, bufferOffset);
    // Serialize message field [bikeLane]
    bufferOffset = LaneAttributesBike.serialize(obj.bikeLane, buffer, bufferOffset);
    // Serialize message field [sidewalk]
    bufferOffset = LaneAttributesSidewalk.serialize(obj.sidewalk, buffer, bufferOffset);
    // Serialize message field [median]
    bufferOffset = LaneAttributesBarrier.serialize(obj.median, buffer, bufferOffset);
    // Serialize message field [striping]
    bufferOffset = LaneAttributesStriping.serialize(obj.striping, buffer, bufferOffset);
    // Serialize message field [trackedVehicle]
    bufferOffset = LaneAttributesTrackedVehicle.serialize(obj.trackedVehicle, buffer, bufferOffset);
    // Serialize message field [parking]
    bufferOffset = LaneAttributesParking.serialize(obj.parking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneTypeAttributes
    let len;
    let data = new LaneTypeAttributes(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle]
    data.vehicle = LaneAttributesVehicle.deserialize(buffer, bufferOffset);
    // Deserialize message field [crosswalk]
    data.crosswalk = LaneAttributesCrosswalk.deserialize(buffer, bufferOffset);
    // Deserialize message field [bikeLane]
    data.bikeLane = LaneAttributesBike.deserialize(buffer, bufferOffset);
    // Deserialize message field [sidewalk]
    data.sidewalk = LaneAttributesSidewalk.deserialize(buffer, bufferOffset);
    // Deserialize message field [median]
    data.median = LaneAttributesBarrier.deserialize(buffer, bufferOffset);
    // Deserialize message field [striping]
    data.striping = LaneAttributesStriping.deserialize(buffer, bufferOffset);
    // Deserialize message field [trackedVehicle]
    data.trackedVehicle = LaneAttributesTrackedVehicle.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking]
    data.parking = LaneAttributesParking.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneTypeAttributes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e2aa6f113cac6b3d7a7bd5a414e2841';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LaneTypeAttributes(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.vehicle !== undefined) {
      resolved.vehicle = LaneAttributesVehicle.Resolve(msg.vehicle)
    }
    else {
      resolved.vehicle = new LaneAttributesVehicle()
    }

    if (msg.crosswalk !== undefined) {
      resolved.crosswalk = LaneAttributesCrosswalk.Resolve(msg.crosswalk)
    }
    else {
      resolved.crosswalk = new LaneAttributesCrosswalk()
    }

    if (msg.bikeLane !== undefined) {
      resolved.bikeLane = LaneAttributesBike.Resolve(msg.bikeLane)
    }
    else {
      resolved.bikeLane = new LaneAttributesBike()
    }

    if (msg.sidewalk !== undefined) {
      resolved.sidewalk = LaneAttributesSidewalk.Resolve(msg.sidewalk)
    }
    else {
      resolved.sidewalk = new LaneAttributesSidewalk()
    }

    if (msg.median !== undefined) {
      resolved.median = LaneAttributesBarrier.Resolve(msg.median)
    }
    else {
      resolved.median = new LaneAttributesBarrier()
    }

    if (msg.striping !== undefined) {
      resolved.striping = LaneAttributesStriping.Resolve(msg.striping)
    }
    else {
      resolved.striping = new LaneAttributesStriping()
    }

    if (msg.trackedVehicle !== undefined) {
      resolved.trackedVehicle = LaneAttributesTrackedVehicle.Resolve(msg.trackedVehicle)
    }
    else {
      resolved.trackedVehicle = new LaneAttributesTrackedVehicle()
    }

    if (msg.parking !== undefined) {
      resolved.parking = LaneAttributesParking.Resolve(msg.parking)
    }
    else {
      resolved.parking = new LaneAttributesParking()
    }

    return resolved;
    }
};

// Constants for message
LaneTypeAttributes.Constants = {
  VEHICLE: 0,
  CROSSWALK: 1,
  BIKE_LANE: 2,
  SIDEWALK: 3,
  MEDIAN: 4,
  STRIPING: 5,
  TRACKED_VEHICLE: 6,
  PARKING: 7,
}

module.exports = LaneTypeAttributes;
