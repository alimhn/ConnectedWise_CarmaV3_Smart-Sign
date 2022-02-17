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

class AllowedManeuvers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allowed_maneuvers = null;
    }
    else {
      if (initObj.hasOwnProperty('allowed_maneuvers')) {
        this.allowed_maneuvers = initObj.allowed_maneuvers
      }
      else {
        this.allowed_maneuvers = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllowedManeuvers
    // Serialize message field [allowed_maneuvers]
    bufferOffset = _serializer.uint16(obj.allowed_maneuvers, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllowedManeuvers
    let len;
    let data = new AllowedManeuvers(null);
    // Deserialize message field [allowed_maneuvers]
    data.allowed_maneuvers = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/AllowedManeuvers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f075ceebb35b879c36c787f46eabf5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AllowedManeuvers(null);
    if (msg.allowed_maneuvers !== undefined) {
      resolved.allowed_maneuvers = msg.allowed_maneuvers;
    }
    else {
      resolved.allowed_maneuvers = 0
    }

    return resolved;
    }
};

// Constants for message
AllowedManeuvers.Constants = {
  STRAIGHT: 1,
  LEFT_TURN: 2,
  RIGHT_TURN: 4,
  U_TURN: 8,
  LEFT_TURN_ON_RED: 16,
  RIGHT_TURN_ON_RED: 32,
  LANE_CHANGE: 64,
  NO_STOPPING_ALLOWED: 128,
  ALWAYS_YIELD: 256,
  GO_WITH_HALT: 512,
  CAUTION: 1024,
}

module.exports = AllowedManeuvers;
