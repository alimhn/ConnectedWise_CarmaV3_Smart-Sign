// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ByteArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.messageType = null;
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('messageType')) {
        this.messageType = initObj.messageType
      }
      else {
        this.messageType = '';
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ByteArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [messageType]
    bufferOffset = _serializer.string(obj.messageType, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _arraySerializer.uint8(obj.content, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ByteArray
    let len;
    let data = new ByteArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [messageType]
    data.messageType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.messageType);
    length += object.content.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/ByteArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b87f87806cca414ef2cd41baf1a8ce0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # ByteArray.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # Raw binary blobs from Drivers.Comms package and then parse the raw data according to the header. 
    # Currently all messages are DSRC message. 
    # 
    # NOTE: Initial version only considers Part I. Part II will be defined for later use. 
    
    std_msgs/Header header
    
    # Need to know the type before parsing. MessageTypes are MAP, SPAT, TIM, BSM, Mobility.
    string messageType
    
    # The DSRC message content
    uint8[] content
    
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
    const resolved = new ByteArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.messageType !== undefined) {
      resolved.messageType = msg.messageType;
    }
    else {
      resolved.messageType = ''
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = []
    }

    return resolved;
    }
};

module.exports = ByteArray;
