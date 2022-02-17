// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SegmentAttributeXY = require('./SegmentAttributeXY.js');

//-----------------------------------------------------------

class SegmentAttributeXYList {
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
        this.segment_attribute_xy = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SegmentAttributeXYList
    // Serialize message field [segment_attribute_xy]
    // Serialize the length for message field [segment_attribute_xy]
    bufferOffset = _serializer.uint32(obj.segment_attribute_xy.length, buffer, bufferOffset);
    obj.segment_attribute_xy.forEach((val) => {
      bufferOffset = SegmentAttributeXY.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SegmentAttributeXYList
    let len;
    let data = new SegmentAttributeXYList(null);
    // Deserialize message field [segment_attribute_xy]
    // Deserialize array length for message field [segment_attribute_xy]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segment_attribute_xy = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segment_attribute_xy[i] = SegmentAttributeXY.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.segment_attribute_xy.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/SegmentAttributeXYList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c89c8ea8487e4681667c586a26613e54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SegmentAttributeXYList(null);
    if (msg.segment_attribute_xy !== undefined) {
      resolved.segment_attribute_xy = new Array(msg.segment_attribute_xy.length);
      for (let i = 0; i < resolved.segment_attribute_xy.length; ++i) {
        resolved.segment_attribute_xy[i] = SegmentAttributeXY.Resolve(msg.segment_attribute_xy[i]);
      }
    }
    else {
      resolved.segment_attribute_xy = []
    }

    return resolved;
    }
};

module.exports = SegmentAttributeXYList;
