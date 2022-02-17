; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TransmissionState.msg.html

(cl:defclass <TransmissionState> (roslisp-msg-protocol:ros-message)
  ((transmission_state
    :reader transmission_state
    :initarg :transmission_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TransmissionState (<TransmissionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransmissionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransmissionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TransmissionState> is deprecated: use j2735_msgs-msg:TransmissionState instead.")))

(cl:ensure-generic-function 'transmission_state-val :lambda-list '(m))
(cl:defmethod transmission_state-val ((m <TransmissionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:transmission_state-val is deprecated.  Use j2735_msgs-msg:transmission_state instead.")
  (transmission_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TransmissionState>)))
    "Constants for message type '<TransmissionState>"
  '((:NEUTRAL . 0)
    (:PARK . 1)
    (:FORWARDGEARS . 2)
    (:REVERSEGEARS . 3)
    (:RESERVED1 . 4)
    (:RESERVED2 . 5)
    (:RESERVED3 . 6)
    (:UNAVAILABLE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TransmissionState)))
    "Constants for message type 'TransmissionState"
  '((:NEUTRAL . 0)
    (:PARK . 1)
    (:FORWARDGEARS . 2)
    (:REVERSEGEARS . 3)
    (:RESERVED1 . 4)
    (:RESERVED2 . 5)
    (:RESERVED3 . 6)
    (:UNAVAILABLE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransmissionState>) ostream)
  "Serializes a message object of type '<TransmissionState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transmission_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransmissionState>) istream)
  "Deserializes a message object of type '<TransmissionState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transmission_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransmissionState>)))
  "Returns string type for a message object of type '<TransmissionState>"
  "j2735_msgs/TransmissionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransmissionState)))
  "Returns string type for a message object of type 'TransmissionState"
  "j2735_msgs/TransmissionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransmissionState>)))
  "Returns md5sum for a message object of type '<TransmissionState>"
  "2d6a4d2af8ea1a5841861f3e0592e05f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransmissionState)))
  "Returns md5sum for a message object of type 'TransmissionState"
  "2d6a4d2af8ea1a5841861f3e0592e05f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransmissionState>)))
  "Returns full string definition for message of type '<TransmissionState>"
  (cl:format cl:nil "#~%# TransmissionState.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Provide the current state of the vehicle transmission.~%~%#TransmissionState ::= ENUMERATED {~%#   neutral      (0), -- Neutral~%#   park         (1), -- Park ~%#   forwardGears (2), -- Forward gears~%#   reverseGears (3), -- Reverse gears ~%#   reserved1    (4),      ~%#   reserved2    (5),      ~%#   reserved3    (6),      ~%#   unavailable  (7)  -- not-equipped or unavailable value,~%#   -- Any related speed is relative to the vehicle reference frame used~%#   }~%~%uint8  transmission_state~%~%# enumeration values for status:~%uint8 NEUTRAL=0~%uint8 PARK=1~%uint8 FORWARDGEARS=2~%uint8 REVERSEGEARS=3~%uint8 RESERVED1=4~%uint8 RESERVED2=5~%uint8 RESERVED3=6~%uint8 UNAVAILABLE=7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransmissionState)))
  "Returns full string definition for message of type 'TransmissionState"
  (cl:format cl:nil "#~%# TransmissionState.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Provide the current state of the vehicle transmission.~%~%#TransmissionState ::= ENUMERATED {~%#   neutral      (0), -- Neutral~%#   park         (1), -- Park ~%#   forwardGears (2), -- Forward gears~%#   reverseGears (3), -- Reverse gears ~%#   reserved1    (4),      ~%#   reserved2    (5),      ~%#   reserved3    (6),      ~%#   unavailable  (7)  -- not-equipped or unavailable value,~%#   -- Any related speed is relative to the vehicle reference frame used~%#   }~%~%uint8  transmission_state~%~%# enumeration values for status:~%uint8 NEUTRAL=0~%uint8 PARK=1~%uint8 FORWARDGEARS=2~%uint8 REVERSEGEARS=3~%uint8 RESERVED1=4~%uint8 RESERVED2=5~%uint8 RESERVED3=6~%uint8 UNAVAILABLE=7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransmissionState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransmissionState>))
  "Converts a ROS message object to a list"
  (cl:list 'TransmissionState
    (cl:cons ':transmission_state (transmission_state msg))
))
