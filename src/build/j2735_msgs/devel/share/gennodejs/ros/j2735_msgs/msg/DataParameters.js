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

class DataParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.process_method = null;
      this.process_agency = null;
      this.last_checked_date = null;
      this.geoid_used = null;
    }
    else {
      if (initObj.hasOwnProperty('process_method')) {
        this.process_method = initObj.process_method
      }
      else {
        this.process_method = '';
      }
      if (initObj.hasOwnProperty('process_agency')) {
        this.process_agency = initObj.process_agency
      }
      else {
        this.process_agency = '';
      }
      if (initObj.hasOwnProperty('last_checked_date')) {
        this.last_checked_date = initObj.last_checked_date
      }
      else {
        this.last_checked_date = '';
      }
      if (initObj.hasOwnProperty('geoid_used')) {
        this.geoid_used = initObj.geoid_used
      }
      else {
        this.geoid_used = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataParameters
    // Serialize message field [process_method]
    bufferOffset = _serializer.string(obj.process_method, buffer, bufferOffset);
    // Serialize message field [process_agency]
    bufferOffset = _serializer.string(obj.process_agency, buffer, bufferOffset);
    // Serialize message field [last_checked_date]
    bufferOffset = _serializer.string(obj.last_checked_date, buffer, bufferOffset);
    // Serialize message field [geoid_used]
    bufferOffset = _serializer.string(obj.geoid_used, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataParameters
    let len;
    let data = new DataParameters(null);
    // Deserialize message field [process_method]
    data.process_method = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [process_agency]
    data.process_agency = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_checked_date]
    data.last_checked_date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [geoid_used]
    data.geoid_used = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.process_method);
    length += _getByteLength(object.process_agency);
    length += _getByteLength(object.last_checked_date);
    length += _getByteLength(object.geoid_used);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/DataParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f63a06440ac4fde99ebe6427b9e011e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # MapData.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DataParameters data frame is used to provide basic (static) information
    # on how a map fragment was processed or determined.
    #
    # DataParameters ::= SEQUENCE {
    # processMethod IA5String(SIZE(1..255))
    # processAgency IA5String(SIZE(1..255))
    # lastCheckedDate IA5String(SIZE(1..255))
    # geoidUsed IA5String(SIZE(1..255))
    # ...
    # }
    #
    
    string process_method
    string process_agency
    string last_checked_date
    string geoid_used
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataParameters(null);
    if (msg.process_method !== undefined) {
      resolved.process_method = msg.process_method;
    }
    else {
      resolved.process_method = ''
    }

    if (msg.process_agency !== undefined) {
      resolved.process_agency = msg.process_agency;
    }
    else {
      resolved.process_agency = ''
    }

    if (msg.last_checked_date !== undefined) {
      resolved.last_checked_date = msg.last_checked_date;
    }
    else {
      resolved.last_checked_date = ''
    }

    if (msg.geoid_used !== undefined) {
      resolved.geoid_used = msg.geoid_used;
    }
    else {
      resolved.geoid_used = ''
    }

    return resolved;
    }
};

module.exports = DataParameters;
