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

class AdvisorySpeedType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.advisory_speed_type = null;
    }
    else {
      if (initObj.hasOwnProperty('advisory_speed_type')) {
        this.advisory_speed_type = initObj.advisory_speed_type
      }
      else {
        this.advisory_speed_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdvisorySpeedType
    // Serialize message field [advisory_speed_type]
    bufferOffset = _serializer.uint8(obj.advisory_speed_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdvisorySpeedType
    let len;
    let data = new AdvisorySpeedType(null);
    // Deserialize message field [advisory_speed_type]
    data.advisory_speed_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/AdvisorySpeedType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2577b7d853d2b485bd9efc66a0050f71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # AdvisorySpeedType.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is
    # typically used as part of an AdvisorySpeed data frame for signal phase and timing data.
    #
    # AdvisorySpeedType ::= ENUMERATED {
    # none (0),
    # greenwave (1),
    # ecoDrive (2),
    # transit (3),
    # ...
    # } -- Note: subject to further growth
    
    uint8 advisory_speed_type
    
    uint8 NONE=0
    uint8 GREENWAVE=1
    uint8 ECODRIVE=2
    uint8 TRANSIT=3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdvisorySpeedType(null);
    if (msg.advisory_speed_type !== undefined) {
      resolved.advisory_speed_type = msg.advisory_speed_type;
    }
    else {
      resolved.advisory_speed_type = 0
    }

    return resolved;
    }
};

// Constants for message
AdvisorySpeedType.Constants = {
  NONE: 0,
  GREENWAVE: 1,
  ECODRIVE: 2,
  TRANSIT: 3,
}

module.exports = AdvisorySpeedType;
