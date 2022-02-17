// Auto-generated. Do not edit!

// (in-package pacmod_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LatLonHeadingRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude_degrees = null;
      this.latitude_minutes = null;
      this.latitude_seconds = null;
      this.longitude_degrees = null;
      this.longitude_minutes = null;
      this.longitude_seconds = null;
      this.heading = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latitude_degrees')) {
        this.latitude_degrees = initObj.latitude_degrees
      }
      else {
        this.latitude_degrees = 0;
      }
      if (initObj.hasOwnProperty('latitude_minutes')) {
        this.latitude_minutes = initObj.latitude_minutes
      }
      else {
        this.latitude_minutes = 0;
      }
      if (initObj.hasOwnProperty('latitude_seconds')) {
        this.latitude_seconds = initObj.latitude_seconds
      }
      else {
        this.latitude_seconds = 0;
      }
      if (initObj.hasOwnProperty('longitude_degrees')) {
        this.longitude_degrees = initObj.longitude_degrees
      }
      else {
        this.longitude_degrees = 0;
      }
      if (initObj.hasOwnProperty('longitude_minutes')) {
        this.longitude_minutes = initObj.longitude_minutes
      }
      else {
        this.longitude_minutes = 0;
      }
      if (initObj.hasOwnProperty('longitude_seconds')) {
        this.longitude_seconds = initObj.longitude_seconds
      }
      else {
        this.longitude_seconds = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LatLonHeadingRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude_degrees]
    bufferOffset = _serializer.int8(obj.latitude_degrees, buffer, bufferOffset);
    // Serialize message field [latitude_minutes]
    bufferOffset = _serializer.uint8(obj.latitude_minutes, buffer, bufferOffset);
    // Serialize message field [latitude_seconds]
    bufferOffset = _serializer.uint8(obj.latitude_seconds, buffer, bufferOffset);
    // Serialize message field [longitude_degrees]
    bufferOffset = _serializer.int8(obj.longitude_degrees, buffer, bufferOffset);
    // Serialize message field [longitude_minutes]
    bufferOffset = _serializer.uint8(obj.longitude_minutes, buffer, bufferOffset);
    // Serialize message field [longitude_seconds]
    bufferOffset = _serializer.uint8(obj.longitude_seconds, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LatLonHeadingRpt
    let len;
    let data = new LatLonHeadingRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude_degrees]
    data.latitude_degrees = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [latitude_minutes]
    data.latitude_minutes = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [latitude_seconds]
    data.latitude_seconds = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [longitude_degrees]
    data.longitude_degrees = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [longitude_minutes]
    data.longitude_minutes = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [longitude_seconds]
    data.longitude_seconds = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/LatLonHeadingRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '137a7c22b052c703f38a29aa79de4e50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    int8 latitude_degrees
    uint8 latitude_minutes
    uint8 latitude_seconds
    int8 longitude_degrees
    uint8 longitude_minutes
    uint8 longitude_seconds
    float64 heading
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LatLonHeadingRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latitude_degrees !== undefined) {
      resolved.latitude_degrees = msg.latitude_degrees;
    }
    else {
      resolved.latitude_degrees = 0
    }

    if (msg.latitude_minutes !== undefined) {
      resolved.latitude_minutes = msg.latitude_minutes;
    }
    else {
      resolved.latitude_minutes = 0
    }

    if (msg.latitude_seconds !== undefined) {
      resolved.latitude_seconds = msg.latitude_seconds;
    }
    else {
      resolved.latitude_seconds = 0
    }

    if (msg.longitude_degrees !== undefined) {
      resolved.longitude_degrees = msg.longitude_degrees;
    }
    else {
      resolved.longitude_degrees = 0
    }

    if (msg.longitude_minutes !== undefined) {
      resolved.longitude_minutes = msg.longitude_minutes;
    }
    else {
      resolved.longitude_minutes = 0
    }

    if (msg.longitude_seconds !== undefined) {
      resolved.longitude_seconds = msg.longitude_seconds;
    }
    else {
      resolved.longitude_seconds = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    return resolved;
    }
};

module.exports = LatLonHeadingRpt;
