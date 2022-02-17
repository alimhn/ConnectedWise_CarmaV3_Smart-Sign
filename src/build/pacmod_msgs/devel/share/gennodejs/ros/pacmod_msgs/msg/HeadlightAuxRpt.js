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

class HeadlightAuxRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.headlights_on = null;
      this.headlights_on_is_valid = null;
      this.headlights_on_bright = null;
      this.headlights_on_bright_is_valid = null;
      this.fog_lights_on = null;
      this.fog_lights_on_is_valid = null;
      this.headlights_mode = null;
      this.headlights_mode_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('headlights_on')) {
        this.headlights_on = initObj.headlights_on
      }
      else {
        this.headlights_on = false;
      }
      if (initObj.hasOwnProperty('headlights_on_is_valid')) {
        this.headlights_on_is_valid = initObj.headlights_on_is_valid
      }
      else {
        this.headlights_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('headlights_on_bright')) {
        this.headlights_on_bright = initObj.headlights_on_bright
      }
      else {
        this.headlights_on_bright = false;
      }
      if (initObj.hasOwnProperty('headlights_on_bright_is_valid')) {
        this.headlights_on_bright_is_valid = initObj.headlights_on_bright_is_valid
      }
      else {
        this.headlights_on_bright_is_valid = false;
      }
      if (initObj.hasOwnProperty('fog_lights_on')) {
        this.fog_lights_on = initObj.fog_lights_on
      }
      else {
        this.fog_lights_on = false;
      }
      if (initObj.hasOwnProperty('fog_lights_on_is_valid')) {
        this.fog_lights_on_is_valid = initObj.fog_lights_on_is_valid
      }
      else {
        this.fog_lights_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('headlights_mode')) {
        this.headlights_mode = initObj.headlights_mode
      }
      else {
        this.headlights_mode = 0;
      }
      if (initObj.hasOwnProperty('headlights_mode_is_valid')) {
        this.headlights_mode_is_valid = initObj.headlights_mode_is_valid
      }
      else {
        this.headlights_mode_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadlightAuxRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [headlights_on]
    bufferOffset = _serializer.bool(obj.headlights_on, buffer, bufferOffset);
    // Serialize message field [headlights_on_is_valid]
    bufferOffset = _serializer.bool(obj.headlights_on_is_valid, buffer, bufferOffset);
    // Serialize message field [headlights_on_bright]
    bufferOffset = _serializer.bool(obj.headlights_on_bright, buffer, bufferOffset);
    // Serialize message field [headlights_on_bright_is_valid]
    bufferOffset = _serializer.bool(obj.headlights_on_bright_is_valid, buffer, bufferOffset);
    // Serialize message field [fog_lights_on]
    bufferOffset = _serializer.bool(obj.fog_lights_on, buffer, bufferOffset);
    // Serialize message field [fog_lights_on_is_valid]
    bufferOffset = _serializer.bool(obj.fog_lights_on_is_valid, buffer, bufferOffset);
    // Serialize message field [headlights_mode]
    bufferOffset = _serializer.uint8(obj.headlights_mode, buffer, bufferOffset);
    // Serialize message field [headlights_mode_is_valid]
    bufferOffset = _serializer.bool(obj.headlights_mode_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadlightAuxRpt
    let len;
    let data = new HeadlightAuxRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [headlights_on]
    data.headlights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [headlights_on_is_valid]
    data.headlights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [headlights_on_bright]
    data.headlights_on_bright = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [headlights_on_bright_is_valid]
    data.headlights_on_bright_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fog_lights_on]
    data.fog_lights_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fog_lights_on_is_valid]
    data.fog_lights_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [headlights_mode]
    data.headlights_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [headlights_mode_is_valid]
    data.headlights_mode_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/HeadlightAuxRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '512cf6494650979b84da331a515edaf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool headlights_on
    bool headlights_on_is_valid
    bool headlights_on_bright
    bool headlights_on_bright_is_valid
    bool fog_lights_on
    bool fog_lights_on_is_valid
    uint8 headlights_mode
    bool headlights_mode_is_valid
    
    uint8 HEADLIGHTS_OFF = 0
    uint8 HEADLIGHTS_PARKING = 1
    uint8 HEADLIGHTS_MANUAL = 2
    uint8 HEADLIGHTS_AUTO = 3
    
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
    const resolved = new HeadlightAuxRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.headlights_on !== undefined) {
      resolved.headlights_on = msg.headlights_on;
    }
    else {
      resolved.headlights_on = false
    }

    if (msg.headlights_on_is_valid !== undefined) {
      resolved.headlights_on_is_valid = msg.headlights_on_is_valid;
    }
    else {
      resolved.headlights_on_is_valid = false
    }

    if (msg.headlights_on_bright !== undefined) {
      resolved.headlights_on_bright = msg.headlights_on_bright;
    }
    else {
      resolved.headlights_on_bright = false
    }

    if (msg.headlights_on_bright_is_valid !== undefined) {
      resolved.headlights_on_bright_is_valid = msg.headlights_on_bright_is_valid;
    }
    else {
      resolved.headlights_on_bright_is_valid = false
    }

    if (msg.fog_lights_on !== undefined) {
      resolved.fog_lights_on = msg.fog_lights_on;
    }
    else {
      resolved.fog_lights_on = false
    }

    if (msg.fog_lights_on_is_valid !== undefined) {
      resolved.fog_lights_on_is_valid = msg.fog_lights_on_is_valid;
    }
    else {
      resolved.fog_lights_on_is_valid = false
    }

    if (msg.headlights_mode !== undefined) {
      resolved.headlights_mode = msg.headlights_mode;
    }
    else {
      resolved.headlights_mode = 0
    }

    if (msg.headlights_mode_is_valid !== undefined) {
      resolved.headlights_mode_is_valid = msg.headlights_mode_is_valid;
    }
    else {
      resolved.headlights_mode_is_valid = false
    }

    return resolved;
    }
};

// Constants for message
HeadlightAuxRpt.Constants = {
  HEADLIGHTS_OFF: 0,
  HEADLIGHTS_PARKING: 1,
  HEADLIGHTS_MANUAL: 2,
  HEADLIGHTS_AUTO: 3,
}

module.exports = HeadlightAuxRpt;
