; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TractionControlStatus.msg.html

(cl:defclass <TractionControlStatus> (roslisp-msg-protocol:ros-message)
  ((traction_control_status
    :reader traction_control_status
    :initarg :traction_control_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TractionControlStatus (<TractionControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TractionControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TractionControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TractionControlStatus> is deprecated: use j2735_msgs-msg:TractionControlStatus instead.")))

(cl:ensure-generic-function 'traction_control_status-val :lambda-list '(m))
(cl:defmethod traction_control_status-val ((m <TractionControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:traction_control_status-val is deprecated.  Use j2735_msgs-msg:traction_control_status instead.")
  (traction_control_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TractionControlStatus>)))
    "Constants for message type '<TractionControlStatus>"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:ENGAGED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TractionControlStatus)))
    "Constants for message type 'TractionControlStatus"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:ENGAGED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TractionControlStatus>) ostream)
  "Serializes a message object of type '<TractionControlStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'traction_control_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TractionControlStatus>) istream)
  "Deserializes a message object of type '<TractionControlStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'traction_control_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TractionControlStatus>)))
  "Returns string type for a message object of type '<TractionControlStatus>"
  "j2735_msgs/TractionControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TractionControlStatus)))
  "Returns string type for a message object of type 'TractionControlStatus"
  "j2735_msgs/TractionControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TractionControlStatus>)))
  "Returns md5sum for a message object of type '<TractionControlStatus>"
  "8fbf2d5faa10e86d446d2450b8536b24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TractionControlStatus)))
  "Returns md5sum for a message object of type 'TractionControlStatus"
  "8fbf2d5faa10e86d446d2450b8536b24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TractionControlStatus>)))
  "Returns full string definition for message of type '<TractionControlStatus>"
  (cl:format cl:nil "#~%# TractionControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%~%uint8  traction_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TractionControlStatus)))
  "Returns full string definition for message of type 'TractionControlStatus"
  (cl:format cl:nil "#~%# TractionControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%~%uint8  traction_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TractionControlStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TractionControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TractionControlStatus
    (cl:cons ':traction_control_status (traction_control_status msg))
))
