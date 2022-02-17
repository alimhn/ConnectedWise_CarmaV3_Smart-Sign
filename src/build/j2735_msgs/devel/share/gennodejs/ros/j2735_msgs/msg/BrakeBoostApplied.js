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

class BrakeBoostApplied {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brake_boost_applied = null;
    }
    else {
      if (initObj.hasOwnProperty('brake_boost_applied')) {
        this.brake_boost_applied = initObj.brake_boost_applied
      }
      else {
        this.brake_boost_applied = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeBoostApplied
    // Serialize message field [brake_boost_applied]
    bufferOffset = _serializer.uint8(obj.brake_boost_applied, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeBoostApplied
    let len;
    let data = new BrakeBoostApplied(null);
    // Deserialize message field [brake_boost_applied]
    data.brake_boost_applied = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/BrakeBoostApplied';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff8787fa0a36560577484f92f3640ad7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # BrakeBoostApplied.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #BrakeBoostApplied ::= ENUMERATED {
    #   unavailable   (0), -- Vehicle not equipped with brake boost
    #                      -- or brake boost data is unavailable
    #   off           (1), -- Vehicle's brake boost is off
    #   on            (2)  -- Vehicle's brake boost is on (applied)
    #   }
    #   
    
    uint8  brake_boost_applied
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeBoostApplied(null);
    if (msg.brake_boost_applied !== undefined) {
      resolved.brake_boost_applied = msg.brake_boost_applied;
    }
    else {
      resolved.brake_boost_applied = 0
    }

    return resolved;
    }
};

// Constants for message
BrakeBoostApplied.Constants = {
  UNAVAILABLE: 0,
  OFF: 1,
  ON: 2,
}

module.exports = BrakeBoostApplied;
