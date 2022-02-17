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

class ComponentRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.component_type = null;
      this.component_func = null;
      this.counter = null;
      this.complement = null;
      this.config_fault = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('component_type')) {
        this.component_type = initObj.component_type
      }
      else {
        this.component_type = 0;
      }
      if (initObj.hasOwnProperty('component_func')) {
        this.component_func = initObj.component_func
      }
      else {
        this.component_func = 0;
      }
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
      if (initObj.hasOwnProperty('complement')) {
        this.complement = initObj.complement
      }
      else {
        this.complement = 0;
      }
      if (initObj.hasOwnProperty('config_fault')) {
        this.config_fault = initObj.config_fault
      }
      else {
        this.config_fault = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComponentRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [component_type]
    bufferOffset = _serializer.uint8(obj.component_type, buffer, bufferOffset);
    // Serialize message field [component_func]
    bufferOffset = _serializer.uint8(obj.component_func, buffer, bufferOffset);
    // Serialize message field [counter]
    bufferOffset = _serializer.uint8(obj.counter, buffer, bufferOffset);
    // Serialize message field [complement]
    bufferOffset = _serializer.uint8(obj.complement, buffer, bufferOffset);
    // Serialize message field [config_fault]
    bufferOffset = _serializer.bool(obj.config_fault, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComponentRpt
    let len;
    let data = new ComponentRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [component_type]
    data.component_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [component_func]
    data.component_func = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [counter]
    data.counter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [complement]
    data.complement = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [config_fault]
    data.config_fault = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/ComponentRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d5b5cb01195437dc5e2f534206c1017';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint8 component_type
    uint8 component_func
    uint8 counter
    uint8 complement
    
    bool config_fault
    
    uint8 COMPONENT_TYPE_PACMOD = 0
    uint8 COMPONENT_TYPE_PACMINI = 1
    uint8 COMPONENT_TYPE_PACMICRO = 2
    
    uint8 COMPONENT_FUNC_PACMOD = 0
    uint8 COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN = 1
    uint8 COMPONENT_FUNC_ACCELERATOR_AND_BRAKING = 2
    uint8 COMPONENT_FUNC_BRAKING = 3
    uint8 COMPONENT_FUNC_SHIFTING = 4
    uint8 COMPONENT_FUNC_STEERING = 5
    uint8 COMPONENT_FUNC_E_SHIFTER = 6
    uint8 COMPONENT_FUNC_WATCHDOG = 7
    
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
    const resolved = new ComponentRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.component_type !== undefined) {
      resolved.component_type = msg.component_type;
    }
    else {
      resolved.component_type = 0
    }

    if (msg.component_func !== undefined) {
      resolved.component_func = msg.component_func;
    }
    else {
      resolved.component_func = 0
    }

    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    if (msg.complement !== undefined) {
      resolved.complement = msg.complement;
    }
    else {
      resolved.complement = 0
    }

    if (msg.config_fault !== undefined) {
      resolved.config_fault = msg.config_fault;
    }
    else {
      resolved.config_fault = false
    }

    return resolved;
    }
};

// Constants for message
ComponentRpt.Constants = {
  COMPONENT_TYPE_PACMOD: 0,
  COMPONENT_TYPE_PACMINI: 1,
  COMPONENT_TYPE_PACMICRO: 2,
  COMPONENT_FUNC_PACMOD: 0,
  COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN: 1,
  COMPONENT_FUNC_ACCELERATOR_AND_BRAKING: 2,
  COMPONENT_FUNC_BRAKING: 3,
  COMPONENT_FUNC_SHIFTING: 4,
  COMPONENT_FUNC_STEERING: 5,
  COMPONENT_FUNC_E_SHIFTER: 6,
  COMPONENT_FUNC_WATCHDOG: 7,
}

module.exports = ComponentRpt;
