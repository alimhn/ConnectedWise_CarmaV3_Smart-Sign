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

class IntersectionStatusObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intersection_status_object = null;
    }
    else {
      if (initObj.hasOwnProperty('intersection_status_object')) {
        this.intersection_status_object = initObj.intersection_status_object
      }
      else {
        this.intersection_status_object = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntersectionStatusObject
    // Serialize message field [intersection_status_object]
    bufferOffset = _serializer.uint16(obj.intersection_status_object, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionStatusObject
    let len;
    let data = new IntersectionStatusObject(null);
    // Deserialize message field [intersection_status_object]
    data.intersection_status_object = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/IntersectionStatusObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '189e3f94ed4f7d42fc526476bb41da86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # IntersectionStatusObject.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Intersection Status Object contains Advanced Traffic Controller (ATC) status information that may be sent to
    # local OBUs as part of the SPAT process.
    
    # IntersectionStatusObject ::= BIT STRING {
    # manualControlIsEnabled (0),
    # -- Timing reported is per programmed values, etc. but person
    # -- at cabinet can manually request that certain intervals are
    # -- terminated early (e.g. green).
    # stopTimeIsActivated (1),
    # -- And all counting/timing has stopped.
    # failureFlash (2),
    # -- Above to be used for any detected hardware failures,
    # -- e.g. conflict monitor as well as for police flash
    # preemptIsActive (3),
    # signalPriorityIsActive (4),
    # -- Additional states
    # fixedTimeOperation (5),
    # -- Schedule of signals is based on time only
    # -- (i.e. the state can be calculated)
    # trafficDependentOperation (6),
    # -- Operation is based on different levels of traffic parameters
    # -- (requests, duration of gaps or more complex parameters)
    # standbyOperation (7),
    # -- Controller: partially switched off or partially amber flashing
    # failureMode (8),
    # -- Controller has a problem or failure in operation
    # off (9),
    # -- Controller is switched off
    # -- Related to MAP and SPAT bindings
    # recentMAPmessageUpdate (10),
    # -- Map revision with content changes
    # recentChangeInMAPassignedLanesIDsUsed (11),
    # -- Change in MAP's assigned lanes used (lane changes)
    # -- Changes in the active lane list description
    # noValidMAPisAvailableAtThisTime (12),
    # -- MAP (and various lanes indexes) not available
    # noValidSPATisAvailableAtThisTime (13)
    # -- SPAT system is not working at this time
    # -- Bits 14,15 reserved at this time and shall be zero
    # } (SIZE(16))
    
    uint16 intersection_status_object
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntersectionStatusObject(null);
    if (msg.intersection_status_object !== undefined) {
      resolved.intersection_status_object = msg.intersection_status_object;
    }
    else {
      resolved.intersection_status_object = 0
    }

    return resolved;
    }
};

module.exports = IntersectionStatusObject;
