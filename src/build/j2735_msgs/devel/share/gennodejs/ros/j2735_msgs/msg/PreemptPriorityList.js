// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SignalControlZone = require('./SignalControlZone.js');

//-----------------------------------------------------------

class PreemptPriorityList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.preempt_priority_list = null;
    }
    else {
      if (initObj.hasOwnProperty('preempt_priority_list')) {
        this.preempt_priority_list = initObj.preempt_priority_list
      }
      else {
        this.preempt_priority_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PreemptPriorityList
    // Serialize message field [preempt_priority_list]
    // Serialize the length for message field [preempt_priority_list]
    bufferOffset = _serializer.uint32(obj.preempt_priority_list.length, buffer, bufferOffset);
    obj.preempt_priority_list.forEach((val) => {
      bufferOffset = SignalControlZone.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PreemptPriorityList
    let len;
    let data = new PreemptPriorityList(null);
    // Deserialize message field [preempt_priority_list]
    // Deserialize array length for message field [preempt_priority_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.preempt_priority_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.preempt_priority_list[i] = SignalControlZone.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 0 * object.preempt_priority_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/PreemptPriorityList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '540868150c1511ed84c0943e75886b4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # PreemptPriorityList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_PreemptPriorityList data frame consists of a list of RegionalSignalControlZone entries.
    #
    # PreemptPriorityList ::= SEQUENCE (SIZE(1..32)) OF SignalControlZone
    #
    #
    
    j2735_msgs/SignalControlZone[] preempt_priority_list
    
    
    ================================================================================
    MSG: j2735_msgs/SignalControlZone
    #
    # SignalControlZone.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # SignalControlZone ::= SEQUENCE {
    # zone RegionalExtension {{REGION.Reg-SignalControlZone}},
    # ...
    # }
    #
    # regional_extension  #TODO: RegionalExtensions are not yet implemented in asn1c
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PreemptPriorityList(null);
    if (msg.preempt_priority_list !== undefined) {
      resolved.preempt_priority_list = new Array(msg.preempt_priority_list.length);
      for (let i = 0; i < resolved.preempt_priority_list.length; ++i) {
        resolved.preempt_priority_list[i] = SignalControlZone.Resolve(msg.preempt_priority_list[i]);
      }
    }
    else {
      resolved.preempt_priority_list = []
    }

    return resolved;
    }
};

module.exports = PreemptPriorityList;
