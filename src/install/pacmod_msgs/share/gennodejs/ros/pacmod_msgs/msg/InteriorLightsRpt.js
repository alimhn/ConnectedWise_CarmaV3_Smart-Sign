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

class InteriorLightsRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_dome_lights_on = null;
      this.front_dome_lights_on_is_valid = null;
      this.rear_dome_lights_on = null;
      this.rear_dome_lights_on_is_valid = null;
      this.mood_lights_on = null;
      this.mood_lights_on_is_valid = null;
      this.dim_level = null;
      this.dim_level_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_dome_lights_on')) {
        this.front_dome_lights_on = initObj.front_dome_lights_on
      }
      else {
        this.front_dome_lights_on = false;
      }
      if (initObj.hasOwnProperty('front_dome_lights_on_is_valid')) {
        this.front_dome_lights_on_is_valid = initObj.front_dome_lights_on_is_valid
      }
      else {
        this.front_dome_lights_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_dome_lights_on')) {
        this.rear_dome_lights_on = initObj.rear_dome_lights_on
      }
      else {
        this.rear_dome_lights_on = false;
      }
      if (initObj.hasOwnProperty('rear_dome_lights_on_is_valid')) {
        this.rear_dome_lights_on_is_valid = initObj.rear_dome_lights_on_is_valid
      }
      else {
        this.rear_dome_lights_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('mood_lights_on')) {
        this.mood_lights_on = initObj.mood_lights_on
      }
      else {
        this.mood_lights_on = false;
      }
      if (initObj.hasOwnProperty('mood_lights_on_is_valid')) {
        this.mood_lights_on_is_valid = initObj.mood_lights_on_is_valid
      }
      else {
        this.mood_lights_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('dim_level')) {
        this.dim_level = initObj.dim_level
      }
      else {
        this.dim_level = 0;
      }
      if (initObj.hasOwnProperty('dim_level_is_valid')) {
        this.dim_level_is_valid = initObj.dim_level_is_valid
      }
      else {
        this.dim_level_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteriorLightsRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_dome_lights_on]
    bufferOffset = _serializer.bool(obj.front_dome_lights_on, buffer, bufferOffset);
    // Serialize message field [front_dome_lights_on_is_valid]
    bufferOffset = _serializer.bool(obj.front_dome_lights_on_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_dome_lights_on]
    bufferOffset = _serializer.bool(obj.rear_dome_lights_on, buffer, bufferOffset);
    // Serialize message field [rear_dome_lights_on_is_valid]
    bufferOffset = _serializer.bool(obj.rear_dome_lights_on_is_valid, buffer, bufferOffset);
    // Serialize message field [mood_lights_on]
    bufferOffset = _serializer.bool(obj.mood_lights_on, buffer, bufferOffset);
    // Serialize message field [mood_lights_on_is_valid]
    bufferOffset = _serializer.bool(obj.mood_lights_on_is_valid, buffer, bufferOffset);
    // Serialize message field [dim_level]
    bufferOffset = _serializer.uint8(obj.dim_level, buffer, bufferOffset);
    // Serialize message field [dim_level_is_valid]
    bufferOffset = _serializer.bool(obj.dim_level_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteriorLightsRpt
    let len;
    let data = new InteriorLightsRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_dome_lights_on]
    data.front_dome_lights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_dome_lights_on_is_valid]
    data.front_dome_lights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_dome_lights_on]
    data.rear_dome_lights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_dome_lights_on_is_valid]
    data.rear_dome_lights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mood_lights_on]
    data.mood_lights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mood_lights_on_is_valid]
    data.mood_lights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dim_level]
    data.dim_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dim_level_is_valid]
    data.dim_level_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/InteriorLightsRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edb83c466d141d95fcc059ad99141e5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool front_dome_lights_on
    bool front_dome_lights_on_is_valid
    bool rear_dome_lights_on
    bool rear_dome_lights_on_is_valid
    bool mood_lights_on
    bool mood_lights_on_is_valid
    uint8 dim_level
    bool dim_level_is_valid
    
    uint8 DIM_LEVEL_MIN = 0
    uint8 DIM_LEVEL_1 = 1
    uint8 DIM_LEVEL_2 = 2
    uint8 DIM_LEVEL_3 = 3
    uint8 DIM_LEVEL_4 = 4
    uint8 DIM_LEVEL_5 = 5
    uint8 DIM_LEVEL_6 = 6
    uint8 DIM_LEVEL_7 = 7
    uint8 DIM_LEVEL_8 = 8
    uint8 DIM_LEVEL_9 = 9
    uint8 DIM_LEVEL_10 = 10
    uint8 DIM_LEVEL_11 = 11
    uint8 DIM_LEVEL_MAX = 12
    
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
    const resolved = new InteriorLightsRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_dome_lights_on !== undefined) {
      resolved.front_dome_lights_on = msg.front_dome_lights_on;
    }
    else {
      resolved.front_dome_lights_on = false
    }

    if (msg.front_dome_lights_on_is_valid !== undefined) {
      resolved.front_dome_lights_on_is_valid = msg.front_dome_lights_on_is_valid;
    }
    else {
      resolved.front_dome_lights_on_is_valid = false
    }

    if (msg.rear_dome_lights_on !== undefined) {
      resolved.rear_dome_lights_on = msg.rear_dome_lights_on;
    }
    else {
      resolved.rear_dome_lights_on = false
    }

    if (msg.rear_dome_lights_on_is_valid !== undefined) {
      resolved.rear_dome_lights_on_is_valid = msg.rear_dome_lights_on_is_valid;
    }
    else {
      resolved.rear_dome_lights_on_is_valid = false
    }

    if (msg.mood_lights_on !== undefined) {
      resolved.mood_lights_on = msg.mood_lights_on;
    }
    else {
      resolved.mood_lights_on = false
    }

    if (msg.mood_lights_on_is_valid !== undefined) {
      resolved.mood_lights_on_is_valid = msg.mood_lights_on_is_valid;
    }
    else {
      resolved.mood_lights_on_is_valid = false
    }

    if (msg.dim_level !== undefined) {
      resolved.dim_level = msg.dim_level;
    }
    else {
      resolved.dim_level = 0
    }

    if (msg.dim_level_is_valid !== undefined) {
      resolved.dim_level_is_valid = msg.dim_level_is_valid;
    }
    else {
      resolved.dim_level_is_valid = false
    }

    return resolved;
    }
};

// Constants for message
InteriorLightsRpt.Constants = {
  DIM_LEVEL_MIN: 0,
  DIM_LEVEL_1: 1,
  DIM_LEVEL_2: 2,
  DIM_LEVEL_3: 3,
  DIM_LEVEL_4: 4,
  DIM_LEVEL_5: 5,
  DIM_LEVEL_6: 6,
  DIM_LEVEL_7: 7,
  DIM_LEVEL_8: 8,
  DIM_LEVEL_9: 9,
  DIM_LEVEL_10: 10,
  DIM_LEVEL_11: 11,
  DIM_LEVEL_MAX: 12,
}

module.exports = InteriorLightsRpt;
