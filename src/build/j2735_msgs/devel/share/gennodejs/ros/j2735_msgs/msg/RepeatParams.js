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

class RepeatParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.period = null;
      this.span = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0;
      }
      if (initObj.hasOwnProperty('span')) {
        this.span = initObj.span
      }
      else {
        this.span = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RepeatParams
    // Serialize message field [offset]
    bufferOffset = _serializer.uint16(obj.offset, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.uint16(obj.period, buffer, bufferOffset);
    // Serialize message field [span]
    bufferOffset = _serializer.uint16(obj.span, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RepeatParams
    let len;
    let data = new RepeatParams(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [span]
    data.span = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RepeatParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29a9572bae20d351bcfc7c7e1ca19e93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RepeatParams.msg
    #
    # Part of the CARMA Cloud geo-fence specification for vehicle internal use.
    #
    # @author Misheel Bayartsengel 
    # @version 0.1
    #
    # Description
    # ...
    
    # RepeatParams ::= SEQUENCE
    # {
    # 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time
    # 	period INTEGER (0..1439), -- minutes between successive time spans
    # 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period
    # }
    
    # Offset 
    # shift repetition start relative to midnight local time
    uint16 offset
    
    # Period
    # minutes between successive time spans
    uint16 period
    
    # Span
    # number of minutes schedule is active, must be less than the period
    uint16 span
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RepeatParams(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0
    }

    if (msg.span !== undefined) {
      resolved.span = msg.span;
    }
    else {
      resolved.span = 0
    }

    return resolved;
    }
};

module.exports = RepeatParams;
