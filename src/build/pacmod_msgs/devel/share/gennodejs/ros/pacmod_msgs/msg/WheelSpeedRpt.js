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

class WheelSpeedRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_left_wheel_speed = null;
      this.front_right_wheel_speed = null;
      this.rear_left_wheel_speed = null;
      this.rear_right_wheel_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_left_wheel_speed')) {
        this.front_left_wheel_speed = initObj.front_left_wheel_speed
      }
      else {
        this.front_left_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_wheel_speed')) {
        this.front_right_wheel_speed = initObj.front_right_wheel_speed
      }
      else {
        this.front_right_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rear_left_wheel_speed')) {
        this.rear_left_wheel_speed = initObj.rear_left_wheel_speed
      }
      else {
        this.rear_left_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rear_right_wheel_speed')) {
        this.rear_right_wheel_speed = initObj.rear_right_wheel_speed
      }
      else {
        this.rear_right_wheel_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeedRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_left_wheel_speed]
    bufferOffset = _serializer.float64(obj.front_left_wheel_speed, buffer, bufferOffset);
    // Serialize message field [front_right_wheel_speed]
    bufferOffset = _serializer.float64(obj.front_right_wheel_speed, buffer, bufferOffset);
    // Serialize message field [rear_left_wheel_speed]
    bufferOffset = _serializer.float64(obj.rear_left_wheel_speed, buffer, bufferOffset);
    // Serialize message field [rear_right_wheel_speed]
    bufferOffset = _serializer.float64(obj.rear_right_wheel_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeedRpt
    let len;
    let data = new WheelSpeedRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_left_wheel_speed]
    data.front_left_wheel_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_right_wheel_speed]
    data.front_right_wheel_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_left_wheel_speed]
    data.rear_left_wheel_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_right_wheel_speed]
    data.rear_right_wheel_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/WheelSpeedRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ade552ffaaff87eca01c4d9b49bb8ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 front_left_wheel_speed
    float64 front_right_wheel_speed
    float64 rear_left_wheel_speed
    float64 rear_right_wheel_speed
    
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
    const resolved = new WheelSpeedRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_left_wheel_speed !== undefined) {
      resolved.front_left_wheel_speed = msg.front_left_wheel_speed;
    }
    else {
      resolved.front_left_wheel_speed = 0.0
    }

    if (msg.front_right_wheel_speed !== undefined) {
      resolved.front_right_wheel_speed = msg.front_right_wheel_speed;
    }
    else {
      resolved.front_right_wheel_speed = 0.0
    }

    if (msg.rear_left_wheel_speed !== undefined) {
      resolved.rear_left_wheel_speed = msg.rear_left_wheel_speed;
    }
    else {
      resolved.rear_left_wheel_speed = 0.0
    }

    if (msg.rear_right_wheel_speed !== undefined) {
      resolved.rear_right_wheel_speed = msg.rear_right_wheel_speed;
    }
    else {
      resolved.rear_right_wheel_speed = 0.0
    }

    return resolved;
    }
};

module.exports = WheelSpeedRpt;
