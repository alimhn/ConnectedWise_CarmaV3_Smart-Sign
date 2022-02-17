// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MovementEventList = require('./MovementEventList.js');
let ManeuverAssistList = require('./ManeuverAssistList.js');

//-----------------------------------------------------------

class MovementState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.movement_name = null;
      this.movement_name_exists = null;
      this.signal_group = null;
      this.state_time_speed = null;
      this.maneuver_assist_list = null;
      this.maneuver_assist_list_exists = null;
    }
    else {
      if (initObj.hasOwnProperty('movement_name')) {
        this.movement_name = initObj.movement_name
      }
      else {
        this.movement_name = '';
      }
      if (initObj.hasOwnProperty('movement_name_exists')) {
        this.movement_name_exists = initObj.movement_name_exists
      }
      else {
        this.movement_name_exists = false;
      }
      if (initObj.hasOwnProperty('signal_group')) {
        this.signal_group = initObj.signal_group
      }
      else {
        this.signal_group = 0;
      }
      if (initObj.hasOwnProperty('state_time_speed')) {
        this.state_time_speed = initObj.state_time_speed
      }
      else {
        this.state_time_speed = new MovementEventList();
      }
      if (initObj.hasOwnProperty('maneuver_assist_list')) {
        this.maneuver_assist_list = initObj.maneuver_assist_list
      }
      else {
        this.maneuver_assist_list = new ManeuverAssistList();
      }
      if (initObj.hasOwnProperty('maneuver_assist_list_exists')) {
        this.maneuver_assist_list_exists = initObj.maneuver_assist_list_exists
      }
      else {
        this.maneuver_assist_list_exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovementState
    // Serialize message field [movement_name]
    bufferOffset = _serializer.string(obj.movement_name, buffer, bufferOffset);
    // Serialize message field [movement_name_exists]
    bufferOffset = _serializer.bool(obj.movement_name_exists, buffer, bufferOffset);
    // Serialize message field [signal_group]
    bufferOffset = _serializer.uint8(obj.signal_group, buffer, bufferOffset);
    // Serialize message field [state_time_speed]
    bufferOffset = MovementEventList.serialize(obj.state_time_speed, buffer, bufferOffset);
    // Serialize message field [maneuver_assist_list]
    bufferOffset = ManeuverAssistList.serialize(obj.maneuver_assist_list, buffer, bufferOffset);
    // Serialize message field [maneuver_assist_list_exists]
    bufferOffset = _serializer.bool(obj.maneuver_assist_list_exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovementState
    let len;
    let data = new MovementState(null);
    // Deserialize message field [movement_name]
    data.movement_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [movement_name_exists]
    data.movement_name_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [signal_group]
    data.signal_group = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state_time_speed]
    data.state_time_speed = MovementEventList.deserialize(buffer, bufferOffset);
    // Deserialize message field [maneuver_assist_list]
    data.maneuver_assist_list = ManeuverAssistList.deserialize(buffer, bufferOffset);
    // Deserialize message field [maneuver_assist_list_exists]
    data.maneuver_assist_list_exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.movement_name);
    length += MovementEventList.getMessageSize(object.state_time_speed);
    length += ManeuverAssistList.getMessageSize(object.maneuver_assist_list);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/MovementState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03f884cbb00c241dcbd9be968688be05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # MovementState.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The MovementState data frame is used to convey various information about the current or future movement state of
    # a designated collection of one or more lanes of a common type. This is referred to as the GroupID. Note that lane object
    # types supported include both motorized vehicle lanes as well as pedestrian lanes and dedicated rail and transit lanes. Of
    # the reported data elements, the time to change (the time remaining in the current state) is often of the most value. Lanes
    # with a common state (typically adjacent sets of lanes in an approach) in a signalized intersection will have individual lane
    # values such as total vehicle counts, summed. It is used in the SPAT message to convey every active movement in a
    # given intersection so that vehicles, when combined with certain map information, can determine the state of the signal
    # phases.
    #
    # MovementState ::= SEQUENCE {
    # movementName DescriptiveName OPTIONAL,
    # -- uniquely defines movement by name
    # -- human readable name for intersection
    # -- to be used only in debug mode
    # signalGroup SignalGroupID,
    # -- the group id is used to map to lists
    # -- of lanes (and their descriptions)
    # -- which this MovementState data applies to
    # -- see comments in the Remarks for usage details
    # state-time-speed MovementEventList,
    # -- Consisting of sets of movement data with:
    # -- a) SignalPhaseState
    # -- b) TimeChangeDetails, and
    # -- c) AdvisorySpeeds (optional )
    # -- Note one or more of the movement events may be for
    # -- a future time and that this allows conveying multiple
    # -- predictive phase and movement timing for various uses
    # -- for the current signal group
    # maneuverAssistList ManeuverAssistList OPTIONAL,
    # -- This information may also be placed in the
    # -- IntersectionState when common information applies to
    # -- different lanes in the same way
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-MovementState}} OPTIONAL,
    # ...
    # }
    
    
    # DescriptiveName OPTIONAL := IA5String (SIZE(1..63))
    # -- often for debug use only
    # -- but at times used to name ped crossings
    string movement_name
    bool movement_name_exists
    
    # SignalGroupID ::= INTEGER (0..255)
    # -- The value 0 shall be used when the ID is
    # -- not available or known
    # -- the value 255 is reserved to indicate a
    # -- permanent green movement state
    uint8 signal_group
    
    # state-time-speed MovementEventList
    j2735_msgs/MovementEventList state_time_speed
    
    j2735_msgs/ManeuverAssistList maneuver_assist_list
    bool maneuver_assist_list_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    ================================================================================
    MSG: j2735_msgs/MovementEventList
    #
    # MovementEventList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The MovementEventList data frame consists of a list of MovementEvent entries.
    #
    # MovementEventList ::= SEQUENCE (SIZE(1..16)) OF MovementEvent
    #
    
    j2735_msgs/MovementEvent[] movement_event_list
    
    ================================================================================
    MSG: j2735_msgs/MovementEvent
    #
    # MovementEvent.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The MovementEvent data frame contains details about a single movement. It is used by the movement state to
    # convey one of number of movements (typically occurring over a sequence of times) for a SignalGroupID.
    #
    # MovementEvent ::= SEQUENCE {
    # eventState MovementPhaseState,
    # -- Consisting of:
    # -- Phase state (the basic 11 states)
    # -- Directional, protected, or permissive state
    # timing TimeChangeDetails OPTIONAL,
    # -- Timing Data in UTC time stamps for event
    # -- includes start and min/max end times of phase
    # -- confidence and estimated next occurrence
    # speeds AdvisorySpeedList OPTIONAL,
    # -- various speed advisories for use by
    # -- general and specific types of vehicles
    # -- supporting green-wave and other flow needs
    # -- See Section 11 for converting and translating
    # -- speed expressed in mph into units of m/s
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-MovementEvent}} OPTIONAL,
    # ...
    # }
    
    j2735_msgs/MovementPhaseState event_state
    
    j2735_msgs/TimeChangeDetails timing
    bool timing_exists
    
    j2735_msgs/AdvisorySpeedList speeds
    bool speeds_exists
    
    #regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    
    
    ================================================================================
    MSG: j2735_msgs/MovementPhaseState
    #
    # MovementEvent.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_MovementPhaseState data element provides the overall current state of the movement (in many cases a
    # signal state), including its core phase state and an indication of whether this state is permissive or protected.
    #
    # MovementPhaseState ::= ENUMERATED {
    # -- Note that based on the regions and the operating mode not every
    # -- phase will be used in all transportation modes and that not
    # -- every phase will be used in all transportation modes
    # unavailable (0),
    # -- This state is used for unknown or error
    # dark (1),
    # -- The signal head is dark (unlit)
    # -- Reds
    # stop-Then-Proceed (2),
    # -- Often called 'flashing red' in US
    # -- Driver Action:
    # -Stop vehicle at stop line.
    # -Do not proceed unless it is safe.
    # -- Note that the right to proceed either right or left
    # -- it is safe may be contained in the lane description
    # -- handle what is called a 'right on red'
    # stop-And-Remain (3),
    # -- e.g. called 'red light' in US
    # -- Driver Action:
    # -Stop vehicle at stop line.
    # -Do not proceed.
    # -- Note that the right to proceed either right or left
    # -- it is safe may be contained in the lane description
    # -- handle what is called a 'right on red'
    # -- Greens
    # pre-Movement (4),
    # -- Not used in the US, red+yellow partly in EU
    # -- Driver Action:
    # -Stop vehicle.
    # -Prepare to proceed (pending green)
    # -(Prepare for transition to green/go)
    # permissive-Movement-Allowed (5),
    # -- Often called 'permissive green' in US
    # -- Driver Action:
    # -Proceed with caution,
    # -must yield to all conflicting traffic
    # -- Conflicting traffic may be present
    # -- in the intersection conflict area
    # protected-Movement-Allowed (6),
    # -- Often called 'protected green' in US
    # -- Driver Action:
    # -Proceed, tossing caution to the wind,
    # -in indicated (allowed) direction.
    # -- Yellows / Ambers
    # -- The vehicle is not allowed to cross the stop bar if it is possible
    # -- to stop without danger.
    # permissive-clearance (7),
    # -- Often called 'permissive yellow' in US
    # -- Driver Action:
    # -Prepare to stop.
    # -Proceed if unable to stop,
    # -Clear Intersection.
    # -- Conflicting traffic may be present
    # -- in the intersection conflict area
    # protected-clearance (8),
    # -- Often called 'protected yellow' in US
    # -- Driver Action:
    # -Prepare to stop.
    # -Proceed if unable to stop,
    # -in indicated direction (to connected lane)
    # -Clear Intersection.
    # caution-Conflicting-Traffic (9)
    # -- Often called 'flashing yellow' in US
    # -- Often used for extended periods of time
    # -- Driver Action:
    # -Proceed with caution,
    # -- Conflicting traffic may be present
    # -- in the intersection conflict area
    # }
    # -- The above number assignments are not used with UPER encoding
    # -- and are only to be used with DER or implicit encoding
    
    uint8 movement_phase_state
    
    uint8 UNAVAILABLE=0
    uint8 DARK=1
    uint8 STOP_THEN_PROCEED=2
    uint8 STOP_AND_REMAIN=3
    uint8 PRE_MOVEMENT=4
    uint8 PERMISSIVE_MOVEMENT_ALLOWED=5
    uint8 PROTECTED_MOVEMENT_ALLOWED=6
    uint8 PERMISSIVE_CLEARANCE=7
    uint8 PROTECTED_CLEARANCE=8
    uint8 CAUTION_CONFLICTING_TRAFFIC=9
    
    
    ================================================================================
    MSG: j2735_msgs/TimeChangeDetails
    #
    # TimeChangeDetails.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
    # data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
    # often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
    # timing is employed.
    #
    #
    # TimeChangeDetails ::= SEQUENCE {
    # startTime TimeMark OPTIONAL,
    # -- When this phase 1st started
    # minEndTime TimeMark,
    # -- Expected shortest end time
    # maxEndTime TimeMark OPTIONAL,
    # -- Expected longest end time
    # likelyTime TimeMark OPTIONAL,
    # -- Best predicted value based on other data
    # confidence TimeIntervalConfidence OPTIONAL,
    # -- Applies to above time element only
    # nextTime TimeMark OPTIONAL
    # -- A rough estimate of time when
    # -- this phase may next occur again
    # -- used to support various ECO driving power
    # -- management needs.
    # }
    
    # TimeMark ::= INTEGER (0..36001)
    # -- Tenths of a second in the current or next hour
    # -- In units of 1/10th second from UTC time
    # -- A range of 0~36000 covers one hour
    # -- The values 35991..35999 are used when a leap second occurs
    # -- The value 36000 is used to indicate time >3600 seconds
    # -- 36001 is to be used when value undefined or unknown
    # -- Note that this is NOT expressed in GPS time
    # -- or in local time
    uint16 start_time
    bool start_time_exists
    
    uint16 min_end_time
    
    uint16 max_end_time
    bool max_end_time_exists
    
    uint16 likely_time
    bool likely_time_exists
    
    #TimeIntervalConfidence ::= INTEGER (0..15)
    uint8 confidence
    bool confidence_exists
    
    # TimeMark ::= INTEGER (0..36001)
    uint16 next_time
    bool next_time_exists
    
    
    ================================================================================
    MSG: j2735_msgs/AdvisorySpeedList
    #
    # AdvisorySpeedList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The AdvisorySpeedList data frame consists of a list of AdvisorySpeed entries.
    #
    # AdvisorySpeedList ::= SEQUENCE (SIZE(1..16)) OF AdvisorySpeed
    
    j2735_msgs/AdvisorySpeed[] advisory_speed_list
    ================================================================================
    MSG: j2735_msgs/AdvisorySpeed
    #
    # AdvisorySpeed.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DF_AdvisorySpeed data frame is used to convey a recommended traveling approach speed to an intersection
    # from the message issuer to various travelers and vehicle types. Besides support for various eco-driving applications, this
    # allows transmitting recommended speeds for specialty vehicles such as transit buses.
    # AdvisorySpeed ::= SEQUENCE {
    # type AdvisorySpeedType,
    # -- the type of advisory which this is.
    # speed SpeedAdvice OPTIONAL,
    # -- See Section 11 for converting and translating speed
    # -- expressed in mph into units of m/s
    # -- This element is optional ONLY when superceded
    # -- by the presence of a regional speed element found in
    # -- Reg-AdvisorySpeed entry
    # confidence SpeedConfidence OPTIONAL,
    # -- A confidence value for the above speed
    # distance ZoneLength OPTIONAL,
    # -- Unit = 1 meter,
    # -- The distance indicates the region for which the advised speed
    # -- is recommended, it is specified upstream from the stop bar
    # -- along the connected egressing lane
    # class RestrictionClassID OPTIONAL,
    # -- the vehicle types to which it applies
    # -- when absent, the AdvisorySpeed applies to
    # -- all motor vehicle types
    # regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-AdvisorySpeed}} OPTIONAL,
    # ...
    # }
    
    j2735_msgs/AdvisorySpeedType type
    
    # SpeedAdvice ::= INTEGER (0..500) OPTIONAL
    # This data element represents the recommended velocity of an object, typically a vehicle speed along a roadway,
    # expressed in unsigned units of 0.1 meters per second.
    #-- LSB units are 0.1 m/s^2
    #-- the value 499 shall be used for values at or greater than 49.9 m/s
    #-- the value 500 shall be used to indicate that speed is unavailable
    float32 speed
    float32 SPEED_UNAVAILABLE = 500
    bool speed_exists
    
    # SpeedConfidence is an enum already with 0 as unavailable.
    j2735_msgs/SpeedConfidence confidence
    
    # ZoneLength ::= INTEGER (0..10000)
    # -- Unit = 1 meter, 0 = unknown,
    # -- The value 10000 to be used for Distances >=10000 m
    # -- (e.g. from known point to another point along a
    # -- known path, often against traffic flow direction
    # -- when used for measuring queues)
    uint16 distance
    uint16 DISTANCE_UNKNOWN=0
    bool distance_exists
    
    # RestrictionClassID ::= INTEGER (0..255)
    uint8 restriction_class_id
    bool restriction_class_id_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    
    
    ================================================================================
    MSG: j2735_msgs/AdvisorySpeedType
    #
    # AdvisorySpeedType.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is
    # typically used as part of an AdvisorySpeed data frame for signal phase and timing data.
    #
    # AdvisorySpeedType ::= ENUMERATED {
    # none (0),
    # greenwave (1),
    # ecoDrive (2),
    # transit (3),
    # ...
    # } -- Note: subject to further growth
    
    uint8 advisory_speed_type
    
    uint8 NONE=0
    uint8 GREENWAVE=1
    uint8 ECODRIVE=2
    uint8 TRANSIT=3
    
    ================================================================================
    MSG: j2735_msgs/SpeedConfidence
    #
    # SpeedConfidence.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported
    # value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or
    # calculate the value.
    
    # SpeedConfidence ::= ENUMERATED {
    # unavailable (0), -- Not Equipped or unavailable
    # prec100ms (1), -- 100 meters / sec
    # prec10ms(2), -- 10 meters / sec
    # prec5ms (3), -- 5 meters / sec
    # prec1ms (4), -- 1 meters / sec
    # prec0-1ms (5), -- 0.1 meters / sec
    # prec0-05ms (6), -- -- 0.05 meters / sec
    # prec0-01ms (7) -- -- 0.01 meters / sec
    # }
    
    uint8 speed_confidence
    
    uint8 UNAVAILABLE=0
    uint8 PREC100MS=1
    uint8 PREC10MS=2
    uint8 PREC5MS=3
    uint8 PREC1MS=4
    uint8 PREC0_1MS=5
    uint8 PREC0_05MS=6
    uint8 PREC0_01MS=7
    ================================================================================
    MSG: j2735_msgs/ManeuverAssistList
    # This entry is used directly by one other data structure in this standard, a DF called DF_LaneAttributes <ASN>.
    #  In addition, this item may be used by data structures in other ITS standards.
    # ManeuverAssistList ::= SEQUENCE (SIZE(1..16)) OF ConnectionManeuverAssist
    
    j2735_msgs/ConnectionManeuverAssist[] connection_maneuver_assist_list
    
    ================================================================================
    MSG: j2735_msgs/ConnectionManeuverAssist
    
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
    const resolved = new MovementState(null);
    if (msg.movement_name !== undefined) {
      resolved.movement_name = msg.movement_name;
    }
    else {
      resolved.movement_name = ''
    }

    if (msg.movement_name_exists !== undefined) {
      resolved.movement_name_exists = msg.movement_name_exists;
    }
    else {
      resolved.movement_name_exists = false
    }

    if (msg.signal_group !== undefined) {
      resolved.signal_group = msg.signal_group;
    }
    else {
      resolved.signal_group = 0
    }

    if (msg.state_time_speed !== undefined) {
      resolved.state_time_speed = MovementEventList.Resolve(msg.state_time_speed)
    }
    else {
      resolved.state_time_speed = new MovementEventList()
    }

    if (msg.maneuver_assist_list !== undefined) {
      resolved.maneuver_assist_list = ManeuverAssistList.Resolve(msg.maneuver_assist_list)
    }
    else {
      resolved.maneuver_assist_list = new ManeuverAssistList()
    }

    if (msg.maneuver_assist_list_exists !== undefined) {
      resolved.maneuver_assist_list_exists = msg.maneuver_assist_list_exists;
    }
    else {
      resolved.maneuver_assist_list_exists = false
    }

    return resolved;
    }
};

module.exports = MovementState;
