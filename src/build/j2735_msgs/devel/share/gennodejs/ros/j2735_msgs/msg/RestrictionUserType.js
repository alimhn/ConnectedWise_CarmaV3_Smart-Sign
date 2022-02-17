// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RestrictionAppliesTo = require('./RestrictionAppliesTo.js');

//-----------------------------------------------------------

class RestrictionUserType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.basicType = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('basicType')) {
        this.basicType = initObj.basicType
      }
      else {
        this.basicType = new RestrictionAppliesTo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RestrictionUserType
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [basicType]
    bufferOffset = RestrictionAppliesTo.serialize(obj.basicType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestrictionUserType
    let len;
    let data = new RestrictionUserType(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [basicType]
    data.basicType = RestrictionAppliesTo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RestrictionUserType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '886d7b957a34645ce9346153577d71fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RestrictionUserType.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class
    # from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to
    # indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this
    # class of user.
    
    # RestrictionUserType ::= CHOICE {
    # basicType RestrictionAppliesTo,
    # -- a set of the most commonly used types
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},
    # ...
    # }
    
    uint8 choice
    uint8 BASIC_TYPE=0
    uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.
    
    j2735_msgs/RestrictionAppliesTo basicType
    
    #regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    ================================================================================
    MSG: j2735_msgs/RestrictionAppliesTo
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
    const resolved = new RestrictionUserType(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.basicType !== undefined) {
      resolved.basicType = RestrictionAppliesTo.Resolve(msg.basicType)
    }
    else {
      resolved.basicType = new RestrictionAppliesTo()
    }

    return resolved;
    }
};

// Constants for message
RestrictionUserType.Constants = {
  BASIC_TYPE: 0,
  REGIONAL: 1,
}

module.exports = RestrictionUserType;
