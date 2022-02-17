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

class WiperAuxRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_wiping = null;
      this.front_wiping_is_valid = null;
      this.front_spraying = null;
      this.front_spraying_is_valid = null;
      this.rear_wiping = null;
      this.rear_wiping_is_valid = null;
      this.rear_spraying = null;
      this.rear_spraying_is_valid = null;
      this.spray_near_empty = null;
      this.spray_near_empty_is_valid = null;
      this.spray_empty = null;
      this.spray_empty_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_wiping')) {
        this.front_wiping = initObj.front_wiping
      }
      else {
        this.front_wiping = false;
      }
      if (initObj.hasOwnProperty('front_wiping_is_valid')) {
        this.front_wiping_is_valid = initObj.front_wiping_is_valid
      }
      else {
        this.front_wiping_is_valid = false;
      }
      if (initObj.hasOwnProperty('front_spraying')) {
        this.front_spraying = initObj.front_spraying
      }
      else {
        this.front_spraying = false;
      }
      if (initObj.hasOwnProperty('front_spraying_is_valid')) {
        this.front_spraying_is_valid = initObj.front_spraying_is_valid
      }
      else {
        this.front_spraying_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_wiping')) {
        this.rear_wiping = initObj.rear_wiping
      }
      else {
        this.rear_wiping = false;
      }
      if (initObj.hasOwnProperty('rear_wiping_is_valid')) {
        this.rear_wiping_is_valid = initObj.rear_wiping_is_valid
      }
      else {
        this.rear_wiping_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_spraying')) {
        this.rear_spraying = initObj.rear_spraying
      }
      else {
        this.rear_spraying = false;
      }
      if (initObj.hasOwnProperty('rear_spraying_is_valid')) {
        this.rear_spraying_is_valid = initObj.rear_spraying_is_valid
      }
      else {
        this.rear_spraying_is_valid = false;
      }
      if (initObj.hasOwnProperty('spray_near_empty')) {
        this.spray_near_empty = initObj.spray_near_empty
      }
      else {
        this.spray_near_empty = false;
      }
      if (initObj.hasOwnProperty('spray_near_empty_is_valid')) {
        this.spray_near_empty_is_valid = initObj.spray_near_empty_is_valid
      }
      else {
        this.spray_near_empty_is_valid = false;
      }
      if (initObj.hasOwnProperty('spray_empty')) {
        this.spray_empty = initObj.spray_empty
      }
      else {
        this.spray_empty = false;
      }
      if (initObj.hasOwnProperty('spray_empty_is_valid')) {
        this.spray_empty_is_valid = initObj.spray_empty_is_valid
      }
      else {
        this.spray_empty_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WiperAuxRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_wiping]
    bufferOffset = _serializer.bool(obj.front_wiping, buffer, bufferOffset);
    // Serialize message field [front_wiping_is_valid]
    bufferOffset = _serializer.bool(obj.front_wiping_is_valid, buffer, bufferOffset);
    // Serialize message field [front_spraying]
    bufferOffset = _serializer.bool(obj.front_spraying, buffer, bufferOffset);
    // Serialize message field [front_spraying_is_valid]
    bufferOffset = _serializer.bool(obj.front_spraying_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_wiping]
    bufferOffset = _serializer.bool(obj.rear_wiping, buffer, bufferOffset);
    // Serialize message field [rear_wiping_is_valid]
    bufferOffset = _serializer.bool(obj.rear_wiping_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_spraying]
    bufferOffset = _serializer.bool(obj.rear_spraying, buffer, bufferOffset);
    // Serialize message field [rear_spraying_is_valid]
    bufferOffset = _serializer.bool(obj.rear_spraying_is_valid, buffer, bufferOffset);
    // Serialize message field [spray_near_empty]
    bufferOffset = _serializer.bool(obj.spray_near_empty, buffer, bufferOffset);
    // Serialize message field [spray_near_empty_is_valid]
    bufferOffset = _serializer.bool(obj.spray_near_empty_is_valid, buffer, bufferOffset);
    // Serialize message field [spray_empty]
    bufferOffset = _serializer.bool(obj.spray_empty, buffer, bufferOffset);
    // Serialize message field [spray_empty_is_valid]
    bufferOffset = _serializer.bool(obj.spray_empty_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WiperAuxRpt
    let len;
    let data = new WiperAuxRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_wiping]
    data.front_wiping = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_wiping_is_valid]
    data.front_wiping_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_spraying]
    data.front_spraying = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_spraying_is_valid]
    data.front_spraying_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_wiping]
    data.rear_wiping = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_wiping_is_valid]
    data.rear_wiping_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_spraying]
    data.rear_spraying = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_spraying_is_valid]
    data.rear_spraying_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spray_near_empty]
    data.spray_near_empty = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spray_near_empty_is_valid]
    data.spray_near_empty_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spray_empty]
    data.spray_empty = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spray_empty_is_valid]
    data.spray_empty_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/WiperAuxRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '663ea0989c9628effd21f08690caa7d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool front_wiping
    bool front_wiping_is_valid
    bool front_spraying
    bool front_spraying_is_valid
    bool rear_wiping
    bool rear_wiping_is_valid
    bool rear_spraying
    bool rear_spraying_is_valid
    bool spray_near_empty
    bool spray_near_empty_is_valid
    bool spray_empty
    bool spray_empty_is_valid
    
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
    const resolved = new WiperAuxRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_wiping !== undefined) {
      resolved.front_wiping = msg.front_wiping;
    }
    else {
      resolved.front_wiping = false
    }

    if (msg.front_wiping_is_valid !== undefined) {
      resolved.front_wiping_is_valid = msg.front_wiping_is_valid;
    }
    else {
      resolved.front_wiping_is_valid = false
    }

    if (msg.front_spraying !== undefined) {
      resolved.front_spraying = msg.front_spraying;
    }
    else {
      resolved.front_spraying = false
    }

    if (msg.front_spraying_is_valid !== undefined) {
      resolved.front_spraying_is_valid = msg.front_spraying_is_valid;
    }
    else {
      resolved.front_spraying_is_valid = false
    }

    if (msg.rear_wiping !== undefined) {
      resolved.rear_wiping = msg.rear_wiping;
    }
    else {
      resolved.rear_wiping = false
    }

    if (msg.rear_wiping_is_valid !== undefined) {
      resolved.rear_wiping_is_valid = msg.rear_wiping_is_valid;
    }
    else {
      resolved.rear_wiping_is_valid = false
    }

    if (msg.rear_spraying !== undefined) {
      resolved.rear_spraying = msg.rear_spraying;
    }
    else {
      resolved.rear_spraying = false
    }

    if (msg.rear_spraying_is_valid !== undefined) {
      resolved.rear_spraying_is_valid = msg.rear_spraying_is_valid;
    }
    else {
      resolved.rear_spraying_is_valid = false
    }

    if (msg.spray_near_empty !== undefined) {
      resolved.spray_near_empty = msg.spray_near_empty;
    }
    else {
      resolved.spray_near_empty = false
    }

    if (msg.spray_near_empty_is_valid !== undefined) {
      resolved.spray_near_empty_is_valid = msg.spray_near_empty_is_valid;
    }
    else {
      resolved.spray_near_empty_is_valid = false
    }

    if (msg.spray_empty !== undefined) {
      resolved.spray_empty = msg.spray_empty;
    }
    else {
      resolved.spray_empty = false
    }

    if (msg.spray_empty_is_valid !== undefined) {
      resolved.spray_empty_is_valid = msg.spray_empty_is_valid;
    }
    else {
      resolved.spray_empty_is_valid = false
    }

    return resolved;
    }
};

module.exports = WiperAuxRpt;
