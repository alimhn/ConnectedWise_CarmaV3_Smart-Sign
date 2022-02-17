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

class TrafficControlDetail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.signal = null;
      this.closed = null;
      this.chains = null;
      this.direction = null;
      this.lataffinity = null;
      this.latperm = null;
      this.parking = null;
      this.minspeed = null;
      this.maxspeed = null;
      this.minhdwy = null;
      this.maxvehmass = null;
      this.maxvehheight = null;
      this.maxvehwidth = null;
      this.maxvehlength = null;
      this.maxvehaxles = null;
      this.minvehocc = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = [];
      }
      if (initObj.hasOwnProperty('closed')) {
        this.closed = initObj.closed
      }
      else {
        this.closed = 0;
      }
      if (initObj.hasOwnProperty('chains')) {
        this.chains = initObj.chains
      }
      else {
        this.chains = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('lataffinity')) {
        this.lataffinity = initObj.lataffinity
      }
      else {
        this.lataffinity = 0;
      }
      if (initObj.hasOwnProperty('latperm')) {
        this.latperm = initObj.latperm
      }
      else {
        this.latperm = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('parking')) {
        this.parking = initObj.parking
      }
      else {
        this.parking = 0;
      }
      if (initObj.hasOwnProperty('minspeed')) {
        this.minspeed = initObj.minspeed
      }
      else {
        this.minspeed = 0;
      }
      if (initObj.hasOwnProperty('maxspeed')) {
        this.maxspeed = initObj.maxspeed
      }
      else {
        this.maxspeed = 0;
      }
      if (initObj.hasOwnProperty('minhdwy')) {
        this.minhdwy = initObj.minhdwy
      }
      else {
        this.minhdwy = 0;
      }
      if (initObj.hasOwnProperty('maxvehmass')) {
        this.maxvehmass = initObj.maxvehmass
      }
      else {
        this.maxvehmass = 0;
      }
      if (initObj.hasOwnProperty('maxvehheight')) {
        this.maxvehheight = initObj.maxvehheight
      }
      else {
        this.maxvehheight = 0;
      }
      if (initObj.hasOwnProperty('maxvehwidth')) {
        this.maxvehwidth = initObj.maxvehwidth
      }
      else {
        this.maxvehwidth = 0;
      }
      if (initObj.hasOwnProperty('maxvehlength')) {
        this.maxvehlength = initObj.maxvehlength
      }
      else {
        this.maxvehlength = 0;
      }
      if (initObj.hasOwnProperty('maxvehaxles')) {
        this.maxvehaxles = initObj.maxvehaxles
      }
      else {
        this.maxvehaxles = 0;
      }
      if (initObj.hasOwnProperty('minvehocc')) {
        this.minvehocc = initObj.minvehocc
      }
      else {
        this.minvehocc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlDetail
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [signal]
    bufferOffset = _arraySerializer.uint8(obj.signal, buffer, bufferOffset, null);
    // Serialize message field [closed]
    bufferOffset = _serializer.uint8(obj.closed, buffer, bufferOffset);
    // Serialize message field [chains]
    bufferOffset = _serializer.uint8(obj.chains, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [lataffinity]
    bufferOffset = _serializer.uint8(obj.lataffinity, buffer, bufferOffset);
    // Check that the constant length array field [latperm] has the right length
    if (obj.latperm.length !== 2) {
      throw new Error('Unable to serialize array field latperm - length must be 2')
    }
    // Serialize message field [latperm]
    bufferOffset = _arraySerializer.uint8(obj.latperm, buffer, bufferOffset, 2);
    // Serialize message field [parking]
    bufferOffset = _serializer.uint8(obj.parking, buffer, bufferOffset);
    // Serialize message field [minspeed]
    bufferOffset = _serializer.uint16(obj.minspeed, buffer, bufferOffset);
    // Serialize message field [maxspeed]
    bufferOffset = _serializer.uint16(obj.maxspeed, buffer, bufferOffset);
    // Serialize message field [minhdwy]
    bufferOffset = _serializer.uint16(obj.minhdwy, buffer, bufferOffset);
    // Serialize message field [maxvehmass]
    bufferOffset = _serializer.uint16(obj.maxvehmass, buffer, bufferOffset);
    // Serialize message field [maxvehheight]
    bufferOffset = _serializer.uint8(obj.maxvehheight, buffer, bufferOffset);
    // Serialize message field [maxvehwidth]
    bufferOffset = _serializer.uint8(obj.maxvehwidth, buffer, bufferOffset);
    // Serialize message field [maxvehlength]
    bufferOffset = _serializer.uint16(obj.maxvehlength, buffer, bufferOffset);
    // Serialize message field [maxvehaxles]
    bufferOffset = _serializer.uint8(obj.maxvehaxles, buffer, bufferOffset);
    // Serialize message field [minvehocc]
    bufferOffset = _serializer.uint8(obj.minvehocc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlDetail
    let len;
    let data = new TrafficControlDetail(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signal]
    data.signal = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [closed]
    data.closed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [chains]
    data.chains = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lataffinity]
    data.lataffinity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [latperm]
    data.latperm = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [parking]
    data.parking = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minspeed]
    data.minspeed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxspeed]
    data.maxspeed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [minhdwy]
    data.minhdwy = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxvehmass]
    data.maxvehmass = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxvehheight]
    data.maxvehheight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxvehwidth]
    data.maxvehwidth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxvehlength]
    data.maxvehlength = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxvehaxles]
    data.maxvehaxles = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minvehocc]
    data.minvehocc = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.signal.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlDetail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1729e85f043b0bad7ed698acb5917bcb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlDetail.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # 
    # @version 0.1
    #
    # Description
    # ...
    
    #TrafficControlDetail ::= CHOICE
    #{
    #	signal OCTET STRING SIZE(0..63),
    #	stop NULL,
    #	yield NULL,
    #	notowing NULL,
    #	restricted NULL,
    #	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},
    #	chains ENUMERATED {no, permitted, required},
    #	direction ENUMERATED {forward, reverse},
    #	lataffinity ENUMERATED {left, right},
    #	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},
    #	parking ENUMERATED {no, parallel, angled},
    #	minspeed INTEGER (0..1023), -- tenths of m/s
    #	maxspeed INTEGER (0..1023), -- tenths of m/s
    #	minhdwy INTEGER (0..2047), -- tenths of meters
    #	maxvehmass INTEGER (0..65535), -- kg
    #	maxvehheight INTEGER (0..127), -- tenths of meters
    #	maxvehwidth INTEGER (0..127), -- tenths of meters
    #	maxvehlength INTEGER (0..1023), -- tenths of meters
    #	maxvehaxles INTEGER (2..15),
    #	minvehocc INTEGER (1..15), 
    #	...
    #}
    
    
    uint8 choice
    
    # enumeration values for choice:
    
    uint8 SIGNAL_CHOICE =0
    uint8 STOP_CHOICE =1
    uint8 YIELD_CHOICE =2
    uint8 NOTOWING_CHOICE =3
    uint8 RESTRICTED_CHOICE =4
    uint8 CLOSED_CHOICE =5
    uint8 CHAINS_CHOICE =6
    uint8 DIRECTION_CHOICE =7
    uint8 LATAFFINITY_CHOICE =8
    uint8 LATPERM_CHOICE =9
    uint8 PARKING_CHOICE =10
    uint8 MINSPEED_CHOICE =11
    uint8 MAXSPEED_CHOICE =12
    uint8 MINHDWY_CHOICE =13
    uint8 MAXVEHMASS_CHOICE =14
    uint8 MAXVEHHEIGHT_CHOICE =15
    uint8 MAXVEHWIDTH_CHOICE =16
    uint8 MAXVEHLENGTH_CHOICE =17
    uint8 MAXVEHAXLES_CHOICE =18
    uint8 MINVEHOCC_CHOICE =19
    
    # signal ::= OCTET STRING SIZE(0..63)
    uint8[] signal
    
    #closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}
    
    uint8 closed
    
    # enumeration values for closed:
    
    uint8 OPEN=0
    
    uint8 CLOSED=1
    
    uint8 TAPERLEFT=2
    
    uint8 TAPERRIGHT=3
    
    uint8 OPENLEFT=4
    
    uint8 OPENRIGHT=5
    
    #chains ENUMERATED {no, permitted, required}
    
    uint8 chains
    
    # enumeration values for chains:
    
    uint8 NO=0
    
    uint8 PERMITTED=1
    
    uint8 REQUIRED=2
    
    
    #direction ENUMERATED {forward, reverse}
    
    uint8 direction
    
    # enumeration values for direction:
    
    uint8 FORWARD=0
    
    uint8 REVERSE=1
    
    #lataffinity ENUMERATED {left, right}
    
    uint8 lataffinity
    
    # enumeration values for lataffinity:
    
    uint8 LEFT=0
    
    uint8 RIGHT=1
    
    #latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}
    
    uint8[2] latperm
    
    # enumeration values for latperm:
    
    uint8 NONE=0
    
    # uint8 PERMITTED=1 redeclaration
    
    uint8 PASSINGONLY=2
    
    uint8 EMERGENCYONLY=3
    
    #parking ENUMERATED {no, parallel, angled}
    
    uint8 parking
    
    # enumeration values for parking:
    
    # uint8 NO=0 redeclaration
    
    uint8 PARALLEL=1
    
    uint8 ANGLED=2
    
    #minspeed ::= INTEGER (0..1023), -- tenths of m/s
    uint16 minspeed
    
    #maxspeed ::= INTEGER (0..1023), -- tenths of m/s
    uint16 maxspeed
    
    #minhdwy ::= INTEGER (0..2047), -- tenths of meters
    uint16 minhdwy
    
    #maxvehmass ::= INTEGER (0..65535), -- kg
    uint16 maxvehmass
    
    #maxvehheight ::= INTEGER (0..127), -- tenths of meters
    uint8 maxvehheight
    
    #maxvehwidth ::= INTEGER (0..127), -- tenths of meters
    uint8 maxvehwidth
    
    #maxvehlength ::= INTEGER (0..1023), -- tenths of meters
    uint16 maxvehlength
    
    #maxvehaxles ::= INTEGER (2..15)
    uint8 maxvehaxles
    
    #minvehocc ::= INTEGER (1..15)
    uint8 minvehocc
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficControlDetail(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.signal !== undefined) {
      resolved.signal = msg.signal;
    }
    else {
      resolved.signal = []
    }

    if (msg.closed !== undefined) {
      resolved.closed = msg.closed;
    }
    else {
      resolved.closed = 0
    }

    if (msg.chains !== undefined) {
      resolved.chains = msg.chains;
    }
    else {
      resolved.chains = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.lataffinity !== undefined) {
      resolved.lataffinity = msg.lataffinity;
    }
    else {
      resolved.lataffinity = 0
    }

    if (msg.latperm !== undefined) {
      resolved.latperm = msg.latperm;
    }
    else {
      resolved.latperm = new Array(2).fill(0)
    }

    if (msg.parking !== undefined) {
      resolved.parking = msg.parking;
    }
    else {
      resolved.parking = 0
    }

    if (msg.minspeed !== undefined) {
      resolved.minspeed = msg.minspeed;
    }
    else {
      resolved.minspeed = 0
    }

    if (msg.maxspeed !== undefined) {
      resolved.maxspeed = msg.maxspeed;
    }
    else {
      resolved.maxspeed = 0
    }

    if (msg.minhdwy !== undefined) {
      resolved.minhdwy = msg.minhdwy;
    }
    else {
      resolved.minhdwy = 0
    }

    if (msg.maxvehmass !== undefined) {
      resolved.maxvehmass = msg.maxvehmass;
    }
    else {
      resolved.maxvehmass = 0
    }

    if (msg.maxvehheight !== undefined) {
      resolved.maxvehheight = msg.maxvehheight;
    }
    else {
      resolved.maxvehheight = 0
    }

    if (msg.maxvehwidth !== undefined) {
      resolved.maxvehwidth = msg.maxvehwidth;
    }
    else {
      resolved.maxvehwidth = 0
    }

    if (msg.maxvehlength !== undefined) {
      resolved.maxvehlength = msg.maxvehlength;
    }
    else {
      resolved.maxvehlength = 0
    }

    if (msg.maxvehaxles !== undefined) {
      resolved.maxvehaxles = msg.maxvehaxles;
    }
    else {
      resolved.maxvehaxles = 0
    }

    if (msg.minvehocc !== undefined) {
      resolved.minvehocc = msg.minvehocc;
    }
    else {
      resolved.minvehocc = 0
    }

    return resolved;
    }
};

// Constants for message
TrafficControlDetail.Constants = {
  SIGNAL_CHOICE: 0,
  STOP_CHOICE: 1,
  YIELD_CHOICE: 2,
  NOTOWING_CHOICE: 3,
  RESTRICTED_CHOICE: 4,
  CLOSED_CHOICE: 5,
  CHAINS_CHOICE: 6,
  DIRECTION_CHOICE: 7,
  LATAFFINITY_CHOICE: 8,
  LATPERM_CHOICE: 9,
  PARKING_CHOICE: 10,
  MINSPEED_CHOICE: 11,
  MAXSPEED_CHOICE: 12,
  MINHDWY_CHOICE: 13,
  MAXVEHMASS_CHOICE: 14,
  MAXVEHHEIGHT_CHOICE: 15,
  MAXVEHWIDTH_CHOICE: 16,
  MAXVEHLENGTH_CHOICE: 17,
  MAXVEHAXLES_CHOICE: 18,
  MINVEHOCC_CHOICE: 19,
  OPEN: 0,
  CLOSED: 1,
  TAPERLEFT: 2,
  TAPERRIGHT: 3,
  OPENLEFT: 4,
  OPENRIGHT: 5,
  NO: 0,
  PERMITTED: 1,
  REQUIRED: 2,
  FORWARD: 0,
  REVERSE: 1,
  LEFT: 0,
  RIGHT: 1,
  NONE: 0,
  PASSINGONLY: 2,
  EMERGENCYONLY: 3,
  PARALLEL: 1,
  ANGLED: 2,
}

module.exports = TrafficControlDetail;
