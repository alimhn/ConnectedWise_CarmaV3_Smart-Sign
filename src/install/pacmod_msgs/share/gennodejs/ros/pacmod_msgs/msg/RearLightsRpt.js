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

class RearLightsRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.brake_lights_on = null;
      this.brake_lights_on_is_valid = null;
      this.reverse_lights_on = null;
      this.reverse_lights_on_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('brake_lights_on')) {
        this.brake_lights_on = initObj.brake_lights_on
      }
      else {
        this.brake_lights_on = false;
      }
      if (initObj.hasOwnProperty('brake_lights_on_is_valid')) {
        this.brake_lights_on_is_valid = initObj.brake_lights_on_is_valid
      }
      else {
        this.brake_lights_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('reverse_lights_on')) {
        this.reverse_lights_on = initObj.reverse_lights_on
      }
      else {
        this.reverse_lights_on = false;
      }
      if (initObj.hasOwnProperty('reverse_lights_on_is_valid')) {
        this.reverse_lights_on_is_valid = initObj.reverse_lights_on_is_valid
      }
      else {
        this.reverse_lights_on_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RearLightsRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [brake_lights_on]
    bufferOffset = _serializer.bool(obj.brake_lights_on, buffer, bufferOffset);
    // Serialize message field [brake_lights_on_is_valid]
    bufferOffset = _serializer.bool(obj.brake_lights_on_is_valid, buffer, bufferOffset);
    // Serialize message field [reverse_lights_on]
    bufferOffset = _serializer.bool(obj.reverse_lights_on, buffer, bufferOffset);
    // Serialize message field [reverse_lights_on_is_valid]
    bufferOffset = _serializer.bool(obj.reverse_lights_on_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RearLightsRpt
    let len;
    let data = new RearLightsRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_lights_on]
    data.brake_lights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_lights_on_is_valid]
    data.brake_lights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse_lights_on]
    data.reverse_lights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse_lights_on_is_valid]
    data.reverse_lights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/RearLightsRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5adfcaa5d9423963ef8c117009d03bbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool brake_lights_on
    bool brake_lights_on_is_valid
    bool reverse_lights_on
    bool reverse_lights_on_is_valid
    
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
    const resolved = new RearLightsRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.brake_lights_on !== undefined) {
      resolved.brake_lights_on = msg.brake_lights_on;
    }
    else {
      resolved.brake_lights_on = false
    }

    if (msg.brake_lights_on_is_valid !== undefined) {
      resolved.brake_lights_on_is_valid = msg.brake_lights_on_is_valid;
    }
    else {
      resolved.brake_lights_on_is_valid = false
    }

    if (msg.reverse_lights_on !== undefined) {
      resolved.reverse_lights_on = msg.reverse_lights_on;
    }
    else {
      resolved.reverse_lights_on = false
    }

    if (msg.reverse_lights_on_is_valid !== undefined) {
      resolved.reverse_lights_on_is_valid = msg.reverse_lights_on_is_valid;
    }
    else {
      resolved.reverse_lights_on_is_valid = false
    }

    return resolved;
    }
};

module.exports = RearLightsRpt;
