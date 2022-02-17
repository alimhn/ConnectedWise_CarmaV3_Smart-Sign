// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConnectingLane = require('./ConnectingLane.js');
let IntersectionReferenceID = require('./IntersectionReferenceID.js');

//-----------------------------------------------------------

class Connection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connecting_lane = null;
      this.remote_intersection = null;
      this.remote_intersection_exists = null;
      this.signal_group = null;
      this.signal_group_exists = null;
      this.user_class = null;
      this.user_class_exists = null;
      this.connection_id = null;
      this.connection_id_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('connecting_lane')) {
        this.connecting_lane = initObj.connecting_lane
      }
      else {
        this.connecting_lane = new ConnectingLane();
      }
      if (initObj.hasOwnProperty('remote_intersection')) {
        this.remote_intersection = initObj.remote_intersection
      }
      else {
        this.remote_intersection = new IntersectionReferenceID();
      }
      if (initObj.hasOwnProperty('remote_intersection_exists')) {
        this.remote_intersection_exists = initObj.remote_intersection_exists
      }
      else {
        this.remote_intersection_exists = false;
      }
      if (initObj.hasOwnProperty('signal_group')) {
        this.signal_group = initObj.signal_group
      }
      else {
        this.signal_group = 0;
      }
      if (initObj.hasOwnProperty('signal_group_exists')) {
        this.signal_group_exists = initObj.signal_group_exists
      }
      else {
        this.signal_group_exists = false;
      }
      if (initObj.hasOwnProperty('user_class')) {
        this.user_class = initObj.user_class
      }
      else {
        this.user_class = 0;
      }
      if (initObj.hasOwnProperty('user_class_exists')) {
        this.user_class_exists = initObj.user_class_exists
      }
      else {
        this.user_class_exists = false;
      }
      if (initObj.hasOwnProperty('connection_id')) {
        this.connection_id = initObj.connection_id
      }
      else {
        this.connection_id = 0;
      }
      if (initObj.hasOwnProperty('connection_id_exists')) {
        this.connection_id_exists = initObj.connection_id_exists
      }
      else {
        this.connection_id_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Connection
    // Serialize message field [connecting_lane]
    bufferOffset = ConnectingLane.serialize(obj.connecting_lane, buffer, bufferOffset);
    // Serialize message field [remote_intersection]
    bufferOffset = IntersectionReferenceID.serialize(obj.remote_intersection, buffer, bufferOffset);
    // Serialize message field [remote_intersection_exists]
    bufferOffset = _serializer.bool(obj.remote_intersection_exists, buffer, bufferOffset);
    // Serialize message field [signal_group]
    bufferOffset = _serializer.uint8(obj.signal_group, buffer, bufferOffset);
    // Serialize message field [signal_group_exists]
    bufferOffset = _serializer.bool(obj.signal_group_exists, buffer, bufferOffset);
    // Serialize message field [user_class]
    bufferOffset = _serializer.uint8(obj.user_class, buffer, bufferOffset);
    // Serialize message field [user_class_exists]
    bufferOffset = _serializer.bool(obj.user_class_exists, buffer, bufferOffset);
    // Serialize message field [connection_id]
    bufferOffset = _serializer.uint8(obj.connection_id, buffer, bufferOffset);
    // Serialize message field [connection_id_exists]
    bufferOffset = _serializer.bool(obj.connection_id_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Connection
    let len;
    let data = new Connection(null);
    // Deserialize message field [connecting_lane]
    data.connecting_lane = ConnectingLane.deserialize(buffer, bufferOffset);
    // Deserialize message field [remote_intersection]
    data.remote_intersection = IntersectionReferenceID.deserialize(buffer, bufferOffset);
    // Deserialize message field [remote_intersection_exists]
    data.remote_intersection_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [signal_group]
    data.signal_group = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signal_group_exists]
    data.signal_group_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [user_class]
    data.user_class = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [user_class_exists]
    data.user_class_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_id]
    data.connection_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [connection_id_exists]
    data.connection_id_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/Connection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d81d4cac5c46799dfbcbe8479a35e74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Connection.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at
    # the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound
    # (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this
    # to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected
    # conditions).
    #
    # Connection ::= SEQUENCE {
    # -- The subject lane connecting to this lane is:
    # connectingLane ConnectingLane,
    # -- The index of the connecting lane and also
    # -- the maneuver from the current lane to it
    # remoteIntersection IntersectionReferenceID OPTIONAL,
    # -- This entry is only used when the
    # -- indicated connecting lane belongs
    # -- to another intersection layout. This
    # -- provides a means to create meshes of lanes
    # -- SPAT mapping details at the stop line are:
    # signalGroup SignalGroupID OPTIONAL,
    # -- The matching signal group send by
    # -- the SPAT message for this lane/maneuver.
    # -- Shall be present unless the connectingLane
    # -- has no signal group (is un-signalized)
    # userClass RestrictionClassID OPTIONAL,
    # -- The Restriction Class of users this applies to
    # -- The use of some lane/maneuver and SignalGroupID
    # -- pairings are restricted to selected users.
    # -- When absent, the SignalGroupID applies to all
    # -- Movement assist details are given by:
    # connectionID LaneConnectionID OPTIONAL
    # -- An optional connection index used to
    # -- relate this lane connection to any dynamic
    # -- clearance data in the SPAT. Note that
    # -- the index may be shared with other
    # -- connections if the clearance data is common
    # }
    
    j2735_msgs/ConnectingLane connecting_lane
    
    j2735_msgs/IntersectionReferenceID remote_intersection
    bool remote_intersection_exists
    
    # SignalGroupID ::= INTEGER (0..255)
    uint8 signal_group
    bool signal_group_exists
    
    # RestrictionClassID ::= INTEGER (0..255)
    uint8 user_class
    bool user_class_exists
    
    # LaneConnectionID ::= INTEGER (0..255)
    uint8 connection_id
    bool connection_id_exists
    
    ================================================================================
    MSG: j2735_msgs/ConnectingLane
    #
    # ConnectingLane.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # ConnectingLane ::= SEQUENCE {
    # lane LaneID,
    # -- Index of the connecting lane
    # maneuver AllowedManeuvers OPTIONAL
    # -- The Maneuver between
    # -- the enclosing lane and this lane
    # -- at the stop line to connect them
    # }
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is
    # -- not available or not known
    # -- the value 255 is reserved for future use
    uint16 lane
    uint16 LANE_UNAVAILABLE=0
    
    # -- the permitted maneuvers for this lane
    # AllowedManeuvers ::= BIT STRING {
    # -- With bits as defined:
    # -- Allowed maneuvers at path end (stop line)
    # -- *** All maneuvers with bits not set are therefore prohibited ! ***
    # -- A value of zero shall be used for unknown, indicating no Maneuver
    j2735_msgs/AllowedManeuvers maneuver
    bool maneuver_exists
    
    
    
    ================================================================================
    MSG: j2735_msgs/AllowedManeuvers
    #
    # AllowedManeuvers.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # AllowedManeuvers ::= BIT STRING {
    # -- With bits as defined:
    # -- Allowed maneuvers at path end (stop line)
    # -- All maneuvers with bits not set are therefore prohibited !
    # -- A value of zero shall be used for unknown, indicating no Maneuver
    # maneuverStraightAllowed(0),
    # -- a Straight movement is allowed in this lane
    # maneuverLeftAllowed(1),
    # -- a Left Turn movement is allowed in this lane
    # maneuverRightAllowed(2),
    # -- a Right Turn movement is allowed in this lane
    # maneuverUTurnAllowed(3),
    # -- a U turn movement is allowed in this lane
    # maneuverLeftTurnOnRedAllowed (4),
    # -- a Stop, and then proceed when safe movement
    # -- is allowed in this lane
    # maneuverRightTurnOnRedAllowed (5),
    # -- a Stop, and then proceed when safe movement
    # -- is allowed in this lane
    # maneuverLaneChangeAllowed(6),
    # -- a movement which changes to an outer lane
    # -- on the egress side is allowed in this lane
    # -- (example: left into either outbound lane)
    # maneuverNoStoppingAllowed(7),
    # -- the vehicle should not stop at the stop line
    # -- (example: a flashing green arrow)
    # yieldAllwaysRequired(8),
    # -- the allowed movements above are not protected
    # -- (example: an permanent yellow condition)
    # goWithHalt(9),
    # -- after making a full stop, may proceed
    # caution(10),
    # -- proceed past stop line with caution
    # reserved1(11)
    # -- used to align to 12 Bit Field
    # } (SIZE(12))
    
    uint16 allowed_maneuvers
    
    # Bit flags
    uint16 STRAIGHT=1
    uint16 LEFT_TURN=2
    uint16 RIGHT_TURN=4
    uint16 U_TURN=8
    uint16 LEFT_TURN_ON_RED=16
    uint16 RIGHT_TURN_ON_RED=32
    uint16 LANE_CHANGE=64
    uint16 NO_STOPPING_ALLOWED=128
    uint16 ALWAYS_YIELD=256
    uint16 GO_WITH_HALT=512
    uint16 CAUTION=1024
    
    ================================================================================
    MSG: j2735_msgs/IntersectionReferenceID
    #
    # IntersectionReferenceID.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an
    # IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is
    # guaranteed to be globally unique.
    
    # region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)
    # -- a globally unique regional assignment value
    # -- typical assigned to a regional DOT authority
    # -- the value zero shall be used for testing needs
    # 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.
    uint16 region
    uint16 REGION_UNAVAILABLE=0
    bool region_exists
    
    # id IntersectionID ::= INTEGER (0..65535)
    # -- a unique mapping to the intersection
    # -- in question within the above region of use
    uint16 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Connection(null);
    if (msg.connecting_lane !== undefined) {
      resolved.connecting_lane = ConnectingLane.Resolve(msg.connecting_lane)
    }
    else {
      resolved.connecting_lane = new ConnectingLane()
    }

    if (msg.remote_intersection !== undefined) {
      resolved.remote_intersection = IntersectionReferenceID.Resolve(msg.remote_intersection)
    }
    else {
      resolved.remote_intersection = new IntersectionReferenceID()
    }

    if (msg.remote_intersection_exists !== undefined) {
      resolved.remote_intersection_exists = msg.remote_intersection_exists;
    }
    else {
      resolved.remote_intersection_exists = false
    }

    if (msg.signal_group !== undefined) {
      resolved.signal_group = msg.signal_group;
    }
    else {
      resolved.signal_group = 0
    }

    if (msg.signal_group_exists !== undefined) {
      resolved.signal_group_exists = msg.signal_group_exists;
    }
    else {
      resolved.signal_group_exists = false
    }

    if (msg.user_class !== undefined) {
      resolved.user_class = msg.user_class;
    }
    else {
      resolved.user_class = 0
    }

    if (msg.user_class_exists !== undefined) {
      resolved.user_class_exists = msg.user_class_exists;
    }
    else {
      resolved.user_class_exists = false
    }

    if (msg.connection_id !== undefined) {
      resolved.connection_id = msg.connection_id;
    }
    else {
      resolved.connection_id = 0
    }

    if (msg.connection_id_exists !== undefined) {
      resolved.connection_id_exists = msg.connection_id_exists;
    }
    else {
      resolved.connection_id_exists = false
    }

    return resolved;
    }
};

module.exports = Connection;
