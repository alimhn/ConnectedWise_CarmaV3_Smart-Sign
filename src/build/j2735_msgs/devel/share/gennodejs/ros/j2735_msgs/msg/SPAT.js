// Auto-generated. Do not edit!

// (in-package j2735_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IntersectionStateList = require('./IntersectionStateList.js');

//-----------------------------------------------------------

class SPAT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.time_stamp_exists = null;
      this.name = null;
      this.name_exists = null;
      this.intersections = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0;
      }
      if (initObj.hasOwnProperty('time_stamp_exists')) {
        this.time_stamp_exists = initObj.time_stamp_exists
      }
      else {
        this.time_stamp_exists = false;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('name_exists')) {
        this.name_exists = initObj.name_exists
      }
      else {
        this.name_exists = false;
      }
      if (initObj.hasOwnProperty('intersections')) {
        this.intersections = initObj.intersections
      }
      else {
        this.intersections = new IntersectionStateList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SPAT
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [time_stamp_exists]
    bufferOffset = _serializer.bool(obj.time_stamp_exists, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [name_exists]
    bufferOffset = _serializer.bool(obj.name_exists, buffer, bufferOffset);
    // Serialize message field [intersections]
    bufferOffset = IntersectionStateList.serialize(obj.intersections, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SPAT
    let len;
    let data = new SPAT(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time_stamp_exists]
    data.time_stamp_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name_exists]
    data.name_exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [intersections]
    data.intersections = IntersectionStateList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += IntersectionStateList.getMessageSize(object.intersections);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'j2735_msgs/SPAT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4c40f2649b94d25d15c1e9f47c45af8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # SPAT.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # A complete description of an intersection's roadway geometry and its allowed navigational paths
    # (independent of any additional regulatory restrictions that may apply over time or from user classification).
    
    # The SPAT message sends the current movement state of each active phase in the system as needed (such as values of
    # what states are active and values at what time a state has begun/does begin earliest, is expected to begin most likely and
    # will end latest). The state of inactive movements is not normally transmitted. Movements are mapped to specific
    # approaches and connections of ingress to egress lanes and by use of the SignalGroupID in the MapData message
    
    # SPAT ::= SEQUENCE {
    # 	timeStamp MinuteOfTheYear OPTIONAL,
    # 	name DescriptiveName OPTIONAL,
    # 	-- human readable name for this collection
    # 	-- to be used only in debug mode
    # 	intersections IntersectionStateList,
    # 	-- sets of SPAT data (one per intersection)
    #
    # 	-- If PrioritizationResponse data is required, it is found
    # 	-- in the RegionalSPAT entry below
    #
    # 	regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-SPAT}} OPTIONAL,
    # 	...
    # }
    
    #MinuteOfTheYear OPTIONAL ::= INTEGER (0..527040)
    # -- The value 527040 shall be used for invalid
    
    uint32 time_stamp
    bool time_stamp_exists
    
    # name DescriptiveName OPTIONAL := IA5String (SIZE(1..63))
    # -- often for debug use only
    # -- but at times used to name ped crossings
    string name
    bool name_exists
    
    j2735_msgs/IntersectionStateList intersections
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    ================================================================================
    MSG: j2735_msgs/IntersectionStateList
    #
    # IntersectionStateList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The IntersectionStateList data frame consists of a list of IntersectionState entries.
    
    # IntersectionStateList ::= SEQUENCE (SIZE(1..32)) OF IntersectionState
    
    j2735_msgs/IntersectionState[] intersection_state_list
    ================================================================================
    MSG: j2735_msgs/IntersectionState
    #
    # IntersectionState.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The IntersectionState data frame is used to convey all the SPAT information for a single intersection. Both current
    # and future data can be sent.
    #
    # IntersectionState ::= SEQUENCE {
    # 	name DescriptiveName OPTIONAL,
    # 	-- human readable name for intersection
    # 	-- to be used only in debug mode
    # 	id IntersectionReferenceID,
    # 	-- A globally unique value set, consisting of a
    # 	-- regionID and intersection ID assignment
    # 	-- provides a unique mapping to the
    # 	-- intersection MAP in question
    # 	-- which provides complete location
    # 	-- and approach/move/lane data
    # 	revision MsgCount,
    # 	status IntersectionStatusObject,
    # 	-- general status of the controller(s)
    # 	moy MinuteOfTheYear OPTIONAL,
    # 	-- Minute of current UTC year
    # 	-- used only with messages to be archived
    # 	timeStamp DSecond OPTIONAL,
    # 	-- the mSec point in the current UTC minute that
    # 	-- this message was constructed
    # 	enabledLanes EnabledLaneList OPTIONAL,
    # 	-- a list of lanes where the RevocableLane bit
    # 	-- has been set which are now active and
    # 	-- therefore part of the current intersection
    # 	states MovementList,
    # 	-- Each Movement is given in turn
    # 	-- and contains its signal phase state,
    # 	-- mapping to the lanes it applies to, and
    # 	-- point in time it will end, and it
    # 	-- may contain both active and future states
    # 	maneuverAssistList ManeuverAssistList OPTIONAL,
    # 	-- Assist data
    # 	regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-IntersectionState}} OPTIONAL,
    # 	...
    # }
    
    # name DescriptiveName OPTIONAL := IA5String (SIZE(1..63))
    # -- often for debug use only
    # -- but at times used to name ped crossings
    # NOTE: As optional field, blank value can note that it's not set in carma.
    string name
    bool name_exists
    
    j2735_msgs/IntersectionReferenceID id
    
    #MsgCount ::= INTEGER (0..127)
    uint8 revision
    
    j2735_msgs/IntersectionStatusObject status
    
    #MinuteOfTheYear OPTIONAL ::= INTEGER (0..527040)
    # The value of 527040 shall be used for invalid
    uint32 moy
    uint32 MOY_INVALID=527040
    bool moy_exists
    
    #DSecond ::= INTEGER (0..65535)
    #  -- Integer values from 0 to 59999 represent the milliseconds within a minute
    #  -- A leap second is represented by the value range 60000 to 60999
    #  -- The values from 61000 to 65534 are reserved
    #  -- The value of 65535 shall represent an unavailable value in the range of the minute
    #  -- Unit is milliseconds
    uint32 time_stamp
    uint32 TIME_STAMP_UNAVAILABLE=65535
    bool time_stamp_exists
    
    # enabledLanes EnabledLaneList
    # This is a list therefore can be empty list in ROS.
    j2735_msgs/EnabledLaneList enabled_lanes
    bool enabled_lanes_exists
    
    # 	states MovementList
    j2735_msgs/MovementList states
    
    # 	maneuverAssistList ManeuverAssistList
    j2735_msgs/ManeuverAssistList maneuever_assist_list
    bool maneuever_assist_list_exists
    
    # regional #TODO: RegionalExtensions are not yet implemented in asn1c
    
    ================================================================================
    MSG: j2735_msgs/IntersectionReferenceID
    #
    # IntersectionReferenceID.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an
    # IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is
    # guaranteed to be globally unique.
    
    # region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)
    # -- a globally unique regional assignment value
    # -- typical assigned to a regional DOT authority
    # -- the value zero shall be used for testing needs
    # 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.
    uint16 region
    uint16 REGION_UNAVAILABLE=0
    bool region_exists
    
    # id IntersectionID ::= INTEGER (0..65535)
    # -- a unique mapping to the intersection
    # -- in question within the above region of use
    uint16 id
    
    ================================================================================
    MSG: j2735_msgs/IntersectionStatusObject
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
    ================================================================================
    MSG: j2735_msgs/EnabledLaneList
    #
    # EnabledLaneList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The Enabled Lane List data frame is a sequence of lane IDs for lane objects that are activated in the current map
    # configuration. These lanes, unlike most lanes, have their RevocableLane bit set to one (asserted). Such lanes are not
    # considered to be part of the current map unless they are in the Enabled Lane List. This concept is used to describe all the
    # possible regulatory states for a given physical lane.
    #
    # EnabledLaneList ::= SEQUENCE (SIZE(1..16)) OF LaneID
    #-- The unique ID numbers for each
    #-- lane object which is 'active'
    #-- as part of the dynamic map contents.
    
    # LaneID ::= INTEGER (0..255)
    # -- the value 0 shall be used when the lane ID is not available or not known
    # -- the value 255 is reserved for future use
    uint16[] lane_id_list
    ================================================================================
    MSG: j2735_msgs/MovementList
    #
    # MovementList.msg
    #
    # J2735 2016 message format.
    #
    # @author Mae Fromm
    # @version 0.1
    #
    # The MovementList data frame consists of a list of MovementState entries.
    #
    # MovementList ::= SEQUENCE (SIZE(1..255)) OF MovementState
    
    j2735_msgs/MovementState[] movement_list
    ================================================================================
    MSG: j2735_msgs/MovementState
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
    const resolved = new SPAT(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0
    }

    if (msg.time_stamp_exists !== undefined) {
      resolved.time_stamp_exists = msg.time_stamp_exists;
    }
    else {
      resolved.time_stamp_exists = false
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.name_exists !== undefined) {
      resolved.name_exists = msg.name_exists;
    }
    else {
      resolved.name_exists = false
    }

    if (msg.intersections !== undefined) {
      resolved.intersections = IntersectionStateList.Resolve(msg.intersections)
    }
    else {
      resolved.intersections = new IntersectionStateList()
    }

    return resolved;
    }
};

module.exports = SPAT;
