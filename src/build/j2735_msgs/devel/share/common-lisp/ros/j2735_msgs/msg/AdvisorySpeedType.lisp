; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AdvisorySpeedType.msg.html

(cl:defclass <AdvisorySpeedType> (roslisp-msg-protocol:ros-message)
  ((advisory_speed_type
    :reader advisory_speed_type
    :initarg :advisory_speed_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AdvisorySpeedType (<AdvisorySpeedType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvisorySpeedType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvisorySpeedType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AdvisorySpeedType> is deprecated: use j2735_msgs-msg:AdvisorySpeedType instead.")))

(cl:ensure-generic-function 'advisory_speed_type-val :lambda-list '(m))
(cl:defmethod advisory_speed_type-val ((m <AdvisorySpeedType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:advisory_speed_type-val is deprecated.  Use j2735_msgs-msg:advisory_speed_type instead.")
  (advisory_speed_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AdvisorySpeedType>)))
    "Constants for message type '<AdvisorySpeedType>"
  '((:NONE . 0)
    (:GREENWAVE . 1)
    (:ECODRIVE . 2)
    (:TRANSIT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AdvisorySpeedType)))
    "Constants for message type 'AdvisorySpeedType"
  '((:NONE . 0)
    (:GREENWAVE . 1)
    (:ECODRIVE . 2)
    (:TRANSIT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvisorySpeedType>) ostream)
  "Serializes a message object of type '<AdvisorySpeedType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'advisory_speed_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvisorySpeedType>) istream)
  "Deserializes a message object of type '<AdvisorySpeedType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'advisory_speed_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvisorySpeedType>)))
  "Returns string type for a message object of type '<AdvisorySpeedType>"
  "j2735_msgs/AdvisorySpeedType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvisorySpeedType)))
  "Returns string type for a message object of type 'AdvisorySpeedType"
  "j2735_msgs/AdvisorySpeedType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvisorySpeedType>)))
  "Returns md5sum for a message object of type '<AdvisorySpeedType>"
  "2577b7d853d2b485bd9efc66a0050f71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvisorySpeedType)))
  "Returns md5sum for a message object of type 'AdvisorySpeedType"
  "2577b7d853d2b485bd9efc66a0050f71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvisorySpeedType>)))
  "Returns full string definition for message of type '<AdvisorySpeedType>"
  (cl:format cl:nil "#~%# AdvisorySpeedType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is~%# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.~%#~%# AdvisorySpeedType ::= ENUMERATED {~%# none (0),~%# greenwave (1),~%# ecoDrive (2),~%# transit (3),~%# ...~%# } -- Note: subject to further growth~%~%uint8 advisory_speed_type~%~%uint8 NONE=0~%uint8 GREENWAVE=1~%uint8 ECODRIVE=2~%uint8 TRANSIT=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvisorySpeedType)))
  "Returns full string definition for message of type 'AdvisorySpeedType"
  (cl:format cl:nil "#~%# AdvisorySpeedType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is~%# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.~%#~%# AdvisorySpeedType ::= ENUMERATED {~%# none (0),~%# greenwave (1),~%# ecoDrive (2),~%# transit (3),~%# ...~%# } -- Note: subject to further growth~%~%uint8 advisory_speed_type~%~%uint8 NONE=0~%uint8 GREENWAVE=1~%uint8 ECODRIVE=2~%uint8 TRANSIT=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvisorySpeedType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvisorySpeedType>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvisorySpeedType
    (cl:cons ':advisory_speed_type (advisory_speed_type msg))
))
