; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude PathNode.msg.html

(cl:defclass <PathNode> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:fixnum
    :initform 0)
   (z_exists
    :reader z_exists
    :initarg :z_exists
    :type cl:boolean
    :initform cl:nil)
   (width
    :reader width
    :initarg :width
    :type cl:fixnum
    :initform 0)
   (width_exists
    :reader width_exists
    :initarg :width_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PathNode (<PathNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<PathNode> is deprecated: use j2735_msgs-msg:PathNode instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PathNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:x-val is deprecated.  Use j2735_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PathNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:y-val is deprecated.  Use j2735_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <PathNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:z-val is deprecated.  Use j2735_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'z_exists-val :lambda-list '(m))
(cl:defmethod z_exists-val ((m <PathNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:z_exists-val is deprecated.  Use j2735_msgs-msg:z_exists instead.")
  (z_exists m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <PathNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:width-val is deprecated.  Use j2735_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'width_exists-val :lambda-list '(m))
(cl:defmethod width_exists-val ((m <PathNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:width_exists-val is deprecated.  Use j2735_msgs-msg:width_exists instead.")
  (width_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathNode>) ostream)
  "Serializes a message object of type '<PathNode>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'z_exists) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'width_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathNode>) istream)
  "Deserializes a message object of type '<PathNode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'z_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'width_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathNode>)))
  "Returns string type for a message object of type '<PathNode>"
  "j2735_msgs/PathNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathNode)))
  "Returns string type for a message object of type 'PathNode"
  "j2735_msgs/PathNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathNode>)))
  "Returns md5sum for a message object of type '<PathNode>"
  "1a67109c239b97f03cda3ba46da2c080")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathNode)))
  "Returns md5sum for a message object of type 'PathNode"
  "1a67109c239b97f03cda3ba46da2c080")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathNode>)))
  "Returns full string definition for message of type '<PathNode>"
  (cl:format cl:nil "#~%# PathNode.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# @author Misheel Bayartsengel~%# @version 0.1~%#~%# The positive x direction proceeds eastward, positive y proceeds~%# northward, and positive z proceeds away from the center of the Earth. ~%~%# X ::= INTEGER (-32768..32767)~%#   -- units are in cm~%int16 x~%int16 y~%int16 z~%~%bool z_exists~%~%# Width ::= INTEGER (-128..127)~%#   -- units are in cm~%int8 width~%bool width_exists~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathNode)))
  "Returns full string definition for message of type 'PathNode"
  (cl:format cl:nil "#~%# PathNode.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# @author Misheel Bayartsengel~%# @version 0.1~%#~%# The positive x direction proceeds eastward, positive y proceeds~%# northward, and positive z proceeds away from the center of the Earth. ~%~%# X ::= INTEGER (-32768..32767)~%#   -- units are in cm~%int16 x~%int16 y~%int16 z~%~%bool z_exists~%~%# Width ::= INTEGER (-128..127)~%#   -- units are in cm~%int8 width~%bool width_exists~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathNode>))
  (cl:+ 0
     2
     2
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathNode>))
  "Converts a ROS message object to a list"
  (cl:list 'PathNode
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':z_exists (z_exists msg))
    (cl:cons ':width (width msg))
    (cl:cons ':width_exists (width_exists msg))
))
