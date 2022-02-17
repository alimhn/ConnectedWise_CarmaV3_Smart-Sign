// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DayOfWeek = require('./DayOfWeek.js');
let DailySchedule = require('./DailySchedule.js');
let RepeatParams = require('./RepeatParams.js');

//-----------------------------------------------------------

class TrafficControlSchedule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
      this.end_exists = null;
      this.dow = null;
      this.dow_exists = null;
      this.between = null;
      this.between_exists = null;
      this.repeat = null;
      this.repeat_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = 0;
      }
      if (initObj.hasOwnProperty('end_exists')) {
        this.end_exists = initObj.end_exists
      }
      else {
        this.end_exists = false;
      }
      if (initObj.hasOwnProperty('dow')) {
        this.dow = initObj.dow
      }
      else {
        this.dow = new DayOfWeek();
      }
      if (initObj.hasOwnProperty('dow_exists')) {
        this.dow_exists = initObj.dow_exists
      }
      else {
        this.dow_exists = false;
      }
      if (initObj.hasOwnProperty('between')) {
        this.between = initObj.between
      }
      else {
        this.between = [];
      }
      if (initObj.hasOwnProperty('between_exists')) {
        this.between_exists = initObj.between_exists
      }
      else {
        this.between_exists = false;
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = new RepeatParams();
      }
      if (initObj.hasOwnProperty('repeat_exists')) {
        this.repeat_exists = initObj.repeat_exists
      }
      else {
        this.repeat_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlSchedule
    // Serialize message field [start]
    bufferOffset = _serializer.uint64(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.uint64(obj.end, buffer, bufferOffset);
    // Serialize message field [end_exists]
    bufferOffset = _serializer.bool(obj.end_exists, buffer, bufferOffset);
    // Serialize message field [dow]
    bufferOffset = DayOfWeek.serialize(obj.dow, buffer, bufferOffset);
    // Serialize message field [dow_exists]
    bufferOffset = _serializer.bool(obj.dow_exists, buffer, bufferOffset);
    // Serialize message field [between]
    // Serialize the length for message field [between]
    bufferOffset = _serializer.uint32(obj.between.length, buffer, bufferOffset);
    obj.between.forEach((val) => {
      bufferOffset = DailySchedule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [between_exists]
    bufferOffset = _serializer.bool(obj.between_exists, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = RepeatParams.serialize(obj.repeat, buffer, bufferOffset);
    // Serialize message field [repeat_exists]
    bufferOffset = _serializer.bool(obj.repeat_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlSchedule
    let len;
    let data = new TrafficControlSchedule(null);
    // Deserialize message field [start]
    data.start = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [end_exists]
    data.end_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dow]
    data.dow = DayOfWeek.deserialize(buffer, bufferOffset);
    // Deserialize message field [dow_exists]
    data.dow_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [between]
    // Deserialize array length for message field [between]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.between = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.between[i] = DailySchedule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [between_exists]
    data.between_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = RepeatParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [repeat_exists]
    data.repeat_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.between.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlSchedule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd17eb8005cfede95b7226b8161cb7840';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlSchedule.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # 
    # @version 0.1
    #
    # Description
    # ...
    
    # TrafficControlSchedule ::= SEQUENCE
    # {
    # 	start EpochMins, -- start time required, even if it's the epoch value zero
    # 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
    # 	dow [1] DayOfWeek OPTIONAL, 
    # 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
    # 	repeat [3] RepeatParams OPTIONAL
    # }
    
    # start EpochMins, -- start time required, even if it's the epoch value zero
    uint64 start
    
    # end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
    uint64 end
    bool end_exists
    
    # dow [1] DayOfWeek OPTIONAL, 
    j2735_msgs/DayOfWeek dow
    bool dow_exists
    
    # between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
    j2735_msgs/DailySchedule[] between
    bool between_exists
    
    # repeat [3] RepeatParams OPTIONAL
    j2735_msgs/RepeatParams repeat
    bool repeat_exists
    
    ================================================================================
    MSG: j2735_msgs/DayOfWeek
    #
    # DayOfWeek.msg
    #
    # Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
    #
    # J2735 2016 message format.
    #
    # 
    # @version 0.1
    #
    # Description
    # ...
    
    # DayOfWeek ::= BIT STRING //only J
    # {
    # 	sun (6), 
    # 	mon (5), 
    # 	tue (4), 
    # 	wed (3), 
    # 	thu (2), 
    # 	fri (1), 
    # 	sat (0)
    # }
    
    uint8[7] dow
    
    # enumeration values for day of week
    uint8 SUN = 6  
    uint8 MON = 5
    uint8 TUE = 4  
    uint8 WED = 3  
    uint8 THU = 2  
    uint8 FRI = 1  
    uint8 SAT = 0
    ================================================================================
    MSG: j2735_msgs/DailySchedule
    #
    # DailySchedule.msg
    #
    # Part of the CARMA Cloud geo-fence specification for vehicle internal use.
    #
    # @author Misheel Bayartsengel 
    # @version 0.1
    #
    # Description
    # The schedule bounds of a geofence within a specific day of the week
    
    # DailySchedule ::= SEQUENCE
    # {
    # 	begin INTEGER (0..1439), -- minutes relative to midnight local time
    # 	duration INTEGER (0..1439) -- the number of active minutes, up to one day
    # }
    
    # begin INTEGER (0..1439), -- minutes relative to midnight local time
    uint16 begin
    
    # duration INTEGER (0..1439) -- the number of active minutes, up to one day
    uint16 duration
    ================================================================================
    MSG: j2735_msgs/RepeatParams
    #
    # RepeatParams.msg
    #
    # Part of the CARMA Cloud geo-fence specification for vehicle internal use.
    #
    # @author Misheel Bayartsengel 
    # @version 0.1
    #
    # Description
    # ...
    
    # RepeatParams ::= SEQUENCE
    # {
    # 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time
    # 	period INTEGER (0..1439), -- minutes between successive time spans
    # 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period
    # }
    
    # Offset 
    # shift repetition start relative to midnight local time
    uint16 offset
    
    # Period
    # minutes between successive time spans
    uint16 period
    
    # Span
    # number of minutes schedule is active, must be less than the period
    uint16 span
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficControlSchedule(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = 0
    }

    if (msg.end_exists !== undefined) {
      resolved.end_exists = msg.end_exists;
    }
    else {
      resolved.end_exists = false
    }

    if (msg.dow !== undefined) {
      resolved.dow = DayOfWeek.Resolve(msg.dow)
    }
    else {
      resolved.dow = new DayOfWeek()
    }

    if (msg.dow_exists !== undefined) {
      resolved.dow_exists = msg.dow_exists;
    }
    else {
      resolved.dow_exists = false
    }

    if (msg.between !== undefined) {
      resolved.between = new Array(msg.between.length);
      for (let i = 0; i < resolved.between.length; ++i) {
        resolved.between[i] = DailySchedule.Resolve(msg.between[i]);
      }
    }
    else {
      resolved.between = []
    }

    if (msg.between_exists !== undefined) {
      resolved.between_exists = msg.between_exists;
    }
    else {
      resolved.between_exists = false
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = RepeatParams.Resolve(msg.repeat)
    }
    else {
      resolved.repeat = new RepeatParams()
    }

    if (msg.repeat_exists !== undefined) {
      resolved.repeat_exists = msg.repeat_exists;
    }
    else {
      resolved.repeat_exists = false
    }

    return resolved;
    }
};

module.exports = TrafficControlSchedule;
