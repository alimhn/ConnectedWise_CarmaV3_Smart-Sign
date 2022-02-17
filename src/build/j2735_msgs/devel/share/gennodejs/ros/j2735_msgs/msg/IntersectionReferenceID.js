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

class IntersectionReferenceID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.region = null;
      this.region_exists = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('region')) {
        this.region = initObj.region
      }
      else {
        this.region = 0;
      }
      if (initObj.hasOwnProperty('region_exists')) {
        this.region_exists = initObj.region_exists
      }
      else {
        this.region_exists = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntersectionReferenceID
    // Serialize message field [region]
    bufferOffset = _serializer.uint16(obj.region, buffer, bufferOffset);
    // Serialize message field [region_exists]
    bufferOffset = _serializer.bool(obj.region_exists, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionReferenceID
    let len;
    let data = new IntersectionReferenceID(null);
    // Deserialize message field [region]
    data.region = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [region_exists]
    data.region_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/IntersectionReferenceID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab9a4df76e7acc4e7573572145314417';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # IntersectionReferenceID.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an
    # IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is
    # guaranteed to be globally unique.
    
    # region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)
    # -- a globally unique regional assignment value
    # -- typical assigned to a regional DOT authority
    # -- the value zero shall be used for testing needs
    # 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.
    uint16 region
    uint16 REGION_UNAVAILABLE=0
    bool region_exists
    
    # id IntersectionID ::= INTEGER (0..65535)
    # -- a unique mapping to the intersection
    # -- in question within the above region of use
    uint16 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntersectionReferenceID(null);
    if (msg.region !== undefined) {
      resolved.region = msg.region;
    }
    else {
      resolved.region = 0
    }

    if (msg.region_exists !== undefined) {
      resolved.region_exists = msg.region_exists;
    }
    else {
      resolved.region_exists = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

// Constants for message
IntersectionReferenceID.Constants = {
  REGION_UNAVAILABLE: 0,
}

module.exports = IntersectionReferenceID;
