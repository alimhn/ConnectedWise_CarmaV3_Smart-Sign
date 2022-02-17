; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude Connection.msg.html

(cl:defclass <Connection> (roslisp-msg-protocol:ros-message)
  ((connecting_lane
    :reader connecting_lane
    :initarg :connecting_lane
    :type j2735_msgs-msg:ConnectingLane
    :initform (cl:make-instance 'j2735_msgs-msg:ConnectingLane))
   (remote_intersection
    :reader remote_intersection
    :initarg :remote_intersection
    :type j2735_msgs-msg:IntersectionReferenceID
    :initform (cl:make-instance 'j2735_msgs-msg:IntersectionReferenceID))
   (remote_intersection_exists
    :reader remote_intersection_exists
    :initarg :remote_intersection_exists
    :type cl:boolean
    :initform cl:nil)
   (signal_group
    :reader signal_group
    :initarg :signal_group
    :type cl:fixnum
    :initform 0)
   (signal_group_exists
    :reader signal_group_exists
    :initarg :signal_group_exists
    :type cl:boolean
    :initform cl:nil)
   (user_class
    :reader user_class
    :initarg :user_class
    :type cl:fixnum
    :initform 0)
   (user_class_exists
    :reader user_class_exists
    :initarg :user_class_exists
    :type cl:boolean
    :initform cl:nil)
   (connection_id
    :reader connection_id
    :initarg :connection_id
    :type cl:fixnum
    :initform 0)
   (connection_id_exists
    :reader connection_id_exists
    :initarg :connection_id_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Connection (<Connection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<Connection> is deprecated: use j2735_msgs-msg:Connection instead.")))

(cl:ensure-generic-function 'connecting_lane-val :lambda-list '(m))
(cl:defmethod connecting_lane-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:connecting_lane-val is deprecated.  Use j2735_msgs-msg:connecting_lane instead.")
  (connecting_lane m))

(cl:ensure-generic-function 'remote_intersection-val :lambda-list '(m))
(cl:defmethod remote_intersection-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:remote_intersection-val is deprecated.  Use j2735_msgs-msg:remote_intersection instead.")
  (remote_intersection m))

(cl:ensure-generic-function 'remote_intersection_exists-val :lambda-list '(m))
(cl:defmethod remote_intersection_exists-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:remote_intersection_exists-val is deprecated.  Use j2735_msgs-msg:remote_intersection_exists instead.")
  (remote_intersection_exists m))

(cl:ensure-generic-function 'signal_group-val :lambda-list '(m))
(cl:defmethod signal_group-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:signal_group-val is deprecated.  Use j2735_msgs-msg:signal_group instead.")
  (signal_group m))

(cl:ensure-generic-function 'signal_group_exists-val :lambda-list '(m))
(cl:defmethod signal_group_exists-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:signal_group_exists-val is deprecated.  Use j2735_msgs-msg:signal_group_exists instead.")
  (signal_group_exists m))

(cl:ensure-generic-function 'user_class-val :lambda-list '(m))
(cl:defmethod user_class-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:user_class-val is deprecated.  Use j2735_msgs-msg:user_class instead.")
  (user_class m))

(cl:ensure-generic-function 'user_class_exists-val :lambda-list '(m))
(cl:defmethod user_class_exists-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:user_class_exists-val is deprecated.  Use j2735_msgs-msg:user_class_exists instead.")
  (user_class_exists m))

(cl:ensure-generic-function 'connection_id-val :lambda-list '(m))
(cl:defmethod connection_id-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:connection_id-val is deprecated.  Use j2735_msgs-msg:connection_id instead.")
  (connection_id m))

(cl:ensure-generic-function 'connection_id_exists-val :lambda-list '(m))
(cl:defmethod connection_id_exists-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:connection_id_exists-val is deprecated.  Use j2735_msgs-msg:connection_id_exists instead.")
  (connection_id_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connection>) ostream)
  "Serializes a message object of type '<Connection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'connecting_lane) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'remote_intersection) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'remote_intersection_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'signal_group_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user_class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_class_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_id_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connection>) istream)
  "Deserializes a message object of type '<Connection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'connecting_lane) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'remote_intersection) istream)
    (cl:setf (cl:slot-value msg 'remote_intersection_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_group)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'signal_group_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user_class)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'user_class_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'connection_id_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connection>)))
  "Returns string type for a message object of type '<Connection>"
  "j2735_msgs/Connection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connection)))
  "Returns string type for a message object of type 'Connection"
  "j2735_msgs/Connection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connection>)))
  "Returns md5sum for a message object of type '<Connection>"
  "5d81d4cac5c46799dfbcbe8479a35e74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connection)))
  "Returns md5sum for a message object of type 'Connection"
  "5d81d4cac5c46799dfbcbe8479a35e74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connection>)))
  "Returns full string definition for message of type '<Connection>"
  (cl:format cl:nil "#~%# Connection.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at~%# the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound~%# (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this~%# to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected~%# conditions).~%#~%# Connection ::= SEQUENCE {~%# -- The subject lane connecting to this lane is:~%# connectingLane ConnectingLane,~%# -- The index of the connecting lane and also~%# -- the maneuver from the current lane to it~%# remoteIntersection IntersectionReferenceID OPTIONAL,~%# -- This entry is only used when the~%# -- indicated connecting lane belongs~%# -- to another intersection layout. This~%# -- provides a means to create meshes of lanes~%# -- SPAT mapping details at the stop line are:~%# signalGroup SignalGroupID OPTIONAL,~%# -- The matching signal group send by~%# -- the SPAT message for this lane/maneuver.~%# -- Shall be present unless the connectingLane~%# -- has no signal group (is un-signalized)~%# userClass RestrictionClassID OPTIONAL,~%# -- The Restriction Class of users this applies to~%# -- The use of some lane/maneuver and SignalGroupID~%# -- pairings are restricted to selected users.~%# -- When absent, the SignalGroupID applies to all~%# -- Movement assist details are given by:~%# connectionID LaneConnectionID OPTIONAL~%# -- An optional connection index used to~%# -- relate this lane connection to any dynamic~%# -- clearance data in the SPAT. Note that~%# -- the index may be shared with other~%# -- connections if the clearance data is common~%# }~%~%j2735_msgs/ConnectingLane connecting_lane~%~%j2735_msgs/IntersectionReferenceID remote_intersection~%bool remote_intersection_exists~%~%# SignalGroupID ::= INTEGER (0..255)~%uint8 signal_group~%bool signal_group_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 user_class~%bool user_class_exists~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%bool connection_id_exists~%~%================================================================================~%MSG: j2735_msgs/ConnectingLane~%#~%# ConnectingLane.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ConnectingLane ::= SEQUENCE {~%# lane LaneID,~%# -- Index of the connecting lane~%# maneuver AllowedManeuvers OPTIONAL~%# -- The Maneuver between~%# -- the enclosing lane and this lane~%# -- at the stop line to connect them~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 lane~%uint16 LANE_UNAVAILABLE=0~%~%# -- the permitted maneuvers for this lane~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- *** All maneuvers with bits not set are therefore prohibited ! ***~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%j2735_msgs/AllowedManeuvers maneuver~%bool maneuver_exists~%~%~%~%================================================================================~%MSG: j2735_msgs/AllowedManeuvers~%#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%================================================================================~%MSG: j2735_msgs/IntersectionReferenceID~%#~%# IntersectionReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an~%# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is~%# guaranteed to be globally unique.~%~%# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)~%# -- a globally unique regional assignment value~%# -- typical assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.~%uint16 region~%uint16 REGION_UNAVAILABLE=0~%bool region_exists~%~%# id IntersectionID ::= INTEGER (0..65535)~%# -- a unique mapping to the intersection~%# -- in question within the above region of use~%uint16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connection)))
  "Returns full string definition for message of type 'Connection"
  (cl:format cl:nil "#~%# Connection.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at~%# the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound~%# (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this~%# to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected~%# conditions).~%#~%# Connection ::= SEQUENCE {~%# -- The subject lane connecting to this lane is:~%# connectingLane ConnectingLane,~%# -- The index of the connecting lane and also~%# -- the maneuver from the current lane to it~%# remoteIntersection IntersectionReferenceID OPTIONAL,~%# -- This entry is only used when the~%# -- indicated connecting lane belongs~%# -- to another intersection layout. This~%# -- provides a means to create meshes of lanes~%# -- SPAT mapping details at the stop line are:~%# signalGroup SignalGroupID OPTIONAL,~%# -- The matching signal group send by~%# -- the SPAT message for this lane/maneuver.~%# -- Shall be present unless the connectingLane~%# -- has no signal group (is un-signalized)~%# userClass RestrictionClassID OPTIONAL,~%# -- The Restriction Class of users this applies to~%# -- The use of some lane/maneuver and SignalGroupID~%# -- pairings are restricted to selected users.~%# -- When absent, the SignalGroupID applies to all~%# -- Movement assist details are given by:~%# connectionID LaneConnectionID OPTIONAL~%# -- An optional connection index used to~%# -- relate this lane connection to any dynamic~%# -- clearance data in the SPAT. Note that~%# -- the index may be shared with other~%# -- connections if the clearance data is common~%# }~%~%j2735_msgs/ConnectingLane connecting_lane~%~%j2735_msgs/IntersectionReferenceID remote_intersection~%bool remote_intersection_exists~%~%# SignalGroupID ::= INTEGER (0..255)~%uint8 signal_group~%bool signal_group_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 user_class~%bool user_class_exists~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%bool connection_id_exists~%~%================================================================================~%MSG: j2735_msgs/ConnectingLane~%#~%# ConnectingLane.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ConnectingLane ::= SEQUENCE {~%# lane LaneID,~%# -- Index of the connecting lane~%# maneuver AllowedManeuvers OPTIONAL~%# -- The Maneuver between~%# -- the enclosing lane and this lane~%# -- at the stop line to connect them~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 lane~%uint16 LANE_UNAVAILABLE=0~%~%# -- the permitted maneuvers for this lane~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- *** All maneuvers with bits not set are therefore prohibited ! ***~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%j2735_msgs/AllowedManeuvers maneuver~%bool maneuver_exists~%~%~%~%================================================================================~%MSG: j2735_msgs/AllowedManeuvers~%#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%================================================================================~%MSG: j2735_msgs/IntersectionReferenceID~%#~%# IntersectionReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an~%# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is~%# guaranteed to be globally unique.~%~%# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)~%# -- a globally unique regional assignment value~%# -- typical assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.~%uint16 region~%uint16 REGION_UNAVAILABLE=0~%bool region_exists~%~%# id IntersectionID ::= INTEGER (0..65535)~%# -- a unique mapping to the intersection~%# -- in question within the above region of use~%uint16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'connecting_lane))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'remote_intersection))
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connection>))
  "Converts a ROS message object to a list"
  (cl:list 'Connection
    (cl:cons ':connecting_lane (connecting_lane msg))
    (cl:cons ':remote_intersection (remote_intersection msg))
    (cl:cons ':remote_intersection_exists (remote_intersection_exists msg))
    (cl:cons ':signal_group (signal_group msg))
    (cl:cons ':signal_group_exists (signal_group_exists msg))
    (cl:cons ':user_class (user_class msg))
    (cl:cons ':user_class_exists (user_class_exists msg))
    (cl:cons ':connection_id (connection_id msg))
    (cl:cons ':connection_id_exists (connection_id_exists msg))
))
