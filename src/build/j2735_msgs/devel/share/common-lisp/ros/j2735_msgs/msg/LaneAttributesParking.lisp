; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesParking.msg.html

(cl:defclass <LaneAttributesParking> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_parking
    :reader lane_attributes_parking
    :initarg :lane_attributes_parking
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesParking (<LaneAttributesParking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesParking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesParking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesParking> is deprecated: use j2735_msgs-msg:LaneAttributesParking instead.")))

(cl:ensure-generic-function 'lane_attributes_parking-val :lambda-list '(m))
(cl:defmethod lane_attributes_parking-val ((m <LaneAttributesParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_parking-val is deprecated.  Use j2735_msgs-msg:lane_attributes_parking instead.")
  (lane_attributes_parking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesParking>) ostream)
  "Serializes a message object of type '<LaneAttributesParking>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_parking)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_parking)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesParking>) istream)
  "Deserializes a message object of type '<LaneAttributesParking>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_parking)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_attributes_parking)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesParking>)))
  "Returns string type for a message object of type '<LaneAttributesParking>"
  "j2735_msgs/LaneAttributesParking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesParking)))
  "Returns string type for a message object of type 'LaneAttributesParking"
  "j2735_msgs/LaneAttributesParking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesParking>)))
  "Returns md5sum for a message object of type '<LaneAttributesParking>"
  "6fcf0ebd1c63223de5a1deb01ebf0960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesParking)))
  "Returns md5sum for a message object of type 'LaneAttributesParking"
  "6fcf0ebd1c63223de5a1deb01ebf0960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesParking>)))
  "Returns full string definition for message of type '<LaneAttributesParking>"
  (cl:format cl:nil "#~%# LaneAttributesParking.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.~%#~%# LaneAttributes-Parking ::= BIT STRING {~%# -- With bits as defined:~%# -- Parking use details, note that detailed restrictions such as~%# -- allowed hours are sent by way of ITIS codes in the TIM message~%# parkingRevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# parallelParkingInUse(1),~%# headInParkingInUse(2),~%# doNotParkZone(3),~%# -- used to denote fire hydrants as well as~%# -- short disruptions in a parking zone~%# parkingForBusUse(4),~%# parkingForTaxiUse(5),~%# noPublicParkingUse(6)~%# -- private parking, as in front of~%# -- private property~%# -- Bits 7~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16  lane_attributes_parking~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesParking)))
  "Returns full string definition for message of type 'LaneAttributesParking"
  (cl:format cl:nil "#~%# LaneAttributesParking.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.~%#~%# LaneAttributes-Parking ::= BIT STRING {~%# -- With bits as defined:~%# -- Parking use details, note that detailed restrictions such as~%# -- allowed hours are sent by way of ITIS codes in the TIM message~%# parkingRevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# parallelParkingInUse(1),~%# headInParkingInUse(2),~%# doNotParkZone(3),~%# -- used to denote fire hydrants as well as~%# -- short disruptions in a parking zone~%# parkingForBusUse(4),~%# parkingForTaxiUse(5),~%# noPublicParkingUse(6)~%# -- private parking, as in front of~%# -- private property~%# -- Bits 7~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16  lane_attributes_parking~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesParking>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesParking>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesParking
    (cl:cons ':lane_attributes_parking (lane_attributes_parking msg))
))
