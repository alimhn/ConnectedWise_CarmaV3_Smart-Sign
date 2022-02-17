;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::Connection)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'Connection (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::CONNECTION")
  (make-package "J2735_MSGS::CONNECTION"))

(in-package "ROS")
;;//! \htmlinclude Connection.msg.html


(defclass j2735_msgs::Connection
  :super ros::object
  :slots (_connecting_lane _remote_intersection _remote_intersection_exists _signal_group _signal_group_exists _user_class _user_class_exists _connection_id _connection_id_exists ))

(defmethod j2735_msgs::Connection
  (:init
   (&key
    ((:connecting_lane __connecting_lane) (instance j2735_msgs::ConnectingLane :init))
    ((:remote_intersection __remote_intersection) (instance j2735_msgs::IntersectionReferenceID :init))
    ((:remote_intersection_exists __remote_intersection_exists) nil)
    ((:signal_group __signal_group) 0)
    ((:signal_group_exists __signal_group_exists) nil)
    ((:user_class __user_class) 0)
    ((:user_class_exists __user_class_exists) nil)
    ((:connection_id __connection_id) 0)
    ((:connection_id_exists __connection_id_exists) nil)
    )
   (send-super :init)
   (setq _connecting_lane __connecting_lane)
   (setq _remote_intersection __remote_intersection)
   (setq _remote_intersection_exists __remote_intersection_exists)
   (setq _signal_group (round __signal_group))
   (setq _signal_group_exists __signal_group_exists)
   (setq _user_class (round __user_class))
   (setq _user_class_exists __user_class_exists)
   (setq _connection_id (round __connection_id))
   (setq _connection_id_exists __connection_id_exists)
   self)
  (:connecting_lane
   (&rest __connecting_lane)
   (if (keywordp (car __connecting_lane))
       (send* _connecting_lane __connecting_lane)
     (progn
       (if __connecting_lane (setq _connecting_lane (car __connecting_lane)))
       _connecting_lane)))
  (:remote_intersection
   (&rest __remote_intersection)
   (if (keywordp (car __remote_intersection))
       (send* _remote_intersection __remote_intersection)
     (progn
       (if __remote_intersection (setq _remote_intersection (car __remote_intersection)))
       _remote_intersection)))
  (:remote_intersection_exists
   (&optional (__remote_intersection_exists :null))
   (if (not (eq __remote_intersection_exists :null)) (setq _remote_intersection_exists __remote_intersection_exists)) _remote_intersection_exists)
  (:signal_group
   (&optional __signal_group)
   (if __signal_group (setq _signal_group __signal_group)) _signal_group)
  (:signal_group_exists
   (&optional (__signal_group_exists :null))
   (if (not (eq __signal_group_exists :null)) (setq _signal_group_exists __signal_group_exists)) _signal_group_exists)
  (:user_class
   (&optional __user_class)
   (if __user_class (setq _user_class __user_class)) _user_class)
  (:user_class_exists
   (&optional (__user_class_exists :null))
   (if (not (eq __user_class_exists :null)) (setq _user_class_exists __user_class_exists)) _user_class_exists)
  (:connection_id
   (&optional __connection_id)
   (if __connection_id (setq _connection_id __connection_id)) _connection_id)
  (:connection_id_exists
   (&optional (__connection_id_exists :null))
   (if (not (eq __connection_id_exists :null)) (setq _connection_id_exists __connection_id_exists)) _connection_id_exists)
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/ConnectingLane _connecting_lane
    (send _connecting_lane :serialization-length)
    ;; j2735_msgs/IntersectionReferenceID _remote_intersection
    (send _remote_intersection :serialization-length)
    ;; bool _remote_intersection_exists
    1
    ;; uint8 _signal_group
    1
    ;; bool _signal_group_exists
    1
    ;; uint8 _user_class
    1
    ;; bool _user_class_exists
    1
    ;; uint8 _connection_id
    1
    ;; bool _connection_id_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/ConnectingLane _connecting_lane
       (send _connecting_lane :serialize s)
     ;; j2735_msgs/IntersectionReferenceID _remote_intersection
       (send _remote_intersection :serialize s)
     ;; bool _remote_intersection_exists
       (if _remote_intersection_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _signal_group
       (write-byte _signal_group s)
     ;; bool _signal_group_exists
       (if _signal_group_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _user_class
       (write-byte _user_class s)
     ;; bool _user_class_exists
       (if _user_class_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _connection_id
       (write-byte _connection_id s)
     ;; bool _connection_id_exists
       (if _connection_id_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/ConnectingLane _connecting_lane
     (send _connecting_lane :deserialize buf ptr-) (incf ptr- (send _connecting_lane :serialization-length))
   ;; j2735_msgs/IntersectionReferenceID _remote_intersection
     (send _remote_intersection :deserialize buf ptr-) (incf ptr- (send _remote_intersection :serialization-length))
   ;; bool _remote_intersection_exists
     (setq _remote_intersection_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _signal_group
     (setq _signal_group (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _signal_group_exists
     (setq _signal_group_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _user_class
     (setq _user_class (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _user_class_exists
     (setq _user_class_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _connection_id
     (setq _connection_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _connection_id_exists
     (setq _connection_id_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::Connection :md5sum-) "5d81d4cac5c46799dfbcbe8479a35e74")
(setf (get j2735_msgs::Connection :datatype-) "j2735_msgs/Connection")
(setf (get j2735_msgs::Connection :definition-)
      "#
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



(provide :j2735_msgs/Connection "5d81d4cac5c46799dfbcbe8479a35e74")


