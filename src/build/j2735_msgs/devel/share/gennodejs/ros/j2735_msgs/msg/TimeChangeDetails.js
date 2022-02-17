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

class TimeChangeDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_time = null;
      this.start_time_exists = null;
      this.min_end_time = null;
      this.max_end_time = null;
      this.max_end_time_exists = null;
      this.likely_time = null;
      this.likely_time_exists = null;
      this.confidence = null;
      this.confidence_exists = null;
      this.next_time = null;
      this.next_time_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0;
      }
      if (initObj.hasOwnProperty('start_time_exists')) {
        this.start_time_exists = initObj.start_time_exists
      }
      else {
        this.start_time_exists = false;
      }
      if (initObj.hasOwnProperty('min_end_time')) {
        this.min_end_time = initObj.min_end_time
      }
      else {
        this.min_end_time = 0;
      }
      if (initObj.hasOwnProperty('max_end_time')) {
        this.max_end_time = initObj.max_end_time
      }
      else {
        this.max_end_time = 0;
      }
      if (initObj.hasOwnProperty('max_end_time_exists')) {
        this.max_end_time_exists = initObj.max_end_time_exists
      }
      else {
        this.max_end_time_exists = false;
      }
      if (initObj.hasOwnProperty('likely_time')) {
        this.likely_time = initObj.likely_time
      }
      else {
        this.likely_time = 0;
      }
      if (initObj.hasOwnProperty('likely_time_exists')) {
        this.likely_time_exists = initObj.likely_time_exists
      }
      else {
        this.likely_time_exists = false;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
      if (initObj.hasOwnProperty('confidence_exists')) {
        this.confidence_exists = initObj.confidence_exists
      }
      else {
        this.confidence_exists = false;
      }
      if (initObj.hasOwnProperty('next_time')) {
        this.next_time = initObj.next_time
      }
      else {
        this.next_time = 0;
      }
      if (initObj.hasOwnProperty('next_time_exists')) {
        this.next_time_exists = initObj.next_time_exists
      }
      else {
        this.next_time_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeChangeDetails
    // Serialize message field [start_time]
    bufferOffset = _serializer.uint16(obj.start_time, buffer, bufferOffset);
    // Serialize message field [start_time_exists]
    bufferOffset = _serializer.bool(obj.start_time_exists, buffer, bufferOffset);
    // Serialize message field [min_end_time]
    bufferOffset = _serializer.uint16(obj.min_end_time, buffer, bufferOffset);
    // Serialize message field [max_end_time]
    bufferOffset = _serializer.uint16(obj.max_end_time, buffer, bufferOffset);
    // Serialize message field [max_end_time_exists]
    bufferOffset = _serializer.bool(obj.max_end_time_exists, buffer, bufferOffset);
    // Serialize message field [likely_time]
    bufferOffset = _serializer.uint16(obj.likely_time, buffer, bufferOffset);
    // Serialize message field [likely_time_exists]
    bufferOffset = _serializer.bool(obj.likely_time_exists, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.uint8(obj.confidence, buffer, bufferOffset);
    // Serialize message field [confidence_exists]
    bufferOffset = _serializer.bool(obj.confidence_exists, buffer, bufferOffset);
    // Serialize message field [next_time]
    bufferOffset = _serializer.uint16(obj.next_time, buffer, bufferOffset);
    // Serialize message field [next_time_exists]
    bufferOffset = _serializer.bool(obj.next_time_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeChangeDetails
    let len;
    let data = new TimeChangeDetails(null);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_time_exists]
    data.start_time_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_end_time]
    data.min_end_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_end_time]
    data.max_end_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_end_time_exists]
    data.max_end_time_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [likely_time]
    data.likely_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [likely_time_exists]
    data.likely_time_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confidence_exists]
    data.confidence_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [next_time]
    data.next_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [next_time_exists]
    data.next_time_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TimeChangeDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48110a8000070c77171eb1bdfafa99fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TimeChangeDetails.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
    # data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
    # often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
    # timing is employed.
    #
    #
    # TimeChangeDetails ::= SEQUENCE {
    # startTime TimeMark OPTIONAL,
    # -- When this phase 1st started
    # minEndTime TimeMark,
    # -- Expected shortest end time
    # maxEndTime TimeMark OPTIONAL,
    # -- Expected longest end time
    # likelyTime TimeMark OPTIONAL,
    # -- Best predicted value based on other data
    # confidence TimeIntervalConfidence OPTIONAL,
    # -- Applies to above time element only
    # nextTime TimeMark OPTIONAL
    # -- A rough estimate of time when
    # -- this phase may next occur again
    # -- used to support various ECO driving power
    # -- management needs.
    # }
    
    # TimeMark ::= INTEGER (0..36001)
    # -- Tenths of a second in the current or next hour
    # -- In units of 1/10th second from UTC time
    # -- A range of 0~36000 covers one hour
    # -- The values 35991..35999 are used when a leap second occurs
    # -- The value 36000 is used to indicate time >3600 seconds
    # -- 36001 is to be used when value undefined or unknown
    # -- Note that this is NOT expressed in GPS time
    # -- or in local time
    uint16 start_time
    bool start_time_exists
    
    uint16 min_end_time
    
    uint16 max_end_time
    bool max_end_time_exists
    
    uint16 likely_time
    bool likely_time_exists
    
    #TimeIntervalConfidence ::= INTEGER (0..15)
    uint8 confidence
    bool confidence_exists
    
    # TimeMark ::= INTEGER (0..36001)
    uint16 next_time
    bool next_time_exists
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeChangeDetails(null);
    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0
    }

    if (msg.start_time_exists !== undefined) {
      resolved.start_time_exists = msg.start_time_exists;
    }
    else {
      resolved.start_time_exists = false
    }

    if (msg.min_end_time !== undefined) {
      resolved.min_end_time = msg.min_end_time;
    }
    else {
      resolved.min_end_time = 0
    }

    if (msg.max_end_time !== undefined) {
      resolved.max_end_time = msg.max_end_time;
    }
    else {
      resolved.max_end_time = 0
    }

    if (msg.max_end_time_exists !== undefined) {
      resolved.max_end_time_exists = msg.max_end_time_exists;
    }
    else {
      resolved.max_end_time_exists = false
    }

    if (msg.likely_time !== undefined) {
      resolved.likely_time = msg.likely_time;
    }
    else {
      resolved.likely_time = 0
    }

    if (msg.likely_time_exists !== undefined) {
      resolved.likely_time_exists = msg.likely_time_exists;
    }
    else {
      resolved.likely_time_exists = false
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    if (msg.confidence_exists !== undefined) {
      resolved.confidence_exists = msg.confidence_exists;
    }
    else {
      resolved.confidence_exists = false
    }

    if (msg.next_time !== undefined) {
      resolved.next_time = msg.next_time;
    }
    else {
      resolved.next_time = 0
    }

    if (msg.next_time_exists !== undefined) {
      resolved.next_time_exists = msg.next_time_exists;
    }
    else {
      resolved.next_time_exists = false
    }

    return resolved;
    }
};

module.exports = TimeChangeDetails;
