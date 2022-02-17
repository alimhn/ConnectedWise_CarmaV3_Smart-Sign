// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeXY20b = require('./NodeXY20b.js');
let NodeXY22b = require('./NodeXY22b.js');
let NodeXY24b = require('./NodeXY24b.js');
let NodeXY26b = require('./NodeXY26b.js');
let NodeXY28b = require('./NodeXY28b.js');
let NodeXY32b = require('./NodeXY32b.js');
let NodeLLmD64b = require('./NodeLLmD64b.js');

//-----------------------------------------------------------

class NodeOffsetPointXY {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.choice = null;
      this.node_xy1 = null;
      this.node_xy2 = null;
      this.node_xy3 = null;
      this.node_xy4 = null;
      this.node_xy5 = null;
      this.node_xy6 = null;
      this.node_latlon = null;
    }
    else {
      if (initObj.hasOwnProperty('choice')) {
        this.choice = initObj.choice
      }
      else {
        this.choice = 0;
      }
      if (initObj.hasOwnProperty('node_xy1')) {
        this.node_xy1 = initObj.node_xy1
      }
      else {
        this.node_xy1 = new NodeXY20b();
      }
      if (initObj.hasOwnProperty('node_xy2')) {
        this.node_xy2 = initObj.node_xy2
      }
      else {
        this.node_xy2 = new NodeXY22b();
      }
      if (initObj.hasOwnProperty('node_xy3')) {
        this.node_xy3 = initObj.node_xy3
      }
      else {
        this.node_xy3 = new NodeXY24b();
      }
      if (initObj.hasOwnProperty('node_xy4')) {
        this.node_xy4 = initObj.node_xy4
      }
      else {
        this.node_xy4 = new NodeXY26b();
      }
      if (initObj.hasOwnProperty('node_xy5')) {
        this.node_xy5 = initObj.node_xy5
      }
      else {
        this.node_xy5 = new NodeXY28b();
      }
      if (initObj.hasOwnProperty('node_xy6')) {
        this.node_xy6 = initObj.node_xy6
      }
      else {
        this.node_xy6 = new NodeXY32b();
      }
      if (initObj.hasOwnProperty('node_latlon')) {
        this.node_latlon = initObj.node_latlon
      }
      else {
        this.node_latlon = new NodeLLmD64b();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeOffsetPointXY
    // Serialize message field [choice]
    bufferOffset = _serializer.uint8(obj.choice, buffer, bufferOffset);
    // Serialize message field [node_xy1]
    bufferOffset = NodeXY20b.serialize(obj.node_xy1, buffer, bufferOffset);
    // Serialize message field [node_xy2]
    bufferOffset = NodeXY22b.serialize(obj.node_xy2, buffer, bufferOffset);
    // Serialize message field [node_xy3]
    bufferOffset = NodeXY24b.serialize(obj.node_xy3, buffer, bufferOffset);
    // Serialize message field [node_xy4]
    bufferOffset = NodeXY26b.serialize(obj.node_xy4, buffer, bufferOffset);
    // Serialize message field [node_xy5]
    bufferOffset = NodeXY28b.serialize(obj.node_xy5, buffer, bufferOffset);
    // Serialize message field [node_xy6]
    bufferOffset = NodeXY32b.serialize(obj.node_xy6, buffer, bufferOffset);
    // Serialize message field [node_latlon]
    bufferOffset = NodeLLmD64b.serialize(obj.node_latlon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeOffsetPointXY
    let len;
    let data = new NodeOffsetPointXY(null);
    // Deserialize message field [choice]
    data.choice = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [node_xy1]
    data.node_xy1 = NodeXY20b.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_xy2]
    data.node_xy2 = NodeXY22b.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_xy3]
    data.node_xy3 = NodeXY24b.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_xy4]
    data.node_xy4 = NodeXY26b.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_xy5]
    data.node_xy5 = NodeXY28b.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_xy6]
    data.node_xy6 = NodeXY32b.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_latlon]
    data.node_latlon = NodeLLmD64b.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/NodeOffsetPointXY';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec16b09fe0e361cc7f02f06980d20de3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # NodeOffsetPointXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_NodeOffsetPointXY data frame presents a structure to hold different sized data frames for a single node
    # point in a lane. Nodes are described in terms of X and Y offsets in units of 1 centimeter (when zoom is 1:1).
    #
    # NodeOffsetPointXY ::= CHOICE {
    # -- Nodes with X,Y content
    # node-XY1 Node-XY-20b, -- node is within 5.11m of last node
    # node-XY2 Node-XY-22b, -- node is within 10.23m of last node
    # node-XY3 Node-XY-24b, -- node is within 20.47m of last node
    # node-XY4 Node-XY-26b, -- node is within 40.96m of last node
    # node-XY5 Node-XY-28b, -- node is within 81.91m of last node
    # node-XY6 Node-XY-32b, -- node is within 327.67m of last node
    # node-LatLon Node-LLmD-64b, -- node is a full 32b Lat/Lon range
    # regional RegionalExtension {{REGION.Reg-NodeOffsetPointXY}}
    # 	-- node which follows is of a
    # 	-- regional definition type
    # }
    #
    
    uint8 choice
    uint8 NODE_XY1=0
    uint8 NODE_XY2=1
    uint8 NODE_XY3=2
    uint8 NODE_XY4=3
    uint8 NODE_XY5=4
    uint8 NODE_XY6=5
    uint8 NODE_LATLON=6
    
    j2735_msgs/NodeXY20b node_xy1
    j2735_msgs/NodeXY22b node_xy2
    j2735_msgs/NodeXY24b node_xy3
    j2735_msgs/NodeXY26b node_xy4
    j2735_msgs/NodeXY28b node_xy5
    j2735_msgs/NodeXY32b node_xy6
    j2735_msgs/NodeLLmD64b node_latlon
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    ================================================================================
    MSG: j2735_msgs/NodeXY20b
    #
    # NodeXY20b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 20-bit node type with offset values from the last point in X and Y.
    #
    # Node-XY-20b ::= SEQUENCE {
    # x Offset-B10,
    # y Offset-B10
    # }
    
    # Offset-B10 ::= INTEGER (-512..511)
    # -- a range of +- 5.11 meters
    # A 10-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY22b
    #
    # NodeXY22b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 22-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-22b ::= SEQUENCE {
    # x Offset-B11,
    # y Offset-B11
    # }
    
    # Offset-B11 ::= INTEGER (-1024..1023)
    # -- a range of +- 10.23 meters
    # An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY24b
    #
    # NodeXY24b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 24-bit node type with offset values from the last point in X and Y.
    #
    # Node-XY-24b ::= SEQUENCE {
    # x Offset-B12,
    # y Offset-B12
    # }
    
    
    # Offset-B12 ::= INTEGER (-2048..2047)
    # -- a range of +- 20.47 meters
    # A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
    # reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)
    # directions. The most negative value shall be used to indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY26b
    #
    # NodeXY26b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 26-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-26b ::= SEQUENCE {
    # x Offset-B13,
    # y Offset-B13
    # }
    
    # Offset-B13 ::= INTEGER (-4096..4095)
    # -- a range of +- 40.95 meters
    # A 13-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeXY28b
    #
    # NodeXY28b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 28-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-28b ::= SEQUENCE {
    # x Offset-B14,
    # y Offset-B14
    # }
    
    # A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions.
    # Offset-B14 ::= INTEGER (-8192..8191)
    # -- a range of +- 81.91 meters
    
    float32 x
    float32 y
    
    ================================================================================
    MSG: j2735_msgs/NodeXY32b
    #
    # NodeXY32b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 32-bit node type with offset values from the last point in X and Y.
    
    # Node-XY-32b ::= SEQUENCE {
    # x Offset-B16,
    # y Offset-B16
    # }
    
    # A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
    # reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
    # indicate an unknown value.
    # Offset-B16 ::= INTEGER (-32768..32767)
    # -- a range of +- 327.68 meters
    
    float32 x
    float32 y
    ================================================================================
    MSG: j2735_msgs/NodeLLmD64b
    #
    # NodeLLmD64b.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.
    
    # Node-LLmD-64b ::= SEQUENCE {
    # lon Longitude,
    # lat Latitude
    # }
    
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
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeOffsetPointXY(null);
    if (msg.choice !== undefined) {
      resolved.choice = msg.choice;
    }
    else {
      resolved.choice = 0
    }

    if (msg.node_xy1 !== undefined) {
      resolved.node_xy1 = NodeXY20b.Resolve(msg.node_xy1)
    }
    else {
      resolved.node_xy1 = new NodeXY20b()
    }

    if (msg.node_xy2 !== undefined) {
      resolved.node_xy2 = NodeXY22b.Resolve(msg.node_xy2)
    }
    else {
      resolved.node_xy2 = new NodeXY22b()
    }

    if (msg.node_xy3 !== undefined) {
      resolved.node_xy3 = NodeXY24b.Resolve(msg.node_xy3)
    }
    else {
      resolved.node_xy3 = new NodeXY24b()
    }

    if (msg.node_xy4 !== undefined) {
      resolved.node_xy4 = NodeXY26b.Resolve(msg.node_xy4)
    }
    else {
      resolved.node_xy4 = new NodeXY26b()
    }

    if (msg.node_xy5 !== undefined) {
      resolved.node_xy5 = NodeXY28b.Resolve(msg.node_xy5)
    }
    else {
      resolved.node_xy5 = new NodeXY28b()
    }

    if (msg.node_xy6 !== undefined) {
      resolved.node_xy6 = NodeXY32b.Resolve(msg.node_xy6)
    }
    else {
      resolved.node_xy6 = new NodeXY32b()
    }

    if (msg.node_latlon !== undefined) {
      resolved.node_latlon = NodeLLmD64b.Resolve(msg.node_latlon)
    }
    else {
      resolved.node_latlon = new NodeLLmD64b()
    }

    return resolved;
    }
};

// Constants for message
NodeOffsetPointXY.Constants = {
  NODE_XY1: 0,
  NODE_XY2: 1,
  NODE_XY3: 2,
  NODE_XY4: 3,
  NODE_XY5: 4,
  NODE_XY6: 5,
  NODE_LATLON: 6,
}

module.exports = NodeOffsetPointXY;
