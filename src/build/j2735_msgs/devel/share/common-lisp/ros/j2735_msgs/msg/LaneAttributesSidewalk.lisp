; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesSidewalk.msg.html

(cl:defclass <LaneAttributesSidewalk> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_sidewalk
    :reader lane_attributes_sidewalk
    :initarg :lane_attributes_sidewalk
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesSidewalk (<LaneAttributesSidewalk>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesSidewalk>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesSidewalk)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesSidewalk> is deprecated: use j2735_msgs-msg:LaneAttributesSidewalk instead.")))

(cl:ensure-generic-function 'lane_attributes_sidewalk-val :lambda-list '(m))
(cl:defmethod lane_attributes_sidewalk-val ((m <LaneAttributesSidewalk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_sidewalk-val is deprecated.  Use j2735_msgs-msg:lane_attributes_sidewalk instead.")
  (lane_attributes_sidewalk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesSidewalk>) ostream)
  "Serializes a message object of type '<LaneAttributesSidewalk>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_sidewalk)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_sidewalk)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesSidewalk>) istream)
  "Deserializes a message object of type '<LaneAttributesSidewalk>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_sidewalk)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_sidewalk)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesSidewalk>)))
  "Returns string type for a message object of type '<LaneAttributesSidewalk>"
  "j2735_msgs/LaneAttributesSidewalk")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesSidewalk)))
  "Returns string type for a message object of type 'LaneAttributesSidewalk"
  "j2735_msgs/LaneAttributesSidewalk")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesSidewalk>)))
  "Returns md5sum for a message object of type '<LaneAttributesSidewalk>"
  "97871d7230232984666cd50c114ca7bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesSidewalk)))
  "Returns md5sum for a message object of type 'LaneAttributesSidewalk"
  "97871d7230232984666cd50c114ca7bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesSidewalk>)))
  "Returns full string definition for message of type '<LaneAttributesSidewalk>"
  (cl:format cl:nil "#~%# LaneAttributesSidewalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type~%#~%# LaneAttributes-Sidewalk ::= BIT STRING {~%# -- With bits as defined:~%# sidewalk-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# bicyleUseAllowed (1),~%# -- The path allows bicycle traffic,~%# -- if not set, this mode is prohibited~%# isSidewalkFlyOverLane (2),~%# -- path of lane is not at grade~%# walkBikes (3)~%# -- bike traffic must dismount and walk~%# -- Bits 4~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_sidewalk~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesSidewalk)))
  "Returns full string definition for message of type 'LaneAttributesSidewalk"
  (cl:format cl:nil "#~%# LaneAttributesSidewalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type~%#~%# LaneAttributes-Sidewalk ::= BIT STRING {~%# -- With bits as defined:~%# sidewalk-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# bicyleUseAllowed (1),~%# -- The path allows bicycle traffic,~%# -- if not set, this mode is prohibited~%# isSidewalkFlyOverLane (2),~%# -- path of lane is not at grade~%# walkBikes (3)~%# -- bike traffic must dismount and walk~%# -- Bits 4~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_sidewalk~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesSidewalk>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesSidewalk>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesSidewalk
    (cl:cons ':lane_attributes_sidewalk (lane_attributes_sidewalk msg))
))
