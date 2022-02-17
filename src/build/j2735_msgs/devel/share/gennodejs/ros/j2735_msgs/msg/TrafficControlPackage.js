// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Id128b = require('./Id128b.js');

//-----------------------------------------------------------

class TrafficControlPackage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.label_exists = null;
      this.tcids = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('label_exists')) {
        this.label_exists = initObj.label_exists
      }
      else {
        this.label_exists = false;
      }
      if (initObj.hasOwnProperty('tcids')) {
        this.tcids = initObj.tcids
      }
      else {
        this.tcids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlPackage
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [label_exists]
    bufferOffset = _serializer.bool(obj.label_exists, buffer, bufferOffset);
    // Serialize message field [tcids]
    // Serialize the length for message field [tcids]
    bufferOffset = _serializer.uint32(obj.tcids.length, buffer, bufferOffset);
    obj.tcids.forEach((val) => {
      bufferOffset = Id128b.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlPackage
    let len;
    let data = new TrafficControlPackage(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [label_exists]
    data.label_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tcids]
    // Deserialize array length for message field [tcids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tcids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tcids[i] = Id128b.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    length += 16 * object.tcids.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlPackage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd983631799aa912d10b4a250bae5780';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlPackage.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # 
    # @version 0.1
    #
    # Description
    # ...
    
    # TrafficControlPackage ::= SEQUENCE
    # {
    # 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
    # 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
    # }
    
    # label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
    string label
    
    bool label_exists
    
    # tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
    j2735_msgs/Id128b[] tcids
    
    ================================================================================
    MSG: j2735_msgs/Id128b
    #
    # Id128b.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # 
    # @version 0.1
    #
    # Description
    # ...
    
    # Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids
    
    uint8[16] id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficControlPackage(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.label_exists !== undefined) {
      resolved.label_exists = msg.label_exists;
    }
    else {
      resolved.label_exists = false
    }

    if (msg.tcids !== undefined) {
      resolved.tcids = new Array(msg.tcids.length);
      for (let i = 0; i < resolved.tcids.length; ++i) {
        resolved.tcids[i] = Id128b.Resolve(msg.tcids[i]);
      }
    }
    else {
      resolved.tcids = []
    }

    return resolved;
    }
};

module.exports = TrafficControlPackage;
