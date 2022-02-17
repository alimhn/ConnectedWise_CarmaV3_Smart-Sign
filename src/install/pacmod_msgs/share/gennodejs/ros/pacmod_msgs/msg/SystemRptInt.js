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

class SystemRptInt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enabled = null;
      this.override_active = null;
      this.command_output_fault = null;
      this.input_output_fault = null;
      this.output_reported_fault = null;
      this.pacmod_fault = null;
      this.vehicle_fault = null;
      this.manual_input = null;
      this.command = null;
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('override_active')) {
        this.override_active = initObj.override_active
      }
      else {
        this.override_active = false;
      }
      if (initObj.hasOwnProperty('command_output_fault')) {
        this.command_output_fault = initObj.command_output_fault
      }
      else {
        this.command_output_fault = false;
      }
      if (initObj.hasOwnProperty('input_output_fault')) {
        this.input_output_fault = initObj.input_output_fault
      }
      else {
        this.input_output_fault = false;
      }
      if (initObj.hasOwnProperty('output_reported_fault')) {
        this.output_reported_fault = initObj.output_reported_fault
      }
      else {
        this.output_reported_fault = false;
      }
      if (initObj.hasOwnProperty('pacmod_fault')) {
        this.pacmod_fault = initObj.pacmod_fault
      }
      else {
        this.pacmod_fault = false;
      }
      if (initObj.hasOwnProperty('vehicle_fault')) {
        this.vehicle_fault = initObj.vehicle_fault
      }
      else {
        this.vehicle_fault = false;
      }
      if (initObj.hasOwnProperty('manual_input')) {
        this.manual_input = initObj.manual_input
      }
      else {
        this.manual_input = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemRptInt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [override_active]
    bufferOffset = _serializer.bool(obj.override_active, buffer, bufferOffset);
    // Serialize message field [command_output_fault]
    bufferOffset = _serializer.bool(obj.command_output_fault, buffer, bufferOffset);
    // Serialize message field [input_output_fault]
    bufferOffset = _serializer.bool(obj.input_output_fault, buffer, bufferOffset);
    // Serialize message field [output_reported_fault]
    bufferOffset = _serializer.bool(obj.output_reported_fault, buffer, bufferOffset);
    // Serialize message field [pacmod_fault]
    bufferOffset = _serializer.bool(obj.pacmod_fault, buffer, bufferOffset);
    // Serialize message field [vehicle_fault]
    bufferOffset = _serializer.bool(obj.vehicle_fault, buffer, bufferOffset);
    // Serialize message field [manual_input]
    bufferOffset = _serializer.uint16(obj.manual_input, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint16(obj.command, buffer, bufferOffset);
    // Serialize message field [output]
    bufferOffset = _serializer.uint16(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemRptInt
    let len;
    let data = new SystemRptInt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [override_active]
    data.override_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [command_output_fault]
    data.command_output_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [input_output_fault]
    data.input_output_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [output_reported_fault]
    data.output_reported_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pacmod_fault]
    data.pacmod_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_fault]
    data.vehicle_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manual_input]
    data.manual_input = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [output]
    data.output = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/SystemRptInt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da718c3df94de6df3ce729dd13078d8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool enabled
    bool override_active
    bool command_output_fault
    bool input_output_fault
    bool output_reported_fault
    bool pacmod_fault
    bool vehicle_fault
    
    uint16 manual_input
    uint16 command
    uint16 output
    
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
    uint16 SHIFT_BETWEEN_GEARS = 5
    uint16 SHIFT_ERROR = 6
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
    const resolved = new SystemRptInt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.override_active !== undefined) {
      resolved.override_active = msg.override_active;
    }
    else {
      resolved.override_active = false
    }

    if (msg.command_output_fault !== undefined) {
      resolved.command_output_fault = msg.command_output_fault;
    }
    else {
      resolved.command_output_fault = false
    }

    if (msg.input_output_fault !== undefined) {
      resolved.input_output_fault = msg.input_output_fault;
    }
    else {
      resolved.input_output_fault = false
    }

    if (msg.output_reported_fault !== undefined) {
      resolved.output_reported_fault = msg.output_reported_fault;
    }
    else {
      resolved.output_reported_fault = false
    }

    if (msg.pacmod_fault !== undefined) {
      resolved.pacmod_fault = msg.pacmod_fault;
    }
    else {
      resolved.pacmod_fault = false
    }

    if (msg.vehicle_fault !== undefined) {
      resolved.vehicle_fault = msg.vehicle_fault;
    }
    else {
      resolved.vehicle_fault = false
    }

    if (msg.manual_input !== undefined) {
      resolved.manual_input = msg.manual_input;
    }
    else {
      resolved.manual_input = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = 0
    }

    return resolved;
    }
};

// Constants for message
SystemRptInt.Constants = {
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
  SHIFT_BETWEEN_GEARS: 5,
  SHIFT_ERROR: 6,
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

module.exports = SystemRptInt;