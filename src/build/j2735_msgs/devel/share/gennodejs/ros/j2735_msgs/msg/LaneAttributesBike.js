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

class LaneAttributesBike {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_bike = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_bike')) {
        this.lane_attributes_bike = initObj.lane_attributes_bike
      }
      else {
        this.lane_attributes_bike = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesBike
    // Serialize message field [lane_attributes_bike]
    bufferOffset = _serializer.uint16(obj.lane_attributes_bike, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesBike
    let len;
    let data = new LaneAttributesBike(null);
    // Deserialize message field [lane_attributes_bike]
    data.lane_attributes_bike = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesBike';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd97edc5cc6e1a0f94524b84eca2f039f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesBike(null);
    if (msg.lane_attributes_bike !== undefined) {
      resolved.lane_attributes_bike = msg.lane_attributes_bike;
    }
    else {
      resolved.lane_attributes_bike = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesBike;
