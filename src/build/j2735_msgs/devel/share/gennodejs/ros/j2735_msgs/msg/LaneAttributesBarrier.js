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

class LaneAttributesBarrier {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_barrier = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_barrier')) {
        this.lane_attributes_barrier = initObj.lane_attributes_barrier
      }
      else {
        this.lane_attributes_barrier = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesBarrier
    // Serialize message field [lane_attributes_barrier]
    bufferOffset = _serializer.uint16(obj.lane_attributes_barrier, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesBarrier
    let len;
    let data = new LaneAttributesBarrier(null);
    // Deserialize message field [lane_attributes_barrier]
    data.lane_attributes_barrier = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesBarrier';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5531954e90106cf99fd38e717468b88b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesBarrier(null);
    if (msg.lane_attributes_barrier !== undefined) {
      resolved.lane_attributes_barrier = msg.lane_attributes_barrier;
    }
    else {
      resolved.lane_attributes_barrier = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesBarrier;
