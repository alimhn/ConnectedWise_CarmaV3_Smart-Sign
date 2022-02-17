; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneAttributesVehicle.msg.html

(cl:defclass <LaneAttributesVehicle> (roslisp-msg-protocol:ros-message)
  ((lane_attributes_vehicle
    :reader lane_attributes_vehicle
    :initarg :lane_attributes_vehicle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneAttributesVehicle (<LaneAttributesVehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributesVehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributesVehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneAttributesVehicle> is deprecated: use j2735_msgs-msg:LaneAttributesVehicle instead.")))

(cl:ensure-generic-function 'lane_attributes_vehicle-val :lambda-list '(m))
(cl:defmethod lane_attributes_vehicle-val ((m <LaneAttributesVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_attributes_vehicle-val is deprecated.  Use j2735_msgs-msg:lane_attributes_vehicle instead.")
  (lane_attributes_vehicle m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneAttributesVehicle>)))
    "Constants for message type '<LaneAttributesVehicle>"
  '((:ISVEHICLEREVOCABLELANE . 0)
    (:ISVEHICLEFLYOVERLANE . 1)
    (:HOVLANEUSEONLY . 2)
    (:RESTRICTEDTOBUSUSE . 3)
    (:RESTRICTEDTOTAXIUSE . 4)
    (:RESTRICTEDFROMPUBLICUSE . 5)
    (:HASIRBEACONCOVERAGE . 6)
    (:PERMISSIONONREQUEST . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneAttributesVehicle)))
    "Constants for message type 'LaneAttributesVehicle"
  '((:ISVEHICLEREVOCABLELANE . 0)
    (:ISVEHICLEFLYOVERLANE . 1)
    (:HOVLANEUSEONLY . 2)
    (:RESTRICTEDTOBUSUSE . 3)
    (:RESTRICTEDTOTAXIUSE . 4)
    (:RESTRICTEDFROMPUBLICUSE . 5)
    (:HASIRBEACONCOVERAGE . 6)
    (:PERMISSIONONREQUEST . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributesVehicle>) ostream)
  "Serializes a message object of type '<LaneAttributesVehicle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_vehicle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributesVehicle>) istream)
  "Deserializes a message object of type '<LaneAttributesVehicle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_attributes_vehicle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributesVehicle>)))
  "Returns string type for a message object of type '<LaneAttributesVehicle>"
  "j2735_msgs/LaneAttributesVehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributesVehicle)))
  "Returns string type for a message object of type 'LaneAttributesVehicle"
  "j2735_msgs/LaneAttributesVehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributesVehicle>)))
  "Returns md5sum for a message object of type '<LaneAttributesVehicle>"
  "78cc6cbb02a8ffeee057c172dd545dbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributesVehicle)))
  "Returns md5sum for a message object of type 'LaneAttributesVehicle"
  "78cc6cbb02a8ffeee057c172dd545dbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributesVehicle>)))
  "Returns full string definition for message of type '<LaneAttributesVehicle>"
  (cl:format cl:nil "#~%# LaneAttributesVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# LaneAttributes-Vehicle ::= BIT STRING {~%# -- With bits as defined:~%# isVehicleRevocableLane (0),~%#       -- this lane may be activated or not based~%#       -- on the current SPAT message contents~%#       -- if not asserted, the lane is ALWAYS present~%# isVehicleFlyOverLane (1),~%#       -- path of lane is not at grade~%# hovLaneUseOnly (2),~%# restrictedToBusUse (3),~%# restrictedToTaxiUse(4),~%# restrictedFromPublicUse (5),~%# hasIRbeaconCoverage(6),~%# permissionOnRequest(7)~%#       -- e.g. to inform about a lane for e-cars~%# } (SIZE (8,...))~%~%uint8 lane_attributes_vehicle~%~%uint8 ISVEHICLEREVOCABLELANE=0~%uint8 ISVEHICLEFLYOVERLANE=1~%uint8 HOVLANEUSEONLY=2~%uint8 RESTRICTEDTOBUSUSE=3~%uint8 RESTRICTEDTOTAXIUSE=4~%uint8 RESTRICTEDFROMPUBLICUSE=5~%uint8 HASIRBEACONCOVERAGE=6~%uint8 PERMISSIONONREQUEST=7~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributesVehicle)))
  "Returns full string definition for message of type 'LaneAttributesVehicle"
  (cl:format cl:nil "#~%# LaneAttributesVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# LaneAttributes-Vehicle ::= BIT STRING {~%# -- With bits as defined:~%# isVehicleRevocableLane (0),~%#       -- this lane may be activated or not based~%#       -- on the current SPAT message contents~%#       -- if not asserted, the lane is ALWAYS present~%# isVehicleFlyOverLane (1),~%#       -- path of lane is not at grade~%# hovLaneUseOnly (2),~%# restrictedToBusUse (3),~%# restrictedToTaxiUse(4),~%# restrictedFromPublicUse (5),~%# hasIRbeaconCoverage(6),~%# permissionOnRequest(7)~%#       -- e.g. to inform about a lane for e-cars~%# } (SIZE (8,...))~%~%uint8 lane_attributes_vehicle~%~%uint8 ISVEHICLEREVOCABLELANE=0~%uint8 ISVEHICLEFLYOVERLANE=1~%uint8 HOVLANEUSEONLY=2~%uint8 RESTRICTEDTOBUSUSE=3~%uint8 RESTRICTEDTOTAXIUSE=4~%uint8 RESTRICTEDFROMPUBLICUSE=5~%uint8 HASIRBEACONCOVERAGE=6~%uint8 PERMISSIONONREQUEST=7~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributesVehicle>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributesVehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributesVehicle
    (cl:cons ':lane_attributes_vehicle (lane_attributes_vehicle msg))
))
