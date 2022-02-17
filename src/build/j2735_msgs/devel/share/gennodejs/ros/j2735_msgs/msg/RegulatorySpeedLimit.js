// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SpeedLimitType = require('./SpeedLimitType.js');

//-----------------------------------------------------------

class RegulatorySpeedLimit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new SpeedLimitType();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegulatorySpeedLimit
    // Serialize message field [type]
    bufferOffset = SpeedLimitType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegulatorySpeedLimit
    let len;
    let data = new RegulatorySpeedLimit(null);
    // Deserialize message field [type]
    data.type = SpeedLimitType.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/RegulatorySpeedLimit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cef067aea5329792cd32d5c233033d98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # RegulatorySpeedLimit.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    # Used to convey a regulatory speed about a lane, lanes, or roadway segment.
    
    # RegulatorySpeedLimit ::= SEQUENCE {
    # type SpeedLimitType,
    # -- The type of regulatory speed which follows
    j2735_msgs/SpeedLimitType type
    
    # speed Velocity
    # Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s
    #-- The value 8191 indicates that velocity is unavailable
    float64 speed
    ================================================================================
    MSG: j2735_msgs/SpeedLimitType
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
    const resolved = new RegulatorySpeedLimit(null);
    if (msg.type !== undefined) {
      resolved.type = SpeedLimitType.Resolve(msg.type)
    }
    else {
      resolved.type = new SpeedLimitType()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = RegulatorySpeedLimit;
