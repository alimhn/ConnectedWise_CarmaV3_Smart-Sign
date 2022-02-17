; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude BrakeAppliedStatus.msg.html

(cl:defclass <BrakeAppliedStatus> (roslisp-msg-protocol:ros-message)
  ((brake_applied_status
    :reader brake_applied_status
    :initarg :brake_applied_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeAppliedStatus (<BrakeAppliedStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeAppliedStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeAppliedStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<BrakeAppliedStatus> is deprecated: use j2735_msgs-msg:BrakeAppliedStatus instead.")))

(cl:ensure-generic-function 'brake_applied_status-val :lambda-list '(m))
(cl:defmethod brake_applied_status-val ((m <BrakeAppliedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:brake_applied_status-val is deprecated.  Use j2735_msgs-msg:brake_applied_status instead.")
  (brake_applied_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeAppliedStatus>)))
    "Constants for message type '<BrakeAppliedStatus>"
  '((:UNAVAILABLE . 0)
    (:LEFT_FRONT . 1)
    (:LEFT_REAR . 2)
    (:RIGHT_FRONT . 3)
    (:RIGHT_REAR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeAppliedStatus)))
    "Constants for message type 'BrakeAppliedStatus"
  '((:UNAVAILABLE . 0)
    (:LEFT_FRONT . 1)
    (:LEFT_REAR . 2)
    (:RIGHT_FRONT . 3)
    (:RIGHT_REAR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeAppliedStatus>) ostream)
  "Serializes a message object of type '<BrakeAppliedStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_applied_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeAppliedStatus>) istream)
  "Deserializes a message object of type '<BrakeAppliedStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_applied_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeAppliedStatus>)))
  "Returns string type for a message object of type '<BrakeAppliedStatus>"
  "j2735_msgs/BrakeAppliedStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeAppliedStatus)))
  "Returns string type for a message object of type 'BrakeAppliedStatus"
  "j2735_msgs/BrakeAppliedStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeAppliedStatus>)))
  "Returns md5sum for a message object of type '<BrakeAppliedStatus>"
  "b9d951a3b57c116ca4befe0886581520")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeAppliedStatus)))
  "Returns md5sum for a message object of type 'BrakeAppliedStatus"
  "b9d951a3b57c116ca4befe0886581520")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeAppliedStatus>)))
  "Returns full string definition for message of type '<BrakeAppliedStatus>"
  (cl:format cl:nil "#~%# BrakeAppliedStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# ~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%~%uint8  brake_applied_status~%~%uint8 UNAVAILABLE=0~%uint8 LEFT_FRONT=1~%uint8 LEFT_REAR=2~%uint8 RIGHT_FRONT=3~%uint8 RIGHT_REAR=4~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeAppliedStatus)))
  "Returns full string definition for message of type 'BrakeAppliedStatus"
  (cl:format cl:nil "#~%# BrakeAppliedStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# ~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%~%uint8  brake_applied_status~%~%uint8 UNAVAILABLE=0~%uint8 LEFT_FRONT=1~%uint8 LEFT_REAR=2~%uint8 RIGHT_FRONT=3~%uint8 RIGHT_REAR=4~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeAppliedStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeAppliedStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeAppliedStatus
    (cl:cons ':brake_applied_status (brake_applied_status msg))
))
