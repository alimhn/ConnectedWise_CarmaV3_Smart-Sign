; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AntiLockBrakeStatus.msg.html

(cl:defclass <AntiLockBrakeStatus> (roslisp-msg-protocol:ros-message)
  ((anti_lock_brake_status
    :reader anti_lock_brake_status
    :initarg :anti_lock_brake_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AntiLockBrakeStatus (<AntiLockBrakeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AntiLockBrakeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AntiLockBrakeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AntiLockBrakeStatus> is deprecated: use j2735_msgs-msg:AntiLockBrakeStatus instead.")))

(cl:ensure-generic-function 'anti_lock_brake_status-val :lambda-list '(m))
(cl:defmethod anti_lock_brake_status-val ((m <AntiLockBrakeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:anti_lock_brake_status-val is deprecated.  Use j2735_msgs-msg:anti_lock_brake_status instead.")
  (anti_lock_brake_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AntiLockBrakeStatus>)))
    "Constants for message type '<AntiLockBrakeStatus>"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:ENGAGED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AntiLockBrakeStatus)))
    "Constants for message type 'AntiLockBrakeStatus"
  '((:UNAVAILABLE . 0)
    (:OFF . 1)
    (:ON . 2)
    (:ENGAGED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AntiLockBrakeStatus>) ostream)
  "Serializes a message object of type '<AntiLockBrakeStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anti_lock_brake_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AntiLockBrakeStatus>) istream)
  "Deserializes a message object of type '<AntiLockBrakeStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anti_lock_brake_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AntiLockBrakeStatus>)))
  "Returns string type for a message object of type '<AntiLockBrakeStatus>"
  "j2735_msgs/AntiLockBrakeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AntiLockBrakeStatus)))
  "Returns string type for a message object of type 'AntiLockBrakeStatus"
  "j2735_msgs/AntiLockBrakeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AntiLockBrakeStatus>)))
  "Returns md5sum for a message object of type '<AntiLockBrakeStatus>"
  "10d3c69ab8bdca744a019c4c3fb22ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AntiLockBrakeStatus)))
  "Returns md5sum for a message object of type 'AntiLockBrakeStatus"
  "10d3c69ab8bdca744a019c4c3fb22ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AntiLockBrakeStatus>)))
  "Returns full string definition for message of type '<AntiLockBrakeStatus>"
  (cl:format cl:nil "#~%# AntiLockBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%~%uint8  anti_lock_brake_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AntiLockBrakeStatus)))
  "Returns full string definition for message of type 'AntiLockBrakeStatus"
  (cl:format cl:nil "#~%# AntiLockBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%~%uint8  anti_lock_brake_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AntiLockBrakeStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AntiLockBrakeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AntiLockBrakeStatus
    (cl:cons ':anti_lock_brake_status (anti_lock_brake_status msg))
))
