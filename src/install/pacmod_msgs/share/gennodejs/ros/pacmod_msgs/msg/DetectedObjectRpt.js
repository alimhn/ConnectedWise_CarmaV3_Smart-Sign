// Auto-generated. Do not edit!

// (in-package pacmod_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObjectRpt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_object_distance_low_res = null;
      this.front_object_distance_high_res = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_object_distance_low_res')) {
        this.front_object_distance_low_res = initObj.front_object_distance_low_res
      }
      else {
        this.front_object_distance_low_res = 0.0;
      }
      if (initObj.hasOwnProperty('front_object_distance_high_res')) {
        this.front_object_distance_high_res = initObj.front_object_distance_high_res
      }
      else {
        this.front_object_distance_high_res = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObjectRpt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_object_distance_low_res]
    bufferOffset = _serializer.float64(obj.front_object_distance_low_res, buffer, bufferOffset);
    // Serialize message field [front_object_distance_high_res]
    bufferOffset = _serializer.float64(obj.front_object_distance_high_res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObjectRpt
    let len;
    let data = new DetectedObjectRpt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_object_distance_low_res]
    data.front_object_distance_low_res = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_object_distance_high_res]
    data.front_object_distance_high_res = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pacmod_msgs/DetectedObjectRpt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc712b16be2ea6767f3e682c00a854bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 front_object_distance_low_res         # Measured distance to nearest front object
    float64 front_object_distance_high_res        # Measured distance to nearest front object (high res)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObjectRpt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_object_distance_low_res !== undefined) {
      resolved.front_object_distance_low_res = msg.front_object_distance_low_res;
    }
    else {
      resolved.front_object_distance_low_res = 0.0
    }

    if (msg.front_object_distance_high_res !== undefined) {
      resolved.front_object_distance_high_res = msg.front_object_distance_high_res;
    }
    else {
      resolved.front_object_distance_high_res = 0.0
    }

    return resolved;
    }
};

module.exports = DetectedObjectRpt;
