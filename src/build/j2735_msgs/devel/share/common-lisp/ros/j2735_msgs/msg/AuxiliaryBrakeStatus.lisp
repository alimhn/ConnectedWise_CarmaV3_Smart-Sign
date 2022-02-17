; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AuxiliaryBrakeStatus.msg.html

(cl:defclass <AuxiliaryBrakeStatus> (roslisp-msg-protocol:ros-message)
  ((auxiliary_brake_status
    :reader auxiliary_brake_status
    :initarg :auxiliary_brake_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AuxiliaryBrakeStatus (<AuxiliaryBrakeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxiliaryBrakeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxiliaryBrakeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AuxiliaryBrakeStatus> is deprecated: use j2735_msgs-msg:AuxiliaryBrakeStatus instead.")))

(cl:ensure-generic-function 'auxiliary_brake_status-val :lambda-list '(m))
(cl:defmethod auxiliary_brake_status-val ((m <AuxiliaryBrakeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:auxiliary_brake_status-val is deprecated.  Use j2735_msgs-msg:auxiliary_brake_status instead.")
  (auxiliary_brake_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AuxiliaryBrakeStatus>)))
    "Constants for message type '<AuxiliaryBrakeStatus>"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AuxiliaryBrakeStatus)))
    "Constants for message type 'AuxiliaryBrakeStatus"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxiliaryBrakeStatus>) ostream)
  "Serializes a message object of type '<AuxiliaryBrakeStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auxiliary_brake_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxiliaryBrakeStatus>) istream)
  "Deserializes a message object of type '<AuxiliaryBrakeStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auxiliary_brake_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxiliaryBrakeStatus>)))
  "Returns string type for a message object of type '<AuxiliaryBrakeStatus>"
  "j2735_msgs/AuxiliaryBrakeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxiliaryBrakeStatus)))
  "Returns string type for a message object of type 'AuxiliaryBrakeStatus"
  "j2735_msgs/AuxiliaryBrakeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxiliaryBrakeStatus>)))
  "Returns md5sum for a message object of type '<AuxiliaryBrakeStatus>"
  "f347f9be77208a55630f9c2b43a80c65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxiliaryBrakeStatus)))
  "Returns md5sum for a message object of type 'AuxiliaryBrakeStatus"
  "f347f9be77208a55630f9c2b43a80c65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxiliaryBrakeStatus>)))
  "Returns full string definition for message of type '<AuxiliaryBrakeStatus>"
  (cl:format cl:nil "#~%# AuxiliaryBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%uint8  auxiliary_brake_status~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  RESERVED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxiliaryBrakeStatus)))
  "Returns full string definition for message of type 'AuxiliaryBrakeStatus"
  (cl:format cl:nil "#~%# AuxiliaryBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%uint8  auxiliary_brake_status~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  RESERVED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxiliaryBrakeStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxiliaryBrakeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxiliaryBrakeStatus
    (cl:cons ':auxiliary_brake_status (auxiliary_brake_status msg))
))
