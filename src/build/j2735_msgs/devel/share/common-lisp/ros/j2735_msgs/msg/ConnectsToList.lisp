; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude ConnectsToList.msg.html

(cl:defclass <ConnectsToList> (roslisp-msg-protocol:ros-message)
  ((connect_to_list
    :reader connect_to_list
    :initarg :connect_to_list
    :type (cl:vector j2735_msgs-msg:Connection)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:Connection :initial-element (cl:make-instance 'j2735_msgs-msg:Connection))))
)

(cl:defclass ConnectsToList (<ConnectsToList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectsToList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectsToList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<ConnectsToList> is deprecated: use j2735_msgs-msg:ConnectsToList instead.")))

(cl:ensure-generic-function 'connect_to_list-val :lambda-list '(m))
(cl:defmethod connect_to_list-val ((m <ConnectsToList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:connect_to_list-val is deprecated.  Use j2735_msgs-msg:connect_to_list instead.")
  (connect_to_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectsToList>) ostream)
  "Serializes a message object of type '<ConnectsToList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connect_to_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'connect_to_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectsToList>) istream)
  "Deserializes a message object of type '<ConnectsToList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connect_to_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connect_to_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:Connection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectsToList>)))
  "Returns string type for a message object of type '<ConnectsToList>"
  "j2735_msgs/ConnectsToList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectsToList)))
  "Returns string type for a message object of type 'ConnectsToList"
  "j2735_msgs/ConnectsToList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectsToList>)))
  "Returns md5sum for a message object of type '<ConnectsToList>"
  "3ebe5fd15cf3f33abba7b953dda1da83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectsToList)))
  "Returns md5sum for a message object of type 'ConnectsToList"
  "3ebe5fd15cf3f33abba7b953dda1da83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectsToList>)))
  "Returns full string definition for message of type '<ConnectsToList>"
  (cl:format cl:nil "#~%# ConnectsToList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The ConnectsToList data structure is used in the generic lane descriptions to provide a sequence of other defined~%# lanes to which each lane connects beyond its stop point. See the Connection data frame entry for details. Note that this~%# data frame is not used in some lane object types.~%#~%# ConnectsToList ::= SEQUENCE (SIZE(1..16)) OF Connection~%~%j2735_msgs/Connection[] connect_to_list~%~%================================================================================~%MSG: j2735_msgs/Connection~%#~%# Connection.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at~%# the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound~%# (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this~%# to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected~%# conditions).~%#~%# Connection ::= SEQUENCE {~%# -- The subject lane connecting to this lane is:~%# connectingLane ConnectingLane,~%# -- The index of the connecting lane and also~%# -- the maneuver from the current lane to it~%# remoteIntersection IntersectionReferenceID OPTIONAL,~%# -- This entry is only used when the~%# -- indicated connecting lane belongs~%# -- to another intersection layout. This~%# -- provides a means to create meshes of lanes~%# -- SPAT mapping details at the stop line are:~%# signalGroup SignalGroupID OPTIONAL,~%# -- The matching signal group send by~%# -- the SPAT message for this lane/maneuver.~%# -- Shall be present unless the connectingLane~%# -- has no signal group (is un-signalized)~%# userClass RestrictionClassID OPTIONAL,~%# -- The Restriction Class of users this applies to~%# -- The use of some lane/maneuver and SignalGroupID~%# -- pairings are restricted to selected users.~%# -- When absent, the SignalGroupID applies to all~%# -- Movement assist details are given by:~%# connectionID LaneConnectionID OPTIONAL~%# -- An optional connection index used to~%# -- relate this lane connection to any dynamic~%# -- clearance data in the SPAT. Note that~%# -- the index may be shared with other~%# -- connections if the clearance data is common~%# }~%~%j2735_msgs/ConnectingLane connecting_lane~%~%j2735_msgs/IntersectionReferenceID remote_intersection~%bool remote_intersection_exists~%~%# SignalGroupID ::= INTEGER (0..255)~%uint8 signal_group~%bool signal_group_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 user_class~%bool user_class_exists~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%bool connection_id_exists~%~%================================================================================~%MSG: j2735_msgs/ConnectingLane~%#~%# ConnectingLane.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ConnectingLane ::= SEQUENCE {~%# lane LaneID,~%# -- Index of the connecting lane~%# maneuver AllowedManeuvers OPTIONAL~%# -- The Maneuver between~%# -- the enclosing lane and this lane~%# -- at the stop line to connect them~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 lane~%uint16 LANE_UNAVAILABLE=0~%~%# -- the permitted maneuvers for this lane~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- *** All maneuvers with bits not set are therefore prohibited ! ***~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%j2735_msgs/AllowedManeuvers maneuver~%bool maneuver_exists~%~%~%~%================================================================================~%MSG: j2735_msgs/AllowedManeuvers~%#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%================================================================================~%MSG: j2735_msgs/IntersectionReferenceID~%#~%# IntersectionReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an~%# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is~%# guaranteed to be globally unique.~%~%# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)~%# -- a globally unique regional assignment value~%# -- typical assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.~%uint16 region~%uint16 REGION_UNAVAILABLE=0~%bool region_exists~%~%# id IntersectionID ::= INTEGER (0..65535)~%# -- a unique mapping to the intersection~%# -- in question within the above region of use~%uint16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectsToList)))
  "Returns full string definition for message of type 'ConnectsToList"
  (cl:format cl:nil "#~%# ConnectsToList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The ConnectsToList data structure is used in the generic lane descriptions to provide a sequence of other defined~%# lanes to which each lane connects beyond its stop point. See the Connection data frame entry for details. Note that this~%# data frame is not used in some lane object types.~%#~%# ConnectsToList ::= SEQUENCE (SIZE(1..16)) OF Connection~%~%j2735_msgs/Connection[] connect_to_list~%~%================================================================================~%MSG: j2735_msgs/Connection~%#~%# Connection.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at~%# the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound~%# (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this~%# to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected~%# conditions).~%#~%# Connection ::= SEQUENCE {~%# -- The subject lane connecting to this lane is:~%# connectingLane ConnectingLane,~%# -- The index of the connecting lane and also~%# -- the maneuver from the current lane to it~%# remoteIntersection IntersectionReferenceID OPTIONAL,~%# -- This entry is only used when the~%# -- indicated connecting lane belongs~%# -- to another intersection layout. This~%# -- provides a means to create meshes of lanes~%# -- SPAT mapping details at the stop line are:~%# signalGroup SignalGroupID OPTIONAL,~%# -- The matching signal group send by~%# -- the SPAT message for this lane/maneuver.~%# -- Shall be present unless the connectingLane~%# -- has no signal group (is un-signalized)~%# userClass RestrictionClassID OPTIONAL,~%# -- The Restriction Class of users this applies to~%# -- The use of some lane/maneuver and SignalGroupID~%# -- pairings are restricted to selected users.~%# -- When absent, the SignalGroupID applies to all~%# -- Movement assist details are given by:~%# connectionID LaneConnectionID OPTIONAL~%# -- An optional connection index used to~%# -- relate this lane connection to any dynamic~%# -- clearance data in the SPAT. Note that~%# -- the index may be shared with other~%# -- connections if the clearance data is common~%# }~%~%j2735_msgs/ConnectingLane connecting_lane~%~%j2735_msgs/IntersectionReferenceID remote_intersection~%bool remote_intersection_exists~%~%# SignalGroupID ::= INTEGER (0..255)~%uint8 signal_group~%bool signal_group_exists~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 user_class~%bool user_class_exists~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%bool connection_id_exists~%~%================================================================================~%MSG: j2735_msgs/ConnectingLane~%#~%# ConnectingLane.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ConnectingLane ::= SEQUENCE {~%# lane LaneID,~%# -- Index of the connecting lane~%# maneuver AllowedManeuvers OPTIONAL~%# -- The Maneuver between~%# -- the enclosing lane and this lane~%# -- at the stop line to connect them~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 lane~%uint16 LANE_UNAVAILABLE=0~%~%# -- the permitted maneuvers for this lane~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- *** All maneuvers with bits not set are therefore prohibited ! ***~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%j2735_msgs/AllowedManeuvers maneuver~%bool maneuver_exists~%~%~%~%================================================================================~%MSG: j2735_msgs/AllowedManeuvers~%#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%================================================================================~%MSG: j2735_msgs/IntersectionReferenceID~%#~%# IntersectionReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an~%# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is~%# guaranteed to be globally unique.~%~%# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)~%# -- a globally unique regional assignment value~%# -- typical assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.~%uint16 region~%uint16 REGION_UNAVAILABLE=0~%bool region_exists~%~%# id IntersectionID ::= INTEGER (0..65535)~%# -- a unique mapping to the intersection~%# -- in question within the above region of use~%uint16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectsToList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connect_to_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectsToList>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectsToList
    (cl:cons ':connect_to_list (connect_to_list msg))
))