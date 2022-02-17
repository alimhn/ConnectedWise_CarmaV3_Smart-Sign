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

class SteerSystemCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enable = null;
      this.ignore_overrides = null;
      this.clear_override = null;
      this.clear_faults = null;
      this.command = null;
      this.rotation_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('ignore_overrides')) {
        this.ignore_overrides = initObj.ignore_overrides
      }
      else {
        this.ignore_overrides = false;
      }
      if (initObj.hasOwnProperty('clear_override')) {
        this.clear_override = initObj.clear_override
      }
      else {
        this.clear_override = false;
      }
      if (initObj.hasOwnProperty('clear_faults')) {
        this.clear_faults = initObj.clear_faults
      }
      else {
        this.clear_faults = false;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0.0;
      }
      if (initObj.hasOwnProperty('rotation_rate')) {
        this.rotation_rate = initObj.rotation_rate
      }
      else {
        this.rotation_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteerSystemCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [ignore_overrides]
    bufferOffset = _serializer.bool(obj.ignore_overrides, buffer, bufferOffset);
    // Serialize message field [clear_override]
    bufferOffset = _serializer.bool(obj.clear_override, buffer, bufferOffset);
    // Serialize message field [clear_faults]
    bufferOffset = _serializer.bool(obj.clear_faults, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.float64(obj.command, buffer, bufferOffset);
    // Serialize message field [rotation_rate]
    bufferOffset = _serializer.float64(obj.rotation_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteerSystemCmd
    let len;
    let data = new SteerSystemCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ignore_overrides]
    data.ignore_overrides = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_override]
    data.clear_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_faults]
    data.clear_faults = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotation_rate]
    data.rotation_rate = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/SteerSystemCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfa0df9428e1c56b79ca986e115663f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool enable
    bool ignore_overrides
    bool clear_override
    bool clear_faults
    
    float64 command
    float64 rotation_rate
    
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
    const resolved = new SteerSystemCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.ignore_overrides !== undefined) {
      resolved.ignore_overrides = msg.ignore_overrides;
    }
    else {
      resolved.ignore_overrides = false
    }

    if (msg.clear_override !== undefined) {
      resolved.clear_override = msg.clear_override;
    }
    else {
      resolved.clear_override = false
    }

    if (msg.clear_faults !== undefined) {
      resolved.clear_faults = msg.clear_faults;
    }
    else {
      resolved.clear_faults = false
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0.0
    }

    if (msg.rotation_rate !== undefined) {
      resolved.rotation_rate = msg.rotation_rate;
    }
    else {
      resolved.rotation_rate = 0.0
    }

    return resolved;
    }
};

module.exports = SteerSystemCmd;
