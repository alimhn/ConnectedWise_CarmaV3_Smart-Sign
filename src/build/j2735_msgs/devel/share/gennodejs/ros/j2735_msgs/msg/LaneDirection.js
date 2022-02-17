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

class LaneDirection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_direction')) {
        this.lane_direction = initObj.lane_direction
      }
      else {
        this.lane_direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneDirection
    // Serialize message field [lane_direction]
    bufferOffset = _serializer.uint8(obj.lane_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneDirection
    let len;
    let data = new LaneDirection(null);
    // Deserialize message field [lane_direction]
    data.lane_direction = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneDirection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e54bbf0b78a512c3a5e1e30ccec9630b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneDirection(null);
    if (msg.lane_direction !== undefined) {
      resolved.lane_direction = msg.lane_direction;
    }
    else {
      resolved.lane_direction = 0
    }

    return resolved;
    }
};

module.exports = LaneDirection;
