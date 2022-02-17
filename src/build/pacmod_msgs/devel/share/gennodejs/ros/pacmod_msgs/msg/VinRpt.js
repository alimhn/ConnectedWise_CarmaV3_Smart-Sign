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

class VinRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mfg_code = null;
      this.mfg = null;
      this.model_year_code = null;
      this.model_year = null;
      this.serial = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mfg_code')) {
        this.mfg_code = initObj.mfg_code
      }
      else {
        this.mfg_code = '';
      }
      if (initObj.hasOwnProperty('mfg')) {
        this.mfg = initObj.mfg
      }
      else {
        this.mfg = '';
      }
      if (initObj.hasOwnProperty('model_year_code')) {
        this.model_year_code = initObj.model_year_code
      }
      else {
        this.model_year_code = '';
      }
      if (initObj.hasOwnProperty('model_year')) {
        this.model_year = initObj.model_year
      }
      else {
        this.model_year = 0;
      }
      if (initObj.hasOwnProperty('serial')) {
        this.serial = initObj.serial
      }
      else {
        this.serial = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VinRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mfg_code]
    bufferOffset = _serializer.string(obj.mfg_code, buffer, bufferOffset);
    // Serialize message field [mfg]
    bufferOffset = _serializer.string(obj.mfg, buffer, bufferOffset);
    // Serialize message field [model_year_code]
    bufferOffset = _serializer.string(obj.model_year_code, buffer, bufferOffset);
    // Serialize message field [model_year]
    bufferOffset = _serializer.uint32(obj.model_year, buffer, bufferOffset);
    // Serialize message field [serial]
    bufferOffset = _serializer.uint32(obj.serial, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VinRpt
    let len;
    let data = new VinRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mfg_code]
    data.mfg_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mfg]
    data.mfg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_year_code]
    data.model_year_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_year]
    data.model_year = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [serial]
    data.serial = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.mfg_code);
    length += _getByteLength(object.mfg);
    length += _getByteLength(object.model_year_code);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/VinRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9adca84caaa097b32fc7b71a0ca8da36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    string mfg_code
    string mfg
    string model_year_code
    uint32 model_year
    uint32 serial
    
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
    const resolved = new VinRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mfg_code !== undefined) {
      resolved.mfg_code = msg.mfg_code;
    }
    else {
      resolved.mfg_code = ''
    }

    if (msg.mfg !== undefined) {
      resolved.mfg = msg.mfg;
    }
    else {
      resolved.mfg = ''
    }

    if (msg.model_year_code !== undefined) {
      resolved.model_year_code = msg.model_year_code;
    }
    else {
      resolved.model_year_code = ''
    }

    if (msg.model_year !== undefined) {
      resolved.model_year = msg.model_year;
    }
    else {
      resolved.model_year = 0
    }

    if (msg.serial !== undefined) {
      resolved.serial = msg.serial;
    }
    else {
      resolved.serial = 0
    }

    return resolved;
    }
};

module.exports = VinRpt;
