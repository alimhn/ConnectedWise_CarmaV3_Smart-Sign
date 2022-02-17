;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RestrictionUserType)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RestrictionUserType (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::RESTRICTIONUSERTYPE")
  (make-package "J2735_MSGS::RESTRICTIONUSERTYPE"))

(in-package "ROS")
;;//! \htmlinclude RestrictionUserType.msg.html


(intern "*BASIC_TYPE*" (find-package "J2735_MSGS::RESTRICTIONUSERTYPE"))
(shadow '*BASIC_TYPE* (find-package "J2735_MSGS::RESTRICTIONUSERTYPE"))
(defconstant j2735_msgs::RestrictionUserType::*BASIC_TYPE* 0)
(intern "*REGIONAL*" (find-package "J2735_MSGS::RESTRICTIONUSERTYPE"))
(shadow '*REGIONAL* (find-package "J2735_MSGS::RESTRICTIONUSERTYPE"))
(defconstant j2735_msgs::RestrictionUserType::*REGIONAL* 1)

(defun j2735_msgs::RestrictionUserType-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::RestrictionUserType::*BASIC_TYPE*)
        ((= const 1) 'j2735_msgs::RestrictionUserType::*REGIONAL*)
        (t nil)))

(defclass j2735_msgs::RestrictionUserType
  :super ros::object
  :slots (_choice _basicType ))

(defmethod j2735_msgs::RestrictionUserType
  (:init
   (&key
    ((:choice __choice) 0)
    ((:basicType __basicType) (instance j2735_msgs::RestrictionAppliesTo :init))
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _basicType __basicType)
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:basicType
   (&rest __basicType)
   (if (keywordp (car __basicType))
       (send* _basicType __basicType)
     (progn
       (if __basicType (setq _basicType (car __basicType)))
       _basicType)))
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; j2735_msgs/RestrictionAppliesTo _basicType
    (send _basicType :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; j2735_msgs/RestrictionAppliesTo _basicType
       (send _basicType :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; j2735_msgs/RestrictionAppliesTo _basicType
     (send _basicType :deserialize buf ptr-) (incf ptr- (send _basicType :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::RestrictionUserType :md5sum-) "886d7b957a34645ce9346153577d71fc")
(setf (get j2735_msgs::RestrictionUserType :datatype-) "j2735_msgs/RestrictionUserType")
(setf (get j2735_msgs::RestrictionUserType :definition-)
      "#
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



(provide :j2735_msgs/RestrictionUserType "886d7b957a34645ce9346153577d71fc")


