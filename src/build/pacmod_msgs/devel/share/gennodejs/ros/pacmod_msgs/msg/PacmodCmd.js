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

class PacmodCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.f64_cmd = null;
      this.ui16_cmd = null;
      this.enable = null;
      this.clear = null;
      this.ignore = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('f64_cmd')) {
        this.f64_cmd = initObj.f64_cmd
      }
      else {
        this.f64_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('ui16_cmd')) {
        this.ui16_cmd = initObj.ui16_cmd
      }
      else {
        this.ui16_cmd = 0;
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('clear')) {
        this.clear = initObj.clear
      }
      else {
        this.clear = false;
      }
      if (initObj.hasOwnProperty('ignore')) {
        this.ignore = initObj.ignore
      }
      else {
        this.ignore = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PacmodCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [f64_cmd]
    bufferOffset = _serializer.float64(obj.f64_cmd, buffer, bufferOffset);
    // Serialize message field [ui16_cmd]
    bufferOffset = _serializer.uint16(obj.ui16_cmd, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [clear]
    bufferOffset = _serializer.bool(obj.clear, buffer, bufferOffset);
    // Serialize message field [ignore]
    bufferOffset = _serializer.bool(obj.ignore, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PacmodCmd
    let len;
    let data = new PacmodCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [f64_cmd]
    data.f64_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ui16_cmd]
    data.ui16_cmd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear]
    data.clear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ignore]
    data.ignore = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/PacmodCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5651e3d1d38e01689421d6d8a4e924f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 f64_cmd
    uint16 ui16_cmd
    bool enable
    bool clear
    bool ignore
    
    uint16 TURN_RIGHT = 0
    uint16 TURN_NONE = 1
    uint16 TURN_LEFT = 2
    uint16 TURN_HAZARDS = 3
    
    uint16 SHIFT_PARK = 0
    uint16 SHIFT_REVERSE = 1
    uint16 SHIFT_NEUTRAL = 2
    uint16 SHIFT_FORWARD = 3
    uint16 SHIFT_HIGH = 3 # For Polaris Ranger
    uint16 SHIFT_LOW = 4
    
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
    const resolved = new PacmodCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.f64_cmd !== undefined) {
      resolved.f64_cmd = msg.f64_cmd;
    }
    else {
      resolved.f64_cmd = 0.0
    }

    if (msg.ui16_cmd !== undefined) {
      resolved.ui16_cmd = msg.ui16_cmd;
    }
    else {
      resolved.ui16_cmd = 0
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.clear !== undefined) {
      resolved.clear = msg.clear;
    }
    else {
      resolved.clear = false
    }

    if (msg.ignore !== undefined) {
      resolved.ignore = msg.ignore;
    }
    else {
      resolved.ignore = false
    }

    return resolved;
    }
};

// Constants for message
PacmodCmd.Constants = {
  TURN_RIGHT: 0,
  TURN_NONE: 1,
  TURN_LEFT: 2,
  TURN_HAZARDS: 3,
  SHIFT_PARK: 0,
  SHIFT_REVERSE: 1,
  SHIFT_NEUTRAL: 2,
  SHIFT_FORWARD: 3,
  SHIFT_HIGH: 3,
  SHIFT_LOW: 4,
}

module.exports = PacmodCmd;
