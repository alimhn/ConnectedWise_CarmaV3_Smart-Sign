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

class SpeedLimitType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limit_type = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_limit_type')) {
        this.speed_limit_type = initObj.speed_limit_type
      }
      else {
        this.speed_limit_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedLimitType
    // Serialize message field [speed_limit_type]
    bufferOffset = _serializer.uint8(obj.speed_limit_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedLimitType
    let len;
    let data = new SpeedLimitType(null);
    // Deserialize message field [speed_limit_type]
    data.speed_limit_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/SpeedLimitType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04fbf222f6540824b156a63c8174b9b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SpeedLimitType.msg
    #
    # The SpeedLimitType data element relates the type of speed limit to which a given speed refers.
    #
    # SpeedLimitType ::= ENUMERATED {
    #
    # unknown, -- Speed limit type not available
    # maxSpeedInSchoolZone, -- Only sent when the limit is active
    # maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time
    # maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present
    #
    # vehicleMinSpeed,
    # vehicleMaxSpeed, -- Regulatory speed limit for general traffic
    # vehicleNightMaxSpeed,
    #
    # truckMinSpeed,
    # truckMaxSpeed,
    # truckNightMaxSpeed,
    #
    # vehiclesWithTrailersMinSpeed,
    # vehiclesWithTrailersMaxSpeed,
    # vehiclesWithTrailersNightMaxSpeed,
    # ...
    # }
    
    uint8 speed_limit_type
    
    uint8 UNKNOWN=0
    uint8 MAXSPEEDINSCHOOLZONE=1
    uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2
    uint8 MAXSPEEDINCONSTRUCTIONZONE=3
    uint8 VEHICLEMINSPEED=4
    uint8 VEHICLEMAXSPEED=5
    uint8 VEHICLENIGHTMAXSPEED=6
    uint8 TRUCKMINSPEED=7
    uint8 TRUCKMAXSPEED=8
    uint8 TRUCKNIGHTMAXSPEED=9
    uint8 VEHICLESWITHTRAILERSMINSPEED=10
    uint8 VEHICLESWITHTRAILERSMAXSPEED=11
    uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedLimitType(null);
    if (msg.speed_limit_type !== undefined) {
      resolved.speed_limit_type = msg.speed_limit_type;
    }
    else {
      resolved.speed_limit_type = 0
    }

    return resolved;
    }
};

// Constants for message
SpeedLimitType.Constants = {
  UNKNOWN: 0,
  MAXSPEEDINSCHOOLZONE: 1,
  MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT: 2,
  MAXSPEEDINCONSTRUCTIONZONE: 3,
  VEHICLEMINSPEED: 4,
  VEHICLEMAXSPEED: 5,
  VEHICLENIGHTMAXSPEED: 6,
  TRUCKMINSPEED: 7,
  TRUCKMAXSPEED: 8,
  TRUCKNIGHTMAXSPEED: 9,
  VEHICLESWITHTRAILERSMINSPEED: 10,
  VEHICLESWITHTRAILERSMAXSPEED: 11,
  VEHICLESWITHTRAILERSNIGHTMAXSPEED: 12,
}

module.exports = SpeedLimitType;
