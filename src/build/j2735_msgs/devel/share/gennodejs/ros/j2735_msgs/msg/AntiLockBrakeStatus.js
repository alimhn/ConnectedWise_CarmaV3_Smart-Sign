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

class AntiLockBrakeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.anti_lock_brake_status = null;
    }
    else {
      if (initObj.hasOwnProperty('anti_lock_brake_status')) {
        this.anti_lock_brake_status = initObj.anti_lock_brake_status
      }
      else {
        this.anti_lock_brake_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AntiLockBrakeStatus
    // Serialize message field [anti_lock_brake_status]
    bufferOffset = _serializer.uint8(obj.anti_lock_brake_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AntiLockBrakeStatus
    let len;
    let data = new AntiLockBrakeStatus(null);
    // Deserialize message field [anti_lock_brake_status]
    data.anti_lock_brake_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/AntiLockBrakeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10d3c69ab8bdca744a019c4c3fb22ac9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # AntiLockBrakeStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #AntiLockBrakeStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
    #                    --       or ABS Brakes status is unavailable
    #   off         (1), -- B'01  Vehicle's ABS are Off
    #   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
    #   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
    #   }
    #
    
    uint8  anti_lock_brake_status 
    
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
    const resolved = new AntiLockBrakeStatus(null);
    if (msg.anti_lock_brake_status !== undefined) {
      resolved.anti_lock_brake_status = msg.anti_lock_brake_status;
    }
    else {
      resolved.anti_lock_brake_status = 0
    }

    return resolved;
    }
};

// Constants for message
AntiLockBrakeStatus.Constants = {
  UNAVAILABLE: 0,
  OFF: 1,
  ON: 2,
  ENGAGED: 3,
}

module.exports = AntiLockBrakeStatus;
