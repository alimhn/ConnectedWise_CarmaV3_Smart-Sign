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

class DoorRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driver_door_open = null;
      this.driver_door_open_is_valid = null;
      this.passenger_door_open = null;
      this.passenger_door_open_is_valid = null;
      this.rear_driver_door_open = null;
      this.rear_driver_door_open_is_valid = null;
      this.rear_passenger_door_open = null;
      this.rear_passenger_door_open_is_valid = null;
      this.hood_open = null;
      this.hood_open_is_valid = null;
      this.trunk_open = null;
      this.trunk_open_is_valid = null;
      this.fuel_door_open = null;
      this.fuel_door_open_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('driver_door_open')) {
        this.driver_door_open = initObj.driver_door_open
      }
      else {
        this.driver_door_open = false;
      }
      if (initObj.hasOwnProperty('driver_door_open_is_valid')) {
        this.driver_door_open_is_valid = initObj.driver_door_open_is_valid
      }
      else {
        this.driver_door_open_is_valid = false;
      }
      if (initObj.hasOwnProperty('passenger_door_open')) {
        this.passenger_door_open = initObj.passenger_door_open
      }
      else {
        this.passenger_door_open = false;
      }
      if (initObj.hasOwnProperty('passenger_door_open_is_valid')) {
        this.passenger_door_open_is_valid = initObj.passenger_door_open_is_valid
      }
      else {
        this.passenger_door_open_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_driver_door_open')) {
        this.rear_driver_door_open = initObj.rear_driver_door_open
      }
      else {
        this.rear_driver_door_open = false;
      }
      if (initObj.hasOwnProperty('rear_driver_door_open_is_valid')) {
        this.rear_driver_door_open_is_valid = initObj.rear_driver_door_open_is_valid
      }
      else {
        this.rear_driver_door_open_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_passenger_door_open')) {
        this.rear_passenger_door_open = initObj.rear_passenger_door_open
      }
      else {
        this.rear_passenger_door_open = false;
      }
      if (initObj.hasOwnProperty('rear_passenger_door_open_is_valid')) {
        this.rear_passenger_door_open_is_valid = initObj.rear_passenger_door_open_is_valid
      }
      else {
        this.rear_passenger_door_open_is_valid = false;
      }
      if (initObj.hasOwnProperty('hood_open')) {
        this.hood_open = initObj.hood_open
      }
      else {
        this.hood_open = false;
      }
      if (initObj.hasOwnProperty('hood_open_is_valid')) {
        this.hood_open_is_valid = initObj.hood_open_is_valid
      }
      else {
        this.hood_open_is_valid = false;
      }
      if (initObj.hasOwnProperty('trunk_open')) {
        this.trunk_open = initObj.trunk_open
      }
      else {
        this.trunk_open = false;
      }
      if (initObj.hasOwnProperty('trunk_open_is_valid')) {
        this.trunk_open_is_valid = initObj.trunk_open_is_valid
      }
      else {
        this.trunk_open_is_valid = false;
      }
      if (initObj.hasOwnProperty('fuel_door_open')) {
        this.fuel_door_open = initObj.fuel_door_open
      }
      else {
        this.fuel_door_open = false;
      }
      if (initObj.hasOwnProperty('fuel_door_open_is_valid')) {
        this.fuel_door_open_is_valid = initObj.fuel_door_open_is_valid
      }
      else {
        this.fuel_door_open_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driver_door_open]
    bufferOffset = _serializer.bool(obj.driver_door_open, buffer, bufferOffset);
    // Serialize message field [driver_door_open_is_valid]
    bufferOffset = _serializer.bool(obj.driver_door_open_is_valid, buffer, bufferOffset);
    // Serialize message field [passenger_door_open]
    bufferOffset = _serializer.bool(obj.passenger_door_open, buffer, bufferOffset);
    // Serialize message field [passenger_door_open_is_valid]
    bufferOffset = _serializer.bool(obj.passenger_door_open_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_driver_door_open]
    bufferOffset = _serializer.bool(obj.rear_driver_door_open, buffer, bufferOffset);
    // Serialize message field [rear_driver_door_open_is_valid]
    bufferOffset = _serializer.bool(obj.rear_driver_door_open_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_passenger_door_open]
    bufferOffset = _serializer.bool(obj.rear_passenger_door_open, buffer, bufferOffset);
    // Serialize message field [rear_passenger_door_open_is_valid]
    bufferOffset = _serializer.bool(obj.rear_passenger_door_open_is_valid, buffer, bufferOffset);
    // Serialize message field [hood_open]
    bufferOffset = _serializer.bool(obj.hood_open, buffer, bufferOffset);
    // Serialize message field [hood_open_is_valid]
    bufferOffset = _serializer.bool(obj.hood_open_is_valid, buffer, bufferOffset);
    // Serialize message field [trunk_open]
    bufferOffset = _serializer.bool(obj.trunk_open, buffer, bufferOffset);
    // Serialize message field [trunk_open_is_valid]
    bufferOffset = _serializer.bool(obj.trunk_open_is_valid, buffer, bufferOffset);
    // Serialize message field [fuel_door_open]
    bufferOffset = _serializer.bool(obj.fuel_door_open, buffer, bufferOffset);
    // Serialize message field [fuel_door_open_is_valid]
    bufferOffset = _serializer.bool(obj.fuel_door_open_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorRpt
    let len;
    let data = new DoorRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driver_door_open]
    data.driver_door_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driver_door_open_is_valid]
    data.driver_door_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_door_open]
    data.passenger_door_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_door_open_is_valid]
    data.passenger_door_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_driver_door_open]
    data.rear_driver_door_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_driver_door_open_is_valid]
    data.rear_driver_door_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_passenger_door_open]
    data.rear_passenger_door_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_passenger_door_open_is_valid]
    data.rear_passenger_door_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hood_open]
    data.hood_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hood_open_is_valid]
    data.hood_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trunk_open]
    data.trunk_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trunk_open_is_valid]
    data.trunk_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fuel_door_open]
    data.fuel_door_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fuel_door_open_is_valid]
    data.fuel_door_open_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/DoorRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2ffa235d04f8d5d5e349a5d9caead12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool driver_door_open
    bool driver_door_open_is_valid
    bool passenger_door_open
    bool passenger_door_open_is_valid
    bool rear_driver_door_open
    bool rear_driver_door_open_is_valid
    bool rear_passenger_door_open
    bool rear_passenger_door_open_is_valid
    bool hood_open
    bool hood_open_is_valid
    bool trunk_open
    bool trunk_open_is_valid
    bool fuel_door_open
    bool fuel_door_open_is_valid
    
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
    const resolved = new DoorRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.driver_door_open !== undefined) {
      resolved.driver_door_open = msg.driver_door_open;
    }
    else {
      resolved.driver_door_open = false
    }

    if (msg.driver_door_open_is_valid !== undefined) {
      resolved.driver_door_open_is_valid = msg.driver_door_open_is_valid;
    }
    else {
      resolved.driver_door_open_is_valid = false
    }

    if (msg.passenger_door_open !== undefined) {
      resolved.passenger_door_open = msg.passenger_door_open;
    }
    else {
      resolved.passenger_door_open = false
    }

    if (msg.passenger_door_open_is_valid !== undefined) {
      resolved.passenger_door_open_is_valid = msg.passenger_door_open_is_valid;
    }
    else {
      resolved.passenger_door_open_is_valid = false
    }

    if (msg.rear_driver_door_open !== undefined) {
      resolved.rear_driver_door_open = msg.rear_driver_door_open;
    }
    else {
      resolved.rear_driver_door_open = false
    }

    if (msg.rear_driver_door_open_is_valid !== undefined) {
      resolved.rear_driver_door_open_is_valid = msg.rear_driver_door_open_is_valid;
    }
    else {
      resolved.rear_driver_door_open_is_valid = false
    }

    if (msg.rear_passenger_door_open !== undefined) {
      resolved.rear_passenger_door_open = msg.rear_passenger_door_open;
    }
    else {
      resolved.rear_passenger_door_open = false
    }

    if (msg.rear_passenger_door_open_is_valid !== undefined) {
      resolved.rear_passenger_door_open_is_valid = msg.rear_passenger_door_open_is_valid;
    }
    else {
      resolved.rear_passenger_door_open_is_valid = false
    }

    if (msg.hood_open !== undefined) {
      resolved.hood_open = msg.hood_open;
    }
    else {
      resolved.hood_open = false
    }

    if (msg.hood_open_is_valid !== undefined) {
      resolved.hood_open_is_valid = msg.hood_open_is_valid;
    }
    else {
      resolved.hood_open_is_valid = false
    }

    if (msg.trunk_open !== undefined) {
      resolved.trunk_open = msg.trunk_open;
    }
    else {
      resolved.trunk_open = false
    }

    if (msg.trunk_open_is_valid !== undefined) {
      resolved.trunk_open_is_valid = msg.trunk_open_is_valid;
    }
    else {
      resolved.trunk_open_is_valid = false
    }

    if (msg.fuel_door_open !== undefined) {
      resolved.fuel_door_open = msg.fuel_door_open;
    }
    else {
      resolved.fuel_door_open = false
    }

    if (msg.fuel_door_open_is_valid !== undefined) {
      resolved.fuel_door_open_is_valid = msg.fuel_door_open_is_valid;
    }
    else {
      resolved.fuel_door_open_is_valid = false
    }

    return resolved;
    }
};

module.exports = DoorRpt;
