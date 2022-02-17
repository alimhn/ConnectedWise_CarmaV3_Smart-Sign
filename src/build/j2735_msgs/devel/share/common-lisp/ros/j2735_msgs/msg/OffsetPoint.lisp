; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude OffsetPoint.msg.html

(cl:defclass <OffsetPoint> (roslisp-msg-protocol:ros-message)
  ((deltax
    :reader deltax
    :initarg :deltax
    :type cl:fixnum
    :initform 0)
   (deltay
    :reader deltay
    :initarg :deltay
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OffsetPoint (<OffsetPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OffsetPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OffsetPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<OffsetPoint> is deprecated: use j2735_msgs-msg:OffsetPoint instead.")))

(cl:ensure-generic-function 'deltax-val :lambda-list '(m))
(cl:defmethod deltax-val ((m <OffsetPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:deltax-val is deprecated.  Use j2735_msgs-msg:deltax instead.")
  (deltax m))

(cl:ensure-generic-function 'deltay-val :lambda-list '(m))
(cl:defmethod deltay-val ((m <OffsetPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:deltay-val is deprecated.  Use j2735_msgs-msg:deltay instead.")
  (deltay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OffsetPoint>) ostream)
  "Serializes a message object of type '<OffsetPoint>"
  (cl:let* ((signed (cl:slot-value msg 'deltax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'deltay)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OffsetPoint>) istream)
  "Deserializes a message object of type '<OffsetPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deltax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deltay) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OffsetPoint>)))
  "Returns string type for a message object of type '<OffsetPoint>"
  "j2735_msgs/OffsetPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetPoint)))
  "Returns string type for a message object of type 'OffsetPoint"
  "j2735_msgs/OffsetPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OffsetPoint>)))
  "Returns md5sum for a message object of type '<OffsetPoint>"
  "2766869f53581899f2c4aaa8009bd340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OffsetPoint)))
  "Returns md5sum for a message object of type 'OffsetPoint"
  "2766869f53581899f2c4aaa8009bd340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OffsetPoint>)))
  "Returns full string definition for message of type '<OffsetPoint>"
  (cl:format cl:nil "#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OffsetPoint)))
  "Returns full string definition for message of type 'OffsetPoint"
  (cl:format cl:nil "#~%# OffsetPoint.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#OffsetPoint ::= SEQUENCE~%#{~%#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters~%#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters~%#}~%~%#deltax ::= INTEGER (-32768..32767)~%int16 deltax~%~%#deltay ::= INTEGER (-32768..32767)~%int16 deltay~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OffsetPoint>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OffsetPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'OffsetPoint
    (cl:cons ':deltax (deltax msg))
    (cl:cons ':deltay (deltay msg))
))
