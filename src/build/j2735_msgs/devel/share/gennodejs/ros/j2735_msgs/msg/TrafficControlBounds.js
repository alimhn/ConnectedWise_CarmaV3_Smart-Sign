// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OffsetPoint = require('./OffsetPoint.js');

//-----------------------------------------------------------

class TrafficControlBounds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.oldest = null;
      this.reflon = null;
      this.reflat = null;
      this.offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('oldest')) {
        this.oldest = initObj.oldest
      }
      else {
        this.oldest = 0;
      }
      if (initObj.hasOwnProperty('reflon')) {
        this.reflon = initObj.reflon
      }
      else {
        this.reflon = 0;
      }
      if (initObj.hasOwnProperty('reflat')) {
        this.reflat = initObj.reflat
      }
      else {
        this.reflat = 0;
      }
      if (initObj.hasOwnProperty('offsets')) {
        this.offsets = initObj.offsets
      }
      else {
        this.offsets = new Array(3).fill(new OffsetPoint());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlBounds
    // Serialize message field [oldest]
    bufferOffset = _serializer.uint64(obj.oldest, buffer, bufferOffset);
    // Serialize message field [reflon]
    bufferOffset = _serializer.int32(obj.reflon, buffer, bufferOffset);
    // Serialize message field [reflat]
    bufferOffset = _serializer.int32(obj.reflat, buffer, bufferOffset);
    // Check that the constant length array field [offsets] has the right length
    if (obj.offsets.length !== 3) {
      throw new Error('Unable to serialize array field offsets - length must be 3')
    }
    // Serialize message field [offsets]
    obj.offsets.forEach((val) => {
      bufferOffset = OffsetPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlBounds
    let len;
    let data = new TrafficControlBounds(null);
    // Deserialize message field [oldest]
    data.oldest = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [reflon]
    data.reflon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reflat]
    data.reflat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [offsets]
    len = 3;
    data.offsets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.offsets[i] = OffsetPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlBounds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '306f71a9cda43001373a32c7e26b44da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlBounds.msg
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
    
    
    #TrafficControlBounds ::= SEQUENCE
    #{
    #	oldest EpochMins, -- timestamp of oldest traffic control message within bounds
    #	reflon Longitude, -- initial vertex reference longitude
    #	reflat Latitude, -- initial vertex reference latitude
    #	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters
    #}
    
    #oldest ::= EpochMins
    uint64 oldest
    
    # reflon ::= INTEGER (-1799999999..1800000000)
    #  -- initial vertex reference longitude
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 180 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 reflon
    
    int32 REFLON_MAX = 1800000000
    int32 REFLON_MIN = -1799999999
    int32 REFLON_UNAVAILABLE = 1800000001
    
    
    # reflat ::= INTEGER (-900000000..900000000)
    #  -- initial vertex reference latitude
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 90 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 reflat
    
    int32 REFLAT_MAX = 900000000
    int32 REFLAT_MIN = -900000000
    int32 REFLAT_UNAVAILABLE = 900000001
    
    #offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint 
    j2735_msgs/OffsetPoint[3] offsets
    
    ================================================================================
    MSG: j2735_msgs/OffsetPoint
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
    const resolved = new TrafficControlBounds(null);
    if (msg.oldest !== undefined) {
      resolved.oldest = msg.oldest;
    }
    else {
      resolved.oldest = 0
    }

    if (msg.reflon !== undefined) {
      resolved.reflon = msg.reflon;
    }
    else {
      resolved.reflon = 0
    }

    if (msg.reflat !== undefined) {
      resolved.reflat = msg.reflat;
    }
    else {
      resolved.reflat = 0
    }

    if (msg.offsets !== undefined) {
      resolved.offsets = new Array(3)
      for (let i = 0; i < resolved.offsets.length; ++i) {
        if (msg.offsets.length > i) {
          resolved.offsets[i] = OffsetPoint.Resolve(msg.offsets[i]);
        }
        else {
          resolved.offsets[i] = new OffsetPoint();
        }
      }
    }
    else {
      resolved.offsets = new Array(3).fill(new OffsetPoint())
    }

    return resolved;
    }
};

// Constants for message
TrafficControlBounds.Constants = {
  REFLON_MAX: 1800000000,
  REFLON_MIN: -1799999999,
  REFLON_UNAVAILABLE: 1800000001,
  REFLAT_MAX: 900000000,
  REFLAT_MIN: -900000000,
  REFLAT_UNAVAILABLE: 900000001,
}

module.exports = TrafficControlBounds;
