// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeAttributeXY = require('./NodeAttributeXY.js');

//-----------------------------------------------------------

class NodeAttributeXYList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_attribute_xy_List = null;
    }
    else {
      if (initObj.hasOwnProperty('node_attribute_xy_List')) {
        this.node_attribute_xy_List = initObj.node_attribute_xy_List
      }
      else {
        this.node_attribute_xy_List = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeAttributeXYList
    // Serialize message field [node_attribute_xy_List]
    // Serialize the length for message field [node_attribute_xy_List]
    bufferOffset = _serializer.uint32(obj.node_attribute_xy_List.length, buffer, bufferOffset);
    obj.node_attribute_xy_List.forEach((val) => {
      bufferOffset = NodeAttributeXY.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeAttributeXYList
    let len;
    let data = new NodeAttributeXYList(null);
    // Deserialize message field [node_attribute_xy_List]
    // Deserialize array length for message field [node_attribute_xy_List]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_attribute_xy_List = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_attribute_xy_List[i] = NodeAttributeXY.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_attribute_xy_List.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/NodeAttributeXYList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba1a3b7f9b24a9840d91ad1b406c78fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # NodeAttributeXYList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The NodeAttributeXYList data frame consists of a list of NodeAttributeXY entries.
    #
    # NodeAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF NodeAttributeXY
    
    j2735_msgs/NodeAttributeXY[] node_attribute_xy_List
    
    ================================================================================
    MSG: j2735_msgs/NodeAttributeXY
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
    const resolved = new NodeAttributeXYList(null);
    if (msg.node_attribute_xy_List !== undefined) {
      resolved.node_attribute_xy_List = new Array(msg.node_attribute_xy_List.length);
      for (let i = 0; i < resolved.node_attribute_xy_List.length; ++i) {
        resolved.node_attribute_xy_List[i] = NodeAttributeXY.Resolve(msg.node_attribute_xy_List[i]);
      }
    }
    else {
      resolved.node_attribute_xy_List = []
    }

    return resolved;
    }
};

module.exports = NodeAttributeXYList;
