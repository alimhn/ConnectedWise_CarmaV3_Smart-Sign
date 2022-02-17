; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude BrakeBoostApplied.msg.html

(cl:defclass <BrakeBoostApplied> (roslisp-msg-protocol:ros-message)
  ((brake_boost_applied
    :reader brake_boost_applied
    :initarg :brake_boost_applied
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeBoostApplied (<BrakeBoostApplied>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeBoostApplied>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeBoostApplied)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<BrakeBoostApplied> is deprecated: use j2735_msgs-msg:BrakeBoostApplied instead.")))

(cl:ensure-generic-function 'brake_boost_applied-val :lambda-list '(m))
(cl:defmethod brake_boost_applied-val ((m <BrakeBoostApplied>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:brake_boost_applied-val is deprecated.  Use j2735_msgs-msg:brake_boost_applied instead.")
  (brake_boost_applied m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeBoostApplied>)))
    "Constants for message type '<BrakeBoostApplied>"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeBoostApplied)))
    "Constants for message type 'BrakeBoostApplied"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeBoostApplied>) ostream)
  "Serializes a message object of type '<BrakeBoostApplied>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_boost_applied)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeBoostApplied>) istream)
  "Deserializes a message object of type '<BrakeBoostApplied>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_boost_applied)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeBoostApplied>)))
  "Returns string type for a message object of type '<BrakeBoostApplied>"
  "j2735_msgs/BrakeBoostApplied")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeBoostApplied)))
  "Returns string type for a message object of type 'BrakeBoostApplied"
  "j2735_msgs/BrakeBoostApplied")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeBoostApplied>)))
  "Returns md5sum for a message object of type '<BrakeBoostApplied>"
  "ff8787fa0a36560577484f92f3640ad7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeBoostApplied)))
  "Returns md5sum for a message object of type 'BrakeBoostApplied"
  "ff8787fa0a36560577484f92f3640ad7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeBoostApplied>)))
  "Returns full string definition for message of type '<BrakeBoostApplied>"
  (cl:format cl:nil "#~%# BrakeBoostApplied.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%~%uint8  brake_boost_applied~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeBoostApplied)))
  "Returns full string definition for message of type 'BrakeBoostApplied"
  (cl:format cl:nil "#~%# BrakeBoostApplied.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%~%uint8  brake_boost_applied~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeBoostApplied>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeBoostApplied>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeBoostApplied
    (cl:cons ':brake_boost_applied (brake_boost_applied msg))
))
