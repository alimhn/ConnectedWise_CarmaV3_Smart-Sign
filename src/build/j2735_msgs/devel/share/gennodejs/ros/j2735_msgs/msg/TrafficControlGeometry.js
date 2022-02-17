// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathNode = require('./PathNode.js');

//-----------------------------------------------------------

class TrafficControlGeometry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.proj = null;
      this.datum = null;
      this.reftime = null;
      this.reflon = null;
      this.reflat = null;
      this.refelv = null;
      this.heading = null;
      this.nodes = null;
    }
    else {
      if (initObj.hasOwnProperty('proj')) {
        this.proj = initObj.proj
      }
      else {
        this.proj = '';
      }
      if (initObj.hasOwnProperty('datum')) {
        this.datum = initObj.datum
      }
      else {
        this.datum = '';
      }
      if (initObj.hasOwnProperty('reftime')) {
        this.reftime = initObj.reftime
      }
      else {
        this.reftime = 0;
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
      if (initObj.hasOwnProperty('refelv')) {
        this.refelv = initObj.refelv
      }
      else {
        this.refelv = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlGeometry
    // Serialize message field [proj]
    bufferOffset = _serializer.string(obj.proj, buffer, bufferOffset);
    // Serialize message field [datum]
    bufferOffset = _serializer.string(obj.datum, buffer, bufferOffset);
    // Serialize message field [reftime]
    bufferOffset = _serializer.uint64(obj.reftime, buffer, bufferOffset);
    // Serialize message field [reflon]
    bufferOffset = _serializer.int32(obj.reflon, buffer, bufferOffset);
    // Serialize message field [reflat]
    bufferOffset = _serializer.int32(obj.reflat, buffer, bufferOffset);
    // Serialize message field [refelv]
    bufferOffset = _serializer.int32(obj.refelv, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.uint16(obj.heading, buffer, bufferOffset);
    // Serialize message field [nodes]
    // Serialize the length for message field [nodes]
    bufferOffset = _serializer.uint32(obj.nodes.length, buffer, bufferOffset);
    obj.nodes.forEach((val) => {
      bufferOffset = PathNode.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlGeometry
    let len;
    let data = new TrafficControlGeometry(null);
    // Deserialize message field [proj]
    data.proj = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [datum]
    data.datum = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reftime]
    data.reftime = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [reflon]
    data.reflon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reflat]
    data.reflat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [refelv]
    data.refelv = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [nodes]
    // Deserialize array length for message field [nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.nodes[i] = PathNode.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.proj);
    length += _getByteLength(object.datum);
    length += 9 * object.nodes.length;
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlGeometry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ffaf44999ab634ac9a3f1c4f537cc73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlGeometry.msg
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
    
    # TrafficControlGeometry ::= SEQUENCE
    # {
    # 	proj IA5String (SIZE(0..63)),
    # 	datum IA5String (SIZE(0..63)),
    # 	reftime EpochMins,
    # 	reflon Longitude,
    # 	reflat Latitude,
    # 	refelv Elevation, -- decimeter offset -4096 from reference datum
    # 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees
    # 	nodes SEQUENCE (SIZE(1..255)) OF PathNode
    # }
    
    # proj IA5String (SIZE(0..63)),
    string proj
    
    # datum IA5String (SIZE(0..63)),
    string datum
    
    # reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC
    uint64 reftime
    
    # reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null
    int32 reflon
    
    int32 REFLON_UNAVAILABLE = 1800000001
    int32 REFLON_MAX = 1800000000
    int32 REFLON_MIN = -1799999999
    
    # reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null
    int32 reflat
    
    int32 REFLAT_UNAVAILABLE = 900000001
    int32 REFLAT_MAX = 900000000
    int32 REFLAT_MIN = -900000000
    
    # refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum
    int32 refelv
    
    int32 REFELV_UNKNOWN = 0
    int32 REFELV_MAX = 65535
    int32 REFELV_MIN = 1
    
    # heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees
    uint16 heading
    uint16 HEADING_MAX = 3599
    uint16 HEADING_MIN = 0
    
    # nodes SEQUENCE (SIZE(1..255)) OF PathNode
    j2735_msgs/PathNode[] nodes
    
    
    
    ================================================================================
    MSG: j2735_msgs/PathNode
    #
    # PathNode.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # @author Misheel Bayartsengel
    # @version 0.1
    #
    # The positive x direction proceeds eastward, positive y proceeds
    # northward, and positive z proceeds away from the center of the Earth. 
    
    # X ::= INTEGER (-32768..32767)
    #   -- units are in cm
    int16 x
    int16 y
    int16 z
    
    bool z_exists
    
    # Width ::= INTEGER (-128..127)
    #   -- units are in cm
    int8 width
    bool width_exists
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficControlGeometry(null);
    if (msg.proj !== undefined) {
      resolved.proj = msg.proj;
    }
    else {
      resolved.proj = ''
    }

    if (msg.datum !== undefined) {
      resolved.datum = msg.datum;
    }
    else {
      resolved.datum = ''
    }

    if (msg.reftime !== undefined) {
      resolved.reftime = msg.reftime;
    }
    else {
      resolved.reftime = 0
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

    if (msg.refelv !== undefined) {
      resolved.refelv = msg.refelv;
    }
    else {
      resolved.refelv = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.nodes !== undefined) {
      resolved.nodes = new Array(msg.nodes.length);
      for (let i = 0; i < resolved.nodes.length; ++i) {
        resolved.nodes[i] = PathNode.Resolve(msg.nodes[i]);
      }
    }
    else {
      resolved.nodes = []
    }

    return resolved;
    }
};

// Constants for message
TrafficControlGeometry.Constants = {
  REFLON_UNAVAILABLE: 1800000001,
  REFLON_MAX: 1800000000,
  REFLON_MIN: -1799999999,
  REFLAT_UNAVAILABLE: 900000001,
  REFLAT_MAX: 900000000,
  REFLAT_MIN: -900000000,
  REFELV_UNKNOWN: 0,
  REFELV_MAX: 65535,
  REFELV_MIN: 1,
  HEADING_MAX: 3599,
  HEADING_MIN: 0,
}

module.exports = TrafficControlGeometry;
