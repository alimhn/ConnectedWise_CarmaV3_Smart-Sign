// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PositionalAccuracy = require('./PositionalAccuracy.js');
let TransmissionState = require('./TransmissionState.js');
let AccelerationSet4Way = require('./AccelerationSet4Way.js');
let BrakeSystemStatus = require('./BrakeSystemStatus.js');
let VehicleSize = require('./VehicleSize.js');

//-----------------------------------------------------------

class BSMCoreData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_count = null;
      this.id = null;
      this.sec_mark = null;
      this.longitude = null;
      this.latitude = null;
      this.elev = null;
      this.accuracy = null;
      this.transmission = null;
      this.speed = null;
      this.heading = null;
      this.angle = null;
      this.accelSet = null;
      this.brakes = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_count')) {
        this.msg_count = initObj.msg_count
      }
      else {
        this.msg_count = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('sec_mark')) {
        this.sec_mark = initObj.sec_mark
      }
      else {
        this.sec_mark = 0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0;
      }
      if (initObj.hasOwnProperty('elev')) {
        this.elev = initObj.elev
      }
      else {
        this.elev = 0;
      }
      if (initObj.hasOwnProperty('accuracy')) {
        this.accuracy = initObj.accuracy
      }
      else {
        this.accuracy = new PositionalAccuracy();
      }
      if (initObj.hasOwnProperty('transmission')) {
        this.transmission = initObj.transmission
      }
      else {
        this.transmission = new TransmissionState();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0;
      }
      if (initObj.hasOwnProperty('accelSet')) {
        this.accelSet = initObj.accelSet
      }
      else {
        this.accelSet = new AccelerationSet4Way();
      }
      if (initObj.hasOwnProperty('brakes')) {
        this.brakes = initObj.brakes
      }
      else {
        this.brakes = new BrakeSystemStatus();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new VehicleSize();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BSMCoreData
    // Serialize message field [msg_count]
    bufferOffset = _serializer.uint8(obj.msg_count, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint8(obj.id, buffer, bufferOffset, null);
    // Serialize message field [sec_mark]
    bufferOffset = _serializer.uint16(obj.sec_mark, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.int32(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.int32(obj.latitude, buffer, bufferOffset);
    // Serialize message field [elev]
    bufferOffset = _serializer.int32(obj.elev, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = PositionalAccuracy.serialize(obj.accuracy, buffer, bufferOffset);
    // Serialize message field [transmission]
    bufferOffset = TransmissionState.serialize(obj.transmission, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.uint16(obj.heading, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.int8(obj.angle, buffer, bufferOffset);
    // Serialize message field [accelSet]
    bufferOffset = AccelerationSet4Way.serialize(obj.accelSet, buffer, bufferOffset);
    // Serialize message field [brakes]
    bufferOffset = BrakeSystemStatus.serialize(obj.brakes, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = VehicleSize.serialize(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BSMCoreData
    let len;
    let data = new BSMCoreData(null);
    // Deserialize message field [msg_count]
    data.msg_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [sec_mark]
    data.sec_mark = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [elev]
    data.elev = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = PositionalAccuracy.deserialize(buffer, bufferOffset);
    // Deserialize message field [transmission]
    data.transmission = TransmissionState.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [accelSet]
    data.accelSet = AccelerationSet4Way.deserialize(buffer, bufferOffset);
    // Deserialize message field [brakes]
    data.brakes = BrakeSystemStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = VehicleSize.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/BSMCoreData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '928bbaf7f9f36ba15c6dd3bc7224d8a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # BSMCoreData.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Contains critical core elements deemed to be needed with every BSM issued.  
    # 
    # NOTE: Initial version only considers Part I. Part II will be defined for later use. 
    
    #MsgCount ::= INTEGER (0..127)
    uint8 msg_count
    
    uint8 MSG_COUNT_MAX = 127
    
    #TemporaryID ::= OCTET STRING (SIZE(4))
    uint8[] id
    
    #TemporaryID will change every 3000 seconds.
    uint16 ID_TIME_MAX = 3000
    
    #DSecond ::= INTEGER (0..65535)
    #  -- Integer values from 0 to 59999 represent the milliseconds within a minute
    #  -- A leap second is represented by the value range 60000 to 60999
    #  -- The values from 61000 to 65534 are reserved
    #  -- The value of 65535 shall represent an unavailable value in the range of the minute
    #  -- Unit is milliseconds
    uint16 sec_mark
    
    uint16 SEC_MARK_MOD = 60000
    uint16 SEC_MARK_UNAVAILABLE = 65535
    
    #Longitude ::= INTEGER (-1799999999..1800000001)
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 180 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 longitude
    
    int32 LONGITUDE_UNAVAILABLE = 1800000001
    int32 LONGITUDE_MAX = 1800000000
    int32 LONGITUDE_MIN = -1799999999
    
    #Latitude ::= INTEGER (-900000000..900000001)
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 90 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 latitude
    
    int32 LATITUDE_UNAVAILABLE = 900000001
    int32 LATITUDE_MAX = 900000000
    int32 LATITUDE_MIN = -900000000
    
    #Elevation ::= INTEGER (-4096..61439)
    #  -- In units of 10 cm steps above or below the reference ellipsoid
    #  -- Providing a range of -409.5 to + 6143.9 meters
    #  -- The value -4096 shall be used when Unknown is to be sent
    #  -- Convert to meter with factor 0.1 when field is used
    int32 elev
    
    int32 ELEVATION_UNAVAILABLE = -4096
    int32 ELEVATION_MAX = 61439
    int32 ELEVATION_MIN = -4095
    
    # Used to model the accuracy of the positional determination with respect to each given axis.
    j2735_msgs/PositionalAccuracy accuracy
    
    # Provide the current state of the vehicle transmission
    j2735_msgs/TransmissionState transmission
    
    #Speed ::= INTEGER (0..8191) -- Units of 0.02 m/s
    #  -- The value 8191 indicates that speed is unavailable
    #  -- Convert to m/s with factor 0.02 when field is used
    uint16 speed
    
    uint16 SPEED_UNAVAILABLE = 8191
    uint16 SPEED_MAX = 8190
    uint16 SPEED_MIN = 0
    
    #Heading ::= INTEGER (0..28800)
    #  -- LSB of 0.0125 degrees
    #  -- A range of 0 to 359.9875 degrees
    #  -- Convert to degree with factor 0.0125 when field is used
    uint16 heading
    uint16 HEADING_UNAVAILABLE = 28800
    uint16 HEADING_MAX = 28798
    uint16 HEADING_MIN = 0
    
    #SteeringWheelAngle ::= INTEGER (-126..127)
    #  -- LSB units of 1.5 degrees, a range of -189 to +189 degrees
    #  -- +001 = +1.5 deg
    #  -- -126 = -189 deg and beyond
    #  -- +126 = +189 deg and beyond
    #  -- +127 to be used for unavailable
    #  -- Convert to degree with factor 1.5 when this field is used
    int8 angle
    int8 STEER_WHEEL_ANGLE_UNAVAILABLE = 127
    int8 STEER_WHEEL_ANGLE_MAX = 126
    int8 STEER_WHEEL_ANGLE_MIN = -126
    
    # Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure.
    j2735_msgs/AccelerationSet4Way accelSet
    
    # Conveys a variety of information about the current brake and system control activity of the vehicle.
    j2735_msgs/BrakeSystemStatus brakes
    
    # The vehicle length and width
    j2735_msgs/VehicleSize size
    
    ================================================================================
    MSG: j2735_msgs/PositionalAccuracy
    #
    # PositionalAccuracy.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Used to model the accuracy of the positional determination with respect to each given axis.
    
    #PositionalAccuracy ::= SEQUENCE {
    #   -- NMEA-183 values expressed in strict ASN form
    #   semiMajor     SemiMajorAxisAccuracy,
    #   semiMinor     SemiMinorAxisAccuracy,
    #   orientation   SemiMajorAxisOrientation
    #   }
    
    #SemiMajorAxisAccuracy ::= INTEGER (0..255)
    #   -- semi-major/semi-minor axis accuracy at one standard dev
    #   -- range 0-12.7 meter, LSB = .05m
    #   -- 254 = any value equal or greater than 12.70 meter
    #   -- 255 = unavailable semi-major axis value
    #   -- Convert to meter with factor 0.05 when this field is used
    uint8 semiMajor
    uint8 semiMinor
    
    uint8 ACCURACY_UNAVAILABLE = 255
    uint8 ACCURACY_MAX = 254
    uint8 ACCURACY_MIN = 0
    
    #SemiMajorAxisOrientation ::= INTEGER (0..65535)
    #   -- orientation of semi-major axis
    #   -- relative to true north (0~359.9945078786 degrees)
    #   -- LSB units of 360/65535 deg  = 0.0054932479
    #   -- a value of 0 shall be 0 degrees
    #   -- a value of 1 shall be 0.0054932479 degrees
    #   -- a value of 65534 shall be 359.9945078786 deg
    #   -- a value of 65535 shall be used for orientation unavailable
    #   -- Convert to degree with factor 0.0054932479 when this field is used
    uint16 orientation
    
    uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535
    uint16 ACCURACY_ORIENTATION_MAX = 65534
    uint16 ACCURACY_ORIENTATION_MIN = 0
    
    ================================================================================
    MSG: j2735_msgs/TransmissionState
    #
    # TransmissionState.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Provide the current state of the vehicle transmission.
    
    #TransmissionState ::= ENUMERATED {
    #   neutral      (0), -- Neutral
    #   park         (1), -- Park 
    #   forwardGears (2), -- Forward gears
    #   reverseGears (3), -- Reverse gears 
    #   reserved1    (4),      
    #   reserved2    (5),      
    #   reserved3    (6),      
    #   unavailable  (7)  -- not-equipped or unavailable value,
    #   -- Any related speed is relative to the vehicle reference frame used
    #   }
    
    uint8  transmission_state
    
    # enumeration values for status:
    uint8 NEUTRAL=0
    uint8 PARK=1
    uint8 FORWARDGEARS=2
    uint8 REVERSEGEARS=3
    uint8 RESERVED1=4
    uint8 RESERVED2=5
    uint8 RESERVED3=6
    uint8 UNAVAILABLE=7
    ================================================================================
    MSG: j2735_msgs/AccelerationSet4Way
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
    
    ================================================================================
    MSG: j2735_msgs/BrakeSystemStatus
    #
    # BrakeSystemStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Conveys a variety of information about the current brake and system control activity of the vehicle.
    
    #BrakeSystemStatus ::= SEQUENCE { 
    #   wheelBrakes        BrakeAppliedStatus,
    #   traction           TractionControlStatus,
    #   abs                AntiLockBrakeStatus, 
    #   scs                StabilityControlStatus,
    #   brakeBoost         BrakeBoostApplied, 
    #   auxBrakes          AuxiliaryBrakeStatus
    #   }
    
    #BrakeAppliedStatus ::= BIT STRING {
    #   unavailable (0),  -- When set, the brake applied status is unavailable
    #   leftFront   (1),  -- Left Front Active
    #   leftRear    (2),  -- Left Rear Active
    #   rightFront  (3),  -- Right Front Active
    #   rightRear   (4)   -- Right Rear Active
    #   } (SIZE (5))
    #   
    j2735_msgs/BrakeAppliedStatus wheelBrakes
    
    #TractionControlStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Not Equipped with traction control 
    #                    --       or traction control status is unavailable
    #   off         (1), -- B'01  traction control is Off
    #   on          (2), -- B'10  traction control is On (but not Engaged)
    #   engaged     (3)  -- B'11  traction control is Engaged
    #   }
    #
    j2735_msgs/TractionControlStatus traction
    
    #AntiLockBrakeStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
    #                    --       or ABS Brakes status is unavailable
    #   off         (1), -- B'01  Vehicle's ABS are Off
    #   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
    #   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
    #   }
    #
    j2735_msgs/AntiLockBrakeStatus abs
    
    #StabilityControlStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Not Equipped with SC
    #                    --       or SC status is unavailable
    #   off         (1), -- B'01  Off
    #   on          (2), -- B'10  On or active (but not engaged)
    #   engaged     (3)  -- B'11  stability control is Engaged 
    #   }
    #   
    j2735_msgs/StabilityControlStatus scs
    
    #BrakeBoostApplied ::= ENUMERATED {
    #   unavailable   (0), -- Vehicle not equipped with brake boost
    #                      -- or brake boost data is unavailable
    #   off           (1), -- Vehicle's brake boost is off
    #   on            (2)  -- Vehicle's brake boost is on (applied)
    #   }
    #   
    j2735_msgs/BrakeBoostApplied brakeBoost
    
    #AuxiliaryBrakeStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
    #                    --       or Aux Brakes status is unavailable
    #   off         (1), -- B'01  Vehicle's Aux Brakes are Off
    #   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
    #   reserved    (3)  -- B'11 
    #   }   
    
    j2735_msgs/AuxiliaryBrakeStatus auxBrakes
    ================================================================================
    MSG: j2735_msgs/BrakeAppliedStatus
    #
    # BrakeAppliedStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    # 
    
    #BrakeAppliedStatus ::= BIT STRING {
    #   unavailable (0),  -- When set, the brake applied status is unavailable
    #   leftFront   (1),  -- Left Front Active
    #   leftRear    (2),  -- Left Rear Active
    #   rightFront  (3),  -- Right Front Active
    #   rightRear   (4)   -- Right Rear Active
    #   } (SIZE (5))
    #   
    
    uint8  brake_applied_status
    
    uint8 UNAVAILABLE=0
    uint8 LEFT_FRONT=1
    uint8 LEFT_REAR=2
    uint8 RIGHT_FRONT=3
    uint8 RIGHT_REAR=4
    
    
    ================================================================================
    MSG: j2735_msgs/TractionControlStatus
    #
    # TractionControlStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #TractionControlStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Not Equipped with traction control 
    #                    --       or traction control status is unavailable
    #   off         (1), -- B'01  traction control is Off
    #   on          (2), -- B'10  traction control is On (but not Engaged)
    #   engaged     (3)  -- B'11  traction control is Engaged
    #   }
    #
    
    uint8  traction_control_status 
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    uint8  ENGAGED=3
    
    
    
    ================================================================================
    MSG: j2735_msgs/AntiLockBrakeStatus
    #
    # AntiLockBrakeStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #AntiLockBrakeStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
    #                    --       or ABS Brakes status is unavailable
    #   off         (1), -- B'01  Vehicle's ABS are Off
    #   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
    #   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
    #   }
    #
    
    uint8  anti_lock_brake_status 
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    uint8  ENGAGED=3
    
    ================================================================================
    MSG: j2735_msgs/StabilityControlStatus
    #
    # StabilityControlStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #StabilityControlStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Not Equipped with SC
    #                    --       or SC status is unavailable
    #   off         (1), -- B'01  Off
    #   on          (2), -- B'10  On or active (but not engaged)
    #   engaged     (3)  -- B'11  stability control is Engaged 
    #   }
    #   
    
    uint8  stability_control_status 
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    uint8  ENGAGED=3
    
    ================================================================================
    MSG: j2735_msgs/BrakeBoostApplied
    #
    # BrakeBoostApplied.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #BrakeBoostApplied ::= ENUMERATED {
    #   unavailable   (0), -- Vehicle not equipped with brake boost
    #                      -- or brake boost data is unavailable
    #   off           (1), -- Vehicle's brake boost is off
    #   on            (2)  -- Vehicle's brake boost is on (applied)
    #   }
    #   
    
    uint8  brake_boost_applied
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    
    ================================================================================
    MSG: j2735_msgs/AuxiliaryBrakeStatus
    #
    # AuxiliaryBrakeStatus.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    
    #AuxiliaryBrakeStatus ::= ENUMERATED {
    #   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
    #                    --       or Aux Brakes status is unavailable
    #   off         (1), -- B'01  Vehicle's Aux Brakes are Off
    #   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
    #   reserved    (3)  -- B'11 
    #   }   
    
    uint8  auxiliary_brake_status
    
    # enumeration values for status:
    uint8  UNAVAILABLE=0
    uint8  OFF=1
    uint8  ON=2
    uint8  RESERVED=3
    
    ================================================================================
    MSG: j2735_msgs/VehicleSize
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
    const resolved = new BSMCoreData(null);
    if (msg.msg_count !== undefined) {
      resolved.msg_count = msg.msg_count;
    }
    else {
      resolved.msg_count = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.sec_mark !== undefined) {
      resolved.sec_mark = msg.sec_mark;
    }
    else {
      resolved.sec_mark = 0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0
    }

    if (msg.elev !== undefined) {
      resolved.elev = msg.elev;
    }
    else {
      resolved.elev = 0
    }

    if (msg.accuracy !== undefined) {
      resolved.accuracy = PositionalAccuracy.Resolve(msg.accuracy)
    }
    else {
      resolved.accuracy = new PositionalAccuracy()
    }

    if (msg.transmission !== undefined) {
      resolved.transmission = TransmissionState.Resolve(msg.transmission)
    }
    else {
      resolved.transmission = new TransmissionState()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0
    }

    if (msg.accelSet !== undefined) {
      resolved.accelSet = AccelerationSet4Way.Resolve(msg.accelSet)
    }
    else {
      resolved.accelSet = new AccelerationSet4Way()
    }

    if (msg.brakes !== undefined) {
      resolved.brakes = BrakeSystemStatus.Resolve(msg.brakes)
    }
    else {
      resolved.brakes = new BrakeSystemStatus()
    }

    if (msg.size !== undefined) {
      resolved.size = VehicleSize.Resolve(msg.size)
    }
    else {
      resolved.size = new VehicleSize()
    }

    return resolved;
    }
};

// Constants for message
BSMCoreData.Constants = {
  MSG_COUNT_MAX: 127,
  ID_TIME_MAX: 3000,
  SEC_MARK_MOD: 60000,
  SEC_MARK_UNAVAILABLE: 65535,
  LONGITUDE_UNAVAILABLE: 1800000001,
  LONGITUDE_MAX: 1800000000,
  LONGITUDE_MIN: -1799999999,
  LATITUDE_UNAVAILABLE: 900000001,
  LATITUDE_MAX: 900000000,
  LATITUDE_MIN: -900000000,
  ELEVATION_UNAVAILABLE: -4096,
  ELEVATION_MAX: 61439,
  ELEVATION_MIN: -4095,
  SPEED_UNAVAILABLE: 8191,
  SPEED_MAX: 8190,
  SPEED_MIN: 0,
  HEADING_UNAVAILABLE: 28800,
  HEADING_MAX: 28798,
  HEADING_MIN: 0,
  STEER_WHEEL_ANGLE_UNAVAILABLE: 127,
  STEER_WHEEL_ANGLE_MAX: 126,
  STEER_WHEEL_ANGLE_MIN: -126,
}

module.exports = BSMCoreData;
