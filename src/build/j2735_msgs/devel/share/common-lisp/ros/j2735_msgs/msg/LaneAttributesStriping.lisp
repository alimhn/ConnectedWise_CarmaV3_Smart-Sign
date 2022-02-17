; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesStriping.msg.html

(cl:defclass <LaneAttributesStriping> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_striping
    :reader lane_attributes_striping
    :initarg :lane_attributes_striping
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesStriping (<LaneAttributesStriping>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesStriping>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesStriping)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesStriping> is deprecated: use j2735_msgs-msg:LaneAttributesStriping instead.")))

(cl:ensure-generic-function 'lane_attributes_striping-val :lambda-list '(m))
(cl:defmethod lane_attributes_striping-val ((m <LaneAttributesStriping>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_striping-val is deprecated.  Use j2735_msgs-msg:lane_attributes_striping instead.")
  (lane_attributes_striping m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesStriping>) ostream)
  "Serializes a message object of type '<LaneAttributesStriping>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_striping)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_striping)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesStriping>) istream)
  "Deserializes a message object of type '<LaneAttributesStriping>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_striping)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_striping)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesStriping>)))
  "Returns string type for a message object of type '<LaneAttributesStriping>"
  "j2735_msgs/LaneAttributesStriping")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesStriping)))
  "Returns string type for a message object of type 'LaneAttributesStriping"
  "j2735_msgs/LaneAttributesStriping")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesStriping>)))
  "Returns md5sum for a message object of type '<LaneAttributesStriping>"
  "2426985d7e69b33e60c48db181bef6d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesStriping)))
  "Returns md5sum for a message object of type 'LaneAttributesStriping"
  "2426985d7e69b33e60c48db181bef6d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesStriping>)))
  "Returns full string definition for message of type '<LaneAttributesStriping>"
  (cl:format cl:nil "#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Striping data element relates specific properties found~%# in various types of ground striping lane types.~%#~%# LaneAttributes-Striping ::= BIT STRING {~%# -- With bits as defined:~%# stripeToConnectingLanesRevocableLane(0),~%# -- this lane may be activated or not activated based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# stripeDrawOnLeft(1),~%# stripeDrawOnRight(2),~%# -- which side of lane to mark~%# stripeToConnectingLanesLeft(3),~%# stripeToConnectingLanesRight(4),~%# stripeToConnectingLanesAhead(5)~%# -- the stripe type should be~%# -- presented to the user visually~%# -- to reflect stripes in the~%# -- intersection for the type of~%# -- movement indicated~%# -- Bits 6~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_striping~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesStriping)))
  "Returns full string definition for message of type 'LaneAttributesStriping"
  (cl:format cl:nil "#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Striping data element relates specific properties found~%# in various types of ground striping lane types.~%#~%# LaneAttributes-Striping ::= BIT STRING {~%# -- With bits as defined:~%# stripeToConnectingLanesRevocableLane(0),~%# -- this lane may be activated or not activated based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# stripeDrawOnLeft(1),~%# stripeDrawOnRight(2),~%# -- which side of lane to mark~%# stripeToConnectingLanesLeft(3),~%# stripeToConnectingLanesRight(4),~%# stripeToConnectingLanesAhead(5)~%# -- the stripe type should be~%# -- presented to the user visually~%# -- to reflect stripes in the~%# -- intersection for the type of~%# -- movement indicated~%# -- Bits 6~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_striping~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesStriping>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesStriping>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesStriping
    (cl:cons ':lane_attributes_striping (lane_attributes_striping msg))
))
