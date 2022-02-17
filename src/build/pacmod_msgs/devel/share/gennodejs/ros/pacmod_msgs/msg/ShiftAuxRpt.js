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

class ShiftAuxRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.between_gears = null;
      this.between_gears_is_valid = null;
      this.stay_in_neutral_mode = null;
      this.stay_in_neutral_mode_is_valid = null;
      this.brake_interlock_active = null;
      this.brake_interlock_active_is_valid = null;
      this.speed_interlock_active = null;
      this.speed_interlock_active_is_valid = null;
      this.gear_number_avail = null;
      this.gear_number = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('between_gears')) {
        this.between_gears = initObj.between_gears
      }
      else {
        this.between_gears = false;
      }
      if (initObj.hasOwnProperty('between_gears_is_valid')) {
        this.between_gears_is_valid = initObj.between_gears_is_valid
      }
      else {
        this.between_gears_is_valid = false;
      }
      if (initObj.hasOwnProperty('stay_in_neutral_mode')) {
        this.stay_in_neutral_mode = initObj.stay_in_neutral_mode
      }
      else {
        this.stay_in_neutral_mode = false;
      }
      if (initObj.hasOwnProperty('stay_in_neutral_mode_is_valid')) {
        this.stay_in_neutral_mode_is_valid = initObj.stay_in_neutral_mode_is_valid
      }
      else {
        this.stay_in_neutral_mode_is_valid = false;
      }
      if (initObj.hasOwnProperty('brake_interlock_active')) {
        this.brake_interlock_active = initObj.brake_interlock_active
      }
      else {
        this.brake_interlock_active = false;
      }
      if (initObj.hasOwnProperty('brake_interlock_active_is_valid')) {
        this.brake_interlock_active_is_valid = initObj.brake_interlock_active_is_valid
      }
      else {
        this.brake_interlock_active_is_valid = false;
      }
      if (initObj.hasOwnProperty('speed_interlock_active')) {
        this.speed_interlock_active = initObj.speed_interlock_active
      }
      else {
        this.speed_interlock_active = false;
      }
      if (initObj.hasOwnProperty('speed_interlock_active_is_valid')) {
        this.speed_interlock_active_is_valid = initObj.speed_interlock_active_is_valid
      }
      else {
        this.speed_interlock_active_is_valid = false;
      }
      if (initObj.hasOwnProperty('gear_number_avail')) {
        this.gear_number_avail = initObj.gear_number_avail
      }
      else {
        this.gear_number_avail = false;
      }
      if (initObj.hasOwnProperty('gear_number')) {
        this.gear_number = initObj.gear_number
      }
      else {
        this.gear_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShiftAuxRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [between_gears]
    bufferOffset = _serializer.bool(obj.between_gears, buffer, bufferOffset);
    // Serialize message field [between_gears_is_valid]
    bufferOffset = _serializer.bool(obj.between_gears_is_valid, buffer, bufferOffset);
    // Serialize message field [stay_in_neutral_mode]
    bufferOffset = _serializer.bool(obj.stay_in_neutral_mode, buffer, bufferOffset);
    // Serialize message field [stay_in_neutral_mode_is_valid]
    bufferOffset = _serializer.bool(obj.stay_in_neutral_mode_is_valid, buffer, bufferOffset);
    // Serialize message field [brake_interlock_active]
    bufferOffset = _serializer.bool(obj.brake_interlock_active, buffer, bufferOffset);
    // Serialize message field [brake_interlock_active_is_valid]
    bufferOffset = _serializer.bool(obj.brake_interlock_active_is_valid, buffer, bufferOffset);
    // Serialize message field [speed_interlock_active]
    bufferOffset = _serializer.bool(obj.speed_interlock_active, buffer, bufferOffset);
    // Serialize message field [speed_interlock_active_is_valid]
    bufferOffset = _serializer.bool(obj.speed_interlock_active_is_valid, buffer, bufferOffset);
    // Serialize message field [gear_number_avail]
    bufferOffset = _serializer.bool(obj.gear_number_avail, buffer, bufferOffset);
    // Serialize message field [gear_number]
    bufferOffset = _serializer.int8(obj.gear_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShiftAuxRpt
    let len;
    let data = new ShiftAuxRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [between_gears]
    data.between_gears = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [between_gears_is_valid]
    data.between_gears_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stay_in_neutral_mode]
    data.stay_in_neutral_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stay_in_neutral_mode_is_valid]
    data.stay_in_neutral_mode_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_interlock_active]
    data.brake_interlock_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_interlock_active_is_valid]
    data.brake_interlock_active_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_interlock_active]
    data.speed_interlock_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_interlock_active_is_valid]
    data.speed_interlock_active_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear_number_avail]
    data.gear_number_avail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear_number]
    data.gear_number = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/ShiftAuxRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd3dcb724fff7aa8174cd1060347a710';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool between_gears
    bool between_gears_is_valid
    bool stay_in_neutral_mode
    bool stay_in_neutral_mode_is_valid
    bool brake_interlock_active
    bool brake_interlock_active_is_valid
    bool speed_interlock_active
    bool speed_interlock_active_is_valid
    bool gear_number_avail
    int8 gear_number
    
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
    const resolved = new ShiftAuxRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.between_gears !== undefined) {
      resolved.between_gears = msg.between_gears;
    }
    else {
      resolved.between_gears = false
    }

    if (msg.between_gears_is_valid !== undefined) {
      resolved.between_gears_is_valid = msg.between_gears_is_valid;
    }
    else {
      resolved.between_gears_is_valid = false
    }

    if (msg.stay_in_neutral_mode !== undefined) {
      resolved.stay_in_neutral_mode = msg.stay_in_neutral_mode;
    }
    else {
      resolved.stay_in_neutral_mode = false
    }

    if (msg.stay_in_neutral_mode_is_valid !== undefined) {
      resolved.stay_in_neutral_mode_is_valid = msg.stay_in_neutral_mode_is_valid;
    }
    else {
      resolved.stay_in_neutral_mode_is_valid = false
    }

    if (msg.brake_interlock_active !== undefined) {
      resolved.brake_interlock_active = msg.brake_interlock_active;
    }
    else {
      resolved.brake_interlock_active = false
    }

    if (msg.brake_interlock_active_is_valid !== undefined) {
      resolved.brake_interlock_active_is_valid = msg.brake_interlock_active_is_valid;
    }
    else {
      resolved.brake_interlock_active_is_valid = false
    }

    if (msg.speed_interlock_active !== undefined) {
      resolved.speed_interlock_active = msg.speed_interlock_active;
    }
    else {
      resolved.speed_interlock_active = false
    }

    if (msg.speed_interlock_active_is_valid !== undefined) {
      resolved.speed_interlock_active_is_valid = msg.speed_interlock_active_is_valid;
    }
    else {
      resolved.speed_interlock_active_is_valid = false
    }

    if (msg.gear_number_avail !== undefined) {
      resolved.gear_number_avail = msg.gear_number_avail;
    }
    else {
      resolved.gear_number_avail = false
    }

    if (msg.gear_number !== undefined) {
      resolved.gear_number = msg.gear_number;
    }
    else {
      resolved.gear_number = 0
    }

    return resolved;
    }
};

module.exports = ShiftAuxRpt;
