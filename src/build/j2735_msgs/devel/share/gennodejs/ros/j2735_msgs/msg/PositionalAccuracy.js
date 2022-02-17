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

class PositionalAccuracy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.semiMajor = null;
      this.semiMinor = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('semiMajor')) {
        this.semiMajor = initObj.semiMajor
      }
      else {
        this.semiMajor = 0;
      }
      if (initObj.hasOwnProperty('semiMinor')) {
        this.semiMinor = initObj.semiMinor
      }
      else {
        this.semiMinor = 0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionalAccuracy
    // Serialize message field [semiMajor]
    bufferOffset = _serializer.uint8(obj.semiMajor, buffer, bufferOffset);
    // Serialize message field [semiMinor]
    bufferOffset = _serializer.uint8(obj.semiMinor, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.uint16(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionalAccuracy
    let len;
    let data = new PositionalAccuracy(null);
    // Deserialize message field [semiMajor]
    data.semiMajor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [semiMinor]
    data.semiMinor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/PositionalAccuracy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '993c06d8702326587d0e9f49bc843cde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # PositionalAccuracy.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Used to model the accuracy of the positional determination with respect to each given axis.
    
    #PositionalAccuracy ::= SEQUENCE {
    #   -- NMEA-183 values expressed in strict ASN form
    #   semiMajor     SemiMajorAxisAccuracy,
    #   semiMinor     SemiMinorAxisAccuracy,
    #   orientation   SemiMajorAxisOrientation
    #   }
    
    #SemiMajorAxisAccuracy ::= INTEGER (0..255)
    #   -- semi-major/semi-minor axis accuracy at one standard dev
    #   -- range 0-12.7 meter, LSB = .05m
    #   -- 254 = any value equal or greater than 12.70 meter
    #   -- 255 = unavailable semi-major axis value
    #   -- Convert to meter with factor 0.05 when this field is used
    uint8 semiMajor
    uint8 semiMinor
    
    uint8 ACCURACY_UNAVAILABLE = 255
    uint8 ACCURACY_MAX = 254
    uint8 ACCURACY_MIN = 0
    
    #SemiMajorAxisOrientation ::= INTEGER (0..65535)
    #   -- orientation of semi-major axis
    #   -- relative to true north (0~359.9945078786 degrees)
    #   -- LSB units of 360/65535 deg  = 0.0054932479
    #   -- a value of 0 shall be 0 degrees
    #   -- a value of 1 shall be 0.0054932479 degrees
    #   -- a value of 65534 shall be 359.9945078786 deg
    #   -- a value of 65535 shall be used for orientation unavailable
    #   -- Convert to degree with factor 0.0054932479 when this field is used
    uint16 orientation
    
    uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535
    uint16 ACCURACY_ORIENTATION_MAX = 65534
    uint16 ACCURACY_ORIENTATION_MIN = 0
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionalAccuracy(null);
    if (msg.semiMajor !== undefined) {
      resolved.semiMajor = msg.semiMajor;
    }
    else {
      resolved.semiMajor = 0
    }

    if (msg.semiMinor !== undefined) {
      resolved.semiMinor = msg.semiMinor;
    }
    else {
      resolved.semiMinor = 0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0
    }

    return resolved;
    }
};

// Constants for message
PositionalAccuracy.Constants = {
  ACCURACY_UNAVAILABLE: 255,
  ACCURACY_MAX: 254,
  ACCURACY_MIN: 0,
  ACCURACY_ORIENTATION_UNAVAILABLE: 65535,
  ACCURACY_ORIENTATION_MAX: 65534,
  ACCURACY_ORIENTATION_MIN: 0,
}

module.exports = PositionalAccuracy;
