; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RestrictionUserType.msg.html

(cl:defclass <RestrictionUserType> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (basicType
    :reader basicType
    :initarg :basicType
    :type j2735_msgs-msg:RestrictionAppliesTo
    :initform (cl:make-instance 'j2735_msgs-msg:RestrictionAppliesTo)))
)

(cl:defclass RestrictionUserType (<RestrictionUserType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestrictionUserType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestrictionUserType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RestrictionUserType> is deprecated: use j2735_msgs-msg:RestrictionUserType instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <RestrictionUserType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'basicType-val :lambda-list '(m))
(cl:defmethod basicType-val ((m <RestrictionUserType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:basicType-val is deprecated.  Use j2735_msgs-msg:basicType instead.")
  (basicType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RestrictionUserType>)))
    "Constants for message type '<RestrictionUserType>"
  '((:BASIC_TYPE . 0)
    (:REGIONAL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RestrictionUserType)))
    "Constants for message type 'RestrictionUserType"
  '((:BASIC_TYPE . 0)
    (:REGIONAL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestrictionUserType>) ostream)
  "Serializes a message object of type '<RestrictionUserType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'basicType) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestrictionUserType>) istream)
  "Deserializes a message object of type '<RestrictionUserType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'basicType) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestrictionUserType>)))
  "Returns string type for a message object of type '<RestrictionUserType>"
  "j2735_msgs/RestrictionUserType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestrictionUserType)))
  "Returns string type for a message object of type 'RestrictionUserType"
  "j2735_msgs/RestrictionUserType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestrictionUserType>)))
  "Returns md5sum for a message object of type '<RestrictionUserType>"
  "886d7b957a34645ce9346153577d71fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestrictionUserType)))
  "Returns md5sum for a message object of type 'RestrictionUserType"
  "886d7b957a34645ce9346153577d71fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestrictionUserType>)))
  "Returns full string definition for message of type '<RestrictionUserType>"
  (cl:format cl:nil "#~%# RestrictionUserType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class~%# from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to~%# indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this~%# class of user.~%~%# RestrictionUserType ::= CHOICE {~%# basicType RestrictionAppliesTo,~%# -- a set of the most commonly used types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},~%# ...~%# }~%~%uint8 choice~%uint8 BASIC_TYPE=0~%uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.~%~%j2735_msgs/RestrictionAppliesTo basicType~%~%#regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/RestrictionAppliesTo~%#~%# RestrictionAppliesTo.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The RestrictionAppliesTo data element provides a short list of common vehicle~%# types which may have one or more special movements at an intersection. I~%#~%# RestrictionAppliesTo ::= ENUMERATED {~%# none, -- applies to nothing~%# equippedTransit, -- buses etc.~%# equippedTaxis,~%# equippedOther, -- other vehicle types with~%# 		-- necessary signal phase state~%# 		-- reception equipment~%# emissionCompliant, -- regional variants with more~%# 		-- definitive items also exist~%# equippedBicycle,~%# weightCompliant,~%# heightCompliant,~%# -- Items dealing with traveler needs serviced by the infrastructure~%# -- These end users (which are not vehicles) are presumed to be suitably equipped~%# pedestrians,~%# slowMovingPersons,~%# wheelchairUsers,~%# visualDisabilities,~%# audioDisabilities, -- hearing~%# otherUnknownDisabilities,~%# ...~%# }~%~%uint8 NONE=0~%uint8 EQUIPPEDTRANSIT=1~%uint8 EQUIPPEDTAXIS=2~%uint8 EQUIPPEDOTHER=3~%uint8 EMISSIONCOMPLIANT=4~%uint8 EQUIPPEDBICYCLE=5~%uint8 WEIGHTCOMPLIANT=6~%uint8 HEIGHTCOMPLIANT=7~%uint8 PEDESTRIANS=8~%uint8 SLOWMOVINGPERSONS=9~%uint8 WHEELCHAIRUSERS=10~%uint8 VISUALDISABILITIES=11~%uint8 AUDIODISABILITIES=12~%uint8 OTHERUNKNOWNDISABILITIES=13~%~%# Variable which can be used to store a type enum value.~%uint8 restriction_applies_to~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestrictionUserType)))
  "Returns full string definition for message of type 'RestrictionUserType"
  (cl:format cl:nil "#~%# RestrictionUserType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class~%# from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to~%# indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this~%# class of user.~%~%# RestrictionUserType ::= CHOICE {~%# basicType RestrictionAppliesTo,~%# -- a set of the most commonly used types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},~%# ...~%# }~%~%uint8 choice~%uint8 BASIC_TYPE=0~%uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.~%~%j2735_msgs/RestrictionAppliesTo basicType~%~%#regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/RestrictionAppliesTo~%#~%# RestrictionAppliesTo.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The RestrictionAppliesTo data element provides a short list of common vehicle~%# types which may have one or more special movements at an intersection. I~%#~%# RestrictionAppliesTo ::= ENUMERATED {~%# none, -- applies to nothing~%# equippedTransit, -- buses etc.~%# equippedTaxis,~%# equippedOther, -- other vehicle types with~%# 		-- necessary signal phase state~%# 		-- reception equipment~%# emissionCompliant, -- regional variants with more~%# 		-- definitive items also exist~%# equippedBicycle,~%# weightCompliant,~%# heightCompliant,~%# -- Items dealing with traveler needs serviced by the infrastructure~%# -- These end users (which are not vehicles) are presumed to be suitably equipped~%# pedestrians,~%# slowMovingPersons,~%# wheelchairUsers,~%# visualDisabilities,~%# audioDisabilities, -- hearing~%# otherUnknownDisabilities,~%# ...~%# }~%~%uint8 NONE=0~%uint8 EQUIPPEDTRANSIT=1~%uint8 EQUIPPEDTAXIS=2~%uint8 EQUIPPEDOTHER=3~%uint8 EMISSIONCOMPLIANT=4~%uint8 EQUIPPEDBICYCLE=5~%uint8 WEIGHTCOMPLIANT=6~%uint8 HEIGHTCOMPLIANT=7~%uint8 PEDESTRIANS=8~%uint8 SLOWMOVINGPERSONS=9~%uint8 WHEELCHAIRUSERS=10~%uint8 VISUALDISABILITIES=11~%uint8 AUDIODISABILITIES=12~%uint8 OTHERUNKNOWNDISABILITIES=13~%~%# Variable which can be used to store a type enum value.~%uint8 restriction_applies_to~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestrictionUserType>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'basicType))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestrictionUserType>))
  "Converts a ROS message object to a list"
  (cl:list 'RestrictionUserType
    (cl:cons ':choice (choice msg))
    (cl:cons ':basicType (basicType msg))
))
