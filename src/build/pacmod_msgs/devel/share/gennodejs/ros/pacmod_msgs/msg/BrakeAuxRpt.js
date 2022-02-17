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

class BrakeAuxRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.raw_pedal_pos = null;
      this.raw_pedal_pos_is_valid = null;
      this.raw_pedal_force = null;
      this.raw_pedal_force_is_valid = null;
      this.raw_brake_pressure = null;
      this.raw_brake_pressure_is_valid = null;
      this.brake_on_off = null;
      this.brake_on_off_is_valid = null;
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
      if (initObj.hasOwnProperty('raw_pedal_pos')) {
        this.raw_pedal_pos = initObj.raw_pedal_pos
      }
      else {
        this.raw_pedal_pos = 0.0;
      }
      if (initObj.hasOwnProperty('raw_pedal_pos_is_valid')) {
        this.raw_pedal_pos_is_valid = initObj.raw_pedal_pos_is_valid
      }
      else {
        this.raw_pedal_pos_is_valid = false;
      }
      if (initObj.hasOwnProperty('raw_pedal_force')) {
        this.raw_pedal_force = initObj.raw_pedal_force
      }
      else {
        this.raw_pedal_force = 0.0;
      }
      if (initObj.hasOwnProperty('raw_pedal_force_is_valid')) {
        this.raw_pedal_force_is_valid = initObj.raw_pedal_force_is_valid
      }
      else {
        this.raw_pedal_force_is_valid = false;
      }
      if (initObj.hasOwnProperty('raw_brake_pressure')) {
        this.raw_brake_pressure = initObj.raw_brake_pressure
      }
      else {
        this.raw_brake_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('raw_brake_pressure_is_valid')) {
        this.raw_brake_pressure_is_valid = initObj.raw_brake_pressure_is_valid
      }
      else {
        this.raw_brake_pressure_is_valid = false;
      }
      if (initObj.hasOwnProperty('brake_on_off')) {
        this.brake_on_off = initObj.brake_on_off
      }
      else {
        this.brake_on_off = false;
      }
      if (initObj.hasOwnProperty('brake_on_off_is_valid')) {
        this.brake_on_off_is_valid = initObj.brake_on_off_is_valid
      }
      else {
        this.brake_on_off_is_valid = false;
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
    // Serializes a message object of type BrakeAuxRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [raw_pedal_pos]
    bufferOffset = _serializer.float64(obj.raw_pedal_pos, buffer, bufferOffset);
    // Serialize message field [raw_pedal_pos_is_valid]
    bufferOffset = _serializer.bool(obj.raw_pedal_pos_is_valid, buffer, bufferOffset);
    // Serialize message field [raw_pedal_force]
    bufferOffset = _serializer.float64(obj.raw_pedal_force, buffer, bufferOffset);
    // Serialize message field [raw_pedal_force_is_valid]
    bufferOffset = _serializer.bool(obj.raw_pedal_force_is_valid, buffer, bufferOffset);
    // Serialize message field [raw_brake_pressure]
    bufferOffset = _serializer.float64(obj.raw_brake_pressure, buffer, bufferOffset);
    // Serialize message field [raw_brake_pressure_is_valid]
    bufferOffset = _serializer.bool(obj.raw_brake_pressure_is_valid, buffer, bufferOffset);
    // Serialize message field [brake_on_off]
    bufferOffset = _serializer.bool(obj.brake_on_off, buffer, bufferOffset);
    // Serialize message field [brake_on_off_is_valid]
    bufferOffset = _serializer.bool(obj.brake_on_off_is_valid, buffer, bufferOffset);
    // Serialize message field [user_interaction]
    bufferOffset = _serializer.bool(obj.user_interaction, buffer, bufferOffset);
    // Serialize message field [user_interaction_is_valid]
    bufferOffset = _serializer.bool(obj.user_interaction_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeAuxRpt
    let len;
    let data = new BrakeAuxRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [raw_pedal_pos]
    data.raw_pedal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [raw_pedal_pos_is_valid]
    data.raw_pedal_pos_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raw_pedal_force]
    data.raw_pedal_force = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [raw_pedal_force_is_valid]
    data.raw_pedal_force_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raw_brake_pressure]
    data.raw_brake_pressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [raw_brake_pressure_is_valid]
    data.raw_brake_pressure_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_on_off]
    data.brake_on_off = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_on_off_is_valid]
    data.brake_on_off_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_interaction]
    data.user_interaction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_interaction_is_valid]
    data.user_interaction_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/BrakeAuxRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b24f296f5fabbe64603c0988f5aae5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 raw_pedal_pos
    bool raw_pedal_pos_is_valid
    float64 raw_pedal_force
    bool raw_pedal_force_is_valid
    float64 raw_brake_pressure
    bool raw_brake_pressure_is_valid
    bool brake_on_off
    bool brake_on_off_is_valid
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
    const resolved = new BrakeAuxRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.raw_pedal_pos !== undefined) {
      resolved.raw_pedal_pos = msg.raw_pedal_pos;
    }
    else {
      resolved.raw_pedal_pos = 0.0
    }

    if (msg.raw_pedal_pos_is_valid !== undefined) {
      resolved.raw_pedal_pos_is_valid = msg.raw_pedal_pos_is_valid;
    }
    else {
      resolved.raw_pedal_pos_is_valid = false
    }

    if (msg.raw_pedal_force !== undefined) {
      resolved.raw_pedal_force = msg.raw_pedal_force;
    }
    else {
      resolved.raw_pedal_force = 0.0
    }

    if (msg.raw_pedal_force_is_valid !== undefined) {
      resolved.raw_pedal_force_is_valid = msg.raw_pedal_force_is_valid;
    }
    else {
      resolved.raw_pedal_force_is_valid = false
    }

    if (msg.raw_brake_pressure !== undefined) {
      resolved.raw_brake_pressure = msg.raw_brake_pressure;
    }
    else {
      resolved.raw_brake_pressure = 0.0
    }

    if (msg.raw_brake_pressure_is_valid !== undefined) {
      resolved.raw_brake_pressure_is_valid = msg.raw_brake_pressure_is_valid;
    }
    else {
      resolved.raw_brake_pressure_is_valid = false
    }

    if (msg.brake_on_off !== undefined) {
      resolved.brake_on_off = msg.brake_on_off;
    }
    else {
      resolved.brake_on_off = false
    }

    if (msg.brake_on_off_is_valid !== undefined) {
      resolved.brake_on_off_is_valid = msg.brake_on_off_is_valid;
    }
    else {
      resolved.brake_on_off_is_valid = false
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

module.exports = BrakeAuxRpt;
