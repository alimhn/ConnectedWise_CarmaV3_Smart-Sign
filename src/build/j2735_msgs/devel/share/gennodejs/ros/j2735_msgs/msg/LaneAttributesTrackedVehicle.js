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

class LaneAttributesTrackedVehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_trackedvehicle = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_trackedvehicle')) {
        this.lane_attributes_trackedvehicle = initObj.lane_attributes_trackedvehicle
      }
      else {
        this.lane_attributes_trackedvehicle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesTrackedVehicle
    // Serialize message field [lane_attributes_trackedvehicle]
    bufferOffset = _serializer.uint16(obj.lane_attributes_trackedvehicle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesTrackedVehicle
    let len;
    let data = new LaneAttributesTrackedVehicle(null);
    // Deserialize message field [lane_attributes_trackedvehicle]
    data.lane_attributes_trackedvehicle = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesTrackedVehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c46f1b05aeda06003bee863bd58817a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # LaneAttributesTrackedVehicle.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Special data element relates specific properties found
    # in a tracked vehicle lane types (trolley and train lanes).
    # The term "rail vehicle" can be considered synonymous.
    # In this case, the term does not relate to vehicle types with tracks or treads.
    #
    # LaneAttributes-TrackedVehicle ::= BIT STRING {
    # -- With bits as defined:
    # spec-RevocableLane(0),
    # -- this lane may be activated or not based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # spec-commuterRailRoadTrack (1),
    # spec-lightRailRoadTrack(2),
    # spec-heavyRailRoadTrack(3),
    # spec-otherRailType(4)
    # -- Bits 5~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16 lane_attributes_trackedvehicle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesTrackedVehicle(null);
    if (msg.lane_attributes_trackedvehicle !== undefined) {
      resolved.lane_attributes_trackedvehicle = msg.lane_attributes_trackedvehicle;
    }
    else {
      resolved.lane_attributes_trackedvehicle = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesTrackedVehicle;
