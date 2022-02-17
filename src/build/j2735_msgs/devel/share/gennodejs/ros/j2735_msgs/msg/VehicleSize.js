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

class VehicleSize {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_width = null;
      this.vehicle_length = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_width')) {
        this.vehicle_width = initObj.vehicle_width
      }
      else {
        this.vehicle_width = 0;
      }
      if (initObj.hasOwnProperty('vehicle_length')) {
        this.vehicle_length = initObj.vehicle_length
      }
      else {
        this.vehicle_length = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleSize
    // Serialize message field [vehicle_width]
    bufferOffset = _serializer.uint16(obj.vehicle_width, buffer, bufferOffset);
    // Serialize message field [vehicle_length]
    bufferOffset = _serializer.uint16(obj.vehicle_length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSize
    let len;
    let data = new VehicleSize(null);
    // Deserialize message field [vehicle_width]
    data.vehicle_width = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vehicle_length]
    data.vehicle_length = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/VehicleSize';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b73dfa0d45d588029a74086992728a81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # VehicleSize.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The vehicle length and width 
    
    #VehicleSize ::= SEQUENCE {
    #   width     VehicleWidth,
    #   length    VehicleLength
    #   }
    #
    
    #VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters
    #  -- Convert to meter with factor 0.01 when this field is used
    uint16 vehicle_width
    
    uint16 VEHICLE_WIDTH_UNAVAILABLE = 0
    uint16 VEHICLE_WIDTH_MAX = 1023
    uint16 VEHICLE_WIDTH_MIN = 1
    
    #VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters
    #  -- Convert to meter with factor 0.01 when this field is used
    uint16 vehicle_length
    
    uint16 VEHICLE_LENGTH_UNAVAILABLE = 0
    uint16 VEHICLE_LENGTH_MAX = 4095
    uint16 VEHICLE_LENGTH_MIN = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleSize(null);
    if (msg.vehicle_width !== undefined) {
      resolved.vehicle_width = msg.vehicle_width;
    }
    else {
      resolved.vehicle_width = 0
    }

    if (msg.vehicle_length !== undefined) {
      resolved.vehicle_length = msg.vehicle_length;
    }
    else {
      resolved.vehicle_length = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleSize.Constants = {
  VEHICLE_WIDTH_UNAVAILABLE: 0,
  VEHICLE_WIDTH_MAX: 1023,
  VEHICLE_WIDTH_MIN: 1,
  VEHICLE_LENGTH_UNAVAILABLE: 0,
  VEHICLE_LENGTH_MAX: 4095,
  VEHICLE_LENGTH_MIN: 1,
}

module.exports = VehicleSize;
