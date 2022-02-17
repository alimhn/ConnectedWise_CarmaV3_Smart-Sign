;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RestrictionUserTypeList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RestrictionUserTypeList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::RESTRICTIONUSERTYPELIST")
  (make-package "J2735_MSGS::RESTRICTIONUSERTYPELIST"))

(in-package "ROS")
;;//! \htmlinclude RestrictionUserTypeList.msg.html


(defclass j2735_msgs::RestrictionUserTypeList
  :super ros::object
  :slots (_restriction_user_type_list ))

(defmethod j2735_msgs::RestrictionUserTypeList
  (:init
   (&key
    ((:restriction_user_type_list __restriction_user_type_list) ())
    )
   (send-super :init)
   (setq _restriction_user_type_list __restriction_user_type_list)
   self)
  (:restriction_user_type_list
   (&rest __restriction_user_type_list)
   (if (keywordp (car __restriction_user_type_list))
       (send* _restriction_user_type_list __restriction_user_type_list)
     (progn
       (if __restriction_user_type_list (setq _restriction_user_type_list (car __restriction_user_type_list)))
       _restriction_user_type_list)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/RestrictionUserType[] _restriction_user_type_list
    (apply #'+ (send-all _restriction_user_type_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/RestrictionUserType[] _restriction_user_type_list
     (write-long (length _restriction_user_type_list) s)
     (dolist (elem _restriction_user_type_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/RestrictionUserType[] _restriction_user_type_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _restriction_user_type_list (let (r) (dotimes (i n) (push (instance j2735_msgs::RestrictionUserType :init) r)) r))
     (dolist (elem- _restriction_user_type_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::RestrictionUserTypeList :md5sum-) "3a32a9320c1ecb531ad83962d3922563")
(setf (get j2735_msgs::RestrictionUserTypeList :datatype-) "j2735_msgs/RestrictionUserTypeList")
(setf (get j2735_msgs::RestrictionUserTypeList :definition-)
      "#
# RestrictionUserTypeList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RestrictionUserTypeList data frame consists of a list of RestrictionUserType entries.
#
# RestrictionUserTypeList ::= SEQUENCE (SIZE(1..16)) OF RestrictionUserType

j2735_msgs/RestrictionUserType[] restriction_user_type_list
================================================================================
MSG: j2735_msgs/RestrictionUserType
#
# RestrictionUserType.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class
# from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to
# indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this
# class of user.

# RestrictionUserType ::= CHOICE {
# basicType RestrictionAppliesTo,
# -- a set of the most commonly used types
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},
# ...
# }

uint8 choice
uint8 BASIC_TYPE=0
uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.

j2735_msgs/RestrictionAppliesTo basicType

#regional #TODO: RegionalExtensions are not yet implemented in asn1c

================================================================================
MSG: j2735_msgs/RestrictionAppliesTo
#
# RestrictionAppliesTo.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The RestrictionAppliesTo data element provides a short list of common vehicle
# types which may have one or more special movements at an intersection. I
#
# RestrictionAppliesTo ::= ENUMERATED {
# none, -- applies to nothing
# equippedTransit, -- buses etc.
# equippedTaxis,
# equippedOther, -- other vehicle types with
# 		-- necessary signal phase state
# 		-- reception equipment
# emissionCompliant, -- regional variants with more
# 		-- definitive items also exist
# equippedBicycle,
# weightCompliant,
# heightCompliant,
# -- Items dealing with traveler needs serviced by the infrastructure
# -- These end users (which are not vehicles) are presumed to be suitably equipped
# pedestrians,
# slowMovingPersons,
# wheelchairUsers,
# visualDisabilities,
# audioDisabilities, -- hearing
# otherUnknownDisabilities,
# ...
# }

uint8 NONE=0
uint8 EQUIPPEDTRANSIT=1
uint8 EQUIPPEDTAXIS=2
uint8 EQUIPPEDOTHER=3
uint8 EMISSIONCOMPLIANT=4
uint8 EQUIPPEDBICYCLE=5
uint8 WEIGHTCOMPLIANT=6
uint8 HEIGHTCOMPLIANT=7
uint8 PEDESTRIANS=8
uint8 SLOWMOVINGPERSONS=9
uint8 WHEELCHAIRUSERS=10
uint8 VISUALDISABILITIES=11
uint8 AUDIODISABILITIES=12
uint8 OTHERUNKNOWNDISABILITIES=13

# Variable which can be used to store a type enum value.
uint8 restriction_applies_to




")



(provide :j2735_msgs/RestrictionUserTypeList "3a32a9320c1ecb531ad83962d3922563")


