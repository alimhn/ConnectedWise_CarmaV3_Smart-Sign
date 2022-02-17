;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::ConnectsToList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'ConnectsToList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::CONNECTSTOLIST")
  (make-package "J2735_MSGS::CONNECTSTOLIST"))

(in-package "ROS")
;;//! \htmlinclude ConnectsToList.msg.html


(defclass j2735_msgs::ConnectsToList
  :super ros::object
  :slots (_connect_to_list ))

(defmethod j2735_msgs::ConnectsToList
  (:init
   (&key
    ((:connect_to_list __connect_to_list) ())
    )
   (send-super :init)
   (setq _connect_to_list __connect_to_list)
   self)
  (:connect_to_list
   (&rest __connect_to_list)
   (if (keywordp (car __connect_to_list))
       (send* _connect_to_list __connect_to_list)
     (progn
       (if __connect_to_list (setq _connect_to_list (car __connect_to_list)))
       _connect_to_list)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/Connection[] _connect_to_list
    (apply #'+ (send-all _connect_to_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/Connection[] _connect_to_list
     (write-long (length _connect_to_list) s)
     (dolist (elem _connect_to_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/Connection[] _connect_to_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connect_to_list (let (r) (dotimes (i n) (push (instance j2735_msgs::Connection :init) r)) r))
     (dolist (elem- _connect_to_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::ConnectsToList :md5sum-) "3ebe5fd15cf3f33abba7b953dda1da83")
(setf (get j2735_msgs::ConnectsToList :datatype-) "j2735_msgs/ConnectsToList")
(setf (get j2735_msgs::ConnectsToList :definition-)
      "#
# ConnectsToList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The ConnectsToList data structure is used in the generic lane descriptions to provide a sequence of other defined
# lanes to which each lane connects beyond its stop point. See the Connection data frame entry for details. Note that this
# data frame is not used in some lane object types.
#
# ConnectsToList ::= SEQUENCE (SIZE(1..16)) OF Connection

j2735_msgs/Connection[] connect_to_list

================================================================================
MSG: j2735_msgs/Connection
#
# Connection.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at
# the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound
# (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this
# to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected
# conditions).
#
# Connection ::= SEQUENCE {
# -- The subject lane connecting to this lane is:
# connectingLane ConnectingLane,
# -- The index of the connecting lane and also
# -- the maneuver from the current lane to it
# remoteIntersection IntersectionReferenceID OPTIONAL,
# -- This entry is only used when the
# -- indicated connecting lane belongs
# -- to another intersection layout. This
# -- provides a means to create meshes of lanes
# -- SPAT mapping details at the stop line are:
# signalGroup SignalGroupID OPTIONAL,
# -- The matching signal group send by
# -- the SPAT message for this lane/maneuver.
# -- Shall be present unless the connectingLane
# -- has no signal group (is un-signalized)
# userClass RestrictionClassID OPTIONAL,
# -- The Restriction Class of users this applies to
# -- The use of some lane/maneuver and SignalGroupID
# -- pairings are restricted to selected users.
# -- When absent, the SignalGroupID applies to all
# -- Movement assist details are given by:
# connectionID LaneConnectionID OPTIONAL
# -- An optional connection index used to
# -- relate this lane connection to any dynamic
# -- clearance data in the SPAT. Note that
# -- the index may be shared with other
# -- connections if the clearance data is common
# }

j2735_msgs/ConnectingLane connecting_lane

j2735_msgs/IntersectionReferenceID remote_intersection
bool remote_intersection_exists

# SignalGroupID ::= INTEGER (0..255)
uint8 signal_group
bool signal_group_exists

# RestrictionClassID ::= INTEGER (0..255)
uint8 user_class
bool user_class_exists

# LaneConnectionID ::= INTEGER (0..255)
uint8 connection_id
bool connection_id_exists

================================================================================
MSG: j2735_msgs/ConnectingLane
#
# ConnectingLane.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# ConnectingLane ::= SEQUENCE {
# lane LaneID,
# -- Index of the connecting lane
# maneuver AllowedManeuvers OPTIONAL
# -- The Maneuver between
# -- the enclosing lane and this lane
# -- at the stop line to connect them
# }

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is
# -- not available or not known
# -- the value 255 is reserved for future use
uint16 lane
uint16 LANE_UNAVAILABLE=0

# -- the permitted maneuvers for this lane
# AllowedManeuvers ::= BIT STRING {
# -- With bits as defined:
# -- Allowed maneuvers at path end (stop line)
# -- *** All maneuvers with bits not set are therefore prohibited ! ***
# -- A value of zero shall be used for unknown, indicating no Maneuver
j2735_msgs/AllowedManeuvers maneuver
bool maneuver_exists



================================================================================
MSG: j2735_msgs/AllowedManeuvers
#
# AllowedManeuvers.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# AllowedManeuvers ::= BIT STRING {
# -- With bits as defined:
# -- Allowed maneuvers at path end (stop line)
# -- All maneuvers with bits not set are therefore prohibited !
# -- A value of zero shall be used for unknown, indicating no Maneuver
# maneuverStraightAllowed(0),
# -- a Straight movement is allowed in this lane
# maneuverLeftAllowed(1),
# -- a Left Turn movement is allowed in this lane
# maneuverRightAllowed(2),
# -- a Right Turn movement is allowed in this lane
# maneuverUTurnAllowed(3),
# -- a U turn movement is allowed in this lane
# maneuverLeftTurnOnRedAllowed (4),
# -- a Stop, and then proceed when safe movement
# -- is allowed in this lane
# maneuverRightTurnOnRedAllowed (5),
# -- a Stop, and then proceed when safe movement
# -- is allowed in this lane
# maneuverLaneChangeAllowed(6),
# -- a movement which changes to an outer lane
# -- on the egress side is allowed in this lane
# -- (example: left into either outbound lane)
# maneuverNoStoppingAllowed(7),
# -- the vehicle should not stop at the stop line
# -- (example: a flashing green arrow)
# yieldAllwaysRequired(8),
# -- the allowed movements above are not protected
# -- (example: an permanent yellow condition)
# goWithHalt(9),
# -- after making a full stop, may proceed
# caution(10),
# -- proceed past stop line with caution
# reserved1(11)
# -- used to align to 12 Bit Field
# } (SIZE(12))

uint16 allowed_maneuvers

# Bit flags
uint16 STRAIGHT=1
uint16 LEFT_TURN=2
uint16 RIGHT_TURN=4
uint16 U_TURN=8
uint16 LEFT_TURN_ON_RED=16
uint16 RIGHT_TURN_ON_RED=32
uint16 LANE_CHANGE=64
uint16 NO_STOPPING_ALLOWED=128
uint16 ALWAYS_YIELD=256
uint16 GO_WITH_HALT=512
uint16 CAUTION=1024

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

")



(provide :j2735_msgs/ConnectsToList "3ebe5fd15cf3f33abba7b953dda1da83")


