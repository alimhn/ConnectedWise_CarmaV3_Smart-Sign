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

class SystemCmdInt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enable = null;
      this.ignore_overrides = null;
      this.clear_override = null;
      this.clear_faults = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('ignore_overrides')) {
        this.ignore_overrides = initObj.ignore_overrides
      }
      else {
        this.ignore_overrides = false;
      }
      if (initObj.hasOwnProperty('clear_override')) {
        this.clear_override = initObj.clear_override
      }
      else {
        this.clear_override = false;
      }
      if (initObj.hasOwnProperty('clear_faults')) {
        this.clear_faults = initObj.clear_faults
      }
      else {
        this.clear_faults = false;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemCmdInt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [ignore_overrides]
    bufferOffset = _serializer.bool(obj.ignore_overrides, buffer, bufferOffset);
    // Serialize message field [clear_override]
    bufferOffset = _serializer.bool(obj.clear_override, buffer, bufferOffset);
    // Serialize message field [clear_faults]
    bufferOffset = _serializer.bool(obj.clear_faults, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint16(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemCmdInt
    let len;
    let data = new SystemCmdInt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ignore_overrides]
    data.ignore_overrides = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_override]
    data.clear_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_faults]
    data.clear_faults = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/SystemCmdInt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '843586c2df7a468d7cc89fb9df7fa2c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool enable
    bool ignore_overrides
    bool clear_override
    bool clear_faults
    
    uint16 command
    
    uint16 CRUISE_CONTROL_NONE = 0
    uint16 CRUISE_CONTROL_CNCL = 1
    uint16 CRUISE_CONTROL_ACC_FURTHER = 2
    uint16 CRUISE_CONTROL_ACC_CLOSER = 3
    uint16 CRUISE_CONTROL_SET_DEC = 4
    uint16 CRUISE_CONTROL_RES_INC = 5
    
    uint16 DASH_CONTROL_NONE = 0
    uint16 DASH_CONTROL_OK = 1
    uint16 DASH_CONTROL_LEFT = 2
    uint16 DASH_CONTROL_RIGHT = 3
    uint16 DASH_CONTROL_UP = 4
    uint16 DASH_CONTROL_DOWN = 5
    
    uint16 HEADLIGHTS_OFF = 0
    uint16 HEADLIGHTS_PARKING_ONLY = 1
    uint16 HEADLIGHTS_MANUAL_LOW = 2
    uint16 HEADLIGHTS_MANUAL_HIGH = 3
    uint16 HEADLIGHTS_AUTO_LOW = 4
    uint16 HEADLIGHTS_AUTO_HIGH = 5
    
    uint16 MEDIA_CONTROL_NONE = 0
    uint16 MEDIA_CONTROL_VOICE_COMMAND = 1
    uint16 MEDIA_CONTROL_MUTE = 2
    uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3
    uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4
    uint16 MEDIA_CONTROL_VOL_UP = 5
    uint16 MEDIA_CONTROL_VOL_DOWN = 6
    
    uint16 SHIFT_PARK = 0
    uint16 SHIFT_REVERSE = 1
    uint16 SHIFT_NEUTRAL = 2
    uint16 SHIFT_HIGH = 3
    uint16 SHIFT_FORWARD = 3
    uint16 SHIFT_LOW = 4
    uint16 SHIFT_NONE = 7
    
    uint16 TURN_RIGHT = 0
    uint16 TURN_NONE = 1
    uint16 TURN_LEFT = 2
    uint16 TURN_HAZARDS = 3
    
    uint16 DOOR_NEUTRAL = 0
    uint16 DOOR_OPEN = 1
    uint16 DOOR_CLOSE = 2
    
    uint16 WIPERS_OFF = 0
    uint16 WIPERS_INT_1 = 1
    uint16 WIPERS_INT_2 = 2
    uint16 WIPERS_INT_3 = 3
    uint16 WIPERS_INT_4 = 4
    uint16 WIPERS_INT_5 = 5
    uint16 WIPERS_INT_6 = 6
    uint16 WIPERS_MEDIUM = 7
    uint16 WIPERS_HIGH = 8
    
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
    const resolved = new SystemCmdInt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.ignore_overrides !== undefined) {
      resolved.ignore_overrides = msg.ignore_overrides;
    }
    else {
      resolved.ignore_overrides = false
    }

    if (msg.clear_override !== undefined) {
      resolved.clear_override = msg.clear_override;
    }
    else {
      resolved.clear_override = false
    }

    if (msg.clear_faults !== undefined) {
      resolved.clear_faults = msg.clear_faults;
    }
    else {
      resolved.clear_faults = false
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

// Constants for message
SystemCmdInt.Constants = {
  CRUISE_CONTROL_NONE: 0,
  CRUISE_CONTROL_CNCL: 1,
  CRUISE_CONTROL_ACC_FURTHER: 2,
  CRUISE_CONTROL_ACC_CLOSER: 3,
  CRUISE_CONTROL_SET_DEC: 4,
  CRUISE_CONTROL_RES_INC: 5,
  DASH_CONTROL_NONE: 0,
  DASH_CONTROL_OK: 1,
  DASH_CONTROL_LEFT: 2,
  DASH_CONTROL_RIGHT: 3,
  DASH_CONTROL_UP: 4,
  DASH_CONTROL_DOWN: 5,
  HEADLIGHTS_OFF: 0,
  HEADLIGHTS_PARKING_ONLY: 1,
  HEADLIGHTS_MANUAL_LOW: 2,
  HEADLIGHTS_MANUAL_HIGH: 3,
  HEADLIGHTS_AUTO_LOW: 4,
  HEADLIGHTS_AUTO_HIGH: 5,
  MEDIA_CONTROL_NONE: 0,
  MEDIA_CONTROL_VOICE_COMMAND: 1,
  MEDIA_CONTROL_MUTE: 2,
  MEDIA_CONTROL_PREV_TRACK_ANSWER: 3,
  MEDIA_CONTROL_NEXT_TRACK_HANG_UP: 4,
  MEDIA_CONTROL_VOL_UP: 5,
  MEDIA_CONTROL_VOL_DOWN: 6,
  SHIFT_PARK: 0,
  SHIFT_REVERSE: 1,
  SHIFT_NEUTRAL: 2,
  SHIFT_HIGH: 3,
  SHIFT_FORWARD: 3,
  SHIFT_LOW: 4,
  SHIFT_NONE: 7,
  TURN_RIGHT: 0,
  TURN_NONE: 1,
  TURN_LEFT: 2,
  TURN_HAZARDS: 3,
  DOOR_NEUTRAL: 0,
  DOOR_OPEN: 1,
  DOOR_CLOSE: 2,
  WIPERS_OFF: 0,
  WIPERS_INT_1: 1,
  WIPERS_INT_2: 2,
  WIPERS_INT_3: 3,
  WIPERS_INT_4: 4,
  WIPERS_INT_5: 5,
  WIPERS_INT_6: 6,
  WIPERS_MEDIUM: 7,
  WIPERS_HIGH: 8,
}

module.exports = SystemCmdInt;
