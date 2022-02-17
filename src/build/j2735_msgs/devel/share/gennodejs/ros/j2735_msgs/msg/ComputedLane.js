// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OffsetXaxis = require('./OffsetXaxis.js');
let OffsetYaxis = require('./OffsetYaxis.js');

//-----------------------------------------------------------

class ComputedLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reference_lane_id = null;
      this.offset_x_axis = null;
      this.offset_y_axis = null;
      this.rotateXY = null;
      this.rotatexy_exists = null;
      this.scale_x_axis = null;
      this.scale_x_axis_exists = null;
      this.scale_y_axis = null;
      this.scale_y_axis_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('reference_lane_id')) {
        this.reference_lane_id = initObj.reference_lane_id
      }
      else {
        this.reference_lane_id = 0;
      }
      if (initObj.hasOwnProperty('offset_x_axis')) {
        this.offset_x_axis = initObj.offset_x_axis
      }
      else {
        this.offset_x_axis = new OffsetXaxis();
      }
      if (initObj.hasOwnProperty('offset_y_axis')) {
        this.offset_y_axis = initObj.offset_y_axis
      }
      else {
        this.offset_y_axis = new OffsetYaxis();
      }
      if (initObj.hasOwnProperty('rotateXY')) {
        this.rotateXY = initObj.rotateXY
      }
      else {
        this.rotateXY = 0;
      }
      if (initObj.hasOwnProperty('rotatexy_exists')) {
        this.rotatexy_exists = initObj.rotatexy_exists
      }
      else {
        this.rotatexy_exists = false;
      }
      if (initObj.hasOwnProperty('scale_x_axis')) {
        this.scale_x_axis = initObj.scale_x_axis
      }
      else {
        this.scale_x_axis = 0;
      }
      if (initObj.hasOwnProperty('scale_x_axis_exists')) {
        this.scale_x_axis_exists = initObj.scale_x_axis_exists
      }
      else {
        this.scale_x_axis_exists = false;
      }
      if (initObj.hasOwnProperty('scale_y_axis')) {
        this.scale_y_axis = initObj.scale_y_axis
      }
      else {
        this.scale_y_axis = 0;
      }
      if (initObj.hasOwnProperty('scale_y_axis_exists')) {
        this.scale_y_axis_exists = initObj.scale_y_axis_exists
      }
      else {
        this.scale_y_axis_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputedLane
    // Serialize message field [reference_lane_id]
    bufferOffset = _serializer.uint16(obj.reference_lane_id, buffer, bufferOffset);
    // Serialize message field [offset_x_axis]
    bufferOffset = OffsetXaxis.serialize(obj.offset_x_axis, buffer, bufferOffset);
    // Serialize message field [offset_y_axis]
    bufferOffset = OffsetYaxis.serialize(obj.offset_y_axis, buffer, bufferOffset);
    // Serialize message field [rotateXY]
    bufferOffset = _serializer.uint16(obj.rotateXY, buffer, bufferOffset);
    // Serialize message field [rotatexy_exists]
    bufferOffset = _serializer.bool(obj.rotatexy_exists, buffer, bufferOffset);
    // Serialize message field [scale_x_axis]
    bufferOffset = _serializer.int16(obj.scale_x_axis, buffer, bufferOffset);
    // Serialize message field [scale_x_axis_exists]
    bufferOffset = _serializer.bool(obj.scale_x_axis_exists, buffer, bufferOffset);
    // Serialize message field [scale_y_axis]
    bufferOffset = _serializer.int16(obj.scale_y_axis, buffer, bufferOffset);
    // Serialize message field [scale_y_axis_exists]
    bufferOffset = _serializer.bool(obj.scale_y_axis_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputedLane
    let len;
    let data = new ComputedLane(null);
    // Deserialize message field [reference_lane_id]
    data.reference_lane_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [offset_x_axis]
    data.offset_x_axis = OffsetXaxis.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset_y_axis]
    data.offset_y_axis = OffsetYaxis.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotateXY]
    data.rotateXY = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rotatexy_exists]
    data.rotatexy_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scale_x_axis]
    data.scale_x_axis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [scale_x_axis_exists]
    data.scale_x_axis_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scale_y_axis]
    data.scale_y_axis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [scale_y_axis_exists]
    data.scale_y_axis_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/ComputedLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e35ff00529bfc2e7f719199f8b58201';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # NodeListXY.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # ComputedLane ::= SEQUENCE {
    # -- Data needed to created a computed lane
    # referenceLaneId LaneID,
    # 	-- the lane ID upon which this
    # 	-- computed lane will be based
    # 	-- Lane Offset in X and Y direction
    # offsetXaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    # offsetYaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    #
    # -- Lane Rotation
    # rotateXY Angle OPTIONAL,
    # 	-- A path rotation value for the entire lane
    # 	-- Observe that this rotates the existing orientation
    # 	-- of the referenced lane, it does not replace it.
    # 	-- Rotation occurs about the initial path point.
    # -- Lane Path Scale (zooming)
    # scaleXaxis Scale-B12 OPTIONAL,
    # scaleYaxis Scale-B12 OPTIONAL,
    # 	-- value for translations or zooming of the path's
    # 	-- points. The values found in the reference lane
    # 	-- are all expanded or contracted based on the X
    # 	-- and Y and width values from the coordinates of
    # 	-- the reference lane's initial path point.
    # 	-- The Z axis remains untouched.
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ComputedLane}} OPTIONAL,
    # ...
    # }
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is
    # -- not available or not known
    # -- the value 255 is reserved for future use
    uint16 reference_lane_id
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    
    j2735_msgs/OffsetXaxis offset_x_axis
    
    j2735_msgs/OffsetYaxis offset_y_axis
    
    # Angle ::= INTEGER (0..239)
    #  -- Unsigned units of 1.5 degree, in 1 octet
    #  -- the true north is 0, positive is clockwise
    #  -- the values 240 to 254 shall not be sent
    #  -- the value 255 (0xFF) indicates an invalid value
    # NOTE: use invalid value to indicate unavailability as well.
    uint16 rotateXY
    uint16 ROTATEXY_INVALID=255
    bool rotatexy_exists
    
    # Scale-B12 ::= INTEGER (-2048..2047)
    # A 12-bit signed scaling factor supporting scales from zero (which is not used) to >200%.
    # In this data element, the value zero is taken to represent a value of one (scale 1:1).
    int16 scale_x_axis
    bool scale_x_axis_exists
    
    int16 scale_y_axis
    bool scale_y_axis_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    ================================================================================
    MSG: j2735_msgs/OffsetXaxis
    #
    # OffsetXaxis.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    # offsetXaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    
    
    uint8 choice
    uint8 SMALL=0
    uint8 LARGE=1
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    int16 small
    
    
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    int16 large
    ================================================================================
    MSG: j2735_msgs/OffsetYaxis
    #
    # OffsetYaxis.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # 	-- A path X offset value for translations of the
    # 	-- path's points when creating translated lanes.
    # 	-- The values found in the reference lane are
    # 	-- all offset based on the X and Y values from
    # 	-- the coordinates of the reference lane's
    # 	-- initial path point.
    # offsetYaxis CHOICE {
    # 		small DrivenLineOffsetSm,
    # 		large DrivenLineOffsetLg
    # 		},
    
    uint8 choice
    uint8 SMALL=0
    uint8 LARGE=1
    
    # The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
    # lane number from which a computed lane is offset.
    # DrivenLineOffsetSm ::= INTEGER (-2047..2047)
    # -- LSB units are 1 cm.
    int16 small
    
    
    # The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
    # reference lane number from which a computed lane is offset.
    # DrivenLineOffsetLg ::= INTEGER (-32767..32767)
    # -- LSB units are 1 cm.
    int16 large
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputedLane(null);
    if (msg.reference_lane_id !== undefined) {
      resolved.reference_lane_id = msg.reference_lane_id;
    }
    else {
      resolved.reference_lane_id = 0
    }

    if (msg.offset_x_axis !== undefined) {
      resolved.offset_x_axis = OffsetXaxis.Resolve(msg.offset_x_axis)
    }
    else {
      resolved.offset_x_axis = new OffsetXaxis()
    }

    if (msg.offset_y_axis !== undefined) {
      resolved.offset_y_axis = OffsetYaxis.Resolve(msg.offset_y_axis)
    }
    else {
      resolved.offset_y_axis = new OffsetYaxis()
    }

    if (msg.rotateXY !== undefined) {
      resolved.rotateXY = msg.rotateXY;
    }
    else {
      resolved.rotateXY = 0
    }

    if (msg.rotatexy_exists !== undefined) {
      resolved.rotatexy_exists = msg.rotatexy_exists;
    }
    else {
      resolved.rotatexy_exists = false
    }

    if (msg.scale_x_axis !== undefined) {
      resolved.scale_x_axis = msg.scale_x_axis;
    }
    else {
      resolved.scale_x_axis = 0
    }

    if (msg.scale_x_axis_exists !== undefined) {
      resolved.scale_x_axis_exists = msg.scale_x_axis_exists;
    }
    else {
      resolved.scale_x_axis_exists = false
    }

    if (msg.scale_y_axis !== undefined) {
      resolved.scale_y_axis = msg.scale_y_axis;
    }
    else {
      resolved.scale_y_axis = 0
    }

    if (msg.scale_y_axis_exists !== undefined) {
      resolved.scale_y_axis_exists = msg.scale_y_axis_exists;
    }
    else {
      resolved.scale_y_axis_exists = false
    }

    return resolved;
    }
};

// Constants for message
ComputedLane.Constants = {
  ROTATEXY_INVALID: 255,
}

module.exports = ComputedLane;
