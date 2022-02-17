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

class OffsetPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.deltax = null;
      this.deltay = null;
    }
    else {
      if (initObj.hasOwnProperty('deltax')) {
        this.deltax = initObj.deltax
      }
      else {
        this.deltax = 0;
      }
      if (initObj.hasOwnProperty('deltay')) {
        this.deltay = initObj.deltay
      }
      else {
        this.deltay = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OffsetPoint
    // Serialize message field [deltax]
    bufferOffset = _serializer.int16(obj.deltax, buffer, bufferOffset);
    // Serialize message field [deltay]
    bufferOffset = _serializer.int16(obj.deltay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OffsetPoint
    let len;
    let data = new OffsetPoint(null);
    // Deserialize message field [deltax]
    data.deltax = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [deltay]
    data.deltay = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/OffsetPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2766869f53581899f2c4aaa8009bd340';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # OffsetPoint.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # 
    # @version 0.1
    #
    # Description
    # ...
    
    #OffsetPoint ::= SEQUENCE
    #{
    #	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters
    #	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters
    #}
    
    #deltax ::= INTEGER (-32768..32767)
    int16 deltax
    
    #deltay ::= INTEGER (-32768..32767)
    int16 deltay
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OffsetPoint(null);
    if (msg.deltax !== undefined) {
      resolved.deltax = msg.deltax;
    }
    else {
      resolved.deltax = 0
    }

    if (msg.deltay !== undefined) {
      resolved.deltay = msg.deltay;
    }
    else {
      resolved.deltay = 0
    }

    return resolved;
    }
};

module.exports = OffsetPoint;
