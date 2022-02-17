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

class LaneAttributesParking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_parking = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_parking')) {
        this.lane_attributes_parking = initObj.lane_attributes_parking
      }
      else {
        this.lane_attributes_parking = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesParking
    // Serialize message field [lane_attributes_parking]
    bufferOffset = _serializer.uint16(obj.lane_attributes_parking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesParking
    let len;
    let data = new LaneAttributesParking(null);
    // Deserialize message field [lane_attributes_parking]
    data.lane_attributes_parking = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesParking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fcf0ebd1c63223de5a1deb01ebf0960';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # LaneAttributesParking.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.
    #
    # LaneAttributes-Parking ::= BIT STRING {
    # -- With bits as defined:
    # -- Parking use details, note that detailed restrictions such as
    # -- allowed hours are sent by way of ITIS codes in the TIM message
    # parkingRevocableLane(0),
    # -- this lane may be activated or not based
    # -- on the current SPAT message contents
    # -- if not asserted, the lane is ALWAYS present
    # parallelParkingInUse(1),
    # headInParkingInUse(2),
    # doNotParkZone(3),
    # -- used to denote fire hydrants as well as
    # -- short disruptions in a parking zone
    # parkingForBusUse(4),
    # parkingForTaxiUse(5),
    # noPublicParkingUse(6)
    # -- private parking, as in front of
    # -- private property
    # -- Bits 7~15 reserved and set to zero
    # } (SIZE (16))
    
    uint16  lane_attributes_parking
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesParking(null);
    if (msg.lane_attributes_parking !== undefined) {
      resolved.lane_attributes_parking = msg.lane_attributes_parking;
    }
    else {
      resolved.lane_attributes_parking = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesParking;
