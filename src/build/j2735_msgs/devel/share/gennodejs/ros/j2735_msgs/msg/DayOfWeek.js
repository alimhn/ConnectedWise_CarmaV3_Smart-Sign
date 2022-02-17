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

class DayOfWeek {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dow = null;
    }
    else {
      if (initObj.hasOwnProperty('dow')) {
        this.dow = initObj.dow
      }
      else {
        this.dow = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DayOfWeek
    // Check that the constant length array field [dow] has the right length
    if (obj.dow.length !== 7) {
      throw new Error('Unable to serialize array field dow - length must be 7')
    }
    // Serialize message field [dow]
    bufferOffset = _arraySerializer.uint8(obj.dow, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DayOfWeek
    let len;
    let data = new DayOfWeek(null);
    // Deserialize message field [dow]
    data.dow = _arrayDeserializer.uint8(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/DayOfWeek';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f02f8ee3b681fb434a4b191ed968fae8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # DayOfWeek.msg
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
    
    # DayOfWeek ::= BIT STRING //only J
    # {
    # 	sun (6), 
    # 	mon (5), 
    # 	tue (4), 
    # 	wed (3), 
    # 	thu (2), 
    # 	fri (1), 
    # 	sat (0)
    # }
    
    uint8[7] dow
    
    # enumeration values for day of week
    uint8 SUN = 6  
    uint8 MON = 5
    uint8 TUE = 4  
    uint8 WED = 3  
    uint8 THU = 2  
    uint8 FRI = 1  
    uint8 SAT = 0
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DayOfWeek(null);
    if (msg.dow !== undefined) {
      resolved.dow = msg.dow;
    }
    else {
      resolved.dow = new Array(7).fill(0)
    }

    return resolved;
    }
};

// Constants for message
DayOfWeek.Constants = {
  SUN: 6,
  MON: 5,
  TUE: 4,
  WED: 3,
  THU: 2,
  FRI: 1,
  SAT: 0,
}

module.exports = DayOfWeek;
