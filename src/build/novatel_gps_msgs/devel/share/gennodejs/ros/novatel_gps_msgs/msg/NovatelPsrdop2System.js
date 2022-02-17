// Auto-generated. Do not edit!

// (in-package novatel_gps_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NovatelPsrdop2System {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.system = null;
      this.tdop = null;
    }
    else {
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = '';
      }
      if (initObj.hasOwnProperty('tdop')) {
        this.tdop = initObj.tdop
      }
      else {
        this.tdop = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NovatelPsrdop2System
    // Serialize message field [system]
    bufferOffset = _serializer.string(obj.system, buffer, bufferOffset);
    // Serialize message field [tdop]
    bufferOffset = _serializer.float32(obj.tdop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NovatelPsrdop2System
    let len;
    let data = new NovatelPsrdop2System(null);
    // Deserialize message field [system]
    data.system = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tdop]
    data.tdop = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.system);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_gps_msgs/NovatelPsrdop2System';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59dbc686e7d2261c67fc353e8280db4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GNSS System information provided by PSRDOP2 logs
    string system
    float32 tdop
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NovatelPsrdop2System(null);
    if (msg.system !== undefined) {
      resolved.system = msg.system;
    }
    else {
      resolved.system = ''
    }

    if (msg.tdop !== undefined) {
      resolved.tdop = msg.tdop;
    }
    else {
      resolved.tdop = 0.0
    }

    return resolved;
    }
};

module.exports = NovatelPsrdop2System;
