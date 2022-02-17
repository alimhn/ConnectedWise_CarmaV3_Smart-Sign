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

class ConnectionManeuverAssist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_id = null;
      this.queue_length = null;
      this.queue_length_exists = null;
      this.available_storage_length = null;
      this.available_storage_length_exists = null;
      this.wait_on_stop = null;
      this.wait_on_stop_exists = null;
      this.ped_bicycle_detect = null;
      this.ped_bicycle_detect_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_id')) {
        this.connection_id = initObj.connection_id
      }
      else {
        this.connection_id = 0;
      }
      if (initObj.hasOwnProperty('queue_length')) {
        this.queue_length = initObj.queue_length
      }
      else {
        this.queue_length = 0;
      }
      if (initObj.hasOwnProperty('queue_length_exists')) {
        this.queue_length_exists = initObj.queue_length_exists
      }
      else {
        this.queue_length_exists = false;
      }
      if (initObj.hasOwnProperty('available_storage_length')) {
        this.available_storage_length = initObj.available_storage_length
      }
      else {
        this.available_storage_length = 0;
      }
      if (initObj.hasOwnProperty('available_storage_length_exists')) {
        this.available_storage_length_exists = initObj.available_storage_length_exists
      }
      else {
        this.available_storage_length_exists = false;
      }
      if (initObj.hasOwnProperty('wait_on_stop')) {
        this.wait_on_stop = initObj.wait_on_stop
      }
      else {
        this.wait_on_stop = false;
      }
      if (initObj.hasOwnProperty('wait_on_stop_exists')) {
        this.wait_on_stop_exists = initObj.wait_on_stop_exists
      }
      else {
        this.wait_on_stop_exists = false;
      }
      if (initObj.hasOwnProperty('ped_bicycle_detect')) {
        this.ped_bicycle_detect = initObj.ped_bicycle_detect
      }
      else {
        this.ped_bicycle_detect = false;
      }
      if (initObj.hasOwnProperty('ped_bicycle_detect_exists')) {
        this.ped_bicycle_detect_exists = initObj.ped_bicycle_detect_exists
      }
      else {
        this.ped_bicycle_detect_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionManeuverAssist
    // Serialize message field [connection_id]
    bufferOffset = _serializer.uint8(obj.connection_id, buffer, bufferOffset);
    // Serialize message field [queue_length]
    bufferOffset = _serializer.uint16(obj.queue_length, buffer, bufferOffset);
    // Serialize message field [queue_length_exists]
    bufferOffset = _serializer.bool(obj.queue_length_exists, buffer, bufferOffset);
    // Serialize message field [available_storage_length]
    bufferOffset = _serializer.uint16(obj.available_storage_length, buffer, bufferOffset);
    // Serialize message field [available_storage_length_exists]
    bufferOffset = _serializer.bool(obj.available_storage_length_exists, buffer, bufferOffset);
    // Serialize message field [wait_on_stop]
    bufferOffset = _serializer.bool(obj.wait_on_stop, buffer, bufferOffset);
    // Serialize message field [wait_on_stop_exists]
    bufferOffset = _serializer.bool(obj.wait_on_stop_exists, buffer, bufferOffset);
    // Serialize message field [ped_bicycle_detect]
    bufferOffset = _serializer.bool(obj.ped_bicycle_detect, buffer, bufferOffset);
    // Serialize message field [ped_bicycle_detect_exists]
    bufferOffset = _serializer.bool(obj.ped_bicycle_detect_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionManeuverAssist
    let len;
    let data = new ConnectionManeuverAssist(null);
    // Deserialize message field [connection_id]
    data.connection_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [queue_length]
    data.queue_length = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [queue_length_exists]
    data.queue_length_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [available_storage_length]
    data.available_storage_length = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [available_storage_length_exists]
    data.available_storage_length_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wait_on_stop]
    data.wait_on_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wait_on_stop_exists]
    data.wait_on_stop_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ped_bicycle_detect]
    data.ped_bicycle_detect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ped_bicycle_detect_exists]
    data.ped_bicycle_detect_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/ConnectionManeuverAssist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0828917931a657d68a5c850fd3b65bc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    const resolved = new ConnectionManeuverAssist(null);
    if (msg.connection_id !== undefined) {
      resolved.connection_id = msg.connection_id;
    }
    else {
      resolved.connection_id = 0
    }

    if (msg.queue_length !== undefined) {
      resolved.queue_length = msg.queue_length;
    }
    else {
      resolved.queue_length = 0
    }

    if (msg.queue_length_exists !== undefined) {
      resolved.queue_length_exists = msg.queue_length_exists;
    }
    else {
      resolved.queue_length_exists = false
    }

    if (msg.available_storage_length !== undefined) {
      resolved.available_storage_length = msg.available_storage_length;
    }
    else {
      resolved.available_storage_length = 0
    }

    if (msg.available_storage_length_exists !== undefined) {
      resolved.available_storage_length_exists = msg.available_storage_length_exists;
    }
    else {
      resolved.available_storage_length_exists = false
    }

    if (msg.wait_on_stop !== undefined) {
      resolved.wait_on_stop = msg.wait_on_stop;
    }
    else {
      resolved.wait_on_stop = false
    }

    if (msg.wait_on_stop_exists !== undefined) {
      resolved.wait_on_stop_exists = msg.wait_on_stop_exists;
    }
    else {
      resolved.wait_on_stop_exists = false
    }

    if (msg.ped_bicycle_detect !== undefined) {
      resolved.ped_bicycle_detect = msg.ped_bicycle_detect;
    }
    else {
      resolved.ped_bicycle_detect = false
    }

    if (msg.ped_bicycle_detect_exists !== undefined) {
      resolved.ped_bicycle_detect_exists = msg.ped_bicycle_detect_exists;
    }
    else {
      resolved.ped_bicycle_detect_exists = false
    }

    return resolved;
    }
};

module.exports = ConnectionManeuverAssist;
