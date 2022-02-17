// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Connection = require('./Connection.js');

//-----------------------------------------------------------

class ConnectsToList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connect_to_list = null;
    }
    else {
      if (initObj.hasOwnProperty('connect_to_list')) {
        this.connect_to_list = initObj.connect_to_list
      }
      else {
        this.connect_to_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectsToList
    // Serialize message field [connect_to_list]
    // Serialize the length for message field [connect_to_list]
    bufferOffset = _serializer.uint32(obj.connect_to_list.length, buffer, bufferOffset);
    obj.connect_to_list.forEach((val) => {
      bufferOffset = Connection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectsToList
    let len;
    let data = new ConnectsToList(null);
    // Deserialize message field [connect_to_list]
    // Deserialize array length for message field [connect_to_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.connect_to_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.connect_to_list[i] = Connection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 17 * object.connect_to_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/ConnectsToList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ebe5fd15cf3f33abba7b953dda1da83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # ConnectsToList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The ConnectsToList data structure is used in the generic lane descriptions to provide a sequence of other defined
    # lanes to which each lane connects beyond its stop point. See the Connection data frame entry for details. Note that this
    # data frame is not used in some lane object types.
    #
    # ConnectsToList ::= SEQUENCE (SIZE(1..16)) OF Connection
    
    j2735_msgs/Connection[] connect_to_list
    
    ================================================================================
    MSG: j2735_msgs/Connection
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
    const resolved = new ConnectsToList(null);
    if (msg.connect_to_list !== undefined) {
      resolved.connect_to_list = new Array(msg.connect_to_list.length);
      for (let i = 0; i < resolved.connect_to_list.length; ++i) {
        resolved.connect_to_list[i] = Connection.Resolve(msg.connect_to_list[i]);
      }
    }
    else {
      resolved.connect_to_list = []
    }

    return resolved;
    }
};

module.exports = ConnectsToList;
