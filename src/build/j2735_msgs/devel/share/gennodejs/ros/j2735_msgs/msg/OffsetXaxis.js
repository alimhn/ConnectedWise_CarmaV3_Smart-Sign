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

class OffsetXaxis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.small = null;
      this.large = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('small')) {
        this.small = initObj.small
      }
      else {
        this.small = 0;
      }
      if (initObj.hasOwnProperty('large')) {
        this.large = initObj.large
      }
      else {
        this.large = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OffsetXaxis
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [small]
    bufferOffset = _serializer.int16(obj.small, buffer, bufferOffset);
    // Serialize message field [large]
    bufferOffset = _serializer.int16(obj.large, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OffsetXaxis
    let len;
    let data = new OffsetXaxis(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [small]
    data.small = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [large]
    data.large = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/OffsetXaxis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c890b94cd43f65cd23f448bf170a405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # OffsetXaxis.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    # offsetXaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    
    
    uint8 choice
    uint8 SMALL=0
    uint8 LARGE=1
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    int16 small
    
    
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    int16 large
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OffsetXaxis(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.small !== undefined) {
      resolved.small = msg.small;
    }
    else {
      resolved.small = 0
    }

    if (msg.large !== undefined) {
      resolved.large = msg.large;
    }
    else {
      resolved.large = 0
    }

    return resolved;
    }
};

// Constants for message
OffsetXaxis.Constants = {
  SMALL: 0,
  LARGE: 1,
}

module.exports = OffsetXaxis;
