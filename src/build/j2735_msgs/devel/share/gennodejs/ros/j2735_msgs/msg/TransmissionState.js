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

class TransmissionState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transmission_state = null;
    }
    else {
      if (initObj.hasOwnProperty('transmission_state')) {
        this.transmission_state = initObj.transmission_state
      }
      else {
        this.transmission_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransmissionState
    // Serialize message field [transmission_state]
    bufferOffset = _serializer.uint8(obj.transmission_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransmissionState
    let len;
    let data = new TransmissionState(null);
    // Deserialize message field [transmission_state]
    data.transmission_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TransmissionState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d6a4d2af8ea1a5841861f3e0592e05f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TransmissionState.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Provide the current state of the vehicle transmission.
    
    #TransmissionState ::= ENUMERATED {
    #   neutral      (0), -- Neutral
    #   park         (1), -- Park 
    #   forwardGears (2), -- Forward gears
    #   reverseGears (3), -- Reverse gears 
    #   reserved1    (4),      
    #   reserved2    (5),      
    #   reserved3    (6),      
    #   unavailable  (7)  -- not-equipped or unavailable value,
    #   -- Any related speed is relative to the vehicle reference frame used
    #   }
    
    uint8  transmission_state
    
    # enumeration values for status:
    uint8 NEUTRAL=0
    uint8 PARK=1
    uint8 FORWARDGEARS=2
    uint8 REVERSEGEARS=3
    uint8 RESERVED1=4
    uint8 RESERVED2=5
    uint8 RESERVED3=6
    uint8 UNAVAILABLE=7
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransmissionState(null);
    if (msg.transmission_state !== undefined) {
      resolved.transmission_state = msg.transmission_state;
    }
    else {
      resolved.transmission_state = 0
    }

    return resolved;
    }
};

// Constants for message
TransmissionState.Constants = {
  NEUTRAL: 0,
  PARK: 1,
  FORWARDGEARS: 2,
  REVERSEGEARS: 3,
  RESERVED1: 4,
  RESERVED2: 5,
  RESERVED3: 6,
  UNAVAILABLE: 7,
}

module.exports = TransmissionState;
