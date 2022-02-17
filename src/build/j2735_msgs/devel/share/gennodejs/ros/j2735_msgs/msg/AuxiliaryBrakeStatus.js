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

class AuxiliaryBrakeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auxiliary_brake_status = null;
    }
    else {
      if (initObj.hasOwnProperty('auxiliary_brake_status')) {
        this.auxiliary_brake_status = initObj.auxiliary_brake_status
      }
      else {
        this.auxiliary_brake_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxiliaryBrakeStatus
    // Serialize message field [auxiliary_brake_status]
    bufferOffset = _serializer.uint8(obj.auxiliary_brake_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxiliaryBrakeStatus
    let len;
    let data = new AuxiliaryBrakeStatus(null);
    // Deserialize message field [auxiliary_brake_status]
    data.auxiliary_brake_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/AuxiliaryBrakeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f347f9be77208a55630f9c2b43a80c65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # AuxiliaryBrakeStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #AuxiliaryBrakeStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
    #                    --       or Aux Brakes status is unavailable
    #   off         (1), -- B'01  Vehicle's Aux Brakes are Off
    #   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
    #   reserved    (3)  -- B'11 
    #   }   
    
    uint8  auxiliary_brake_status
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    uint8  RESERVED=3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxiliaryBrakeStatus(null);
    if (msg.auxiliary_brake_status !== undefined) {
      resolved.auxiliary_brake_status = msg.auxiliary_brake_status;
    }
    else {
      resolved.auxiliary_brake_status = 0
    }

    return resolved;
    }
};

// Constants for message
AuxiliaryBrakeStatus.Constants = {
  UNAVAILABLE: 0,
  OFF: 1,
  ON: 2,
  RESERVED: 3,
}

module.exports = AuxiliaryBrakeStatus;
