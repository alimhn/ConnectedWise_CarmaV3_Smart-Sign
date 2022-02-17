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

class LayerType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layer_type = null;
    }
    else {
      if (initObj.hasOwnProperty('layer_type')) {
        this.layer_type = initObj.layer_type
      }
      else {
        this.layer_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LayerType
    // Serialize message field [layer_type]
    bufferOffset = _serializer.uint8(obj.layer_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LayerType
    let len;
    let data = new LayerType(null);
    // Deserialize message field [layer_type]
    data.layer_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LayerType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '225f090984ed5db591d792a4385a39de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # LayerType.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Data element used to uniquely identify the type of information to be found in a layer of geographic map fragment
    # such as an intersection.
    #
    
    uint8 layer_type
    
    # LayerType ::= ENUMERATED {
    # none,
    # mixedContent, -- two or more of the below types
    # generalMapData,
    # intersectionData,
    # curveData,
    # roadwaySectionData,
    # parkingAreaData,
    # sharedLaneData,
    # ...
    # }
    
    # enumeration values for plan type:
    uint8       NONE = 0
    uint8       MIXED_CONTENT = 1
    uint8       GENERAL_MAP_DATA = 2
    uint8       INTERSECTION_DATA = 3
    uint8       CURVE_DATA = 4
    uint8       ROADWAY_SECTION_DATA = 5
    uint8       PARKING_AREA_DATA = 6
    uint8       SHARED_LANE_DATA = 7
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LayerType(null);
    if (msg.layer_type !== undefined) {
      resolved.layer_type = msg.layer_type;
    }
    else {
      resolved.layer_type = 0
    }

    return resolved;
    }
};

// Constants for message
LayerType.Constants = {
  NONE: 0,
  MIXED_CONTENT: 1,
  GENERAL_MAP_DATA: 2,
  INTERSECTION_DATA: 3,
  CURVE_DATA: 4,
  ROADWAY_SECTION_DATA: 5,
  PARKING_AREA_DATA: 6,
  SHARED_LANE_DATA: 7,
}

module.exports = LayerType;
