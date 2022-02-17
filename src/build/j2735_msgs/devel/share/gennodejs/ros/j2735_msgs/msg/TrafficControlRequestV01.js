// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Id64b = require('./Id64b.js');
let TrafficControlBounds = require('./TrafficControlBounds.js');

//-----------------------------------------------------------

class TrafficControlRequestV01 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reqid = null;
      this.reqseq = null;
      this.scale = null;
      this.bounds = null;
    }
    else {
      if (initObj.hasOwnProperty('reqid')) {
        this.reqid = initObj.reqid
      }
      else {
        this.reqid = new Id64b();
      }
      if (initObj.hasOwnProperty('reqseq')) {
        this.reqseq = initObj.reqseq
      }
      else {
        this.reqseq = 0;
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0;
      }
      if (initObj.hasOwnProperty('bounds')) {
        this.bounds = initObj.bounds
      }
      else {
        this.bounds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlRequestV01
    // Serialize message field [reqid]
    bufferOffset = Id64b.serialize(obj.reqid, buffer, bufferOffset);
    // Serialize message field [reqseq]
    bufferOffset = _serializer.uint8(obj.reqseq, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.int8(obj.scale, buffer, bufferOffset);
    // Serialize message field [bounds]
    // Serialize the length for message field [bounds]
    bufferOffset = _serializer.uint32(obj.bounds.length, buffer, bufferOffset);
    obj.bounds.forEach((val) => {
      bufferOffset = TrafficControlBounds.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlRequestV01
    let len;
    let data = new TrafficControlRequestV01(null);
    // Deserialize message field [reqid]
    data.reqid = Id64b.deserialize(buffer, bufferOffset);
    // Deserialize message field [reqseq]
    data.reqseq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [bounds]
    // Deserialize array length for message field [bounds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bounds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bounds[i] = TrafficControlBounds.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 20 * object.bounds.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlRequestV01';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c9add83cd83b8c7ef3a3df866b7f621';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlRequestV01.msg
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
    
    #TrafficControlRequestV01 ::= SEQUENCE
    #{
    #	reqid Id64b, -- randomly generated ephemeral request identifier
    #	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests
    #	scale INTEGER (-3..3), -- vertex offset units 10^n meters
    #	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds
    #}
    
    
    # reqid ::= Id64b
    j2735_msgs/Id64b reqid
    
    # reqseq ::= INTEGER (0..255)
    uint8 reqseq
    
    # Scale ::= INTEGER (-3..3)  
    int8 scale
    
    # Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds
    j2735_msgs/TrafficControlBounds[] bounds
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ================================================================================
    MSG: j2735_msgs/Id64b
    #
    # Id64b.msg
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
    
    # Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids
    
    uint8[8] id
    ================================================================================
    MSG: j2735_msgs/TrafficControlBounds
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
    const resolved = new TrafficControlRequestV01(null);
    if (msg.reqid !== undefined) {
      resolved.reqid = Id64b.Resolve(msg.reqid)
    }
    else {
      resolved.reqid = new Id64b()
    }

    if (msg.reqseq !== undefined) {
      resolved.reqseq = msg.reqseq;
    }
    else {
      resolved.reqseq = 0
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0
    }

    if (msg.bounds !== undefined) {
      resolved.bounds = new Array(msg.bounds.length);
      for (let i = 0; i < resolved.bounds.length; ++i) {
        resolved.bounds[i] = TrafficControlBounds.Resolve(msg.bounds[i]);
      }
    }
    else {
      resolved.bounds = []
    }

    return resolved;
    }
};

module.exports = TrafficControlRequestV01;
