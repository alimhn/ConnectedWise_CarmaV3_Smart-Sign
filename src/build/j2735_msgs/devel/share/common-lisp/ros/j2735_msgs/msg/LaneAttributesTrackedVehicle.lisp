; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesTrackedVehicle.msg.html

(cl:defclass <LaneAttributesTrackedVehicle> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_trackedvehicle
    :reader lane_attributes_trackedvehicle
    :initarg :lane_attributes_trackedvehicle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesTrackedVehicle (<LaneAttributesTrackedVehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesTrackedVehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesTrackedVehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesTrackedVehicle> is deprecated: use j2735_msgs-msg:LaneAttributesTrackedVehicle instead.")))

(cl:ensure-generic-function 'lane_attributes_trackedvehicle-val :lambda-list '(m))
(cl:defmethod lane_attributes_trackedvehicle-val ((m <LaneAttributesTrackedVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_trackedvehicle-val is deprecated.  Use j2735_msgs-msg:lane_attributes_trackedvehicle instead.")
  (lane_attributes_trackedvehicle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesTrackedVehicle>) ostream)
  "Serializes a message object of type '<LaneAttributesTrackedVehicle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_trackedvehicle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_trackedvehicle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesTrackedVehicle>) istream)
  "Deserializes a message object of type '<LaneAttributesTrackedVehicle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_trackedvehicle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_trackedvehicle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesTrackedVehicle>)))
  "Returns string type for a message object of type '<LaneAttributesTrackedVehicle>"
  "j2735_msgs/LaneAttributesTrackedVehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesTrackedVehicle)))
  "Returns string type for a message object of type 'LaneAttributesTrackedVehicle"
  "j2735_msgs/LaneAttributesTrackedVehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesTrackedVehicle>)))
  "Returns md5sum for a message object of type '<LaneAttributesTrackedVehicle>"
  "5c46f1b05aeda06003bee863bd58817a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesTrackedVehicle)))
  "Returns md5sum for a message object of type 'LaneAttributesTrackedVehicle"
  "5c46f1b05aeda06003bee863bd58817a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesTrackedVehicle>)))
  "Returns full string definition for message of type '<LaneAttributesTrackedVehicle>"
  (cl:format cl:nil "#~%# LaneAttributesTrackedVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Special data element relates specific properties found~%# in a tracked vehicle lane types (trolley and train lanes).~%# The term \"rail vehicle\" can be considered synonymous.~%# In this case, the term does not relate to vehicle types with tracks or treads.~%#~%# LaneAttributes-TrackedVehicle ::= BIT STRING {~%# -- With bits as defined:~%# spec-RevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# spec-commuterRailRoadTrack (1),~%# spec-lightRailRoadTrack(2),~%# spec-heavyRailRoadTrack(3),~%# spec-otherRailType(4)~%# -- Bits 5~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_trackedvehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesTrackedVehicle)))
  "Returns full string definition for message of type 'LaneAttributesTrackedVehicle"
  (cl:format cl:nil "#~%# LaneAttributesTrackedVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Special data element relates specific properties found~%# in a tracked vehicle lane types (trolley and train lanes).~%# The term \"rail vehicle\" can be considered synonymous.~%# In this case, the term does not relate to vehicle types with tracks or treads.~%#~%# LaneAttributes-TrackedVehicle ::= BIT STRING {~%# -- With bits as defined:~%# spec-RevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# spec-commuterRailRoadTrack (1),~%# spec-lightRailRoadTrack(2),~%# spec-heavyRailRoadTrack(3),~%# spec-otherRailType(4)~%# -- Bits 5~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_trackedvehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesTrackedVehicle>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesTrackedVehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesTrackedVehicle
    (cl:cons ':lane_attributes_trackedvehicle (lane_attributes_trackedvehicle msg))
))
