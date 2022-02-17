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

class LaneAttributesVehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_vehicle = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_vehicle')) {
        this.lane_attributes_vehicle = initObj.lane_attributes_vehicle
      }
      else {
        this.lane_attributes_vehicle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesVehicle
    // Serialize message field [lane_attributes_vehicle]
    bufferOffset = _serializer.uint8(obj.lane_attributes_vehicle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesVehicle
    let len;
    let data = new LaneAttributesVehicle(null);
    // Deserialize message field [lane_attributes_vehicle]
    data.lane_attributes_vehicle = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesVehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78cc6cbb02a8ffeee057c172dd545dbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # LaneAttributesVehicle.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # LaneAttributes-Vehicle ::= BIT STRING {
    # -- With bits as defined:
    # isVehicleRevocableLane (0),
    #       -- this lane may be activated or not based
    #       -- on the current SPAT message contents
    #       -- if not asserted, the lane is ALWAYS present
    # isVehicleFlyOverLane (1),
    #       -- path of lane is not at grade
    # hovLaneUseOnly (2),
    # restrictedToBusUse (3),
    # restrictedToTaxiUse(4),
    # restrictedFromPublicUse (5),
    # hasIRbeaconCoverage(6),
    # permissionOnRequest(7)
    #       -- e.g. to inform about a lane for e-cars
    # } (SIZE (8,...))
    
    uint8 lane_attributes_vehicle
    
    uint8 ISVEHICLEREVOCABLELANE=0
    uint8 ISVEHICLEFLYOVERLANE=1
    uint8 HOVLANEUSEONLY=2
    uint8 RESTRICTEDTOBUSUSE=3
    uint8 RESTRICTEDTOTAXIUSE=4
    uint8 RESTRICTEDFROMPUBLICUSE=5
    uint8 HASIRBEACONCOVERAGE=6
    uint8 PERMISSIONONREQUEST=7
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesVehicle(null);
    if (msg.lane_attributes_vehicle !== undefined) {
      resolved.lane_attributes_vehicle = msg.lane_attributes_vehicle;
    }
    else {
      resolved.lane_attributes_vehicle = 0
    }

    return resolved;
    }
};

// Constants for message
LaneAttributesVehicle.Constants = {
  ISVEHICLEREVOCABLELANE: 0,
  ISVEHICLEFLYOVERLANE: 1,
  HOVLANEUSEONLY: 2,
  RESTRICTEDTOBUSUSE: 3,
  RESTRICTEDTOTAXIUSE: 4,
  RESTRICTEDFROMPUBLICUSE: 5,
  HASIRBEACONCOVERAGE: 6,
  PERMISSIONONREQUEST: 7,
}

module.exports = LaneAttributesVehicle;
