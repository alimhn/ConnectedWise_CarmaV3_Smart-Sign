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

class MotorRpt3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.torque_output = null;
      this.torque_input = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('torque_output')) {
        this.torque_output = initObj.torque_output
      }
      else {
        this.torque_output = 0.0;
      }
      if (initObj.hasOwnProperty('torque_input')) {
        this.torque_input = initObj.torque_input
      }
      else {
        this.torque_input = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorRpt3
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [torque_output]
    bufferOffset = _serializer.float64(obj.torque_output, buffer, bufferOffset);
    // Serialize message field [torque_input]
    bufferOffset = _serializer.float64(obj.torque_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorRpt3
    let len;
    let data = new MotorRpt3(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque_output]
    data.torque_output = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [torque_input]
    data.torque_input = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/MotorRpt3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1640bb8a85b4353a76a6e6a5df503313';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 torque_output   # Measured torque output of the motor in Newton-Meters
    float64 torque_input    # Measured torque input of the motor in Newton-Meters
    
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
    const resolved = new MotorRpt3(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.torque_output !== undefined) {
      resolved.torque_output = msg.torque_output;
    }
    else {
      resolved.torque_output = 0.0
    }

    if (msg.torque_input !== undefined) {
      resolved.torque_input = msg.torque_input;
    }
    else {
      resolved.torque_input = 0.0
    }

    return resolved;
    }
};

module.exports = MotorRpt3;
