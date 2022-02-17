; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesBarrier.msg.html

(cl:defclass <LaneAttributesBarrier> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_barrier
    :reader lane_attributes_barrier
    :initarg :lane_attributes_barrier
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesBarrier (<LaneAttributesBarrier>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesBarrier>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesBarrier)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesBarrier> is deprecated: use j2735_msgs-msg:LaneAttributesBarrier instead.")))

(cl:ensure-generic-function 'lane_attributes_barrier-val :lambda-list '(m))
(cl:defmethod lane_attributes_barrier-val ((m <LaneAttributesBarrier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_barrier-val is deprecated.  Use j2735_msgs-msg:lane_attributes_barrier instead.")
  (lane_attributes_barrier m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesBarrier>) ostream)
  "Serializes a message object of type '<LaneAttributesBarrier>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_barrier)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_barrier)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesBarrier>) istream)
  "Deserializes a message object of type '<LaneAttributesBarrier>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_barrier)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_barrier)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesBarrier>)))
  "Returns string type for a message object of type '<LaneAttributesBarrier>"
  "j2735_msgs/LaneAttributesBarrier")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesBarrier)))
  "Returns string type for a message object of type 'LaneAttributesBarrier"
  "j2735_msgs/LaneAttributesBarrier")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesBarrier>)))
  "Returns md5sum for a message object of type '<LaneAttributesBarrier>"
  "5531954e90106cf99fd38e717468b88b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesBarrier)))
  "Returns md5sum for a message object of type 'LaneAttributesBarrier"
  "5531954e90106cf99fd38e717468b88b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesBarrier>)))
  "Returns full string definition for message of type '<LaneAttributesBarrier>"
  (cl:format cl:nil "#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Barrier data element relates specific properties found in a Barrier~%# or Median lane type (a type of lane object used to separate traffic lanes).~%#~%# LaneAttributes-Barrier ::= BIT STRING {~%# -- With bits as defined:~%# median-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# median (1),~%# whiteLineHashing (2),~%# stripedLines (3),~%# doubleStripedLines (4),~%# trafficCones (5),~%# constructionBarrier(6),~%# trafficChannels(7),~%# lowCurbs(8),~%# highCurbs(9)~%# -- Bits 10~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_barrier~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesBarrier)))
  "Returns full string definition for message of type 'LaneAttributesBarrier"
  (cl:format cl:nil "#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Barrier data element relates specific properties found in a Barrier~%# or Median lane type (a type of lane object used to separate traffic lanes).~%#~%# LaneAttributes-Barrier ::= BIT STRING {~%# -- With bits as defined:~%# median-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# median (1),~%# whiteLineHashing (2),~%# stripedLines (3),~%# doubleStripedLines (4),~%# trafficCones (5),~%# constructionBarrier(6),~%# trafficChannels(7),~%# lowCurbs(8),~%# highCurbs(9)~%# -- Bits 10~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_barrier~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesBarrier>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesBarrier>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesBarrier
    (cl:cons ':lane_attributes_barrier (lane_attributes_barrier msg))
))
