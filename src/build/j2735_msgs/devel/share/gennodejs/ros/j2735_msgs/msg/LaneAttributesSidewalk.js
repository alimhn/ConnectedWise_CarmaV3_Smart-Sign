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

class LaneAttributesSidewalk {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_sidewalk = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_sidewalk')) {
        this.lane_attributes_sidewalk = initObj.lane_attributes_sidewalk
      }
      else {
        this.lane_attributes_sidewalk = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesSidewalk
    // Serialize message field [lane_attributes_sidewalk]
    bufferOffset = _serializer.uint16(obj.lane_attributes_sidewalk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesSidewalk
    let len;
    let data = new LaneAttributesSidewalk(null);
    // Deserialize message field [lane_attributes_sidewalk]
    data.lane_attributes_sidewalk = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesSidewalk';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97871d7230232984666cd50c114ca7bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesSidewalk(null);
    if (msg.lane_attributes_sidewalk !== undefined) {
      resolved.lane_attributes_sidewalk = msg.lane_attributes_sidewalk;
    }
    else {
      resolved.lane_attributes_sidewalk = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesSidewalk;
