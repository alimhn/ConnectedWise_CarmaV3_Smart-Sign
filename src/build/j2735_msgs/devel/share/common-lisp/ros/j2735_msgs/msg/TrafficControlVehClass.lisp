; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlVehClass.msg.html

(cl:defclass <TrafficControlVehClass> (roslisp-msg-protocol:ros-message)
  ((vehicle_class
    :reader vehicle_class
    :initarg :vehicle_class
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficControlVehClass (<TrafficControlVehClass>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlVehClass>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlVehClass)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlVehClass> is deprecated: use j2735_msgs-msg:TrafficControlVehClass instead.")))

(cl:ensure-generic-function 'vehicle_class-val :lambda-list '(m))
(cl:defmethod vehicle_class-val ((m <TrafficControlVehClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:vehicle_class-val is deprecated.  Use j2735_msgs-msg:vehicle_class instead.")
  (vehicle_class m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficControlVehClass>)))
    "Constants for message type '<TrafficControlVehClass>"
  '((:ANY . 0)
    (:PEDESTRIAN . 1)
    (:BICYCLE . 2)
    (:MICROMOBILE . 3)
    (:MOTORCYCLE . 4)
    (:PASSENGER_CAR . 5)
    (:LIGHT_TRUCK_VAN . 6)
    (:BUS . 7)
    (:TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK . 8)
    (:THREE_AXLE_SINGLE_UNIT_TRUCK . 9)
    (:FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK . 10)
    (:FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK . 11)
    (:FIVE_AXLE_SINGLE_TRAILER_TRUCK . 12)
    (:SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK . 13)
    (:FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK . 14)
    (:SIX_AXLE_MULTI_TRAILER_TRUCK . 15)
    (:SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK . 16)
    (:RAIL . 17)
    (:UNCLASSIFIED . 18))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficControlVehClass)))
    "Constants for message type 'TrafficControlVehClass"
  '((:ANY . 0)
    (:PEDESTRIAN . 1)
    (:BICYCLE . 2)
    (:MICROMOBILE . 3)
    (:MOTORCYCLE . 4)
    (:PASSENGER_CAR . 5)
    (:LIGHT_TRUCK_VAN . 6)
    (:BUS . 7)
    (:TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK . 8)
    (:THREE_AXLE_SINGLE_UNIT_TRUCK . 9)
    (:FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK . 10)
    (:FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK . 11)
    (:FIVE_AXLE_SINGLE_TRAILER_TRUCK . 12)
    (:SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK . 13)
    (:FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK . 14)
    (:SIX_AXLE_MULTI_TRAILER_TRUCK . 15)
    (:SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK . 16)
    (:RAIL . 17)
    (:UNCLASSIFIED . 18))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlVehClass>) ostream)
  "Serializes a message object of type '<TrafficControlVehClass>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_class)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlVehClass>) istream)
  "Deserializes a message object of type '<TrafficControlVehClass>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_class)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlVehClass>)))
  "Returns string type for a message object of type '<TrafficControlVehClass>"
  "j2735_msgs/TrafficControlVehClass")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlVehClass)))
  "Returns string type for a message object of type 'TrafficControlVehClass"
  "j2735_msgs/TrafficControlVehClass")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlVehClass>)))
  "Returns md5sum for a message object of type '<TrafficControlVehClass>"
  "89399be8dc36339b2dee535e6aa32c9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlVehClass)))
  "Returns md5sum for a message object of type 'TrafficControlVehClass"
  "89399be8dc36339b2dee535e6aa32c9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlVehClass>)))
  "Returns full string definition for message of type '<TrafficControlVehClass>"
  (cl:format cl:nil "#~%# TrafficControlVehClass.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlVehClass ::= ENUMERATED~%# {~%# 	any, ~%# 	pedestrian,~%# 	bicycle,~%# 	micromobile,~%# 	motorcycle,~%# 	passenger-car,~%# 	light-truck-van,~%# 	bus,~%# 	two-axle-six-tire-single-unit-truck,~%# 	three-axle-single-unit-truck,~%# 	four-or-more-axle-single-unit-truck,~%# 	four-or-fewer-axle-single-trailer-truck,~%# 	five-axle-single-trailer-truck,~%# 	six-or-more-axle-single-trailer-truck,~%# 	five-or-fewer-axle-multi-trailer-truck,~%# 	six-axle-multi-trailer-truck,~%# 	seven-or-more-axle-multi-trailer-truck,~%# 	rail,~%# 	unclassified, ~%# 	...~%# }~%~%uint8 vehicle_class~%~%# enumeration values for vehicle_class:~%~%uint8 ANY = 0~%uint8 PEDESTRIAN = 1~%uint8 BICYCLE = 2~%uint8 MICROMOBILE = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 LIGHT_TRUCK_VAN = 6~%uint8 BUS = 7~%uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8~%uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9~%uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10~%uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11~%uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12~%uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13~%uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14~%uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15~%uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16~%uint8 RAIL = 17~%uint8 UNCLASSIFIED = 18~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlVehClass)))
  "Returns full string definition for message of type 'TrafficControlVehClass"
  (cl:format cl:nil "#~%# TrafficControlVehClass.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlVehClass ::= ENUMERATED~%# {~%# 	any, ~%# 	pedestrian,~%# 	bicycle,~%# 	micromobile,~%# 	motorcycle,~%# 	passenger-car,~%# 	light-truck-van,~%# 	bus,~%# 	two-axle-six-tire-single-unit-truck,~%# 	three-axle-single-unit-truck,~%# 	four-or-more-axle-single-unit-truck,~%# 	four-or-fewer-axle-single-trailer-truck,~%# 	five-axle-single-trailer-truck,~%# 	six-or-more-axle-single-trailer-truck,~%# 	five-or-fewer-axle-multi-trailer-truck,~%# 	six-axle-multi-trailer-truck,~%# 	seven-or-more-axle-multi-trailer-truck,~%# 	rail,~%# 	unclassified, ~%# 	...~%# }~%~%uint8 vehicle_class~%~%# enumeration values for vehicle_class:~%~%uint8 ANY = 0~%uint8 PEDESTRIAN = 1~%uint8 BICYCLE = 2~%uint8 MICROMOBILE = 3~%uint8 MOTORCYCLE = 4~%uint8 PASSENGER_CAR = 5~%uint8 LIGHT_TRUCK_VAN = 6~%uint8 BUS = 7~%uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8~%uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9~%uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10~%uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11~%uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12~%uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13~%uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14~%uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15~%uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16~%uint8 RAIL = 17~%uint8 UNCLASSIFIED = 18~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlVehClass>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlVehClass>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlVehClass
    (cl:cons ':vehicle_class (vehicle_class msg))
))
