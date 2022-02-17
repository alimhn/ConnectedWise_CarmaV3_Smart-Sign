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

class AccelerationSet4Way {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.longitudinal = null;
      this.lateral = null;
      this.vert = null;
      this.yaw_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('longitudinal')) {
        this.longitudinal = initObj.longitudinal
      }
      else {
        this.longitudinal = 0;
      }
      if (initObj.hasOwnProperty('lateral')) {
        this.lateral = initObj.lateral
      }
      else {
        this.lateral = 0;
      }
      if (initObj.hasOwnProperty('vert')) {
        this.vert = initObj.vert
      }
      else {
        this.vert = 0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccelerationSet4Way
    // Serialize message field [longitudinal]
    bufferOffset = _serializer.int16(obj.longitudinal, buffer, bufferOffset);
    // Serialize message field [lateral]
    bufferOffset = _serializer.int16(obj.lateral, buffer, bufferOffset);
    // Serialize message field [vert]
    bufferOffset = _serializer.int8(obj.vert, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.int16(obj.yaw_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccelerationSet4Way
    let len;
    let data = new AccelerationSet4Way(null);
    // Deserialize message field [longitudinal]
    data.longitudinal = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [lateral]
    data.lateral = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vert]
    data.vert = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/AccelerationSet4Way';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a04db6910213061e094b67068abaf00f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # AccelerationSet4Way.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. 
    # The positive longitudinal axis is to the front of the vehicle. 
    # The positive lateral axis is to the right side of the vehicle (facing forward)
    # Positive yaw is to the right (clockwise)
    # The positive vertical "z" axis is downward with the zero point at the bottom of the vehicle's tires. 
    
    #AccelerationSet4Way ::= SEQUENCE {
    #   long Acceleration,          -- Along the Vehicle Longitudinal axis
    #   lat  Acceleration,          -- Along the Vehicle Lateral axis
    #   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis
    #   yaw  YawRate
    #}
    
    #Acceleration ::= INTEGER (-2000..2001) 
    #   -- LSB units are 0.01 m/s^2
    #   -- the value 2000 shall be used for values greater than 2000     
    #   -- the value -2000 shall be used for values less than -2000  
    #   -- a value of 2001 shall be used for Unavailable
    #   -- Convert to m/s^2 with factor 0.01 when this field is used
    int16 longitudinal
    int16 lateral
    
    int16 ACCELERATION_UNAVAILABLE = 2001
    int16 ACCELERATION_MAX = 2000
    int16 ACCELERATION_MIN = -2000
    
    #VerticalAcceleration ::= INTEGER (-127..127) 
    #   -- LSB units of 0.02 G steps over -2.52 to +2.54 G
    #   -- The value +127 shall be used for ranges >= 2.54 G
    #   -- The value -126 shall be used for ranges <= 2.52 G
    #   -- The value -127 shall be used for unavailable
    #   -- Convert to m/s^2 with factor 0.196 when this field is used
    int8 vert
    
    int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127
    int8 ACCELERATION_VERTICAL_MAX = 127
    int8 ACCELERATION_VERTICAL_MIN = -126
    
    #YawRate ::= INTEGER (-32767..32767)
    #   -- LSB units of 0.01 degrees per second (signed)
    #   -- Convert to degree with factor 0.01 when this field is used
    int16 yaw_rate
    
    int16 YAWRATE_UNAVAILABLE = 0
    int16 YAWRATE_MAX = 32767
    int16 YAWRATE_MIN = -32767
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccelerationSet4Way(null);
    if (msg.longitudinal !== undefined) {
      resolved.longitudinal = msg.longitudinal;
    }
    else {
      resolved.longitudinal = 0
    }

    if (msg.lateral !== undefined) {
      resolved.lateral = msg.lateral;
    }
    else {
      resolved.lateral = 0
    }

    if (msg.vert !== undefined) {
      resolved.vert = msg.vert;
    }
    else {
      resolved.vert = 0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0
    }

    return resolved;
    }
};

// Constants for message
AccelerationSet4Way.Constants = {
  ACCELERATION_UNAVAILABLE: 2001,
  ACCELERATION_MAX: 2000,
  ACCELERATION_MIN: -2000,
  ACCELERATION_VERTICAL_UNAVAILABLE: -127,
  ACCELERATION_VERTICAL_MAX: 127,
  ACCELERATION_VERTICAL_MIN: -126,
  YAWRATE_UNAVAILABLE: 0,
  YAWRATE_MAX: 32767,
  YAWRATE_MIN: -32767,
}

module.exports = AccelerationSet4Way;
