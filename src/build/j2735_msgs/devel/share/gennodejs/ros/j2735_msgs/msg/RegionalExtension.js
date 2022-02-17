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

class RegionalExtension {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegionalExtension
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegionalExtension
    let len;
    let data = new RegionalExtension(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RegionalExtension';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RegionalExtension.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    #
    # The formal definition used by each regional extension point follows the style of a unique indexing
    # integer and a type definition bound into a set.
    
    # RegionalExtension {REG-EXT-ID-AND-TYPE : Set} ::= SEQUENCE {
    # regionId REG-EXT-ID-AND-TYPE.&id( {Set} ),
    # regExtValue REG-EXT-ID-AND-TYPE.&Type( {Set} {@regionId} )
    # }
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegionalExtension(null);
    return resolved;
    }
};

module.exports = RegionalExtension;
