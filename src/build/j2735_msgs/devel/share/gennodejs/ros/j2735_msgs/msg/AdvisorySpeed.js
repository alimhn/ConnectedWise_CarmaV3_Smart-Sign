// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AdvisorySpeedType = require('./AdvisorySpeedType.js');
let SpeedConfidence = require('./SpeedConfidence.js');

//-----------------------------------------------------------

class AdvisorySpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.speed = null;
      this.speed_exists = null;
      this.confidence = null;
      this.distance = null;
      this.distance_exists = null;
      this.restriction_class_id = null;
      this.restriction_class_id_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new AdvisorySpeedType();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('speed_exists')) {
        this.speed_exists = initObj.speed_exists
      }
      else {
        this.speed_exists = false;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = new SpeedConfidence();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('distance_exists')) {
        this.distance_exists = initObj.distance_exists
      }
      else {
        this.distance_exists = false;
      }
      if (initObj.hasOwnProperty('restriction_class_id')) {
        this.restriction_class_id = initObj.restriction_class_id
      }
      else {
        this.restriction_class_id = 0;
      }
      if (initObj.hasOwnProperty('restriction_class_id_exists')) {
        this.restriction_class_id_exists = initObj.restriction_class_id_exists
      }
      else {
        this.restriction_class_id_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdvisorySpeed
    // Serialize message field [type]
    bufferOffset = AdvisorySpeedType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [speed_exists]
    bufferOffset = _serializer.bool(obj.speed_exists, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = SpeedConfidence.serialize(obj.confidence, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.uint16(obj.distance, buffer, bufferOffset);
    // Serialize message field [distance_exists]
    bufferOffset = _serializer.bool(obj.distance_exists, buffer, bufferOffset);
    // Serialize message field [restriction_class_id]
    bufferOffset = _serializer.uint8(obj.restriction_class_id, buffer, bufferOffset);
    // Serialize message field [restriction_class_id_exists]
    bufferOffset = _serializer.bool(obj.restriction_class_id_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdvisorySpeed
    let len;
    let data = new AdvisorySpeed(null);
    // Deserialize message field [type]
    data.type = AdvisorySpeedType.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_exists]
    data.speed_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = SpeedConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [distance_exists]
    data.distance_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [restriction_class_id]
    data.restriction_class_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [restriction_class_id_exists]
    data.restriction_class_id_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/AdvisorySpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '639b4e562eeb97caacd5b466a782e24a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # AdvisorySpeed.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection
    # from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this
    # allows transmitting recommended speeds for specialty vehicles such as transit buses.
    # AdvisorySpeed ::= SEQUENCE {
    # type AdvisorySpeedType,
    # -- the type of advisory which this is.
    # speed SpeedAdvice OPTIONAL,
    # -- See Section 11 for converting and translating speed
    # -- expressed in mph into units of m/s
    # -- This element is optional ONLY when superceded
    # -- by the presence of a regional speed element found in
    # -- Reg-AdvisorySpeed entry
    # confidence SpeedConfidence OPTIONAL,
    # -- A confidence value for the above speed
    # distance ZoneLength OPTIONAL,
    # -- Unit = 1 meter,
    # -- The distance indicates the region for which the advised speed
    # -- is recommended, it is specified upstream from the stop bar
    # -- along the connected egressing lane
    # class RestrictionClassID OPTIONAL,
    # -- the vehicle types to which it applies
    # -- when absent, the AdvisorySpeed applies to
    # -- all motor vehicle types
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,
    # ...
    # }
    
    j2735_msgs/AdvisorySpeedType type
    
    # SpeedAdvice ::= INTEGER (0..500) OPTIONAL
    # This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,
    # expressed in unsigned units of 0.1 meters per second.
    #-- LSB units are 0.1 m/s^2
    #-- the value 499 shall be used for values at or greater than 49.9 m/s
    #-- the value 500 shall be used to indicate that speed is unavailable
    float32 speed
    float32 SPEED_UNAVAILABLE = 500
    bool speed_exists
    
    # SpeedConfidence is an enum already with 0 as unavailable.
    j2735_msgs/SpeedConfidence confidence
    
    # ZoneLength ::= INTEGER (0..10000)
    # -- Unit = 1 meter, 0 = unknown,
    # -- The value 10000 to be used for Distances >=10000 m
    # -- (e.g. from known point to another point along a
    # -- known path, often against traffic flow direction
    # -- when used for measuring queues)
    uint16 distance
    uint16 DISTANCE_UNKNOWN=0
    bool distance_exists
    
    # RestrictionClassID ::= INTEGER (0..255)
    uint8 restriction_class_id
    bool restriction_class_id_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    
    
    ================================================================================
    MSG: j2735_msgs/AdvisorySpeedType
    #
    # AdvisorySpeedType.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is
    # typically used as part of an AdvisorySpeed data frame for signal phase and timing data.
    #
    # AdvisorySpeedType ::= ENUMERATED {
    # none (0),
    # greenwave (1),
    # ecoDrive (2),
    # transit (3),
    # ...
    # } -- Note: subject to further growth
    
    uint8 advisory_speed_type
    
    uint8 NONE=0
    uint8 GREENWAVE=1
    uint8 ECODRIVE=2
    uint8 TRANSIT=3
    
    ================================================================================
    MSG: j2735_msgs/SpeedConfidence
    #
    # SpeedConfidence.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported
    # value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or
    # calculate the value.
    
    # SpeedConfidence ::= ENUMERATED {
    # unavailable (0), -- Not Equipped or unavailable
    # prec100ms (1), -- 100 meters / sec
    # prec10ms(2), -- 10 meters / sec
    # prec5ms (3), -- 5 meters / sec
    # prec1ms (4), -- 1 meters / sec
    # prec0-1ms (5), -- 0.1 meters / sec
    # prec0-05ms (6), -- -- 0.05 meters / sec
    # prec0-01ms (7) -- -- 0.01 meters / sec
    # }
    
    uint8 speed_confidence
    
    uint8 UNAVAILABLE=0
    uint8 PREC100MS=1
    uint8 PREC10MS=2
    uint8 PREC5MS=3
    uint8 PREC1MS=4
    uint8 PREC0_1MS=5
    uint8 PREC0_05MS=6
    uint8 PREC0_01MS=7
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdvisorySpeed(null);
    if (msg.type !== undefined) {
      resolved.type = AdvisorySpeedType.Resolve(msg.type)
    }
    else {
      resolved.type = new AdvisorySpeedType()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.speed_exists !== undefined) {
      resolved.speed_exists = msg.speed_exists;
    }
    else {
      resolved.speed_exists = false
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = SpeedConfidence.Resolve(msg.confidence)
    }
    else {
      resolved.confidence = new SpeedConfidence()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.distance_exists !== undefined) {
      resolved.distance_exists = msg.distance_exists;
    }
    else {
      resolved.distance_exists = false
    }

    if (msg.restriction_class_id !== undefined) {
      resolved.restriction_class_id = msg.restriction_class_id;
    }
    else {
      resolved.restriction_class_id = 0
    }

    if (msg.restriction_class_id_exists !== undefined) {
      resolved.restriction_class_id_exists = msg.restriction_class_id_exists;
    }
    else {
      resolved.restriction_class_id_exists = false
    }

    return resolved;
    }
};

// Constants for message
AdvisorySpeed.Constants = {
  SPEED_UNAVAILABLE: 500.0,
  DISTANCE_UNKNOWN: 0,
}

module.exports = AdvisorySpeed;
