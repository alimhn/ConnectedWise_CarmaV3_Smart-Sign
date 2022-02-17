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

class SpeedConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_confidence')) {
        this.speed_confidence = initObj.speed_confidence
      }
      else {
        this.speed_confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedConfidence
    // Serialize message field [speed_confidence]
    bufferOffset = _serializer.uint8(obj.speed_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedConfidence
    let len;
    let data = new SpeedConfidence(null);
    // Deserialize message field [speed_confidence]
    data.speed_confidence = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/SpeedConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a542e0efd9d48eb9bcc3e9968cb696e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # SpeedConfidence.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported
    # value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or
    # calculate the value.
    
    # SpeedConfidence ::= ENUMERATED {
    # unavailable (0), -- Not Equipped or unavailable
    # prec100ms (1), -- 100 meters / sec
    # prec10ms(2), -- 10 meters / sec
    # prec5ms (3), -- 5 meters / sec
    # prec1ms (4), -- 1 meters / sec
    # prec0-1ms (5), -- 0.1 meters / sec
    # prec0-05ms (6), -- -- 0.05 meters / sec
    # prec0-01ms (7) -- -- 0.01 meters / sec
    # }
    
    uint8 speed_confidence
    
    uint8 UNAVAILABLE=0
    uint8 PREC100MS=1
    uint8 PREC10MS=2
    uint8 PREC5MS=3
    uint8 PREC1MS=4
    uint8 PREC0_1MS=5
    uint8 PREC0_05MS=6
    uint8 PREC0_01MS=7
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedConfidence(null);
    if (msg.speed_confidence !== undefined) {
      resolved.speed_confidence = msg.speed_confidence;
    }
    else {
      resolved.speed_confidence = 0
    }

    return resolved;
    }
};

// Constants for message
SpeedConfidence.Constants = {
  UNAVAILABLE: 0,
  PREC100MS: 1,
  PREC10MS: 2,
  PREC5MS: 3,
  PREC1MS: 4,
  PREC0_1MS: 5,
  PREC0_05MS: 6,
  PREC0_01MS: 7,
}

module.exports = SpeedConfidence;
