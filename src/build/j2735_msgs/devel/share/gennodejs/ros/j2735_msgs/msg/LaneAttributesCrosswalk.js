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

class LaneAttributesCrosswalk {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_attributes_crosswalk = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_attributes_crosswalk')) {
        this.lane_attributes_crosswalk = initObj.lane_attributes_crosswalk
      }
      else {
        this.lane_attributes_crosswalk = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneAttributesCrosswalk
    // Serialize message field [lane_attributes_crosswalk]
    bufferOffset = _serializer.uint16(obj.lane_attributes_crosswalk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributesCrosswalk
    let len;
    let data = new LaneAttributesCrosswalk(null);
    // Deserialize message field [lane_attributes_crosswalk]
    data.lane_attributes_crosswalk = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/LaneAttributesCrosswalk';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5120bfe121312032ad85867f1265ce1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # LaneAttributesCrosswalk.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    
    # LaneAttributes-Crosswalk ::= BIT STRING {
    # 	-- With bits as defined:
    # 	-- MUTCD provides no suitable "types" to use here
    # 	crosswalkRevocableLane (0),
    # 		-- this lane may be activated or not based
    # 		-- on the current SPAT message contents
    # 		-- if not asserted, the lane is ALWAYS present
    # 	bicyleUseAllowed (1),
    # 		-- The path allows bicycle traffic,
    # 		-- if not set, this mode is prohibited
    # 	isXwalkFlyOverLane (2),
    # 		-- path of lane is not at grade
    # 	fixedCycleTime (3),
    # 		-- ped walk phases use preset times
    # 		-- i.e. there is not a 'push to cross' button
    # 	biDirectionalCycleTimes (4),
    # 		-- ped walk phases use different SignalGroupID
    # 		-- for each direction. The first SignalGroupID
    # 		-- in the first Connection represents 'inbound'
    # 		-- flow (the direction of travel towards the first
    # 		-- node point) while second SignalGroupID in the
    # 		-- next Connection entry represents the 'outbound'
    # 		-- flow. And use of RestrictionClassID entries
    # 		-- in the Connect follow this same pattern in pairs.
    # 	hasPushToWalkButton (5),
    # 		-- Has a demand input
    # 	audioSupport (6),
    # 		-- audio crossing cues present
    # 	rfSignalRequestPresent (7),
    # 		-- Supports RF push to walk technologies
    # 	unsignalizedSegmentsPresent (8)
    # 		-- The lane path consists of one of more segments
    # 		-- which are not part of a signal group ID
    # } (SIZE (16))
    
    uint16  lane_attributes_crosswalk
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributesCrosswalk(null);
    if (msg.lane_attributes_crosswalk !== undefined) {
      resolved.lane_attributes_crosswalk = msg.lane_attributes_crosswalk;
    }
    else {
      resolved.lane_attributes_crosswalk = 0
    }

    return resolved;
    }
};

module.exports = LaneAttributesCrosswalk;
