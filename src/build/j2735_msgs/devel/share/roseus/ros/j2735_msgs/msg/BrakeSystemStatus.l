;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::BrakeSystemStatus)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'BrakeSystemStatus (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::BRAKESYSTEMSTATUS")
  (make-package "J2735_MSGS::BRAKESYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BrakeSystemStatus.msg.html


(defclass j2735_msgs::BrakeSystemStatus
  :super ros::object
  :slots (_wheelBrakes _traction _abs _scs _brakeBoost _auxBrakes ))

(defmethod j2735_msgs::BrakeSystemStatus
  (:init
   (&key
    ((:wheelBrakes __wheelBrakes) (instance j2735_msgs::BrakeAppliedStatus :init))
    ((:traction __traction) (instance j2735_msgs::TractionControlStatus :init))
    ((:abs __abs) (instance j2735_msgs::AntiLockBrakeStatus :init))
    ((:scs __scs) (instance j2735_msgs::StabilityControlStatus :init))
    ((:brakeBoost __brakeBoost) (instance j2735_msgs::BrakeBoostApplied :init))
    ((:auxBrakes __auxBrakes) (instance j2735_msgs::AuxiliaryBrakeStatus :init))
    )
   (send-super :init)
   (setq _wheelBrakes __wheelBrakes)
   (setq _traction __traction)
   (setq _abs __abs)
   (setq _scs __scs)
   (setq _brakeBoost __brakeBoost)
   (setq _auxBrakes __auxBrakes)
   self)
  (:wheelBrakes
   (&rest __wheelBrakes)
   (if (keywordp (car __wheelBrakes))
       (send* _wheelBrakes __wheelBrakes)
     (progn
       (if __wheelBrakes (setq _wheelBrakes (car __wheelBrakes)))
       _wheelBrakes)))
  (:traction
   (&rest __traction)
   (if (keywordp (car __traction))
       (send* _traction __traction)
     (progn
       (if __traction (setq _traction (car __traction)))
       _traction)))
  (:abs
   (&rest __abs)
   (if (keywordp (car __abs))
       (send* _abs __abs)
     (progn
       (if __abs (setq _abs (car __abs)))
       _abs)))
  (:scs
   (&rest __scs)
   (if (keywordp (car __scs))
       (send* _scs __scs)
     (progn
       (if __scs (setq _scs (car __scs)))
       _scs)))
  (:brakeBoost
   (&rest __brakeBoost)
   (if (keywordp (car __brakeBoost))
       (send* _brakeBoost __brakeBoost)
     (progn
       (if __brakeBoost (setq _brakeBoost (car __brakeBoost)))
       _brakeBoost)))
  (:auxBrakes
   (&rest __auxBrakes)
   (if (keywordp (car __auxBrakes))
       (send* _auxBrakes __auxBrakes)
     (progn
       (if __auxBrakes (setq _auxBrakes (car __auxBrakes)))
       _auxBrakes)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/BrakeAppliedStatus _wheelBrakes
    (send _wheelBrakes :serialization-length)
    ;; j2735_msgs/TractionControlStatus _traction
    (send _traction :serialization-length)
    ;; j2735_msgs/AntiLockBrakeStatus _abs
    (send _abs :serialization-length)
    ;; j2735_msgs/StabilityControlStatus _scs
    (send _scs :serialization-length)
    ;; j2735_msgs/BrakeBoostApplied _brakeBoost
    (send _brakeBoost :serialization-length)
    ;; j2735_msgs/AuxiliaryBrakeStatus _auxBrakes
    (send _auxBrakes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/BrakeAppliedStatus _wheelBrakes
       (send _wheelBrakes :serialize s)
     ;; j2735_msgs/TractionControlStatus _traction
       (send _traction :serialize s)
     ;; j2735_msgs/AntiLockBrakeStatus _abs
       (send _abs :serialize s)
     ;; j2735_msgs/StabilityControlStatus _scs
       (send _scs :serialize s)
     ;; j2735_msgs/BrakeBoostApplied _brakeBoost
       (send _brakeBoost :serialize s)
     ;; j2735_msgs/AuxiliaryBrakeStatus _auxBrakes
       (send _auxBrakes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/BrakeAppliedStatus _wheelBrakes
     (send _wheelBrakes :deserialize buf ptr-) (incf ptr- (send _wheelBrakes :serialization-length))
   ;; j2735_msgs/TractionControlStatus _traction
     (send _traction :deserialize buf ptr-) (incf ptr- (send _traction :serialization-length))
   ;; j2735_msgs/AntiLockBrakeStatus _abs
     (send _abs :deserialize buf ptr-) (incf ptr- (send _abs :serialization-length))
   ;; j2735_msgs/StabilityControlStatus _scs
     (send _scs :deserialize buf ptr-) (incf ptr- (send _scs :serialization-length))
   ;; j2735_msgs/BrakeBoostApplied _brakeBoost
     (send _brakeBoost :deserialize buf ptr-) (incf ptr- (send _brakeBoost :serialization-length))
   ;; j2735_msgs/AuxiliaryBrakeStatus _auxBrakes
     (send _auxBrakes :deserialize buf ptr-) (incf ptr- (send _auxBrakes :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::BrakeSystemStatus :md5sum-) "29e024d3832cf8923126d15f9168e8dd")
(setf (get j2735_msgs::BrakeSystemStatus :datatype-) "j2735_msgs/BrakeSystemStatus")
(setf (get j2735_msgs::BrakeSystemStatus :definition-)
      "#
# BrakeSystemStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Conveys a variety of information about the current brake and system control activity of the vehicle.

#BrakeSystemStatus ::= SEQUENCE { 
#   wheelBrakes        BrakeAppliedStatus,
#   traction           TractionControlStatus,
#   abs                AntiLockBrakeStatus, 
#   scs                StabilityControlStatus,
#   brakeBoost         BrakeBoostApplied, 
#   auxBrakes          AuxiliaryBrakeStatus
#   }

#BrakeAppliedStatus ::= BIT STRING {
#   unavailable (0),  -- When set, the brake applied status is unavailable
#   leftFront   (1),  -- Left Front Active
#   leftRear    (2),  -- Left Rear Active
#   rightFront  (3),  -- Right Front Active
#   rightRear   (4)   -- Right Rear Active
#   } (SIZE (5))
#   
j2735_msgs/BrakeAppliedStatus wheelBrakes

#TractionControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with traction control 
#                    --       or traction control status is unavailable
#   off         (1), -- B'01  traction control is Off
#   on          (2), -- B'10  traction control is On (but not Engaged)
#   engaged     (3)  -- B'11  traction control is Engaged
#   }
#
j2735_msgs/TractionControlStatus traction

#AntiLockBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
#                    --       or ABS Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's ABS are Off
#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
#   }
#
j2735_msgs/AntiLockBrakeStatus abs

#StabilityControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with SC
#                    --       or SC status is unavailable
#   off         (1), -- B'01  Off
#   on          (2), -- B'10  On or active (but not engaged)
#   engaged     (3)  -- B'11  stability control is Engaged 
#   }
#   
j2735_msgs/StabilityControlStatus scs

#BrakeBoostApplied ::= ENUMERATED {
#   unavailable   (0), -- Vehicle not equipped with brake boost
#                      -- or brake boost data is unavailable
#   off           (1), -- Vehicle's brake boost is off
#   on            (2)  -- Vehicle's brake boost is on (applied)
#   }
#   
j2735_msgs/BrakeBoostApplied brakeBoost

#AuxiliaryBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
#                    --       or Aux Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's Aux Brakes are Off
#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
#   reserved    (3)  -- B'11 
#   }   

j2735_msgs/AuxiliaryBrakeStatus auxBrakes
================================================================================
MSG: j2735_msgs/BrakeAppliedStatus
#
# BrakeAppliedStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# 

#BrakeAppliedStatus ::= BIT STRING {
#   unavailable (0),  -- When set, the brake applied status is unavailable
#   leftFront   (1),  -- Left Front Active
#   leftRear    (2),  -- Left Rear Active
#   rightFront  (3),  -- Right Front Active
#   rightRear   (4)   -- Right Rear Active
#   } (SIZE (5))
#   

uint8  brake_applied_status

uint8 UNAVAILABLE=0
uint8 LEFT_FRONT=1
uint8 LEFT_REAR=2
uint8 RIGHT_FRONT=3
uint8 RIGHT_REAR=4


================================================================================
MSG: j2735_msgs/TractionControlStatus
#
# TractionControlStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#TractionControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with traction control 
#                    --       or traction control status is unavailable
#   off         (1), -- B'01  traction control is Off
#   on          (2), -- B'10  traction control is On (but not Engaged)
#   engaged     (3)  -- B'11  traction control is Engaged
#   }
#

uint8  traction_control_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3



================================================================================
MSG: j2735_msgs/AntiLockBrakeStatus
#
# AntiLockBrakeStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#AntiLockBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
#                    --       or ABS Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's ABS are Off
#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
#   }
#

uint8  anti_lock_brake_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3

================================================================================
MSG: j2735_msgs/StabilityControlStatus
#
# StabilityControlStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#StabilityControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with SC
#                    --       or SC status is unavailable
#   off         (1), -- B'01  Off
#   on          (2), -- B'10  On or active (but not engaged)
#   engaged     (3)  -- B'11  stability control is Engaged 
#   }
#   

uint8  stability_control_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3

================================================================================
MSG: j2735_msgs/BrakeBoostApplied
#
# BrakeBoostApplied.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#BrakeBoostApplied ::= ENUMERATED {
#   unavailable   (0), -- Vehicle not equipped with brake boost
#                      -- or brake boost data is unavailable
#   off           (1), -- Vehicle's brake boost is off
#   on            (2)  -- Vehicle's brake boost is on (applied)
#   }
#   

uint8  brake_boost_applied

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2

================================================================================
MSG: j2735_msgs/AuxiliaryBrakeStatus
#
# AuxiliaryBrakeStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#AuxiliaryBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
#                    --       or Aux Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's Aux Brakes are Off
#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
#   reserved    (3)  -- B'11 
#   }   

uint8  auxiliary_brake_status

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  RESERVED=3

")



(provide :j2735_msgs/BrakeSystemStatus "29e024d3832cf8923126d15f9168e8dd")


