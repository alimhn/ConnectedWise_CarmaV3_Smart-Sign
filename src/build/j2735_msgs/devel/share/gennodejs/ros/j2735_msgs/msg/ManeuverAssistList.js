// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConnectionManeuverAssist = require('./ConnectionManeuverAssist.js');

//-----------------------------------------------------------

class ManeuverAssistList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_maneuver_assist_list = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_maneuver_assist_list')) {
        this.connection_maneuver_assist_list = initObj.connection_maneuver_assist_list
      }
      else {
        this.connection_maneuver_assist_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManeuverAssistList
    // Serialize message field [connection_maneuver_assist_list]
    // Serialize the length for message field [connection_maneuver_assist_list]
    bufferOffset = _serializer.uint32(obj.connection_maneuver_assist_list.length, buffer, bufferOffset);
    obj.connection_maneuver_assist_list.forEach((val) => {
      bufferOffset = ConnectionManeuverAssist.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManeuverAssistList
    let len;
    let data = new ManeuverAssistList(null);
    // Deserialize message field [connection_maneuver_assist_list]
    // Deserialize array length for message field [connection_maneuver_assist_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.connection_maneuver_assist_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.connection_maneuver_assist_list[i] = ConnectionManeuverAssist.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 11 * object.connection_maneuver_assist_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/ManeuverAssistList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2086e09532cefc78ee69224b474da338';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This entry is used directly by one other data structure in this standard, a DF called DF_LaneAttributes <ASN>.
    #  In addition, this item may be used by data structures in other ITS standards.
    # ManeuverAssistList ::= SEQUENCE (SIZE(1..16)) OF ConnectionManeuverAssist
    
    j2735_msgs/ConnectionManeuverAssist[] connection_maneuver_assist_list
    
    ================================================================================
    MSG: j2735_msgs/ConnectionManeuverAssist
    
    # The ConnectionManeuverAssist data frame contains information about the the dynamic flow of traffic for the lane(s)
    # and maneuvers in question (as determined by the LaneConnectionID). Note that this information can be sent regarding
    # any lane-to-lane movement; it need not be limited to the lanes with active (non-red) phases when sent.
    #
    # ConnectionManeuverAssist ::= SEQUENCE {
    # connectionID LaneConnectionID,
    # -- the common connectionID used by all lanes to which
    # -- this data applies
    # -- (this value traces to ConnectsTo entries in lanes)
    # -- Expected Clearance Information
    # queueLength ZoneLength OPTIONAL,
    # -- Unit = 1 meter, 0 = no queue
    # -- The distance from the stop line to the back
    # -- edge of the last vehicle in the queue,
    # -- as measured along the lane center line.
    # availableStorageLength ZoneLength OPTIONAL,
    # -- Unit = 1 meter, 0 = no space remains
    # -- Distance (e.g. beginning from the downstream
    # -- stop-line up to a given distance) with a high
    # -- probability for successfully executing the
    # -- connecting maneuver between the two lanes
    # -- during the current cycle.
    # -- Used for enhancing the awareness of vehicles
    # -- to anticipate if they can pass the stop line
    # -- of the lane. Used for optimizing the green wave,
    # -- due to knowledge of vehicles waiting in front
    # -- of a red light (downstream).
    # -- The element nextTime in TimeChangeDetails
    # -- in the containing data frame contains the next
    # -- timemark at which an active phase is expected,
    # -- a form of storage flush interval.
    # waitOnStop WaitOnStopline OPTIONAL,
    # -- If "true", the vehicles on this specific connecting
    # -- maneuver have to stop on the stop-line and not
    # -- to enter the collision area
    # pedBicycleDetect PedestrianBicycleDetect OPTIONAL,
    # -- true if ANY ped or bicycles are detected crossing
    # -- the above lanes. Set to false ONLY if there is a
    # -- high certainty that there are none present,
    # -- otherwise element is not sent.
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ConnectionManeuverAssist}} OPTIONAL,
    # ...
    # }
    
    # LaneConnectionID ::= INTEGER (0..255)
    uint8 connection_id
    
    # ZoneLength ::= INTEGER (0..10000)
    # -- Unit = 1 meter, 0 = unknown,
    # -- The value 10000 to be used for Distances >=10000 m
    # -- (e.g. from known point to another point along a
    # -- known path, often against traffic flow direction
    # -- when used for measuring queues)
    uint16 queue_length
    bool queue_length_exists
    
    # ZoneLength ::= INTEGER (0..10000)
    uint16 available_storage_length
    bool available_storage_length_exists
    
    # WaitOnStopline ::= BOOLEAN --- True or False
    # -- If "true", the vehicles on this specific connecting
    # -- maneuver have to stop on the stop-line
    # -- and not to enter the collision area
    bool wait_on_stop
    bool wait_on_stop_exists
    
    # PedestrianBicycleDetect ::= BOOLEAN
    # -- true if ANY Pedestrians or Bicyclists are
    # -- detected crossing the target lane or lanes
    bool ped_bicycle_detect
    bool ped_bicycle_detect_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManeuverAssistList(null);
    if (msg.connection_maneuver_assist_list !== undefined) {
      resolved.connection_maneuver_assist_list = new Array(msg.connection_maneuver_assist_list.length);
      for (let i = 0; i < resolved.connection_maneuver_assist_list.length; ++i) {
        resolved.connection_maneuver_assist_list[i] = ConnectionManeuverAssist.Resolve(msg.connection_maneuver_assist_list[i]);
      }
    }
    else {
      resolved.connection_maneuver_assist_list = []
    }

    return resolved;
    }
};

module.exports = ManeuverAssistList;
