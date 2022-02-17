; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude OffsetXaxis.msg.html

(cl:defclass <OffsetXaxis> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (small
    :reader small
    :initarg :small
    :type cl:fixnum
    :initform 0)
   (large
    :reader large
    :initarg :large
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OffsetXaxis (<OffsetXaxis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OffsetXaxis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OffsetXaxis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<OffsetXaxis> is deprecated: use j2735_msgs-msg:OffsetXaxis instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <OffsetXaxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'small-val :lambda-list '(m))
(cl:defmethod small-val ((m <OffsetXaxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:small-val is deprecated.  Use j2735_msgs-msg:small instead.")
  (small m))

(cl:ensure-generic-function 'large-val :lambda-list '(m))
(cl:defmethod large-val ((m <OffsetXaxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:large-val is deprecated.  Use j2735_msgs-msg:large instead.")
  (large m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OffsetXaxis>)))
    "Constants for message type '<OffsetXaxis>"
  '((:SMALL . 0)
    (:LARGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OffsetXaxis)))
    "Constants for message type 'OffsetXaxis"
  '((:SMALL . 0)
    (:LARGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OffsetXaxis>) ostream)
  "Serializes a message object of type '<OffsetXaxis>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'small)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'large)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OffsetXaxis>) istream)
  "Deserializes a message object of type '<OffsetXaxis>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'small) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'large) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OffsetXaxis>)))
  "Returns string type for a message object of type '<OffsetXaxis>"
  "j2735_msgs/OffsetXaxis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetXaxis)))
  "Returns string type for a message object of type 'OffsetXaxis"
  "j2735_msgs/OffsetXaxis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OffsetXaxis>)))
  "Returns md5sum for a message object of type '<OffsetXaxis>"
  "7c890b94cd43f65cd23f448bf170a405")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OffsetXaxis)))
  "Returns md5sum for a message object of type 'OffsetXaxis"
  "7c890b94cd43f65cd23f448bf170a405")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OffsetXaxis>)))
  "Returns full string definition for message of type '<OffsetXaxis>"
  (cl:format cl:nil "#~%# OffsetXaxis.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%# offsetXaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%~%~%uint8 choice~%uint8 SMALL=0~%uint8 LARGE=1~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%int16 small~%~%~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%int16 large~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OffsetXaxis)))
  "Returns full string definition for message of type 'OffsetXaxis"
  (cl:format cl:nil "#~%# OffsetXaxis.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%# offsetXaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%~%~%uint8 choice~%uint8 SMALL=0~%uint8 LARGE=1~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%int16 small~%~%~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%int16 large~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OffsetXaxis>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OffsetXaxis>))
  "Converts a ROS message object to a list"
  (cl:list 'OffsetXaxis
    (cl:cons ':choice (choice msg))
    (cl:cons ':small (small msg))
    (cl:cons ':large (large msg))
))
