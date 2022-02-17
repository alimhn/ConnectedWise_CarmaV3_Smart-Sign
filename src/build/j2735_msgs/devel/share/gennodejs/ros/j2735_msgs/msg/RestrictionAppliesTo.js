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

class RestrictionAppliesTo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.restriction_applies_to = null;
    }
    else {
      if (initObj.hasOwnProperty('restriction_applies_to')) {
        this.restriction_applies_to = initObj.restriction_applies_to
      }
      else {
        this.restriction_applies_to = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RestrictionAppliesTo
    // Serialize message field [restriction_applies_to]
    bufferOffset = _serializer.uint8(obj.restriction_applies_to, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestrictionAppliesTo
    let len;
    let data = new RestrictionAppliesTo(null);
    // Deserialize message field [restriction_applies_to]
    data.restriction_applies_to = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RestrictionAppliesTo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f780d757b384f158859481ce11f881e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RestrictionAppliesTo.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The RestrictionAppliesTo data element provides a short list of common vehicle
    # types which may have one or more special movements at an intersection. I
    #
    # RestrictionAppliesTo ::= ENUMERATED {
    # none, -- applies to nothing
    # equippedTransit, -- buses etc.
    # equippedTaxis,
    # equippedOther, -- other vehicle types with
    # 		-- necessary signal phase state
    # 		-- reception equipment
    # emissionCompliant, -- regional variants with more
    # 		-- definitive items also exist
    # equippedBicycle,
    # weightCompliant,
    # heightCompliant,
    # -- Items dealing with traveler needs serviced by the infrastructure
    # -- These end users (which are not vehicles) are presumed to be suitably equipped
    # pedestrians,
    # slowMovingPersons,
    # wheelchairUsers,
    # visualDisabilities,
    # audioDisabilities, -- hearing
    # otherUnknownDisabilities,
    # ...
    # }
    
    uint8 NONE=0
    uint8 EQUIPPEDTRANSIT=1
    uint8 EQUIPPEDTAXIS=2
    uint8 EQUIPPEDOTHER=3
    uint8 EMISSIONCOMPLIANT=4
    uint8 EQUIPPEDBICYCLE=5
    uint8 WEIGHTCOMPLIANT=6
    uint8 HEIGHTCOMPLIANT=7
    uint8 PEDESTRIANS=8
    uint8 SLOWMOVINGPERSONS=9
    uint8 WHEELCHAIRUSERS=10
    uint8 VISUALDISABILITIES=11
    uint8 AUDIODISABILITIES=12
    uint8 OTHERUNKNOWNDISABILITIES=13
    
    # Variable which can be used to store a type enum value.
    uint8 restriction_applies_to
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RestrictionAppliesTo(null);
    if (msg.restriction_applies_to !== undefined) {
      resolved.restriction_applies_to = msg.restriction_applies_to;
    }
    else {
      resolved.restriction_applies_to = 0
    }

    return resolved;
    }
};

// Constants for message
RestrictionAppliesTo.Constants = {
  NONE: 0,
  EQUIPPEDTRANSIT: 1,
  EQUIPPEDTAXIS: 2,
  EQUIPPEDOTHER: 3,
  EMISSIONCOMPLIANT: 4,
  EQUIPPEDBICYCLE: 5,
  WEIGHTCOMPLIANT: 6,
  HEIGHTCOMPLIANT: 7,
  PEDESTRIANS: 8,
  SLOWMOVINGPERSONS: 9,
  WHEELCHAIRUSERS: 10,
  VISUALDISABILITIES: 11,
  AUDIODISABILITIES: 12,
  OTHERUNKNOWNDISABILITIES: 13,
}

module.exports = RestrictionAppliesTo;
