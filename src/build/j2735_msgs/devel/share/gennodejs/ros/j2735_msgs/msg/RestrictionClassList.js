// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RestrictionClassAssignment = require('./RestrictionClassAssignment.js');

//-----------------------------------------------------------

class RestrictionClassList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.restriction_class_list = null;
    }
    else {
      if (initObj.hasOwnProperty('restriction_class_list')) {
        this.restriction_class_list = initObj.restriction_class_list
      }
      else {
        this.restriction_class_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RestrictionClassList
    // Serialize message field [restriction_class_list]
    // Serialize the length for message field [restriction_class_list]
    bufferOffset = _serializer.uint32(obj.restriction_class_list.length, buffer, bufferOffset);
    obj.restriction_class_list.forEach((val) => {
      bufferOffset = RestrictionClassAssignment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestrictionClassList
    let len;
    let data = new RestrictionClassList(null);
    // Deserialize message field [restriction_class_list]
    // Deserialize array length for message field [restriction_class_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.restriction_class_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.restriction_class_list[i] = RestrictionClassAssignment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.restriction_class_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RestrictionClassList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39c5820cd159fd97238dd797c4d5b5d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RestrictionClassList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_RestrictionClassList data frame is used to enumerate a list of user classes which belong to a given
    # assigned index. The resulting collection is treated as a group by the signal controller when it issues movement data
    # (signal phase information) with the GroupID for this group. This data frame is typically static for long periods of time
    # (months) and conveyed to the user by means of the MAP message.
    
    # RestrictionClassList ::= SEQUENCE (SIZE(1..254)) OF RestrictionClassAssignment
    
    j2735_msgs/RestrictionClassAssignment[] restriction_class_list
    ================================================================================
    MSG: j2735_msgs/RestrictionClassAssignment
    #
    # RestrictionClassAssignment.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_RestrictionClassAssignment data frame is used to assign (or bind) a single RestrictionClassID data
    # element to a list of all user classes to which it applies. A collection of these bindings is conveyed in the
    # RestrictionClassList data frame in the MAP message to travelers.
    #
    # RestrictionClassAssignment ::= SEQUENCE {
    # id RestrictionClassID,
    # -- the unique value (within an intersection or local region)
    # -- that is assigned to this group of users
    # users RestrictionUserTypeList
    # -- The list of user types/classes
    # -- to which this restriction ID applies
    # }
    
    # RestrictionClassID ::= INTEGER (0..255)
    uint8 id
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RestrictionClassList(null);
    if (msg.restriction_class_list !== undefined) {
      resolved.restriction_class_list = new Array(msg.restriction_class_list.length);
      for (let i = 0; i < resolved.restriction_class_list.length; ++i) {
        resolved.restriction_class_list[i] = RestrictionClassAssignment.Resolve(msg.restriction_class_list[i]);
      }
    }
    else {
      resolved.restriction_class_list = []
    }

    return resolved;
    }
};

module.exports = RestrictionClassList;
