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

class PositionWithSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angular_position = null;
      this.angular_velocity_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angular_position')) {
        this.angular_position = initObj.angular_position
      }
      else {
        this.angular_position = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_limit')) {
        this.angular_velocity_limit = initObj.angular_velocity_limit
      }
      else {
        this.angular_velocity_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionWithSpeed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angular_position]
    bufferOffset = _serializer.float64(obj.angular_position, buffer, bufferOffset);
    // Serialize message field [angular_velocity_limit]
    bufferOffset = _serializer.float64(obj.angular_velocity_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionWithSpeed
    let len;
    let data = new PositionWithSpeed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_position]
    data.angular_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_limit]
    data.angular_velocity_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/PositionWithSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e96a8c8cbc8234d4d2c87880ddb7cfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 angular_position                # The desired rotational position of the motor shaft about it's z axis in Radians
    float64 angular_velocity_limit          # The desired speed limit to acheive the desired position in Radians/second (z axis)
    
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
    const resolved = new PositionWithSpeed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angular_position !== undefined) {
      resolved.angular_position = msg.angular_position;
    }
    else {
      resolved.angular_position = 0.0
    }

    if (msg.angular_velocity_limit !== undefined) {
      resolved.angular_velocity_limit = msg.angular_velocity_limit;
    }
    else {
      resolved.angular_velocity_limit = 0.0
    }

    return resolved;
    }
};

module.exports = PositionWithSpeed;
