// Auto-generated. Do not edit!

// (in-package pacmod_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyValuePair = require('./KeyValuePair.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AllSystemStatuses {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enabled_status = null;
      this.overridden_status = null;
      this.fault_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enabled_status')) {
        this.enabled_status = initObj.enabled_status
      }
      else {
        this.enabled_status = [];
      }
      if (initObj.hasOwnProperty('overridden_status')) {
        this.overridden_status = initObj.overridden_status
      }
      else {
        this.overridden_status = [];
      }
      if (initObj.hasOwnProperty('fault_status')) {
        this.fault_status = initObj.fault_status
      }
      else {
        this.fault_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllSystemStatuses
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enabled_status]
    // Serialize the length for message field [enabled_status]
    bufferOffset = _serializer.uint32(obj.enabled_status.length, buffer, bufferOffset);
    obj.enabled_status.forEach((val) => {
      bufferOffset = KeyValuePair.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [overridden_status]
    // Serialize the length for message field [overridden_status]
    bufferOffset = _serializer.uint32(obj.overridden_status.length, buffer, bufferOffset);
    obj.overridden_status.forEach((val) => {
      bufferOffset = KeyValuePair.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [fault_status]
    // Serialize the length for message field [fault_status]
    bufferOffset = _serializer.uint32(obj.fault_status.length, buffer, bufferOffset);
    obj.fault_status.forEach((val) => {
      bufferOffset = KeyValuePair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllSystemStatuses
    let len;
    let data = new AllSystemStatuses(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enabled_status]
    // Deserialize array length for message field [enabled_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.enabled_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.enabled_status[i] = KeyValuePair.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [overridden_status]
    // Deserialize array length for message field [overridden_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.overridden_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.overridden_status[i] = KeyValuePair.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [fault_status]
    // Deserialize array length for message field [fault_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fault_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fault_status[i] = KeyValuePair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.enabled_status.forEach((val) => {
      length += KeyValuePair.getMessageSize(val);
    });
    object.overridden_status.forEach((val) => {
      length += KeyValuePair.getMessageSize(val);
    });
    object.fault_status.forEach((val) => {
      length += KeyValuePair.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/AllSystemStatuses';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c02f347061ed74b0bef510eb7368d90a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    pacmod_msgs/KeyValuePair[] enabled_status
    pacmod_msgs/KeyValuePair[] overridden_status
    pacmod_msgs/KeyValuePair[] fault_status
    
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
    
    ================================================================================
    MSG: pacmod_msgs/KeyValuePair
    string key
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AllSystemStatuses(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enabled_status !== undefined) {
      resolved.enabled_status = new Array(msg.enabled_status.length);
      for (let i = 0; i < resolved.enabled_status.length; ++i) {
        resolved.enabled_status[i] = KeyValuePair.Resolve(msg.enabled_status[i]);
      }
    }
    else {
      resolved.enabled_status = []
    }

    if (msg.overridden_status !== undefined) {
      resolved.overridden_status = new Array(msg.overridden_status.length);
      for (let i = 0; i < resolved.overridden_status.length; ++i) {
        resolved.overridden_status[i] = KeyValuePair.Resolve(msg.overridden_status[i]);
      }
    }
    else {
      resolved.overridden_status = []
    }

    if (msg.fault_status !== undefined) {
      resolved.fault_status = new Array(msg.fault_status.length);
      for (let i = 0; i < resolved.fault_status.length; ++i) {
        resolved.fault_status[i] = KeyValuePair.Resolve(msg.fault_status[i]);
      }
    }
    else {
      resolved.fault_status = []
    }

    return resolved;
    }
};

module.exports = AllSystemStatuses;
