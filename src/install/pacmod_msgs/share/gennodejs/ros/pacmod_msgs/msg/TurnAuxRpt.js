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

class TurnAuxRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driver_blinker_bulb_on = null;
      this.driver_blinker_bulb_on_is_valid = null;
      this.passenger_blinker_bulb_on = null;
      this.passenger_blinker_bulb_on_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('driver_blinker_bulb_on')) {
        this.driver_blinker_bulb_on = initObj.driver_blinker_bulb_on
      }
      else {
        this.driver_blinker_bulb_on = false;
      }
      if (initObj.hasOwnProperty('driver_blinker_bulb_on_is_valid')) {
        this.driver_blinker_bulb_on_is_valid = initObj.driver_blinker_bulb_on_is_valid
      }
      else {
        this.driver_blinker_bulb_on_is_valid = false;
      }
      if (initObj.hasOwnProperty('passenger_blinker_bulb_on')) {
        this.passenger_blinker_bulb_on = initObj.passenger_blinker_bulb_on
      }
      else {
        this.passenger_blinker_bulb_on = false;
      }
      if (initObj.hasOwnProperty('passenger_blinker_bulb_on_is_valid')) {
        this.passenger_blinker_bulb_on_is_valid = initObj.passenger_blinker_bulb_on_is_valid
      }
      else {
        this.passenger_blinker_bulb_on_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnAuxRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driver_blinker_bulb_on]
    bufferOffset = _serializer.bool(obj.driver_blinker_bulb_on, buffer, bufferOffset);
    // Serialize message field [driver_blinker_bulb_on_is_valid]
    bufferOffset = _serializer.bool(obj.driver_blinker_bulb_on_is_valid, buffer, bufferOffset);
    // Serialize message field [passenger_blinker_bulb_on]
    bufferOffset = _serializer.bool(obj.passenger_blinker_bulb_on, buffer, bufferOffset);
    // Serialize message field [passenger_blinker_bulb_on_is_valid]
    bufferOffset = _serializer.bool(obj.passenger_blinker_bulb_on_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnAuxRpt
    let len;
    let data = new TurnAuxRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driver_blinker_bulb_on]
    data.driver_blinker_bulb_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driver_blinker_bulb_on_is_valid]
    data.driver_blinker_bulb_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_blinker_bulb_on]
    data.passenger_blinker_bulb_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_blinker_bulb_on_is_valid]
    data.passenger_blinker_bulb_on_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/TurnAuxRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c04dad80913279be4de094443dc50dca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool driver_blinker_bulb_on
    bool driver_blinker_bulb_on_is_valid
    bool passenger_blinker_bulb_on
    bool passenger_blinker_bulb_on_is_valid
    
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
    const resolved = new TurnAuxRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.driver_blinker_bulb_on !== undefined) {
      resolved.driver_blinker_bulb_on = msg.driver_blinker_bulb_on;
    }
    else {
      resolved.driver_blinker_bulb_on = false
    }

    if (msg.driver_blinker_bulb_on_is_valid !== undefined) {
      resolved.driver_blinker_bulb_on_is_valid = msg.driver_blinker_bulb_on_is_valid;
    }
    else {
      resolved.driver_blinker_bulb_on_is_valid = false
    }

    if (msg.passenger_blinker_bulb_on !== undefined) {
      resolved.passenger_blinker_bulb_on = msg.passenger_blinker_bulb_on;
    }
    else {
      resolved.passenger_blinker_bulb_on = false
    }

    if (msg.passenger_blinker_bulb_on_is_valid !== undefined) {
      resolved.passenger_blinker_bulb_on_is_valid = msg.passenger_blinker_bulb_on_is_valid;
    }
    else {
      resolved.passenger_blinker_bulb_on_is_valid = false
    }

    return resolved;
    }
};

module.exports = TurnAuxRpt;
