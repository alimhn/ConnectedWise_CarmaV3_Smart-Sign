; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AllowedManeuvers.msg.html

(cl:defclass <AllowedManeuvers> (roslisp-msg-protocol:ros-message)
  ((allowed_maneuvers
    :reader allowed_maneuvers
    :initarg :allowed_maneuvers
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AllowedManeuvers (<AllowedManeuvers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllowedManeuvers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllowedManeuvers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AllowedManeuvers> is deprecated: use j2735_msgs-msg:AllowedManeuvers instead.")))

(cl:ensure-generic-function 'allowed_maneuvers-val :lambda-list '(m))
(cl:defmethod allowed_maneuvers-val ((m <AllowedManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:allowed_maneuvers-val is deprecated.  Use j2735_msgs-msg:allowed_maneuvers instead.")
  (allowed_maneuvers m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AllowedManeuvers>)))
    "Constants for message type '<AllowedManeuvers>"
  '((:STRAIGHT . 1)
    (:LEFT_TURN . 2)
    (:RIGHT_TURN . 4)
    (:U_TURN . 8)
    (:LEFT_TURN_ON_RED . 16)
    (:RIGHT_TURN_ON_RED . 32)
    (:LANE_CHANGE . 64)
    (:NO_STOPPING_ALLOWED . 128)
    (:ALWAYS_YIELD . 256)
    (:GO_WITH_HALT . 512)
    (:CAUTION . 1024))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AllowedManeuvers)))
    "Constants for message type 'AllowedManeuvers"
  '((:STRAIGHT . 1)
    (:LEFT_TURN . 2)
    (:RIGHT_TURN . 4)
    (:U_TURN . 8)
    (:LEFT_TURN_ON_RED . 16)
    (:RIGHT_TURN_ON_RED . 32)
    (:LANE_CHANGE . 64)
    (:NO_STOPPING_ALLOWED . 128)
    (:ALWAYS_YIELD . 256)
    (:GO_WITH_HALT . 512)
    (:CAUTION . 1024))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllowedManeuvers>) ostream)
  "Serializes a message object of type '<AllowedManeuvers>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'allowed_maneuvers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'allowed_maneuvers)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllowedManeuvers>) istream)
  "Deserializes a message object of type '<AllowedManeuvers>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'allowed_maneuvers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'allowed_maneuvers)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllowedManeuvers>)))
  "Returns string type for a message object of type '<AllowedManeuvers>"
  "j2735_msgs/AllowedManeuvers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllowedManeuvers)))
  "Returns string type for a message object of type 'AllowedManeuvers"
  "j2735_msgs/AllowedManeuvers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllowedManeuvers>)))
  "Returns md5sum for a message object of type '<AllowedManeuvers>"
  "5f075ceebb35b879c36c787f46eabf5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllowedManeuvers)))
  "Returns md5sum for a message object of type 'AllowedManeuvers"
  "5f075ceebb35b879c36c787f46eabf5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllowedManeuvers>)))
  "Returns full string definition for message of type '<AllowedManeuvers>"
  (cl:format cl:nil "#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllowedManeuvers)))
  "Returns full string definition for message of type 'AllowedManeuvers"
  (cl:format cl:nil "#~%# AllowedManeuvers.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# AllowedManeuvers ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed maneuvers at path end (stop line)~%# -- All maneuvers with bits not set are therefore prohibited !~%# -- A value of zero shall be used for unknown, indicating no Maneuver~%# maneuverStraightAllowed(0),~%# -- a Straight movement is allowed in this lane~%# maneuverLeftAllowed(1),~%# -- a Left Turn movement is allowed in this lane~%# maneuverRightAllowed(2),~%# -- a Right Turn movement is allowed in this lane~%# maneuverUTurnAllowed(3),~%# -- a U turn movement is allowed in this lane~%# maneuverLeftTurnOnRedAllowed (4),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverRightTurnOnRedAllowed (5),~%# -- a Stop, and then proceed when safe movement~%# -- is allowed in this lane~%# maneuverLaneChangeAllowed(6),~%# -- a movement which changes to an outer lane~%# -- on the egress side is allowed in this lane~%# -- (example: left into either outbound lane)~%# maneuverNoStoppingAllowed(7),~%# -- the vehicle should not stop at the stop line~%# -- (example: a flashing green arrow)~%# yieldAllwaysRequired(8),~%# -- the allowed movements above are not protected~%# -- (example: an permanent yellow condition)~%# goWithHalt(9),~%# -- after making a full stop, may proceed~%# caution(10),~%# -- proceed past stop line with caution~%# reserved1(11)~%# -- used to align to 12 Bit Field~%# } (SIZE(12))~%~%uint16 allowed_maneuvers~%~%# Bit flags~%uint16 STRAIGHT=1~%uint16 LEFT_TURN=2~%uint16 RIGHT_TURN=4~%uint16 U_TURN=8~%uint16 LEFT_TURN_ON_RED=16~%uint16 RIGHT_TURN_ON_RED=32~%uint16 LANE_CHANGE=64~%uint16 NO_STOPPING_ALLOWED=128~%uint16 ALWAYS_YIELD=256~%uint16 GO_WITH_HALT=512~%uint16 CAUTION=1024~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllowedManeuvers>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllowedManeuvers>))
  "Converts a ROS message object to a list"
  (cl:list 'AllowedManeuvers
    (cl:cons ':allowed_maneuvers (allowed_maneuvers msg))
))
