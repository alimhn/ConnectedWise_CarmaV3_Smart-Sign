// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RestrictionUserType = require('./RestrictionUserType.js');

//-----------------------------------------------------------

class RestrictionUserTypeList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.restriction_user_type_list = null;
    }
    else {
      if (initObj.hasOwnProperty('restriction_user_type_list')) {
        this.restriction_user_type_list = initObj.restriction_user_type_list
      }
      else {
        this.restriction_user_type_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RestrictionUserTypeList
    // Serialize message field [restriction_user_type_list]
    // Serialize the length for message field [restriction_user_type_list]
    bufferOffset = _serializer.uint32(obj.restriction_user_type_list.length, buffer, bufferOffset);
    obj.restriction_user_type_list.forEach((val) => {
      bufferOffset = RestrictionUserType.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestrictionUserTypeList
    let len;
    let data = new RestrictionUserTypeList(null);
    // Deserialize message field [restriction_user_type_list]
    // Deserialize array length for message field [restriction_user_type_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.restriction_user_type_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.restriction_user_type_list[i] = RestrictionUserType.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.restriction_user_type_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RestrictionUserTypeList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a32a9320c1ecb531ad83962d3922563';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RestrictionUserTypeList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_RestrictionUserTypeList data frame consists of a list of RestrictionUserType entries.
    #
    # RestrictionUserTypeList ::= SEQUENCE (SIZE(1..16)) OF RestrictionUserType
    
    j2735_msgs/RestrictionUserType[] restriction_user_type_list
    ================================================================================
    MSG: j2735_msgs/RestrictionUserType
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
    const resolved = new RestrictionUserTypeList(null);
    if (msg.restriction_user_type_list !== undefined) {
      resolved.restriction_user_type_list = new Array(msg.restriction_user_type_list.length);
      for (let i = 0; i < resolved.restriction_user_type_list.length; ++i) {
        resolved.restriction_user_type_list[i] = RestrictionUserType.Resolve(msg.restriction_user_type_list[i]);
      }
    }
    else {
      resolved.restriction_user_type_list = []
    }

    return resolved;
    }
};

module.exports = RestrictionUserTypeList;
