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

class Position3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.elevation = null;
      this.elevation_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = 0.0;
      }
      if (initObj.hasOwnProperty('elevation_exists')) {
        this.elevation_exists = initObj.elevation_exists
      }
      else {
        this.elevation_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Position3D
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.float32(obj.elevation, buffer, bufferOffset);
    // Serialize message field [elevation_exists]
    bufferOffset = _serializer.bool(obj.elevation_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Position3D
    let len;
    let data = new Position3D(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation_exists]
    data.elevation_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/Position3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e694623847c02ec14299578943eeb2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Position3D.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    # Provides a precise location in the WGS-84 coordinate system, from which short offsets may be used
    # to create additional data using a flat earth projection centered on this location.
    
    # Position3D ::= SEQUENCE {
    
    # lat Latitude, -- in 1/10th micro degrees
    # Latitude ::= INTEGER (-900000000..900000001)
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 90 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    float64 latitude
    
    float64 LATITUDE_UNAVAILABLE = 90.0000001
    float64 LATITUDE_MAX = 90.0
    float64 LATITUDE_MIN = -90.0
    
    # long Longitude, -- in 1/10th micro degrees
    # Longitude ::= INTEGER (-1799999999..1800000001)
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 180 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    float64 longitude
    
    float64 LONGITUDE_UNAVAILABLE = 180.0000001
    float64 LONGITUDE_MAX = 180.0
    float64 LONGITUDE_MIN = -179.9999999
    
    # elevation Elevation OPTIONAL, -- in 10 cm units
    # Elevation ::= INTEGER (-4096..61439)
    #  -- In units of 10 cm steps above or below the reference ellipsoid
    #  -- Providing a range of -409.5 to + 6143.9 meters
    #  -- The value -4096 shall be used when Unknown is to be sent
    #  -- Convert to meter with factor 0.1 when field is used
    float32 elevation
    bool elevation_exists
    
    float32 ELEVATION_UNAVAILABLE = -409.6
    float32 ELEVATION_MAX = 6143.9
    float32 ELEVATION_MIN = -409.5
    
    #TODO: RegionalExtensions are not yet implemented in asn1c
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-Position3D}} OPTIONAL,
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Position3D(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = 0.0
    }

    if (msg.elevation_exists !== undefined) {
      resolved.elevation_exists = msg.elevation_exists;
    }
    else {
      resolved.elevation_exists = false
    }

    return resolved;
    }
};

// Constants for message
Position3D.Constants = {
  LATITUDE_UNAVAILABLE: 90.0000001,
  LATITUDE_MAX: 90.0,
  LATITUDE_MIN: -90.0,
  LONGITUDE_UNAVAILABLE: 180.0000001,
  LONGITUDE_MAX: 180.0,
  LONGITUDE_MIN: -179.9999999,
  ELEVATION_UNAVAILABLE: -409.6,
  ELEVATION_MAX: 6143.9,
  ELEVATION_MIN: -409.5,
}

module.exports = Position3D;
