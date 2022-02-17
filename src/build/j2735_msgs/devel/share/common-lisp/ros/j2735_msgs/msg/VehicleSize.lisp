; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude VehicleSize.msg.html

(cl:defclass <VehicleSize> (roslisp-msg-protocol:ros-message)
  ((vehicle_width
    :reader vehicle_width
    :initarg :vehicle_width
    :type cl:fixnum
    :initform 0)
   (vehicle_length
    :reader vehicle_length
    :initarg :vehicle_length
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleSize (<VehicleSize>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSize>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSize)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<VehicleSize> is deprecated: use j2735_msgs-msg:VehicleSize instead.")))

(cl:ensure-generic-function 'vehicle_width-val :lambda-list '(m))
(cl:defmethod vehicle_width-val ((m <VehicleSize>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:vehicle_width-val is deprecated.  Use j2735_msgs-msg:vehicle_width instead.")
  (vehicle_width m))

(cl:ensure-generic-function 'vehicle_length-val :lambda-list '(m))
(cl:defmethod vehicle_length-val ((m <VehicleSize>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:vehicle_length-val is deprecated.  Use j2735_msgs-msg:vehicle_length instead.")
  (vehicle_length m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleSize>)))
    "Constants for message type '<VehicleSize>"
  '((:VEHICLE_WIDTH_UNAVAILABLE . 0)
    (:VEHICLE_WIDTH_MAX . 1023)
    (:VEHICLE_WIDTH_MIN . 1)
    (:VEHICLE_LENGTH_UNAVAILABLE . 0)
    (:VEHICLE_LENGTH_MAX . 4095)
    (:VEHICLE_LENGTH_MIN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleSize)))
    "Constants for message type 'VehicleSize"
  '((:VEHICLE_WIDTH_UNAVAILABLE . 0)
    (:VEHICLE_WIDTH_MAX . 1023)
    (:VEHICLE_WIDTH_MIN . 1)
    (:VEHICLE_LENGTH_UNAVAILABLE . 0)
    (:VEHICLE_LENGTH_MAX . 4095)
    (:VEHICLE_LENGTH_MIN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSize>) ostream)
  "Serializes a message object of type '<VehicleSize>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_length)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSize>) istream)
  "Deserializes a message object of type '<VehicleSize>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_length)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSize>)))
  "Returns string type for a message object of type '<VehicleSize>"
  "j2735_msgs/VehicleSize")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSize)))
  "Returns string type for a message object of type 'VehicleSize"
  "j2735_msgs/VehicleSize")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSize>)))
  "Returns md5sum for a message object of type '<VehicleSize>"
  "b73dfa0d45d588029a74086992728a81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSize)))
  "Returns md5sum for a message object of type 'VehicleSize"
  "b73dfa0d45d588029a74086992728a81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSize>)))
  "Returns full string definition for message of type '<VehicleSize>"
  (cl:format cl:nil "#~%# VehicleSize.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The vehicle length and width ~%~%#VehicleSize ::= SEQUENCE {~%#   width     VehicleWidth,~%#   length    VehicleLength~%#   }~%#~%~%#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_width~%~%uint16 VEHICLE_WIDTH_UNAVAILABLE = 0~%uint16 VEHICLE_WIDTH_MAX = 1023~%uint16 VEHICLE_WIDTH_MIN = 1~%~%#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_length~%~%uint16 VEHICLE_LENGTH_UNAVAILABLE = 0~%uint16 VEHICLE_LENGTH_MAX = 4095~%uint16 VEHICLE_LENGTH_MIN = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSize)))
  "Returns full string definition for message of type 'VehicleSize"
  (cl:format cl:nil "#~%# VehicleSize.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The vehicle length and width ~%~%#VehicleSize ::= SEQUENCE {~%#   width     VehicleWidth,~%#   length    VehicleLength~%#   }~%#~%~%#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_width~%~%uint16 VEHICLE_WIDTH_UNAVAILABLE = 0~%uint16 VEHICLE_WIDTH_MAX = 1023~%uint16 VEHICLE_WIDTH_MIN = 1~%~%#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_length~%~%uint16 VEHICLE_LENGTH_UNAVAILABLE = 0~%uint16 VEHICLE_LENGTH_MAX = 4095~%uint16 VEHICLE_LENGTH_MIN = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSize>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSize>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSize
    (cl:cons ':vehicle_width (vehicle_width msg))
    (cl:cons ':vehicle_length (vehicle_length msg))
))
