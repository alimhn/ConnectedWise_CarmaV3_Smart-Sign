; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesCrosswalk.msg.html

(cl:defclass <LaneAttributesCrosswalk> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_crosswalk
    :reader lane_attributes_crosswalk
    :initarg :lane_attributes_crosswalk
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesCrosswalk (<LaneAttributesCrosswalk>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesCrosswalk>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesCrosswalk)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesCrosswalk> is deprecated: use j2735_msgs-msg:LaneAttributesCrosswalk instead.")))

(cl:ensure-generic-function 'lane_attributes_crosswalk-val :lambda-list '(m))
(cl:defmethod lane_attributes_crosswalk-val ((m <LaneAttributesCrosswalk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_crosswalk-val is deprecated.  Use j2735_msgs-msg:lane_attributes_crosswalk instead.")
  (lane_attributes_crosswalk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesCrosswalk>) ostream)
  "Serializes a message object of type '<LaneAttributesCrosswalk>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_crosswalk)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_crosswalk)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesCrosswalk>) istream)
  "Deserializes a message object of type '<LaneAttributesCrosswalk>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_crosswalk)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_crosswalk)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesCrosswalk>)))
  "Returns string type for a message object of type '<LaneAttributesCrosswalk>"
  "j2735_msgs/LaneAttributesCrosswalk")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesCrosswalk)))
  "Returns string type for a message object of type 'LaneAttributesCrosswalk"
  "j2735_msgs/LaneAttributesCrosswalk")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesCrosswalk>)))
  "Returns md5sum for a message object of type '<LaneAttributesCrosswalk>"
  "e5120bfe121312032ad85867f1265ce1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesCrosswalk)))
  "Returns md5sum for a message object of type 'LaneAttributesCrosswalk"
  "e5120bfe121312032ad85867f1265ce1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesCrosswalk>)))
  "Returns full string definition for message of type '<LaneAttributesCrosswalk>"
  (cl:format cl:nil "#~%# LaneAttributesCrosswalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%~%# LaneAttributes-Crosswalk ::= BIT STRING {~%# 	-- With bits as defined:~%# 	-- MUTCD provides no suitable \"types\" to use here~%# 	crosswalkRevocableLane (0),~%# 		-- this lane may be activated or not based~%# 		-- on the current SPAT message contents~%# 		-- if not asserted, the lane is ALWAYS present~%# 	bicyleUseAllowed (1),~%# 		-- The path allows bicycle traffic,~%# 		-- if not set, this mode is prohibited~%# 	isXwalkFlyOverLane (2),~%# 		-- path of lane is not at grade~%# 	fixedCycleTime (3),~%# 		-- ped walk phases use preset times~%# 		-- i.e. there is not a 'push to cross' button~%# 	biDirectionalCycleTimes (4),~%# 		-- ped walk phases use different SignalGroupID~%# 		-- for each direction. The first SignalGroupID~%# 		-- in the first Connection represents 'inbound'~%# 		-- flow (the direction of travel towards the first~%# 		-- node point) while second SignalGroupID in the~%# 		-- next Connection entry represents the 'outbound'~%# 		-- flow. And use of RestrictionClassID entries~%# 		-- in the Connect follow this same pattern in pairs.~%# 	hasPushToWalkButton (5),~%# 		-- Has a demand input~%# 	audioSupport (6),~%# 		-- audio crossing cues present~%# 	rfSignalRequestPresent (7),~%# 		-- Supports RF push to walk technologies~%# 	unsignalizedSegmentsPresent (8)~%# 		-- The lane path consists of one of more segments~%# 		-- which are not part of a signal group ID~%# } (SIZE (16))~%~%uint16  lane_attributes_crosswalk~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesCrosswalk)))
  "Returns full string definition for message of type 'LaneAttributesCrosswalk"
  (cl:format cl:nil "#~%# LaneAttributesCrosswalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%~%# LaneAttributes-Crosswalk ::= BIT STRING {~%# 	-- With bits as defined:~%# 	-- MUTCD provides no suitable \"types\" to use here~%# 	crosswalkRevocableLane (0),~%# 		-- this lane may be activated or not based~%# 		-- on the current SPAT message contents~%# 		-- if not asserted, the lane is ALWAYS present~%# 	bicyleUseAllowed (1),~%# 		-- The path allows bicycle traffic,~%# 		-- if not set, this mode is prohibited~%# 	isXwalkFlyOverLane (2),~%# 		-- path of lane is not at grade~%# 	fixedCycleTime (3),~%# 		-- ped walk phases use preset times~%# 		-- i.e. there is not a 'push to cross' button~%# 	biDirectionalCycleTimes (4),~%# 		-- ped walk phases use different SignalGroupID~%# 		-- for each direction. The first SignalGroupID~%# 		-- in the first Connection represents 'inbound'~%# 		-- flow (the direction of travel towards the first~%# 		-- node point) while second SignalGroupID in the~%# 		-- next Connection entry represents the 'outbound'~%# 		-- flow. And use of RestrictionClassID entries~%# 		-- in the Connect follow this same pattern in pairs.~%# 	hasPushToWalkButton (5),~%# 		-- Has a demand input~%# 	audioSupport (6),~%# 		-- audio crossing cues present~%# 	rfSignalRequestPresent (7),~%# 		-- Supports RF push to walk technologies~%# 	unsignalizedSegmentsPresent (8)~%# 		-- The lane path consists of one of more segments~%# 		-- which are not part of a signal group ID~%# } (SIZE (16))~%~%uint16  lane_attributes_crosswalk~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesCrosswalk>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesCrosswalk>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesCrosswalk
    (cl:cons ':lane_attributes_crosswalk (lane_attributes_crosswalk msg))
))
