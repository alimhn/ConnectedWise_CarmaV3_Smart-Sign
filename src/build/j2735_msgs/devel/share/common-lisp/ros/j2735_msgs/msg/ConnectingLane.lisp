; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude ConnectingLane.msg.html

(cl:defclass <ConnectingLane> (roslisp-msg-protocol:ros-message)
  ((lane
    :reader lane
    :initarg :lane
    :type cl:fixnum
    :initform 0)
   (maneuver
    :reader maneuver
    :initarg :maneuver
    :type j2735_msgs-msg:AllowedManeuvers
    :initform (cl:make-instance 'j2735_msgs-msg:AllowedManeuvers))
   (maneuver_exists
    :reader maneuver_exists
    :initarg :maneuver_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConnectingLane (<ConnectingLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectingLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectingLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<ConnectingLane> is deprecated: use j2735_msgs-msg:ConnectingLane instead.")))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <ConnectingLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane-val is deprecated.  Use j2735_msgs-msg:lane instead.")
  (lane m))

(cl:ensure-generic-function 'maneuver-val :lambda-list '(m))
(cl:defmethod maneuver-val ((m <ConnectingLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maneuver-val is deprecated.  Use j2735_msgs-msg:maneuver instead.")
  (maneuver m))

(cl:ensure-generic-function 'maneuver_exists-val :lambda-list '(m))
(cl:defmethod maneuver_exists-val ((m <ConnectingLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maneuver_exists-val is deprecated.  Use j2735_msgs-msg:maneuver_exists instead.")
  (maneuver_exists m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectingLane>)))
    "Constants for message type '<ConnectingLane>"
  '((:LANE_UNAVAILABLE . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectingLane)))
    "Constants for message type 'ConnectingLane"
  '((:LANE_UNAVAILABLE . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectingLane>) ostream)
  "Serializes a message object of type '<ConnectingLane>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'maneuver_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectingLane>) istream)
  "Deserializes a message object of type '<ConnectingLane>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver) istream)
    (cl:setf (cl:slot-value msg 'maneuver_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectingLane>)))
  "Returns string type for a message object of type '<ConnectingLane>"
  "j2735_msgs/ConnectingLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectingLane)))
  "Returns string type for a message object of type 'ConnectingLane"
  "j2735_msgs/ConnectingLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectingLane>)))
  "Returns md5sum for a message object of type '<ConnectingLane>"
  "39012b597fc8bbc11af942fd310810ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectingLane)))
  "Returns md5sum for a message object of type 'ConnectingLane"
  "39012b597fc8bbc11af942fd310810ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectingLane>)))
  "Returns full string definition for message of type '<ConnectingLane>"
  (cl:format cl:nil "#~%# ConnectingLane.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ConnectingLane ::= SEQUENCE {~%# lane LaneID,~%# -- Index of the connecting lane~%# maneuver AllowedManeuvers OPTIONAL~%# -- The Maneuver between~%# -- the enclosing lane and this lane~%# -- at the stop line to connect them~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 lane~%uint16 LANE_UNAVAILABLE=0~%~%# -- the permitted maneuvers for this lane~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- *** All maneuvers with bits not set are therefore prohibited ! ***~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%j2735_msgs/AllowedManeuvers maneuver~%bool maneuver_exists~%~%~%~%================================================================================~%MSG: j2735_msgs/AllowedManeuvers~%#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectingLane)))
  "Returns full string definition for message of type 'ConnectingLane"
  (cl:format cl:nil "#~%# ConnectingLane.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ConnectingLane ::= SEQUENCE {~%# lane LaneID,~%# -- Index of the connecting lane~%# maneuver AllowedManeuvers OPTIONAL~%# -- The Maneuver between~%# -- the enclosing lane and this lane~%# -- at the stop line to connect them~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 lane~%uint16 LANE_UNAVAILABLE=0~%~%# -- the permitted maneuvers for this lane~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- *** All maneuvers with bits not set are therefore prohibited ! ***~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%j2735_msgs/AllowedManeuvers maneuver~%bool maneuver_exists~%~%~%~%================================================================================~%MSG: j2735_msgs/AllowedManeuvers~%#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectingLane>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectingLane>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectingLane
    (cl:cons ':lane (lane msg))
    (cl:cons ':maneuver (maneuver msg))
    (cl:cons ':maneuver_exists (maneuver_exists msg))
))
