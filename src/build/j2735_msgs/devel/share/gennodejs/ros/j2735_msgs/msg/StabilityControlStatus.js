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

class StabilityControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stability_control_status = null;
    }
    else {
      if (initObj.hasOwnProperty('stability_control_status')) {
        this.stability_control_status = initObj.stability_control_status
      }
      else {
        this.stability_control_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StabilityControlStatus
    // Serialize message field [stability_control_status]
    bufferOffset = _serializer.uint8(obj.stability_control_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StabilityControlStatus
    let len;
    let data = new StabilityControlStatus(null);
    // Deserialize message field [stability_control_status]
    data.stability_control_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/StabilityControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '350e65c5b8f0b2157c2ddfc4d46c5a68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # StabilityControlStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #StabilityControlStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Not Equipped with SC
    #                    --       or SC status is unavailable
    #   off         (1), -- B'01  Off
    #   on          (2), -- B'10  On or active (but not engaged)
    #   engaged     (3)  -- B'11  stability control is Engaged 
    #   }
    #   
    
    uint8  stability_control_status 
    
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
    const resolved = new StabilityControlStatus(null);
    if (msg.stability_control_status !== undefined) {
      resolved.stability_control_status = msg.stability_control_status;
    }
    else {
      resolved.stability_control_status = 0
    }

    return resolved;
    }
};

// Constants for message
StabilityControlStatus.Constants = {
  UNAVAILABLE: 0,
  OFF: 1,
  ON: 2,
  ENGAGED: 3,
}

module.exports = StabilityControlStatus;
