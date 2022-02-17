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

class OverlayLaneList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.overlay_lane_list = null;
    }
    else {
      if (initObj.hasOwnProperty('overlay_lane_list')) {
        this.overlay_lane_list = initObj.overlay_lane_list
      }
      else {
        this.overlay_lane_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OverlayLaneList
    // Serialize message field [overlay_lane_list]
    bufferOffset = _arraySerializer.uint16(obj.overlay_lane_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OverlayLaneList
    let len;
    let data = new OverlayLaneList(null);
    // Deserialize message field [overlay_lane_list]
    data.overlay_lane_list = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.overlay_lane_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/OverlayLaneList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6336706d1d1df05ba24af7224350228';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # OverlayLaneList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Overlay Lane List data frame is a sequence of lane IDs which refers to lane objects that overlap or overlay the
    # current lane's spatial path.
    #  OverlayLaneList ::= SEQUENCE (SIZE(1..5)) OF LaneID
    # -- The unique ID numbers for any lane object which have
    # -- spatial paths that overlay (run on top of, and not
    # -- simply cross with) the current lane.
    # -- Such as a train path that overlays a motor vehicle
    # -- lane object for a roadway segment.
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is
    # -- not available or not known
    # -- the value 255 is reserved for future use
    uint16[] overlay_lane_list
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OverlayLaneList(null);
    if (msg.overlay_lane_list !== undefined) {
      resolved.overlay_lane_list = msg.overlay_lane_list;
    }
    else {
      resolved.overlay_lane_list = []
    }

    return resolved;
    }
};

module.exports = OverlayLaneList;
