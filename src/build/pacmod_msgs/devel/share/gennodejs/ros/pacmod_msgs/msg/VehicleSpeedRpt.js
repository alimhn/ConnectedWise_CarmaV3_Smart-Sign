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

class VehicleSpeedRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_speed = null;
      this.vehicle_speed_valid = null;
      this.vehicle_speed_raw = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_speed')) {
        this.vehicle_speed = initObj.vehicle_speed
      }
      else {
        this.vehicle_speed = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_speed_valid')) {
        this.vehicle_speed_valid = initObj.vehicle_speed_valid
      }
      else {
        this.vehicle_speed_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_speed_raw')) {
        this.vehicle_speed_raw = initObj.vehicle_speed_raw
      }
      else {
        this.vehicle_speed_raw = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleSpeedRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_speed]
    bufferOffset = _serializer.float64(obj.vehicle_speed, buffer, bufferOffset);
    // Serialize message field [vehicle_speed_valid]
    bufferOffset = _serializer.bool(obj.vehicle_speed_valid, buffer, bufferOffset);
    // Check that the constant length array field [vehicle_speed_raw] has the right length
    if (obj.vehicle_speed_raw.length !== 2) {
      throw new Error('Unable to serialize array field vehicle_speed_raw - length must be 2')
    }
    // Serialize message field [vehicle_speed_raw]
    bufferOffset = _arraySerializer.uint8(obj.vehicle_speed_raw, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSpeedRpt
    let len;
    let data = new VehicleSpeedRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed]
    data.vehicle_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_valid]
    data.vehicle_speed_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_raw]
    data.vehicle_speed_raw = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/VehicleSpeedRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33c26f1bbea2c9136f0821ddc90cd049';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 vehicle_speed         # Measured vehicle speed
    bool vehicle_speed_valid      # Flag indicating if measured vehicle speed is valid
    uint8[2] vehicle_speed_raw    # Raw bytes from vehicle CAN bus                
    
    
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
    const resolved = new VehicleSpeedRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_speed !== undefined) {
      resolved.vehicle_speed = msg.vehicle_speed;
    }
    else {
      resolved.vehicle_speed = 0.0
    }

    if (msg.vehicle_speed_valid !== undefined) {
      resolved.vehicle_speed_valid = msg.vehicle_speed_valid;
    }
    else {
      resolved.vehicle_speed_valid = false
    }

    if (msg.vehicle_speed_raw !== undefined) {
      resolved.vehicle_speed_raw = msg.vehicle_speed_raw;
    }
    else {
      resolved.vehicle_speed_raw = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = VehicleSpeedRpt;
