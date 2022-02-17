// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficControlRequestV01 = require('./TrafficControlRequestV01.js');

//-----------------------------------------------------------

class TrafficControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.tcrV01 = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('tcrV01')) {
        this.tcrV01 = initObj.tcrV01
      }
      else {
        this.tcrV01 = new TrafficControlRequestV01();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlRequest
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [tcrV01]
    bufferOffset = TrafficControlRequestV01.serialize(obj.tcrV01, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlRequest
    let len;
    let data = new TrafficControlRequest(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tcrV01]
    data.tcrV01 = TrafficControlRequestV01.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TrafficControlRequestV01.getMessageSize(object.tcrV01);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4cf6cce1430d4d443b6d27e379c1881';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlRequest.msg
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
    
    #TrafficControlRequest ::= CHOICE
    #{
    #	reserved NULL, -- skip version zero
    #	tcrV01 TrafficControlRequestV01, -- traffic control request version 1
    #	...
    #}
    
    uint8 choice
    
    uint8 RESERVED=0
    uint8 TCRV01=1
    
    #tcrV01 ::= TrafficControlRequestV01
    j2735_msgs/TrafficControlRequestV01 tcrV01
    
    ================================================================================
    MSG: j2735_msgs/TrafficControlRequestV01
    #
    # TrafficControlRequestV01.msg
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
    
    #TrafficControlRequestV01 ::= SEQUENCE
    #{
    #	reqid Id64b, -- randomly generated ephemeral request identifier
    #	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests
    #	scale INTEGER (-3..3), -- vertex offset units 10^n meters
    #	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds
    #}
    
    
    # reqid ::= Id64b
    j2735_msgs/Id64b reqid
    
    # reqseq ::= INTEGER (0..255)
    uint8 reqseq
    
    # Scale ::= INTEGER (-3..3)  
    int8 scale
    
    # Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds
    j2735_msgs/TrafficControlBounds[] bounds
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ================================================================================
    MSG: j2735_msgs/Id64b
    #
    # Id64b.msg
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
    
    # Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids
    
    uint8[8] id
    ================================================================================
    MSG: j2735_msgs/TrafficControlBounds
    #
    # TrafficControlBounds.msg
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
    
    
    #TrafficControlBounds ::= SEQUENCE
    #{
    #	oldest EpochMins, -- timestamp of oldest traffic control message within bounds
    #	reflon Longitude, -- initial vertex reference longitude
    #	reflat Latitude, -- initial vertex reference latitude
    #	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters
    #}
    
    #oldest ::= EpochMins
    uint64 oldest
    
    # reflon ::= INTEGER (-1799999999..1800000000)
    #  -- initial vertex reference longitude
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 180 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 reflon
    
    int32 REFLON_MAX = 1800000000
    int32 REFLON_MIN = -1799999999
    int32 REFLON_UNAVAILABLE = 1800000001
    
    
    # reflat ::= INTEGER (-900000000..900000000)
    #  -- initial vertex reference latitude
    #  -- LSB = 1/10 micro degree
    #  -- Providing a range of plus-minus 90 degrees
    #  -- Convert to degree with factor 0.0000001 when field is used
    int32 reflat
    
    int32 REFLAT_MAX = 900000000
    int32 REFLAT_MIN = -900000000
    int32 REFLAT_UNAVAILABLE = 900000001
    
    #offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint 
    j2735_msgs/OffsetPoint[3] offsets
    
    ================================================================================
    MSG: j2735_msgs/OffsetPoint
    #
    # OffsetPoint.msg
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
    
    #OffsetPoint ::= SEQUENCE
    #{
    #	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters
    #	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters
    #}
    
    #deltax ::= INTEGER (-32768..32767)
    int16 deltax
    
    #deltay ::= INTEGER (-32768..32767)
    int16 deltay
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficControlRequest(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.tcrV01 !== undefined) {
      resolved.tcrV01 = TrafficControlRequestV01.Resolve(msg.tcrV01)
    }
    else {
      resolved.tcrV01 = new TrafficControlRequestV01()
    }

    return resolved;
    }
};

// Constants for message
TrafficControlRequest.Constants = {
  RESERVED: 0,
  TCRV01: 1,
}

module.exports = TrafficControlRequest;
