; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RestrictionUserTypeList.msg.html

(cl:defclass <RestrictionUserTypeList> (roslisp-msg-protocol:ros-message)
  ((restriction_user_type_list
    :reader restriction_user_type_list
    :initarg :restriction_user_type_list
    :type (cl:vector j2735_msgs-msg:RestrictionUserType)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:RestrictionUserType :initial-element (cl:make-instance 'j2735_msgs-msg:RestrictionUserType))))
)

(cl:defclass RestrictionUserTypeList (<RestrictionUserTypeList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestrictionUserTypeList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestrictionUserTypeList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RestrictionUserTypeList> is deprecated: use j2735_msgs-msg:RestrictionUserTypeList instead.")))

(cl:ensure-generic-function 'restriction_user_type_list-val :lambda-list '(m))
(cl:defmethod restriction_user_type_list-val ((m <RestrictionUserTypeList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:restriction_user_type_list-val is deprecated.  Use j2735_msgs-msg:restriction_user_type_list instead.")
  (restriction_user_type_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestrictionUserTypeList>) ostream)
  "Serializes a message object of type '<RestrictionUserTypeList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'restriction_user_type_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'restriction_user_type_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestrictionUserTypeList>) istream)
  "Deserializes a message object of type '<RestrictionUserTypeList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'restriction_user_type_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'restriction_user_type_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:RestrictionUserType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestrictionUserTypeList>)))
  "Returns string type for a message object of type '<RestrictionUserTypeList>"
  "j2735_msgs/RestrictionUserTypeList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestrictionUserTypeList)))
  "Returns string type for a message object of type 'RestrictionUserTypeList"
  "j2735_msgs/RestrictionUserTypeList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestrictionUserTypeList>)))
  "Returns md5sum for a message object of type '<RestrictionUserTypeList>"
  "3a32a9320c1ecb531ad83962d3922563")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestrictionUserTypeList)))
  "Returns md5sum for a message object of type 'RestrictionUserTypeList"
  "3a32a9320c1ecb531ad83962d3922563")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestrictionUserTypeList>)))
  "Returns full string definition for message of type '<RestrictionUserTypeList>"
  (cl:format cl:nil "#~%# RestrictionUserTypeList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionUserTypeList data frame consists of a list of RestrictionUserType entries.~%#~%# RestrictionUserTypeList ::= SEQUENCE (SIZE(1..16)) OF RestrictionUserType~%~%j2735_msgs/RestrictionUserType[] restriction_user_type_list~%================================================================================~%MSG: j2735_msgs/RestrictionUserType~%#~%# RestrictionUserType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class~%# from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to~%# indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this~%# class of user.~%~%# RestrictionUserType ::= CHOICE {~%# basicType RestrictionAppliesTo,~%# -- a set of the most commonly used types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},~%# ...~%# }~%~%uint8 choice~%uint8 BASIC_TYPE=0~%uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.~%~%j2735_msgs/RestrictionAppliesTo basicType~%~%#regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/RestrictionAppliesTo~%#~%# RestrictionAppliesTo.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The RestrictionAppliesTo data element provides a short list of common vehicle~%# types which may have one or more special movements at an intersection. I~%#~%# RestrictionAppliesTo ::= ENUMERATED {~%# none, -- applies to nothing~%# equippedTransit, -- buses etc.~%# equippedTaxis,~%# equippedOther, -- other vehicle types with~%# 		-- necessary signal phase state~%# 		-- reception equipment~%# emissionCompliant, -- regional variants with more~%# 		-- definitive items also exist~%# equippedBicycle,~%# weightCompliant,~%# heightCompliant,~%# -- Items dealing with traveler needs serviced by the infrastructure~%# -- These end users (which are not vehicles) are presumed to be suitably equipped~%# pedestrians,~%# slowMovingPersons,~%# wheelchairUsers,~%# visualDisabilities,~%# audioDisabilities, -- hearing~%# otherUnknownDisabilities,~%# ...~%# }~%~%uint8 NONE=0~%uint8 EQUIPPEDTRANSIT=1~%uint8 EQUIPPEDTAXIS=2~%uint8 EQUIPPEDOTHER=3~%uint8 EMISSIONCOMPLIANT=4~%uint8 EQUIPPEDBICYCLE=5~%uint8 WEIGHTCOMPLIANT=6~%uint8 HEIGHTCOMPLIANT=7~%uint8 PEDESTRIANS=8~%uint8 SLOWMOVINGPERSONS=9~%uint8 WHEELCHAIRUSERS=10~%uint8 VISUALDISABILITIES=11~%uint8 AUDIODISABILITIES=12~%uint8 OTHERUNKNOWNDISABILITIES=13~%~%# Variable which can be used to store a type enum value.~%uint8 restriction_applies_to~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestrictionUserTypeList)))
  "Returns full string definition for message of type 'RestrictionUserTypeList"
  (cl:format cl:nil "#~%# RestrictionUserTypeList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionUserTypeList data frame consists of a list of RestrictionUserType entries.~%#~%# RestrictionUserTypeList ::= SEQUENCE (SIZE(1..16)) OF RestrictionUserType~%~%j2735_msgs/RestrictionUserType[] restriction_user_type_list~%================================================================================~%MSG: j2735_msgs/RestrictionUserType~%#~%# RestrictionUserType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class~%# from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to~%# indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this~%# class of user.~%~%# RestrictionUserType ::= CHOICE {~%# basicType RestrictionAppliesTo,~%# -- a set of the most commonly used types~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},~%# ...~%# }~%~%uint8 choice~%uint8 BASIC_TYPE=0~%uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.~%~%j2735_msgs/RestrictionAppliesTo basicType~%~%#regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/RestrictionAppliesTo~%#~%# RestrictionAppliesTo.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The RestrictionAppliesTo data element provides a short list of common vehicle~%# types which may have one or more special movements at an intersection. I~%#~%# RestrictionAppliesTo ::= ENUMERATED {~%# none, -- applies to nothing~%# equippedTransit, -- buses etc.~%# equippedTaxis,~%# equippedOther, -- other vehicle types with~%# 		-- necessary signal phase state~%# 		-- reception equipment~%# emissionCompliant, -- regional variants with more~%# 		-- definitive items also exist~%# equippedBicycle,~%# weightCompliant,~%# heightCompliant,~%# -- Items dealing with traveler needs serviced by the infrastructure~%# -- These end users (which are not vehicles) are presumed to be suitably equipped~%# pedestrians,~%# slowMovingPersons,~%# wheelchairUsers,~%# visualDisabilities,~%# audioDisabilities, -- hearing~%# otherUnknownDisabilities,~%# ...~%# }~%~%uint8 NONE=0~%uint8 EQUIPPEDTRANSIT=1~%uint8 EQUIPPEDTAXIS=2~%uint8 EQUIPPEDOTHER=3~%uint8 EMISSIONCOMPLIANT=4~%uint8 EQUIPPEDBICYCLE=5~%uint8 WEIGHTCOMPLIANT=6~%uint8 HEIGHTCOMPLIANT=7~%uint8 PEDESTRIANS=8~%uint8 SLOWMOVINGPERSONS=9~%uint8 WHEELCHAIRUSERS=10~%uint8 VISUALDISABILITIES=11~%uint8 AUDIODISABILITIES=12~%uint8 OTHERUNKNOWNDISABILITIES=13~%~%# Variable which can be used to store a type enum value.~%uint8 restriction_applies_to~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestrictionUserTypeList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'restriction_user_type_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestrictionUserTypeList>))
  "Converts a ROS message object to a list"
  (cl:list 'RestrictionUserTypeList
    (cl:cons ':restriction_user_type_list (restriction_user_type_list msg))
))
