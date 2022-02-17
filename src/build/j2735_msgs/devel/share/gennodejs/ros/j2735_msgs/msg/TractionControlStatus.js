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

class TractionControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traction_control_status = null;
    }
    else {
      if (initObj.hasOwnProperty('traction_control_status')) {
        this.traction_control_status = initObj.traction_control_status
      }
      else {
        this.traction_control_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TractionControlStatus
    // Serialize message field [traction_control_status]
    bufferOffset = _serializer.uint8(obj.traction_control_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TractionControlStatus
    let len;
    let data = new TractionControlStatus(null);
    // Deserialize message field [traction_control_status]
    data.traction_control_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TractionControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fbf2d5faa10e86d446d2450b8536b24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TractionControlStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #TractionControlStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Not Equipped with traction control 
    #                    --       or traction control status is unavailable
    #   off         (1), -- B'01  traction control is Off
    #   on          (2), -- B'10  traction control is On (but not Engaged)
    #   engaged     (3)  -- B'11  traction control is Engaged
    #   }
    #
    
    uint8  traction_control_status 
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    uint8  ENGAGED=3
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TractionControlStatus(null);
    if (msg.traction_control_status !== undefined) {
      resolved.traction_control_status = msg.traction_control_status;
    }
    else {
      resolved.traction_control_status = 0
    }

    return resolved;
    }
};

// Constants for message
TractionControlStatus.Constants = {
  UNAVAILABLE: 0,
  OFF: 1,
  ON: 2,
  ENGAGED: 3,
}

module.exports = TractionControlStatus;
