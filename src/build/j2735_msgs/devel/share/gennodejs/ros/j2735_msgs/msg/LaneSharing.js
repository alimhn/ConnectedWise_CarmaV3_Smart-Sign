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

class LaneSharing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_sharing = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_sharing')) {
        this.lane_sharing = initObj.lane_sharing
      }
      else {
        this.lane_sharing = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSharing
    // Serialize message field [lane_sharing]
    bufferOffset = _serializer.uint16(obj.lane_sharing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSharing
    let len;
    let data = new LaneSharing(null);
    // Deserialize message field [lane_sharing]
    data.lane_sharing = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneSharing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5b20babfaf86f7076116f556cbdd772';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # LaneSharing.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    #
    # LaneSharing ::= BIT STRING {
    # -- With bits as defined:
    # overlappingLaneDescriptionProvided (0),
    # -- Assert when another lane object is present to describe the
    # -- path of the overlapping shared lane
    # -- this construct is not used for lane objects which simply cross
    # multipleLanesTreatedAsOneLane(1),
    # -- Assert if the lane object path and width details represents
    # -- multiple lanes within it that are not further described
    # -- Various modes and type of traffic that may share this lane:
    # otherNonMotorizedTrafficTypes (2), -- horse drawn etc.
    # individualMotorizedVehicleTraffic (3),
    # busVehicleTraffic (4),
    # taxiVehicleTraffic (5),
    # pedestriansTraffic (6),
    # cyclistVehicleTraffic (7),
    # trackedVehicleTraffic (8),
    # pedestrianTraffic (9)
    # } (SIZE (10))
    # -- All zeros would indicate 'not shared' and 'not overlapping'
    
    uint16 lane_sharing
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSharing(null);
    if (msg.lane_sharing !== undefined) {
      resolved.lane_sharing = msg.lane_sharing;
    }
    else {
      resolved.lane_sharing = 0
    }

    return resolved;
    }
};

module.exports = LaneSharing;
