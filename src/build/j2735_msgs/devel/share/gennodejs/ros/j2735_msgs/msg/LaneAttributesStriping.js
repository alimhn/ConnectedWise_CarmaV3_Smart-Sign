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

class LaneAttributesStriping {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_striping = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_striping')) {
        this.lane_attributes_striping = initObj.lane_attributes_striping
      }
      else {
        this.lane_attributes_striping = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesStriping
    // Serialize message field [lane_attributes_striping]
    bufferOffset = _serializer.uint16(obj.lane_attributes_striping, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesStriping
    let len;
    let data = new LaneAttributesStriping(null);
    // Deserialize message field [lane_attributes_striping]
    data.lane_attributes_striping = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesStriping';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2426985d7e69b33e60c48db181bef6d2';
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesStriping(null);
    if (msg.lane_attributes_striping !== undefined) {
      resolved.lane_attributes_striping = msg.lane_attributes_striping;
    }
    else {
      resolved.lane_attributes_striping = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesStriping;
