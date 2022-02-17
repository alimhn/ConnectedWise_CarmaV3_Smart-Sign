; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesBike.msg.html

(cl:defclass <LaneAttributesBike> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_bike
    :reader lane_attributes_bike
    :initarg :lane_attributes_bike
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesBike (<LaneAttributesBike>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesBike>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesBike)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesBike> is deprecated: use j2735_msgs-msg:LaneAttributesBike instead.")))

(cl:ensure-generic-function 'lane_attributes_bike-val :lambda-list '(m))
(cl:defmethod lane_attributes_bike-val ((m <LaneAttributesBike>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_bike-val is deprecated.  Use j2735_msgs-msg:lane_attributes_bike instead.")
  (lane_attributes_bike m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesBike>) ostream)
  "Serializes a message object of type '<LaneAttributesBike>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_bike)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_bike)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesBike>) istream)
  "Deserializes a message object of type '<LaneAttributesBike>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_bike)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_bike)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesBike>)))
  "Returns string type for a message object of type '<LaneAttributesBike>"
  "j2735_msgs/LaneAttributesBike")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesBike)))
  "Returns string type for a message object of type 'LaneAttributesBike"
  "j2735_msgs/LaneAttributesBike")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesBike>)))
  "Returns md5sum for a message object of type '<LaneAttributesBike>"
  "d97edc5cc6e1a0f94524b84eca2f039f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesBike)))
  "Returns md5sum for a message object of type 'LaneAttributesBike"
  "d97edc5cc6e1a0f94524b84eca2f039f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesBike>)))
  "Returns full string definition for message of type '<LaneAttributesBike>"
  (cl:format cl:nil "#~%# LaneAttributesBike.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.~%#~%# LaneAttributes-Bike ::= BIT STRING {~%#	-- With bits as defined:~%#	bikeRevocableLane (0),~%#		-- this lane may be activated or not based~%#		-- on the current SPAT message contents~%#		-- if not asserted, the lane is ALWAYS present~%#	pedestrianUseAllowed (1),~%#		-- The path allows pedestrian traffic,~%#		-- if not set, this mode is prohibited~%#	isBikeFlyOverLane (2),~%#		-- path of lane is not at grade~%#	fixedCycleTime (3),~%#		-- the phases use preset times~%#		-- Bits 7~~15 reserved and set to zero~%#	} (SIZE (16))~%~%uint16 lane_attributes_bike~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesBike)))
  "Returns full string definition for message of type 'LaneAttributesBike"
  (cl:format cl:nil "#~%# LaneAttributesBike.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.~%#~%# LaneAttributes-Bike ::= BIT STRING {~%#	-- With bits as defined:~%#	bikeRevocableLane (0),~%#		-- this lane may be activated or not based~%#		-- on the current SPAT message contents~%#		-- if not asserted, the lane is ALWAYS present~%#	pedestrianUseAllowed (1),~%#		-- The path allows pedestrian traffic,~%#		-- if not set, this mode is prohibited~%#	isBikeFlyOverLane (2),~%#		-- path of lane is not at grade~%#	fixedCycleTime (3),~%#		-- the phases use preset times~%#		-- Bits 7~~15 reserved and set to zero~%#	} (SIZE (16))~%~%uint16 lane_attributes_bike~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesBike>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesBike>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesBike
    (cl:cons ':lane_attributes_bike (lane_attributes_bike msg))
))
