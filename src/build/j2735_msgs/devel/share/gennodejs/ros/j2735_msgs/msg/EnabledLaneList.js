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

class EnabledLaneList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id_list = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id_list')) {
        this.lane_id_list = initObj.lane_id_list
      }
      else {
        this.lane_id_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnabledLaneList
    // Serialize message field [lane_id_list]
    bufferOffset = _arraySerializer.uint16(obj.lane_id_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnabledLaneList
    let len;
    let data = new EnabledLaneList(null);
    // Deserialize message field [lane_id_list]
    data.lane_id_list = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.lane_id_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/EnabledLaneList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bac2474615e566c4122e6a3675ef4441';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # EnabledLaneList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Enabled Lane List data frame is a sequence of lane IDs for lane objects that are activated in the current map
    # configuration. These lanes, unlike most lanes, have their RevocableLane bit set to one (asserted). Such lanes are not
    # considered to be part of the current map unless they are in the Enabled Lane List. This concept is used to describe all the
    # possible regulatory states for a given physical lane.
    #
    # EnabledLaneList ::= SEQUENCE (SIZE(1..16)) OF LaneID
    #-- The unique ID numbers for each
    #-- lane object which is 'active'
    #-- as part of the dynamic map contents.
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is not available or not known
    # -- the value 255 is reserved for future use
    uint16[] lane_id_list
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnabledLaneList(null);
    if (msg.lane_id_list !== undefined) {
      resolved.lane_id_list = msg.lane_id_list;
    }
    else {
      resolved.lane_id_list = []
    }

    return resolved;
    }
};

module.exports = EnabledLaneList;
