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

class EngineRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.engine_speed = null;
      this.engine_torque = null;
      this.engine_coolant_temp = null;
      this.engine_speed_avail = null;
      this.engine_torque_avail = null;
      this.engine_coolant_temp_avail = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('engine_speed')) {
        this.engine_speed = initObj.engine_speed
      }
      else {
        this.engine_speed = 0.0;
      }
      if (initObj.hasOwnProperty('engine_torque')) {
        this.engine_torque = initObj.engine_torque
      }
      else {
        this.engine_torque = 0.0;
      }
      if (initObj.hasOwnProperty('engine_coolant_temp')) {
        this.engine_coolant_temp = initObj.engine_coolant_temp
      }
      else {
        this.engine_coolant_temp = 0;
      }
      if (initObj.hasOwnProperty('engine_speed_avail')) {
        this.engine_speed_avail = initObj.engine_speed_avail
      }
      else {
        this.engine_speed_avail = false;
      }
      if (initObj.hasOwnProperty('engine_torque_avail')) {
        this.engine_torque_avail = initObj.engine_torque_avail
      }
      else {
        this.engine_torque_avail = false;
      }
      if (initObj.hasOwnProperty('engine_coolant_temp_avail')) {
        this.engine_coolant_temp_avail = initObj.engine_coolant_temp_avail
      }
      else {
        this.engine_coolant_temp_avail = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EngineRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [engine_speed]
    bufferOffset = _serializer.float64(obj.engine_speed, buffer, bufferOffset);
    // Serialize message field [engine_torque]
    bufferOffset = _serializer.float64(obj.engine_torque, buffer, bufferOffset);
    // Serialize message field [engine_coolant_temp]
    bufferOffset = _serializer.int16(obj.engine_coolant_temp, buffer, bufferOffset);
    // Serialize message field [engine_speed_avail]
    bufferOffset = _serializer.bool(obj.engine_speed_avail, buffer, bufferOffset);
    // Serialize message field [engine_torque_avail]
    bufferOffset = _serializer.bool(obj.engine_torque_avail, buffer, bufferOffset);
    // Serialize message field [engine_coolant_temp_avail]
    bufferOffset = _serializer.bool(obj.engine_coolant_temp_avail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EngineRpt
    let len;
    let data = new EngineRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [engine_speed]
    data.engine_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engine_torque]
    data.engine_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engine_coolant_temp]
    data.engine_coolant_temp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [engine_speed_avail]
    data.engine_speed_avail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [engine_torque_avail]
    data.engine_torque_avail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [engine_coolant_temp_avail]
    data.engine_coolant_temp_avail = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/EngineRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce4743585f6b90cb725120aba6ddfafc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 engine_speed
    float64 engine_torque
    int16 engine_coolant_temp
    bool engine_speed_avail
    bool engine_torque_avail
    bool engine_coolant_temp_avail
    
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
    const resolved = new EngineRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.engine_speed !== undefined) {
      resolved.engine_speed = msg.engine_speed;
    }
    else {
      resolved.engine_speed = 0.0
    }

    if (msg.engine_torque !== undefined) {
      resolved.engine_torque = msg.engine_torque;
    }
    else {
      resolved.engine_torque = 0.0
    }

    if (msg.engine_coolant_temp !== undefined) {
      resolved.engine_coolant_temp = msg.engine_coolant_temp;
    }
    else {
      resolved.engine_coolant_temp = 0
    }

    if (msg.engine_speed_avail !== undefined) {
      resolved.engine_speed_avail = msg.engine_speed_avail;
    }
    else {
      resolved.engine_speed_avail = false
    }

    if (msg.engine_torque_avail !== undefined) {
      resolved.engine_torque_avail = msg.engine_torque_avail;
    }
    else {
      resolved.engine_torque_avail = false
    }

    if (msg.engine_coolant_temp_avail !== undefined) {
      resolved.engine_coolant_temp_avail = msg.engine_coolant_temp_avail;
    }
    else {
      resolved.engine_coolant_temp_avail = false
    }

    return resolved;
    }
};

module.exports = EngineRpt;
