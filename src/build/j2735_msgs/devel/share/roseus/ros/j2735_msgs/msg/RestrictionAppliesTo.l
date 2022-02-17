;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RestrictionAppliesTo)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RestrictionAppliesTo (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO")
  (make-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))

(in-package "ROS")
;;//! \htmlinclude RestrictionAppliesTo.msg.html


(intern "*NONE*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*NONE* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*NONE* 0)
(intern "*EQUIPPEDTRANSIT*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*EQUIPPEDTRANSIT* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*EQUIPPEDTRANSIT* 1)
(intern "*EQUIPPEDTAXIS*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*EQUIPPEDTAXIS* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*EQUIPPEDTAXIS* 2)
(intern "*EQUIPPEDOTHER*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*EQUIPPEDOTHER* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*EQUIPPEDOTHER* 3)
(intern "*EMISSIONCOMPLIANT*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*EMISSIONCOMPLIANT* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*EMISSIONCOMPLIANT* 4)
(intern "*EQUIPPEDBICYCLE*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*EQUIPPEDBICYCLE* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*EQUIPPEDBICYCLE* 5)
(intern "*WEIGHTCOMPLIANT*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*WEIGHTCOMPLIANT* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*WEIGHTCOMPLIANT* 6)
(intern "*HEIGHTCOMPLIANT*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*HEIGHTCOMPLIANT* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*HEIGHTCOMPLIANT* 7)
(intern "*PEDESTRIANS*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*PEDESTRIANS* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*PEDESTRIANS* 8)
(intern "*SLOWMOVINGPERSONS*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*SLOWMOVINGPERSONS* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*SLOWMOVINGPERSONS* 9)
(intern "*WHEELCHAIRUSERS*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*WHEELCHAIRUSERS* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*WHEELCHAIRUSERS* 10)
(intern "*VISUALDISABILITIES*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*VISUALDISABILITIES* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*VISUALDISABILITIES* 11)
(intern "*AUDIODISABILITIES*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*AUDIODISABILITIES* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*AUDIODISABILITIES* 12)
(intern "*OTHERUNKNOWNDISABILITIES*" (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(shadow '*OTHERUNKNOWNDISABILITIES* (find-package "J2735_MSGS::RESTRICTIONAPPLIESTO"))
(defconstant j2735_msgs::RestrictionAppliesTo::*OTHERUNKNOWNDISABILITIES* 13)

(defun j2735_msgs::RestrictionAppliesTo-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::RestrictionAppliesTo::*NONE*)
        ((= const 1) 'j2735_msgs::RestrictionAppliesTo::*EQUIPPEDTRANSIT*)
        ((= const 2) 'j2735_msgs::RestrictionAppliesTo::*EQUIPPEDTAXIS*)
        ((= const 3) 'j2735_msgs::RestrictionAppliesTo::*EQUIPPEDOTHER*)
        ((= const 4) 'j2735_msgs::RestrictionAppliesTo::*EMISSIONCOMPLIANT*)
        ((= const 5) 'j2735_msgs::RestrictionAppliesTo::*EQUIPPEDBICYCLE*)
        ((= const 6) 'j2735_msgs::RestrictionAppliesTo::*WEIGHTCOMPLIANT*)
        ((= const 7) 'j2735_msgs::RestrictionAppliesTo::*HEIGHTCOMPLIANT*)
        ((= const 8) 'j2735_msgs::RestrictionAppliesTo::*PEDESTRIANS*)
        ((= const 9) 'j2735_msgs::RestrictionAppliesTo::*SLOWMOVINGPERSONS*)
        ((= const 10) 'j2735_msgs::RestrictionAppliesTo::*WHEELCHAIRUSERS*)
        ((= const 11) 'j2735_msgs::RestrictionAppliesTo::*VISUALDISABILITIES*)
        ((= const 12) 'j2735_msgs::RestrictionAppliesTo::*AUDIODISABILITIES*)
        ((= const 13) 'j2735_msgs::RestrictionAppliesTo::*OTHERUNKNOWNDISABILITIES*)
        (t nil)))

(defclass j2735_msgs::RestrictionAppliesTo
  :super ros::object
  :slots (_restriction_applies_to ))

(defmethod j2735_msgs::RestrictionAppliesTo
  (:init
   (&key
    ((:restriction_applies_to __restriction_applies_to) 0)
    )
   (send-super :init)
   (setq _restriction_applies_to (round __restriction_applies_to))
   self)
  (:restriction_applies_to
   (&optional __restriction_applies_to)
   (if __restriction_applies_to (setq _restriction_applies_to __restriction_applies_to)) _restriction_applies_to)
  (:serialization-length
   ()
   (+
    ;; uint8 _restriction_applies_to
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _restriction_applies_to
       (write-byte _restriction_applies_to s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _restriction_applies_to
     (setq _restriction_applies_to (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::RestrictionAppliesTo :md5sum-) "f780d757b384f158859481ce11f881e5")
(setf (get j2735_msgs::RestrictionAppliesTo :datatype-) "j2735_msgs/RestrictionAppliesTo")
(setf (get j2735_msgs::RestrictionAppliesTo :definition-)
      "#
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



(provide :j2735_msgs/RestrictionAppliesTo "f780d757b384f158859481ce11f881e5")


