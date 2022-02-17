// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AllowedManeuvers = require('./AllowedManeuvers.js');

//-----------------------------------------------------------

class ConnectingLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane = null;
      this.maneuver = null;
      this.maneuver_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('lane')) {
        this.lane = initObj.lane
      }
      else {
        this.lane = 0;
      }
      if (initObj.hasOwnProperty('maneuver')) {
        this.maneuver = initObj.maneuver
      }
      else {
        this.maneuver = new AllowedManeuvers();
      }
      if (initObj.hasOwnProperty('maneuver_exists')) {
        this.maneuver_exists = initObj.maneuver_exists
      }
      else {
        this.maneuver_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectingLane
    // Serialize message field [lane]
    bufferOffset = _serializer.uint16(obj.lane, buffer, bufferOffset);
    // Serialize message field [maneuver]
    bufferOffset = AllowedManeuvers.serialize(obj.maneuver, buffer, bufferOffset);
    // Serialize message field [maneuver_exists]
    bufferOffset = _serializer.bool(obj.maneuver_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectingLane
    let len;
    let data = new ConnectingLane(null);
    // Deserialize message field [lane]
    data.lane = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maneuver]
    data.maneuver = AllowedManeuvers.deserialize(buffer, bufferOffset);
    // Deserialize message field [maneuver_exists]
    data.maneuver_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/ConnectingLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39012b597fc8bbc11af942fd310810ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectingLane(null);
    if (msg.lane !== undefined) {
      resolved.lane = msg.lane;
    }
    else {
      resolved.lane = 0
    }

    if (msg.maneuver !== undefined) {
      resolved.maneuver = AllowedManeuvers.Resolve(msg.maneuver)
    }
    else {
      resolved.maneuver = new AllowedManeuvers()
    }

    if (msg.maneuver_exists !== undefined) {
      resolved.maneuver_exists = msg.maneuver_exists;
    }
    else {
      resolved.maneuver_exists = false
    }

    return resolved;
    }
};

// Constants for message
ConnectingLane.Constants = {
  LANE_UNAVAILABLE: 0,
}

module.exports = ConnectingLane;
