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

class NodeAttributeXY {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_attribute_xy = null;
    }
    else {
      if (initObj.hasOwnProperty('node_attribute_xy')) {
        this.node_attribute_xy = initObj.node_attribute_xy
      }
      else {
        this.node_attribute_xy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeAttributeXY
    // Serialize message field [node_attribute_xy]
    bufferOffset = _serializer.uint8(obj.node_attribute_xy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeAttributeXY
    let len;
    let data = new NodeAttributeXY(null);
    // Deserialize message field [node_attribute_xy]
    data.node_attribute_xy = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/NodeAttributeXY';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb1d91b90863669c710a6dc0c23fb07d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # NodeAttributeXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node
    # point.
    #
    # NodeAttributeXY ::= ENUMERATED {
    # -- Various values which pertain only to the current node point
    #
    # -- General Items
    # reserved,
    # stopLine,		-- point where a mid-path stop line exists
    # 			-- See also 'do not block' for segments
    # -- Path finish details
    # roundedCapStyleA, 	-- Used to control final path rounded end shape
    # 		   	-- with edge of curve at final point in a circle
    # roundedCapStyleB,	-- Used to control final path rounded end shape
    # 			-- with edge of curve extending 50% of width past
    # 			-- final point in a circle
    #
    # -- Topography Points (items with no concept of a distance along the path)
    # mergePoint,		-- Japan merge with 1 or more lanes
    # divergePoint,		-- Japan diverge with 1 or more lanes
    # downstreamStopLine,	-- Japan style downstream intersection
    # 			-- (a 2nd intersection) stop line
    # downstreamStartNode, 	-- Japan style downstream intersection
    # 			-- (a 2nd intersection) start node
    #
    # -- Pedestrian Support Attributes
    # closedToTraffic,	-- where a pedestrian may NOT go
    # 			-- to be used during construction events
    # safeIsland,		-- a pedestrian safe stopping point
    # 			-- also called a traffic island
    # 			-- This usage described a point feature on a path,
    # 			-- other entries can describe a path
    # curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT
    # 			-- angled where it meets the edge of the
    # 			-- roadway (user must step up/down)
    # -- Lane geometry details (see standard for defined shapes)
    # hydrantPresent,		-- Or other services access
    # ...
    # }
    
    
    uint8  node_attribute_xy
    
    # enumeration values for status:
    uint8 RESERVED=0
    uint8 STOPLINE=1
    uint8 ROUNDEDCAPSTYLEA=2
    uint8 ROUNDEDCAPSTYLEB=3
    uint8 MERGEPOINT=4
    uint8 DIVERGEPOINT=5
    uint8 DOWNSTREAMSTOPLINE=6
    uint8 DOWNSTREAMSTARTNODE=7
    uint8 CLOSEDTOTRAFFIC=8
    uint8 SAFEISLAND=9
    uint8 CURBPRESENTATSTEPOFF=10
    uint8 HYDRANTPRESENT=11
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeAttributeXY(null);
    if (msg.node_attribute_xy !== undefined) {
      resolved.node_attribute_xy = msg.node_attribute_xy;
    }
    else {
      resolved.node_attribute_xy = 0
    }

    return resolved;
    }
};

// Constants for message
NodeAttributeXY.Constants = {
  RESERVED: 0,
  STOPLINE: 1,
  ROUNDEDCAPSTYLEA: 2,
  ROUNDEDCAPSTYLEB: 3,
  MERGEPOINT: 4,
  DIVERGEPOINT: 5,
  DOWNSTREAMSTOPLINE: 6,
  DOWNSTREAMSTARTNODE: 7,
  CLOSEDTOTRAFFIC: 8,
  SAFEISLAND: 9,
  CURBPRESENTATSTEPOFF: 10,
  HYDRANTPRESENT: 11,
}

module.exports = NodeAttributeXY;
