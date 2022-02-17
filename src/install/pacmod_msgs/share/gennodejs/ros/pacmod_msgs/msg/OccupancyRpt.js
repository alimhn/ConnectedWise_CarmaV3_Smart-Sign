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

class OccupancyRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driver_seat_occupied = null;
      this.driver_seat_occupied_is_valid = null;
      this.passenger_seat_occupied = null;
      this.passenger_seat_occupied_is_valid = null;
      this.rear_seat_occupied = null;
      this.rear_seat_occupied_is_valid = null;
      this.driver_seatbelt_buckled = null;
      this.driver_seatbelt_buckled_is_valid = null;
      this.passenger_seatbelt_buckled = null;
      this.passenger_seatbelt_buckled_is_valid = null;
      this.rear_seatbelt_buckled = null;
      this.rear_seatbelt_buckled_is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('driver_seat_occupied')) {
        this.driver_seat_occupied = initObj.driver_seat_occupied
      }
      else {
        this.driver_seat_occupied = false;
      }
      if (initObj.hasOwnProperty('driver_seat_occupied_is_valid')) {
        this.driver_seat_occupied_is_valid = initObj.driver_seat_occupied_is_valid
      }
      else {
        this.driver_seat_occupied_is_valid = false;
      }
      if (initObj.hasOwnProperty('passenger_seat_occupied')) {
        this.passenger_seat_occupied = initObj.passenger_seat_occupied
      }
      else {
        this.passenger_seat_occupied = false;
      }
      if (initObj.hasOwnProperty('passenger_seat_occupied_is_valid')) {
        this.passenger_seat_occupied_is_valid = initObj.passenger_seat_occupied_is_valid
      }
      else {
        this.passenger_seat_occupied_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_seat_occupied')) {
        this.rear_seat_occupied = initObj.rear_seat_occupied
      }
      else {
        this.rear_seat_occupied = false;
      }
      if (initObj.hasOwnProperty('rear_seat_occupied_is_valid')) {
        this.rear_seat_occupied_is_valid = initObj.rear_seat_occupied_is_valid
      }
      else {
        this.rear_seat_occupied_is_valid = false;
      }
      if (initObj.hasOwnProperty('driver_seatbelt_buckled')) {
        this.driver_seatbelt_buckled = initObj.driver_seatbelt_buckled
      }
      else {
        this.driver_seatbelt_buckled = false;
      }
      if (initObj.hasOwnProperty('driver_seatbelt_buckled_is_valid')) {
        this.driver_seatbelt_buckled_is_valid = initObj.driver_seatbelt_buckled_is_valid
      }
      else {
        this.driver_seatbelt_buckled_is_valid = false;
      }
      if (initObj.hasOwnProperty('passenger_seatbelt_buckled')) {
        this.passenger_seatbelt_buckled = initObj.passenger_seatbelt_buckled
      }
      else {
        this.passenger_seatbelt_buckled = false;
      }
      if (initObj.hasOwnProperty('passenger_seatbelt_buckled_is_valid')) {
        this.passenger_seatbelt_buckled_is_valid = initObj.passenger_seatbelt_buckled_is_valid
      }
      else {
        this.passenger_seatbelt_buckled_is_valid = false;
      }
      if (initObj.hasOwnProperty('rear_seatbelt_buckled')) {
        this.rear_seatbelt_buckled = initObj.rear_seatbelt_buckled
      }
      else {
        this.rear_seatbelt_buckled = false;
      }
      if (initObj.hasOwnProperty('rear_seatbelt_buckled_is_valid')) {
        this.rear_seatbelt_buckled_is_valid = initObj.rear_seatbelt_buckled_is_valid
      }
      else {
        this.rear_seatbelt_buckled_is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OccupancyRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driver_seat_occupied]
    bufferOffset = _serializer.bool(obj.driver_seat_occupied, buffer, bufferOffset);
    // Serialize message field [driver_seat_occupied_is_valid]
    bufferOffset = _serializer.bool(obj.driver_seat_occupied_is_valid, buffer, bufferOffset);
    // Serialize message field [passenger_seat_occupied]
    bufferOffset = _serializer.bool(obj.passenger_seat_occupied, buffer, bufferOffset);
    // Serialize message field [passenger_seat_occupied_is_valid]
    bufferOffset = _serializer.bool(obj.passenger_seat_occupied_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_seat_occupied]
    bufferOffset = _serializer.bool(obj.rear_seat_occupied, buffer, bufferOffset);
    // Serialize message field [rear_seat_occupied_is_valid]
    bufferOffset = _serializer.bool(obj.rear_seat_occupied_is_valid, buffer, bufferOffset);
    // Serialize message field [driver_seatbelt_buckled]
    bufferOffset = _serializer.bool(obj.driver_seatbelt_buckled, buffer, bufferOffset);
    // Serialize message field [driver_seatbelt_buckled_is_valid]
    bufferOffset = _serializer.bool(obj.driver_seatbelt_buckled_is_valid, buffer, bufferOffset);
    // Serialize message field [passenger_seatbelt_buckled]
    bufferOffset = _serializer.bool(obj.passenger_seatbelt_buckled, buffer, bufferOffset);
    // Serialize message field [passenger_seatbelt_buckled_is_valid]
    bufferOffset = _serializer.bool(obj.passenger_seatbelt_buckled_is_valid, buffer, bufferOffset);
    // Serialize message field [rear_seatbelt_buckled]
    bufferOffset = _serializer.bool(obj.rear_seatbelt_buckled, buffer, bufferOffset);
    // Serialize message field [rear_seatbelt_buckled_is_valid]
    bufferOffset = _serializer.bool(obj.rear_seatbelt_buckled_is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OccupancyRpt
    let len;
    let data = new OccupancyRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driver_seat_occupied]
    data.driver_seat_occupied = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driver_seat_occupied_is_valid]
    data.driver_seat_occupied_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_seat_occupied]
    data.passenger_seat_occupied = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_seat_occupied_is_valid]
    data.passenger_seat_occupied_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_seat_occupied]
    data.rear_seat_occupied = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_seat_occupied_is_valid]
    data.rear_seat_occupied_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driver_seatbelt_buckled]
    data.driver_seatbelt_buckled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driver_seatbelt_buckled_is_valid]
    data.driver_seatbelt_buckled_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_seatbelt_buckled]
    data.passenger_seatbelt_buckled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passenger_seatbelt_buckled_is_valid]
    data.passenger_seatbelt_buckled_is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_seatbelt_buckled]
    data.rear_seatbelt_buckled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_seatbelt_buckled_is_valid]
    data.rear_seatbelt_buckled_is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/OccupancyRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0721e1bb580b55ac7fd96411e39adf3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool driver_seat_occupied
    bool driver_seat_occupied_is_valid
    bool passenger_seat_occupied
    bool passenger_seat_occupied_is_valid
    bool rear_seat_occupied
    bool rear_seat_occupied_is_valid
    bool driver_seatbelt_buckled
    bool driver_seatbelt_buckled_is_valid
    bool passenger_seatbelt_buckled
    bool passenger_seatbelt_buckled_is_valid
    bool rear_seatbelt_buckled
    bool rear_seatbelt_buckled_is_valid
    
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
    const resolved = new OccupancyRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.driver_seat_occupied !== undefined) {
      resolved.driver_seat_occupied = msg.driver_seat_occupied;
    }
    else {
      resolved.driver_seat_occupied = false
    }

    if (msg.driver_seat_occupied_is_valid !== undefined) {
      resolved.driver_seat_occupied_is_valid = msg.driver_seat_occupied_is_valid;
    }
    else {
      resolved.driver_seat_occupied_is_valid = false
    }

    if (msg.passenger_seat_occupied !== undefined) {
      resolved.passenger_seat_occupied = msg.passenger_seat_occupied;
    }
    else {
      resolved.passenger_seat_occupied = false
    }

    if (msg.passenger_seat_occupied_is_valid !== undefined) {
      resolved.passenger_seat_occupied_is_valid = msg.passenger_seat_occupied_is_valid;
    }
    else {
      resolved.passenger_seat_occupied_is_valid = false
    }

    if (msg.rear_seat_occupied !== undefined) {
      resolved.rear_seat_occupied = msg.rear_seat_occupied;
    }
    else {
      resolved.rear_seat_occupied = false
    }

    if (msg.rear_seat_occupied_is_valid !== undefined) {
      resolved.rear_seat_occupied_is_valid = msg.rear_seat_occupied_is_valid;
    }
    else {
      resolved.rear_seat_occupied_is_valid = false
    }

    if (msg.driver_seatbelt_buckled !== undefined) {
      resolved.driver_seatbelt_buckled = msg.driver_seatbelt_buckled;
    }
    else {
      resolved.driver_seatbelt_buckled = false
    }

    if (msg.driver_seatbelt_buckled_is_valid !== undefined) {
      resolved.driver_seatbelt_buckled_is_valid = msg.driver_seatbelt_buckled_is_valid;
    }
    else {
      resolved.driver_seatbelt_buckled_is_valid = false
    }

    if (msg.passenger_seatbelt_buckled !== undefined) {
      resolved.passenger_seatbelt_buckled = msg.passenger_seatbelt_buckled;
    }
    else {
      resolved.passenger_seatbelt_buckled = false
    }

    if (msg.passenger_seatbelt_buckled_is_valid !== undefined) {
      resolved.passenger_seatbelt_buckled_is_valid = msg.passenger_seatbelt_buckled_is_valid;
    }
    else {
      resolved.passenger_seatbelt_buckled_is_valid = false
    }

    if (msg.rear_seatbelt_buckled !== undefined) {
      resolved.rear_seatbelt_buckled = msg.rear_seatbelt_buckled;
    }
    else {
      resolved.rear_seatbelt_buckled = false
    }

    if (msg.rear_seatbelt_buckled_is_valid !== undefined) {
      resolved.rear_seatbelt_buckled_is_valid = msg.rear_seatbelt_buckled_is_valid;
    }
    else {
      resolved.rear_seatbelt_buckled_is_valid = false
    }

    return resolved;
    }
};

module.exports = OccupancyRpt;
