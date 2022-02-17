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

class SteeringPIDRpt3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.new_torque = null;
      this.str_angle_desired = null;
      this.str_angle_actual = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('new_torque')) {
        this.new_torque = initObj.new_torque
      }
      else {
        this.new_torque = 0.0;
      }
      if (initObj.hasOwnProperty('str_angle_desired')) {
        this.str_angle_desired = initObj.str_angle_desired
      }
      else {
        this.str_angle_desired = 0.0;
      }
      if (initObj.hasOwnProperty('str_angle_actual')) {
        this.str_angle_actual = initObj.str_angle_actual
      }
      else {
        this.str_angle_actual = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteeringPIDRpt3
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [new_torque]
    bufferOffset = _serializer.float64(obj.new_torque, buffer, bufferOffset);
    // Serialize message field [str_angle_desired]
    bufferOffset = _serializer.float64(obj.str_angle_desired, buffer, bufferOffset);
    // Serialize message field [str_angle_actual]
    bufferOffset = _serializer.float64(obj.str_angle_actual, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float64(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteeringPIDRpt3
    let len;
    let data = new SteeringPIDRpt3(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [new_torque]
    data.new_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [str_angle_desired]
    data.str_angle_desired = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [str_angle_actual]
    data.str_angle_actual = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/SteeringPIDRpt3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '722f63b47fd2935245656ab58fbec284';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 new_torque
    float64 str_angle_desired
    float64 str_angle_actual
    float64 error
    
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
    const resolved = new SteeringPIDRpt3(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.new_torque !== undefined) {
      resolved.new_torque = msg.new_torque;
    }
    else {
      resolved.new_torque = 0.0
    }

    if (msg.str_angle_desired !== undefined) {
      resolved.str_angle_desired = msg.str_angle_desired;
    }
    else {
      resolved.str_angle_desired = 0.0
    }

    if (msg.str_angle_actual !== undefined) {
      resolved.str_angle_actual = msg.str_angle_actual;
    }
    else {
      resolved.str_angle_actual = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    return resolved;
    }
};

module.exports = SteeringPIDRpt3;
