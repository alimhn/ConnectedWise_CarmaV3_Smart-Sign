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

class BrakeAppliedStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brake_applied_status = null;
    }
    else {
      if (initObj.hasOwnProperty('brake_applied_status')) {
        this.brake_applied_status = initObj.brake_applied_status
      }
      else {
        this.brake_applied_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeAppliedStatus
    // Serialize message field [brake_applied_status]
    bufferOffset = _serializer.uint8(obj.brake_applied_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeAppliedStatus
    let len;
    let data = new BrakeAppliedStatus(null);
    // Deserialize message field [brake_applied_status]
    data.brake_applied_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/BrakeAppliedStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9d951a3b57c116ca4befe0886581520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # BrakeAppliedStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    # 
    
    #BrakeAppliedStatus ::= BIT STRING {
    #   unavailable (0),  -- When set, the brake applied status is unavailable
    #   leftFront   (1),  -- Left Front Active
    #   leftRear    (2),  -- Left Rear Active
    #   rightFront  (3),  -- Right Front Active
    #   rightRear   (4)   -- Right Rear Active
    #   } (SIZE (5))
    #   
    
    uint8  brake_applied_status
    
    uint8 UNAVAILABLE=0
    uint8 LEFT_FRONT=1
    uint8 LEFT_REAR=2
    uint8 RIGHT_FRONT=3
    uint8 RIGHT_REAR=4
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeAppliedStatus(null);
    if (msg.brake_applied_status !== undefined) {
      resolved.brake_applied_status = msg.brake_applied_status;
    }
    else {
      resolved.brake_applied_status = 0
    }

    return resolved;
    }
};

// Constants for message
BrakeAppliedStatus.Constants = {
  UNAVAILABLE: 0,
  LEFT_FRONT: 1,
  LEFT_REAR: 2,
  RIGHT_FRONT: 3,
  RIGHT_REAR: 4,
}

module.exports = BrakeAppliedStatus;
