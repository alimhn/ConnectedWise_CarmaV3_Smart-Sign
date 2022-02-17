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

class TrafficControlVehClass {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_class = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_class')) {
        this.vehicle_class = initObj.vehicle_class
      }
      else {
        this.vehicle_class = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficControlVehClass
    // Serialize message field [vehicle_class]
    bufferOffset = _serializer.uint8(obj.vehicle_class, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficControlVehClass
    let len;
    let data = new TrafficControlVehClass(null);
    // Deserialize message field [vehicle_class]
    data.vehicle_class = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/TrafficControlVehClass';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89399be8dc36339b2dee535e6aa32c9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # TrafficControlVehClass.msg
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
    
    # TrafficControlVehClass ::= ENUMERATED
    # {
    # 	any, 
    # 	pedestrian,
    # 	bicycle,
    # 	micromobile,
    # 	motorcycle,
    # 	passenger-car,
    # 	light-truck-van,
    # 	bus,
    # 	two-axle-six-tire-single-unit-truck,
    # 	three-axle-single-unit-truck,
    # 	four-or-more-axle-single-unit-truck,
    # 	four-or-fewer-axle-single-trailer-truck,
    # 	five-axle-single-trailer-truck,
    # 	six-or-more-axle-single-trailer-truck,
    # 	five-or-fewer-axle-multi-trailer-truck,
    # 	six-axle-multi-trailer-truck,
    # 	seven-or-more-axle-multi-trailer-truck,
    # 	rail,
    # 	unclassified, 
    # 	...
    # }
    
    uint8 vehicle_class
    
    # enumeration values for vehicle_class:
    
    uint8 ANY = 0
    uint8 PEDESTRIAN = 1
    uint8 BICYCLE = 2
    uint8 MICROMOBILE = 3
    uint8 MOTORCYCLE = 4
    uint8 PASSENGER_CAR = 5
    uint8 LIGHT_TRUCK_VAN = 6
    uint8 BUS = 7
    uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8
    uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9
    uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10
    uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11
    uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12
    uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13
    uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14
    uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15
    uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16
    uint8 RAIL = 17
    uint8 UNCLASSIFIED = 18
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficControlVehClass(null);
    if (msg.vehicle_class !== undefined) {
      resolved.vehicle_class = msg.vehicle_class;
    }
    else {
      resolved.vehicle_class = 0
    }

    return resolved;
    }
};

// Constants for message
TrafficControlVehClass.Constants = {
  ANY: 0,
  PEDESTRIAN: 1,
  BICYCLE: 2,
  MICROMOBILE: 3,
  MOTORCYCLE: 4,
  PASSENGER_CAR: 5,
  LIGHT_TRUCK_VAN: 6,
  BUS: 7,
  TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK: 8,
  THREE_AXLE_SINGLE_UNIT_TRUCK: 9,
  FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK: 10,
  FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK: 11,
  FIVE_AXLE_SINGLE_TRAILER_TRUCK: 12,
  SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK: 13,
  FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK: 14,
  SIX_AXLE_MULTI_TRAILER_TRUCK: 15,
  SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK: 16,
  RAIL: 17,
  UNCLASSIFIED: 18,
}

module.exports = TrafficControlVehClass;
