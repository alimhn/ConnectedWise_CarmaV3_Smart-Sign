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

class SteerAuxRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.raw_position = null;
      this.raw_position_is_valid = null;
      this.raw_torque = null;
      this.raw_torque_is_valid = null;
      this.rotation_rate = null;
      this.rotation_rate_is_valid = null;
      this.user_interaction = null;
      this.user_interaction_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('raw_position')) {
        this.raw_position = initObj.raw_position
      }
      else {
        this.raw_position = 0.0;
      }
      if (initObj.hasOwnProperty('raw_position_is_valid')) {
        this.raw_position_is_valid = initObj.raw_position_is_valid
      }
      else {
        this.raw_position_is_valid = false;
      }
      if (initObj.hasOwnProperty('raw_torque')) {
        this.raw_torque = initObj.raw_torque
      }
      else {
        this.raw_torque = 0.0;
      }
      if (initObj.hasOwnProperty('raw_torque_is_valid')) {
        this.raw_torque_is_valid = initObj.raw_torque_is_valid
      }
      else {
        this.raw_torque_is_valid = false;
      }
      if (initObj.hasOwnProperty('rotation_rate')) {
        this.rotation_rate = initObj.rotation_rate
      }
      else {
        this.rotation_rate = 0.0;
      }
      if (initObj.hasOwnProperty('rotation_rate_is_valid')) {
        this.rotation_rate_is_valid = initObj.rotation_rate_is_valid
      }
      else {
        this.rotation_rate_is_valid = false;
      }
      if (initObj.hasOwnProperty('user_interaction')) {
        this.user_interaction = initObj.user_interaction
      }
      else {
        this.user_interaction = false;
      }
      if (initObj.hasOwnProperty('user_interaction_is_valid')) {
        this.user_interaction_is_valid = initObj.user_interaction_is_valid
      }
      else {
        this.user_interaction_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteerAuxRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [raw_position]
    bufferOffset = _serializer.float64(obj.raw_position, buffer, bufferOffset);
    // Serialize message field [raw_position_is_valid]
    bufferOffset = _serializer.bool(obj.raw_position_is_valid, buffer, bufferOffset);
    // Serialize message field [raw_torque]
    bufferOffset = _serializer.float64(obj.raw_torque, buffer, bufferOffset);
    // Serialize message field [raw_torque_is_valid]
    bufferOffset = _serializer.bool(obj.raw_torque_is_valid, buffer, bufferOffset);
    // Serialize message field [rotation_rate]
    bufferOffset = _serializer.float64(obj.rotation_rate, buffer, bufferOffset);
    // Serialize message field [rotation_rate_is_valid]
    bufferOffset = _serializer.bool(obj.rotation_rate_is_valid, buffer, bufferOffset);
    // Serialize message field [user_interaction]
    bufferOffset = _serializer.bool(obj.user_interaction, buffer, bufferOffset);
    // Serialize message field [user_interaction_is_valid]
    bufferOffset = _serializer.bool(obj.user_interaction_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteerAuxRpt
    let len;
    let data = new SteerAuxRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [raw_position]
    data.raw_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [raw_position_is_valid]
    data.raw_position_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raw_torque]
    data.raw_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [raw_torque_is_valid]
    data.raw_torque_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rotation_rate]
    data.rotation_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotation_rate_is_valid]
    data.rotation_rate_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_interaction]
    data.user_interaction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_interaction_is_valid]
    data.user_interaction_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/SteerAuxRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64ab1937ad919cdc25271e7f81c721e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 raw_position
    bool raw_position_is_valid
    float64 raw_torque
    bool raw_torque_is_valid
    float64 rotation_rate
    bool rotation_rate_is_valid
    bool user_interaction
    bool user_interaction_is_valid
    
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
    const resolved = new SteerAuxRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.raw_position !== undefined) {
      resolved.raw_position = msg.raw_position;
    }
    else {
      resolved.raw_position = 0.0
    }

    if (msg.raw_position_is_valid !== undefined) {
      resolved.raw_position_is_valid = msg.raw_position_is_valid;
    }
    else {
      resolved.raw_position_is_valid = false
    }

    if (msg.raw_torque !== undefined) {
      resolved.raw_torque = msg.raw_torque;
    }
    else {
      resolved.raw_torque = 0.0
    }

    if (msg.raw_torque_is_valid !== undefined) {
      resolved.raw_torque_is_valid = msg.raw_torque_is_valid;
    }
    else {
      resolved.raw_torque_is_valid = false
    }

    if (msg.rotation_rate !== undefined) {
      resolved.rotation_rate = msg.rotation_rate;
    }
    else {
      resolved.rotation_rate = 0.0
    }

    if (msg.rotation_rate_is_valid !== undefined) {
      resolved.rotation_rate_is_valid = msg.rotation_rate_is_valid;
    }
    else {
      resolved.rotation_rate_is_valid = false
    }

    if (msg.user_interaction !== undefined) {
      resolved.user_interaction = msg.user_interaction;
    }
    else {
      resolved.user_interaction = false
    }

    if (msg.user_interaction_is_valid !== undefined) {
      resolved.user_interaction_is_valid = msg.user_interaction_is_valid;
    }
    else {
      resolved.user_interaction_is_valid = false
    }

    return resolved;
    }
};

module.exports = SteerAuxRpt;
