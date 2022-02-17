; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RepeatParams.msg.html

(cl:defclass <RepeatParams> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:fixnum
    :initform 0)
   (period
    :reader period
    :initarg :period
    :type cl:fixnum
    :initform 0)
   (span
    :reader span
    :initarg :span
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RepeatParams (<RepeatParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RepeatParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RepeatParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RepeatParams> is deprecated: use j2735_msgs-msg:RepeatParams instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <RepeatParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:offset-val is deprecated.  Use j2735_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <RepeatParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:period-val is deprecated.  Use j2735_msgs-msg:period instead.")
  (period m))

(cl:ensure-generic-function 'span-val :lambda-list '(m))
(cl:defmethod span-val ((m <RepeatParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:span-val is deprecated.  Use j2735_msgs-msg:span instead.")
  (span m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RepeatParams>) ostream)
  "Serializes a message object of type '<RepeatParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'span)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'span)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RepeatParams>) istream)
  "Deserializes a message object of type '<RepeatParams>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'span)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'span)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RepeatParams>)))
  "Returns string type for a message object of type '<RepeatParams>"
  "j2735_msgs/RepeatParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RepeatParams)))
  "Returns string type for a message object of type 'RepeatParams"
  "j2735_msgs/RepeatParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RepeatParams>)))
  "Returns md5sum for a message object of type '<RepeatParams>"
  "29a9572bae20d351bcfc7c7e1ca19e93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RepeatParams)))
  "Returns md5sum for a message object of type 'RepeatParams"
  "29a9572bae20d351bcfc7c7e1ca19e93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RepeatParams>)))
  "Returns full string definition for message of type '<RepeatParams>"
  (cl:format cl:nil "#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RepeatParams)))
  "Returns full string definition for message of type 'RepeatParams"
  (cl:format cl:nil "#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RepeatParams>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RepeatParams>))
  "Converts a ROS message object to a list"
  (cl:list 'RepeatParams
    (cl:cons ':offset (offset msg))
    (cl:cons ':period (period msg))
    (cl:cons ':span (span msg))
))
