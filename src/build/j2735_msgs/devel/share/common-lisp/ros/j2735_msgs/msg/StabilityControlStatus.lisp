; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude StabilityControlStatus.msg.html

(cl:defclass <StabilityControlStatus> (roslisp-msg-protocol:ros-message)
  ((stability_control_status
    :reader stability_control_status
    :initarg :stability_control_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StabilityControlStatus (<StabilityControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StabilityControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StabilityControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<StabilityControlStatus> is deprecated: use j2735_msgs-msg:StabilityControlStatus instead.")))

(cl:ensure-generic-function 'stability_control_status-val :lambda-list '(m))
(cl:defmethod stability_control_status-val ((m <StabilityControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:stability_control_status-val is deprecated.  Use j2735_msgs-msg:stability_control_status instead.")
  (stability_control_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StabilityControlStatus>)))
    "Constants for message type '<StabilityControlStatus>"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:ENGAGED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StabilityControlStatus)))
    "Constants for message type 'StabilityControlStatus"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:ENGAGED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StabilityControlStatus>) ostream)
  "Serializes a message object of type '<StabilityControlStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stability_control_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StabilityControlStatus>) istream)
  "Deserializes a message object of type '<StabilityControlStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stability_control_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StabilityControlStatus>)))
  "Returns string type for a message object of type '<StabilityControlStatus>"
  "j2735_msgs/StabilityControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StabilityControlStatus)))
  "Returns string type for a message object of type 'StabilityControlStatus"
  "j2735_msgs/StabilityControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StabilityControlStatus>)))
  "Returns md5sum for a message object of type '<StabilityControlStatus>"
  "350e65c5b8f0b2157c2ddfc4d46c5a68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StabilityControlStatus)))
  "Returns md5sum for a message object of type 'StabilityControlStatus"
  "350e65c5b8f0b2157c2ddfc4d46c5a68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StabilityControlStatus>)))
  "Returns full string definition for message of type '<StabilityControlStatus>"
  (cl:format cl:nil "#~%# StabilityControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%~%uint8  stability_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StabilityControlStatus)))
  "Returns full string definition for message of type 'StabilityControlStatus"
  (cl:format cl:nil "#~%# StabilityControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%~%uint8  stability_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StabilityControlStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StabilityControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'StabilityControlStatus
    (cl:cons ':stability_control_status (stability_control_status msg))
))
