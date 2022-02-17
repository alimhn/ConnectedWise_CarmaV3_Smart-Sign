; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RestrictionAppliesTo.msg.html

(cl:defclass <RestrictionAppliesTo> (roslisp-msg-protocol:ros-message)
  ((restriction_applies_to
    :reader restriction_applies_to
    :initarg :restriction_applies_to
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RestrictionAppliesTo (<RestrictionAppliesTo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestrictionAppliesTo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestrictionAppliesTo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RestrictionAppliesTo> is deprecated: use j2735_msgs-msg:RestrictionAppliesTo instead.")))

(cl:ensure-generic-function 'restriction_applies_to-val :lambda-list '(m))
(cl:defmethod restriction_applies_to-val ((m <RestrictionAppliesTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:restriction_applies_to-val is deprecated.  Use j2735_msgs-msg:restriction_applies_to instead.")
  (restriction_applies_to m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RestrictionAppliesTo>)))
    "Constants for message type '<RestrictionAppliesTo>"
  '((:NONE . 0)
    (:EQUIPPEDTRANSIT . 1)
    (:EQUIPPEDTAXIS . 2)
    (:EQUIPPEDOTHER . 3)
    (:EMISSIONCOMPLIANT . 4)
    (:EQUIPPEDBICYCLE . 5)
    (:WEIGHTCOMPLIANT . 6)
    (:HEIGHTCOMPLIANT . 7)
    (:PEDESTRIANS . 8)
    (:SLOWMOVINGPERSONS . 9)
    (:WHEELCHAIRUSERS . 10)
    (:VISUALDISABILITIES . 11)
    (:AUDIODISABILITIES . 12)
    (:OTHERUNKNOWNDISABILITIES . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RestrictionAppliesTo)))
    "Constants for message type 'RestrictionAppliesTo"
  '((:NONE . 0)
    (:EQUIPPEDTRANSIT . 1)
    (:EQUIPPEDTAXIS . 2)
    (:EQUIPPEDOTHER . 3)
    (:EMISSIONCOMPLIANT . 4)
    (:EQUIPPEDBICYCLE . 5)
    (:WEIGHTCOMPLIANT . 6)
    (:HEIGHTCOMPLIANT . 7)
    (:PEDESTRIANS . 8)
    (:SLOWMOVINGPERSONS . 9)
    (:WHEELCHAIRUSERS . 10)
    (:VISUALDISABILITIES . 11)
    (:AUDIODISABILITIES . 12)
    (:OTHERUNKNOWNDISABILITIES . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestrictionAppliesTo>) ostream)
  "Serializes a message object of type '<RestrictionAppliesTo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restriction_applies_to)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestrictionAppliesTo>) istream)
  "Deserializes a message object of type '<RestrictionAppliesTo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restriction_applies_to)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestrictionAppliesTo>)))
  "Returns string type for a message object of type '<RestrictionAppliesTo>"
  "j2735_msgs/RestrictionAppliesTo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestrictionAppliesTo)))
  "Returns string type for a message object of type 'RestrictionAppliesTo"
  "j2735_msgs/RestrictionAppliesTo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestrictionAppliesTo>)))
  "Returns md5sum for a message object of type '<RestrictionAppliesTo>"
  "f780d757b384f158859481ce11f881e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestrictionAppliesTo)))
  "Returns md5sum for a message object of type 'RestrictionAppliesTo"
  "f780d757b384f158859481ce11f881e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestrictionAppliesTo>)))
  "Returns full string definition for message of type '<RestrictionAppliesTo>"
  (cl:format cl:nil "#~%# RestrictionAppliesTo.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The RestrictionAppliesTo data element provides a short list of common vehicle~%# types which may have one or more special movements at an intersection. I~%#~%# RestrictionAppliesTo ::= ENUMERATED {~%# none, -- applies to nothing~%# equippedTransit, -- buses etc.~%# equippedTaxis,~%# equippedOther, -- other vehicle types with~%# 		-- necessary signal phase state~%# 		-- reception equipment~%# emissionCompliant, -- regional variants with more~%# 		-- definitive items also exist~%# equippedBicycle,~%# weightCompliant,~%# heightCompliant,~%# -- Items dealing with traveler needs serviced by the infrastructure~%# -- These end users (which are not vehicles) are presumed to be suitably equipped~%# pedestrians,~%# slowMovingPersons,~%# wheelchairUsers,~%# visualDisabilities,~%# audioDisabilities, -- hearing~%# otherUnknownDisabilities,~%# ...~%# }~%~%uint8 NONE=0~%uint8 EQUIPPEDTRANSIT=1~%uint8 EQUIPPEDTAXIS=2~%uint8 EQUIPPEDOTHER=3~%uint8 EMISSIONCOMPLIANT=4~%uint8 EQUIPPEDBICYCLE=5~%uint8 WEIGHTCOMPLIANT=6~%uint8 HEIGHTCOMPLIANT=7~%uint8 PEDESTRIANS=8~%uint8 SLOWMOVINGPERSONS=9~%uint8 WHEELCHAIRUSERS=10~%uint8 VISUALDISABILITIES=11~%uint8 AUDIODISABILITIES=12~%uint8 OTHERUNKNOWNDISABILITIES=13~%~%# Variable which can be used to store a type enum value.~%uint8 restriction_applies_to~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestrictionAppliesTo)))
  "Returns full string definition for message of type 'RestrictionAppliesTo"
  (cl:format cl:nil "#~%# RestrictionAppliesTo.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The RestrictionAppliesTo data element provides a short list of common vehicle~%# types which may have one or more special movements at an intersection. I~%#~%# RestrictionAppliesTo ::= ENUMERATED {~%# none, -- applies to nothing~%# equippedTransit, -- buses etc.~%# equippedTaxis,~%# equippedOther, -- other vehicle types with~%# 		-- necessary signal phase state~%# 		-- reception equipment~%# emissionCompliant, -- regional variants with more~%# 		-- definitive items also exist~%# equippedBicycle,~%# weightCompliant,~%# heightCompliant,~%# -- Items dealing with traveler needs serviced by the infrastructure~%# -- These end users (which are not vehicles) are presumed to be suitably equipped~%# pedestrians,~%# slowMovingPersons,~%# wheelchairUsers,~%# visualDisabilities,~%# audioDisabilities, -- hearing~%# otherUnknownDisabilities,~%# ...~%# }~%~%uint8 NONE=0~%uint8 EQUIPPEDTRANSIT=1~%uint8 EQUIPPEDTAXIS=2~%uint8 EQUIPPEDOTHER=3~%uint8 EMISSIONCOMPLIANT=4~%uint8 EQUIPPEDBICYCLE=5~%uint8 WEIGHTCOMPLIANT=6~%uint8 HEIGHTCOMPLIANT=7~%uint8 PEDESTRIANS=8~%uint8 SLOWMOVINGPERSONS=9~%uint8 WHEELCHAIRUSERS=10~%uint8 VISUALDISABILITIES=11~%uint8 AUDIODISABILITIES=12~%uint8 OTHERUNKNOWNDISABILITIES=13~%~%# Variable which can be used to store a type enum value.~%uint8 restriction_applies_to~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestrictionAppliesTo>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestrictionAppliesTo>))
  "Converts a ROS message object to a list"
  (cl:list 'RestrictionAppliesTo
    (cl:cons ':restriction_applies_to (restriction_applies_to msg))
))
