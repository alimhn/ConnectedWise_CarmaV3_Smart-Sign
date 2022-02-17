// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PathNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.z_exists = null;
      this.width = null;
      this.width_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0;
      }
      if (initObj.hasOwnProperty('z_exists')) {
        this.z_exists = initObj.z_exists
      }
      else {
        this.z_exists = false;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('width_exists')) {
        this.width_exists = initObj.width_exists
      }
      else {
        this.width_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathNode
    // Serialize message field [x]
    bufferOffset = _serializer.int16(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int16(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.int16(obj.z, buffer, bufferOffset);
    // Serialize message field [z_exists]
    bufferOffset = _serializer.bool(obj.z_exists, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int8(obj.width, buffer, bufferOffset);
    // Serialize message field [width_exists]
    bufferOffset = _serializer.bool(obj.width_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathNode
    let len;
    let data = new PathNode(null);
    // Deserialize message field [x]
    data.x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [z_exists]
    data.z_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [width_exists]
    data.width_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/PathNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a67109c239b97f03cda3ba46da2c080';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # PathNode.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # @author Misheel Bayartsengel
    # @version 0.1
    #
    # The positive x direction proceeds eastward, positive y proceeds
    # northward, and positive z proceeds away from the center of the Earth. 
    
    # X ::= INTEGER (-32768..32767)
    #   -- units are in cm
    int16 x
    int16 y
    int16 z
    
    bool z_exists
    
    # Width ::= INTEGER (-128..127)
    #   -- units are in cm
    int8 width
    bool width_exists
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathNode(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0
    }

    if (msg.z_exists !== undefined) {
      resolved.z_exists = msg.z_exists;
    }
    else {
      resolved.z_exists = false
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.width_exists !== undefined) {
      resolved.width_exists = msg.width_exists;
    }
    else {
      resolved.width_exists = false
    }

    return resolved;
    }
};

module.exports = PathNode;
