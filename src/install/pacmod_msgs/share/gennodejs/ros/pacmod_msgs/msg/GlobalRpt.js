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

class GlobalRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enabled = null;
      this.override_active = null;
      this.fault_active = null;
      this.config_fault_active = null;
      this.user_can_timeout = null;
      this.brake_can_timeout = null;
      this.steering_can_timeout = null;
      this.vehicle_can_timeout = null;
      this.subsystem_can_timeout = null;
      this.user_can_read_errors = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('override_active')) {
        this.override_active = initObj.override_active
      }
      else {
        this.override_active = false;
      }
      if (initObj.hasOwnProperty('fault_active')) {
        this.fault_active = initObj.fault_active
      }
      else {
        this.fault_active = false;
      }
      if (initObj.hasOwnProperty('config_fault_active')) {
        this.config_fault_active = initObj.config_fault_active
      }
      else {
        this.config_fault_active = false;
      }
      if (initObj.hasOwnProperty('user_can_timeout')) {
        this.user_can_timeout = initObj.user_can_timeout
      }
      else {
        this.user_can_timeout = false;
      }
      if (initObj.hasOwnProperty('brake_can_timeout')) {
        this.brake_can_timeout = initObj.brake_can_timeout
      }
      else {
        this.brake_can_timeout = false;
      }
      if (initObj.hasOwnProperty('steering_can_timeout')) {
        this.steering_can_timeout = initObj.steering_can_timeout
      }
      else {
        this.steering_can_timeout = false;
      }
      if (initObj.hasOwnProperty('vehicle_can_timeout')) {
        this.vehicle_can_timeout = initObj.vehicle_can_timeout
      }
      else {
        this.vehicle_can_timeout = false;
      }
      if (initObj.hasOwnProperty('subsystem_can_timeout')) {
        this.subsystem_can_timeout = initObj.subsystem_can_timeout
      }
      else {
        this.subsystem_can_timeout = false;
      }
      if (initObj.hasOwnProperty('user_can_read_errors')) {
        this.user_can_read_errors = initObj.user_can_read_errors
      }
      else {
        this.user_can_read_errors = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [override_active]
    bufferOffset = _serializer.bool(obj.override_active, buffer, bufferOffset);
    // Serialize message field [fault_active]
    bufferOffset = _serializer.bool(obj.fault_active, buffer, bufferOffset);
    // Serialize message field [config_fault_active]
    bufferOffset = _serializer.bool(obj.config_fault_active, buffer, bufferOffset);
    // Serialize message field [user_can_timeout]
    bufferOffset = _serializer.bool(obj.user_can_timeout, buffer, bufferOffset);
    // Serialize message field [brake_can_timeout]
    bufferOffset = _serializer.bool(obj.brake_can_timeout, buffer, bufferOffset);
    // Serialize message field [steering_can_timeout]
    bufferOffset = _serializer.bool(obj.steering_can_timeout, buffer, bufferOffset);
    // Serialize message field [vehicle_can_timeout]
    bufferOffset = _serializer.bool(obj.vehicle_can_timeout, buffer, bufferOffset);
    // Serialize message field [subsystem_can_timeout]
    bufferOffset = _serializer.bool(obj.subsystem_can_timeout, buffer, bufferOffset);
    // Serialize message field [user_can_read_errors]
    bufferOffset = _serializer.bool(obj.user_can_read_errors, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalRpt
    let len;
    let data = new GlobalRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [override_active]
    data.override_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_active]
    data.fault_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [config_fault_active]
    data.config_fault_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_can_timeout]
    data.user_can_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_can_timeout]
    data.brake_can_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_can_timeout]
    data.steering_can_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_can_timeout]
    data.vehicle_can_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [subsystem_can_timeout]
    data.subsystem_can_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_can_read_errors]
    data.user_can_read_errors = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/GlobalRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e844957facaf4f6bfdea20a3ffdb048f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool enabled                # Indicates whether any system on the PACMod is enabled or disabled.
    bool override_active        # Indicates whether an override has been triggered on any system.
    bool fault_active           # Indicates whether a fault is active on any system.
    bool config_fault_active    # Indicates whether the CONFIG.TXT file was read correctly
    bool user_can_timeout       # Indicates a timeout has been exceeded on the user CAN interface.
    bool brake_can_timeout      # Indicates a timeout has been exceeded on the brake CAN interface.
    bool steering_can_timeout   # Indicates a timeout has been exceeded on the steering CAN interface.
    bool vehicle_can_timeout    # Indicates a timeout has been exceeded on a vehicle CAN interface.
    bool subsystem_can_timeout  # Indicates a timeout has been exceeded when communicating with a PACMod subsystem.
    bool user_can_read_errors   # The number of read errors encoutered by the PACMod on the user CAN interface.
    
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
    const resolved = new GlobalRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.override_active !== undefined) {
      resolved.override_active = msg.override_active;
    }
    else {
      resolved.override_active = false
    }

    if (msg.fault_active !== undefined) {
      resolved.fault_active = msg.fault_active;
    }
    else {
      resolved.fault_active = false
    }

    if (msg.config_fault_active !== undefined) {
      resolved.config_fault_active = msg.config_fault_active;
    }
    else {
      resolved.config_fault_active = false
    }

    if (msg.user_can_timeout !== undefined) {
      resolved.user_can_timeout = msg.user_can_timeout;
    }
    else {
      resolved.user_can_timeout = false
    }

    if (msg.brake_can_timeout !== undefined) {
      resolved.brake_can_timeout = msg.brake_can_timeout;
    }
    else {
      resolved.brake_can_timeout = false
    }

    if (msg.steering_can_timeout !== undefined) {
      resolved.steering_can_timeout = msg.steering_can_timeout;
    }
    else {
      resolved.steering_can_timeout = false
    }

    if (msg.vehicle_can_timeout !== undefined) {
      resolved.vehicle_can_timeout = msg.vehicle_can_timeout;
    }
    else {
      resolved.vehicle_can_timeout = false
    }

    if (msg.subsystem_can_timeout !== undefined) {
      resolved.subsystem_can_timeout = msg.subsystem_can_timeout;
    }
    else {
      resolved.subsystem_can_timeout = false
    }

    if (msg.user_can_read_errors !== undefined) {
      resolved.user_can_read_errors = msg.user_can_read_errors;
    }
    else {
      resolved.user_can_read_errors = false
    }

    return resolved;
    }
};

module.exports = GlobalRpt;
