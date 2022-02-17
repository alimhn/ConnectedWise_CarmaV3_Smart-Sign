// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BrakeAppliedStatus = require('./BrakeAppliedStatus.js');
let TractionControlStatus = require('./TractionControlStatus.js');
let AntiLockBrakeStatus = require('./AntiLockBrakeStatus.js');
let StabilityControlStatus = require('./StabilityControlStatus.js');
let BrakeBoostApplied = require('./BrakeBoostApplied.js');
let AuxiliaryBrakeStatus = require('./AuxiliaryBrakeStatus.js');

//-----------------------------------------------------------

class BrakeSystemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheelBrakes = null;
      this.traction = null;
      this.abs = null;
      this.scs = null;
      this.brakeBoost = null;
      this.auxBrakes = null;
    }
    else {
      if (initObj.hasOwnProperty('wheelBrakes')) {
        this.wheelBrakes = initObj.wheelBrakes
      }
      else {
        this.wheelBrakes = new BrakeAppliedStatus();
      }
      if (initObj.hasOwnProperty('traction')) {
        this.traction = initObj.traction
      }
      else {
        this.traction = new TractionControlStatus();
      }
      if (initObj.hasOwnProperty('abs')) {
        this.abs = initObj.abs
      }
      else {
        this.abs = new AntiLockBrakeStatus();
      }
      if (initObj.hasOwnProperty('scs')) {
        this.scs = initObj.scs
      }
      else {
        this.scs = new StabilityControlStatus();
      }
      if (initObj.hasOwnProperty('brakeBoost')) {
        this.brakeBoost = initObj.brakeBoost
      }
      else {
        this.brakeBoost = new BrakeBoostApplied();
      }
      if (initObj.hasOwnProperty('auxBrakes')) {
        this.auxBrakes = initObj.auxBrakes
      }
      else {
        this.auxBrakes = new AuxiliaryBrakeStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeSystemStatus
    // Serialize message field [wheelBrakes]
    bufferOffset = BrakeAppliedStatus.serialize(obj.wheelBrakes, buffer, bufferOffset);
    // Serialize message field [traction]
    bufferOffset = TractionControlStatus.serialize(obj.traction, buffer, bufferOffset);
    // Serialize message field [abs]
    bufferOffset = AntiLockBrakeStatus.serialize(obj.abs, buffer, bufferOffset);
    // Serialize message field [scs]
    bufferOffset = StabilityControlStatus.serialize(obj.scs, buffer, bufferOffset);
    // Serialize message field [brakeBoost]
    bufferOffset = BrakeBoostApplied.serialize(obj.brakeBoost, buffer, bufferOffset);
    // Serialize message field [auxBrakes]
    bufferOffset = AuxiliaryBrakeStatus.serialize(obj.auxBrakes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeSystemStatus
    let len;
    let data = new BrakeSystemStatus(null);
    // Deserialize message field [wheelBrakes]
    data.wheelBrakes = BrakeAppliedStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [traction]
    data.traction = TractionControlStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [abs]
    data.abs = AntiLockBrakeStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [scs]
    data.scs = StabilityControlStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [brakeBoost]
    data.brakeBoost = BrakeBoostApplied.deserialize(buffer, bufferOffset);
    // Deserialize message field [auxBrakes]
    data.auxBrakes = AuxiliaryBrakeStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/BrakeSystemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29e024d3832cf8923126d15f9168e8dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeSystemStatus(null);
    if (msg.wheelBrakes !== undefined) {
      resolved.wheelBrakes = BrakeAppliedStatus.Resolve(msg.wheelBrakes)
    }
    else {
      resolved.wheelBrakes = new BrakeAppliedStatus()
    }

    if (msg.traction !== undefined) {
      resolved.traction = TractionControlStatus.Resolve(msg.traction)
    }
    else {
      resolved.traction = new TractionControlStatus()
    }

    if (msg.abs !== undefined) {
      resolved.abs = AntiLockBrakeStatus.Resolve(msg.abs)
    }
    else {
      resolved.abs = new AntiLockBrakeStatus()
    }

    if (msg.scs !== undefined) {
      resolved.scs = StabilityControlStatus.Resolve(msg.scs)
    }
    else {
      resolved.scs = new StabilityControlStatus()
    }

    if (msg.brakeBoost !== undefined) {
      resolved.brakeBoost = BrakeBoostApplied.Resolve(msg.brakeBoost)
    }
    else {
      resolved.brakeBoost = new BrakeBoostApplied()
    }

    if (msg.auxBrakes !== undefined) {
      resolved.auxBrakes = AuxiliaryBrakeStatus.Resolve(msg.auxBrakes)
    }
    else {
      resolved.auxBrakes = new AuxiliaryBrakeStatus()
    }

    return resolved;
    }
};

module.exports = BrakeSystemStatus;
