// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SegmentAttributeXY {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segment_attribute_xy = null;
    }
    else {
      if (initObj.hasOwnProperty('segment_attribute_xy')) {
        this.segment_attribute_xy = initObj.segment_attribute_xy
      }
      else {
        this.segment_attribute_xy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SegmentAttributeXY
    // Serialize message field [segment_attribute_xy]
    bufferOffset = _serializer.uint8(obj.segment_attribute_xy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SegmentAttributeXY
    let len;
    let data = new SegmentAttributeXY(null);
    // Deserialize message field [segment_attribute_xy]
    data.segment_attribute_xy = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/SegmentAttributeXY';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bf655d03b7cd76b23e9b3a8553000c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SegmentAttributeXY(null);
    if (msg.segment_attribute_xy !== undefined) {
      resolved.segment_attribute_xy = msg.segment_attribute_xy;
    }
    else {
      resolved.segment_attribute_xy = 0
    }

    return resolved;
    }
};

// Constants for message
SegmentAttributeXY.Constants = {
  RESERVED: 0,
  DONOTBLOCK: 1,
  WHITELINE: 2,
  MERGINGLANELEFT: 3,
  MERGINGLANERIGHT: 4,
  CURBONLEFT: 5,
  CURBONRIGHT: 6,
  LOADINGZONEONLEFT: 7,
  LOADINGZONEONRIGHT: 8,
  TURNOUTPOINTONLEFT: 9,
  TURNOUTPOINTONRIGHT: 10,
  ADJACENTPARKINGONLEFT: 11,
  ADJACENTPARKINGONRIGHT: 12,
  ADJACENTBIKELANEONLEFT: 13,
  ADJACENTBIKELANEONRIGHT: 14,
  SHAREDBIKELANE: 15,
  BIKEBOXINFRONT: 16,
  TRANSITSTOPONLEFT: 17,
  TRANSITSTOPONRIGHT: 18,
  TRANSITSTOPINLANE: 19,
  SHAREDWITHTRACKEDVEHICLE: 20,
  SAFEISLAND: 21,
  LOWCURBSPRESENT: 22,
  RUMBLESTRIPPRESENT: 23,
  AUDIBLESIGNALINGPRESENT: 24,
  ADAPTIVETIMINGPRESENT: 25,
  RFSIGNALREQUESTPRESENT: 26,
  PARTIALCURBINTRUSION: 27,
  TAPERTOLEFT: 28,
  TAPERTORIGHT: 29,
  TAPERTOCENTERLINE: 30,
  PARALLELPARKING: 31,
  FREEPARKING: 32,
  TIMERESTRICTIONSONPARKING: 33,
  COSTTOPARK: 34,
  MIDBLOCKCURBPRESENT: 35,
  UNEVENPAVEMENTPRESENT: 36,
}

module.exports = SegmentAttributeXY;
