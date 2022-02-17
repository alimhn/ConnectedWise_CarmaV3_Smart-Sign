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

class RoadSegmentReferenceID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.region = null;
      this.region_exists = null;
      this.id = null;
      this.id_exists = null;
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
      if (initObj.hasOwnProperty('id_exists')) {
        this.id_exists = initObj.id_exists
      }
      else {
        this.id_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadSegmentReferenceID
    // Serialize message field [region]
    bufferOffset = _serializer.uint16(obj.region, buffer, bufferOffset);
    // Serialize message field [region_exists]
    bufferOffset = _serializer.bool(obj.region_exists, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [id_exists]
    bufferOffset = _serializer.bool(obj.id_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadSegmentReferenceID
    let len;
    let data = new RoadSegmentReferenceID(null);
    // Deserialize message field [region]
    data.region = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [region_exists]
    data.region_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [id_exists]
    data.id_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RoadSegmentReferenceID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bf4691f490fdc19634fca26ef0c582f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RoadSegmentReferenceID.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_RoadSegmentReferenceID data frame is used to convey theRoadSegmentID which is unique to a given
    # road segment of interest, and also the RoadRegulatorID assigned to the region in which it is operating (when required).
    
    # RoadSegmentReferenceID ::= SEQUENCE {
    # region RoadRegulatorID OPTIONAL,
    # -- a globally unique regional assignment value
    # -- typically assigned to a regional DOT authority
    # -- the value zero shall be used for testing needs
    # id RoadSegmentID
    # -- a unique mapping to the road segment
    # -- in question within the above region of use
    # -- during its period of assignment and use
    # -- note that unlike intersectionID values,
    # -- this value can be reused by the region
    # }
    
    # RoadRegulatorID ::= INTEGER (0..65535)
    uint16 region
    bool region_exists
    
    # RoadSegmentID ::= INTEGER (0..65535)
    # -- The values zero to 255 shall be used for testing only
    # -- Note that the value assigned to an RoadSegment will be
    # -- unique within a given regional ID only during its use
    uint16 id
    bool id_exists
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadSegmentReferenceID(null);
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

    if (msg.id_exists !== undefined) {
      resolved.id_exists = msg.id_exists;
    }
    else {
      resolved.id_exists = false
    }

    return resolved;
    }
};

module.exports = RoadSegmentReferenceID;
