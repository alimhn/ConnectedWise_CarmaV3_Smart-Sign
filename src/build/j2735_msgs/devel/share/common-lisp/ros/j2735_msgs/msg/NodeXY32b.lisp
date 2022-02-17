; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude NodeXY32b.msg.html

(cl:defclass <NodeXY32b> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass NodeXY32b (<NodeXY32b>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeXY32b>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeXY32b)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<NodeXY32b> is deprecated: use j2735_msgs-msg:NodeXY32b instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <NodeXY32b>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:x-val is deprecated.  Use j2735_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <NodeXY32b>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:y-val is deprecated.  Use j2735_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeXY32b>) ostream)
  "Serializes a message object of type '<NodeXY32b>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeXY32b>) istream)
  "Deserializes a message object of type '<NodeXY32b>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeXY32b>)))
  "Returns string type for a message object of type '<NodeXY32b>"
  "j2735_msgs/NodeXY32b")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeXY32b)))
  "Returns string type for a message object of type 'NodeXY32b"
  "j2735_msgs/NodeXY32b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeXY32b>)))
  "Returns md5sum for a message object of type '<NodeXY32b>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeXY32b)))
  "Returns md5sum for a message object of type 'NodeXY32b"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeXY32b>)))
  "Returns full string definition for message of type '<NodeXY32b>"
  (cl:format cl:nil "#~%# NodeXY32b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 32-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-32b ::= SEQUENCE {~%# x Offset-B16,~%# y Offset-B16~%# }~%~%# A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%# Offset-B16 ::= INTEGER (-32768..32767)~%# -- a range of +- 327.68 meters~%~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeXY32b)))
  "Returns full string definition for message of type 'NodeXY32b"
  (cl:format cl:nil "#~%# NodeXY32b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 32-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-32b ::= SEQUENCE {~%# x Offset-B16,~%# y Offset-B16~%# }~%~%# A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%# Offset-B16 ::= INTEGER (-32768..32767)~%# -- a range of +- 327.68 meters~%~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeXY32b>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeXY32b>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeXY32b
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
