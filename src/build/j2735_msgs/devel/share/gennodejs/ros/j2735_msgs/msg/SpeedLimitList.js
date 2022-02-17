// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RegulatorySpeedLimit = require('./RegulatorySpeedLimit.js');

//-----------------------------------------------------------

class SpeedLimitList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_limits')) {
        this.speed_limits = initObj.speed_limits
      }
      else {
        this.speed_limits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedLimitList
    // Serialize message field [speed_limits]
    // Serialize the length for message field [speed_limits]
    bufferOffset = _serializer.uint32(obj.speed_limits.length, buffer, bufferOffset);
    obj.speed_limits.forEach((val) => {
      bufferOffset = RegulatorySpeedLimit.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedLimitList
    let len;
    let data = new SpeedLimitList(null);
    // Deserialize message field [speed_limits]
    // Deserialize array length for message field [speed_limits]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speed_limits = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speed_limits[i] = RegulatorySpeedLimit.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 9 * object.speed_limits.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/SpeedLimitList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa3a8bdd3d4567c7dd66a46382a0f4b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # SpeedLimitList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit
    
    #A list of RegulatorySpeedLimit
    j2735_msgs/RegulatorySpeedLimit[] speed_limits
    ================================================================================
    MSG: j2735_msgs/RegulatorySpeedLimit
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
    const resolved = new SpeedLimitList(null);
    if (msg.speed_limits !== undefined) {
      resolved.speed_limits = new Array(msg.speed_limits.length);
      for (let i = 0; i < resolved.speed_limits.length; ++i) {
        resolved.speed_limits[i] = RegulatorySpeedLimit.Resolve(msg.speed_limits[i]);
      }
    }
    else {
      resolved.speed_limits = []
    }

    return resolved;
    }
};

module.exports = SpeedLimitList;
