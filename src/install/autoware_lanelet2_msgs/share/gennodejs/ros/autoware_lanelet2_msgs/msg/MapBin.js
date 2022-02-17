// Auto-generated. Do not edit!

// (in-package autoware_lanelet2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MapBin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.format_version = null;
      this.map_version = null;
      this.data = null;
      this.route_id = null;
      this.route_version = null;
      this.invalidates_route = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('format_version')) {
        this.format_version = initObj.format_version
      }
      else {
        this.format_version = '';
      }
      if (initObj.hasOwnProperty('map_version')) {
        this.map_version = initObj.map_version
      }
      else {
        this.map_version = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('route_id')) {
        this.route_id = initObj.route_id
      }
      else {
        this.route_id = '';
      }
      if (initObj.hasOwnProperty('route_version')) {
        this.route_version = initObj.route_version
      }
      else {
        this.route_version = 0;
      }
      if (initObj.hasOwnProperty('invalidates_route')) {
        this.invalidates_route = initObj.invalidates_route
      }
      else {
        this.invalidates_route = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapBin
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [format_version]
    bufferOffset = _serializer.string(obj.format_version, buffer, bufferOffset);
    // Serialize message field [map_version]
    bufferOffset = _serializer.uint32(obj.map_version, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.int8(obj.data, buffer, bufferOffset, null);
    // Serialize message field [route_id]
    bufferOffset = _serializer.string(obj.route_id, buffer, bufferOffset);
    // Serialize message field [route_version]
    bufferOffset = _serializer.uint32(obj.route_version, buffer, bufferOffset);
    // Serialize message field [invalidates_route]
    bufferOffset = _serializer.bool(obj.invalidates_route, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapBin
    let len;
    let data = new MapBin(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [format_version]
    data.format_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_version]
    data.map_version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [route_id]
    data.route_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [route_version]
    data.route_version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [invalidates_route]
    data.invalidates_route = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.format_version);
    length += object.data.length;
    length += _getByteLength(object.route_id);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_lanelet2_msgs/MapBin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '813b1a5423e38dc653e27643849dfed8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This contains the lanelet map in binary format.
    
    # Timestamp and frame_id of the map
    Header header
    
    # version of map format. keep this as empty string if unnecessary
    string format_version
    
    # version of map version. monotonically increasing integer starting at 1
    uint32 map_version
    
    # binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
    int8[] data
    
    # The route filename
    string route_id
    
    # The version of current route, monotonically increasing integer starting at 1
    uint32 route_version
    
    # route flag to set the route invalidation status
    bool invalidates_route
    
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
    const resolved = new MapBin(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.format_version !== undefined) {
      resolved.format_version = msg.format_version;
    }
    else {
      resolved.format_version = ''
    }

    if (msg.map_version !== undefined) {
      resolved.map_version = msg.map_version;
    }
    else {
      resolved.map_version = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.route_id !== undefined) {
      resolved.route_id = msg.route_id;
    }
    else {
      resolved.route_id = ''
    }

    if (msg.route_version !== undefined) {
      resolved.route_version = msg.route_version;
    }
    else {
      resolved.route_version = 0
    }

    if (msg.invalidates_route !== undefined) {
      resolved.invalidates_route = msg.invalidates_route;
    }
    else {
      resolved.invalidates_route = false
    }

    return resolved;
    }
};

module.exports = MapBin;
