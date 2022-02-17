; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude BrakeSystemStatus.msg.html

(cl:defclass <BrakeSystemStatus> (roslisp-msg-protocol:ros-message)
  ((wheelBrakes
    :reader wheelBrakes
    :initarg :wheelBrakes
    :type j2735_msgs-msg:BrakeAppliedStatus
    :initform (cl:make-instance 'j2735_msgs-msg:BrakeAppliedStatus))
   (traction
    :reader traction
    :initarg :traction
    :type j2735_msgs-msg:TractionControlStatus
    :initform (cl:make-instance 'j2735_msgs-msg:TractionControlStatus))
   (abs
    :reader abs
    :initarg :abs
    :type j2735_msgs-msg:AntiLockBrakeStatus
    :initform (cl:make-instance 'j2735_msgs-msg:AntiLockBrakeStatus))
   (scs
    :reader scs
    :initarg :scs
    :type j2735_msgs-msg:StabilityControlStatus
    :initform (cl:make-instance 'j2735_msgs-msg:StabilityControlStatus))
   (brakeBoost
    :reader brakeBoost
    :initarg :brakeBoost
    :type j2735_msgs-msg:BrakeBoostApplied
    :initform (cl:make-instance 'j2735_msgs-msg:BrakeBoostApplied))
   (auxBrakes
    :reader auxBrakes
    :initarg :auxBrakes
    :type j2735_msgs-msg:AuxiliaryBrakeStatus
    :initform (cl:make-instance 'j2735_msgs-msg:AuxiliaryBrakeStatus)))
)

(cl:defclass BrakeSystemStatus (<BrakeSystemStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeSystemStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeSystemStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<BrakeSystemStatus> is deprecated: use j2735_msgs-msg:BrakeSystemStatus instead.")))

(cl:ensure-generic-function 'wheelBrakes-val :lambda-list '(m))
(cl:defmethod wheelBrakes-val ((m <BrakeSystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:wheelBrakes-val is deprecated.  Use j2735_msgs-msg:wheelBrakes instead.")
  (wheelBrakes m))

(cl:ensure-generic-function 'traction-val :lambda-list '(m))
(cl:defmethod traction-val ((m <BrakeSystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:traction-val is deprecated.  Use j2735_msgs-msg:traction instead.")
  (traction m))

(cl:ensure-generic-function 'abs-val :lambda-list '(m))
(cl:defmethod abs-val ((m <BrakeSystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:abs-val is deprecated.  Use j2735_msgs-msg:abs instead.")
  (abs m))

(cl:ensure-generic-function 'scs-val :lambda-list '(m))
(cl:defmethod scs-val ((m <BrakeSystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:scs-val is deprecated.  Use j2735_msgs-msg:scs instead.")
  (scs m))

(cl:ensure-generic-function 'brakeBoost-val :lambda-list '(m))
(cl:defmethod brakeBoost-val ((m <BrakeSystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:brakeBoost-val is deprecated.  Use j2735_msgs-msg:brakeBoost instead.")
  (brakeBoost m))

(cl:ensure-generic-function 'auxBrakes-val :lambda-list '(m))
(cl:defmethod auxBrakes-val ((m <BrakeSystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:auxBrakes-val is deprecated.  Use j2735_msgs-msg:auxBrakes instead.")
  (auxBrakes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeSystemStatus>) ostream)
  "Serializes a message object of type '<BrakeSystemStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheelBrakes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brakeBoost) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auxBrakes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeSystemStatus>) istream)
  "Deserializes a message object of type '<BrakeSystemStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheelBrakes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brakeBoost) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auxBrakes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeSystemStatus>)))
  "Returns string type for a message object of type '<BrakeSystemStatus>"
  "j2735_msgs/BrakeSystemStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeSystemStatus)))
  "Returns string type for a message object of type 'BrakeSystemStatus"
  "j2735_msgs/BrakeSystemStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeSystemStatus>)))
  "Returns md5sum for a message object of type '<BrakeSystemStatus>"
  "29e024d3832cf8923126d15f9168e8dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeSystemStatus)))
  "Returns md5sum for a message object of type 'BrakeSystemStatus"
  "29e024d3832cf8923126d15f9168e8dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeSystemStatus>)))
  "Returns full string definition for message of type '<BrakeSystemStatus>"
  (cl:format cl:nil "#~%# BrakeSystemStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Conveys a variety of information about the current brake and system control activity of the vehicle.~%~%#BrakeSystemStatus ::= SEQUENCE { ~%#   wheelBrakes        BrakeAppliedStatus,~%#   traction           TractionControlStatus,~%#   abs                AntiLockBrakeStatus, ~%#   scs                StabilityControlStatus,~%#   brakeBoost         BrakeBoostApplied, ~%#   auxBrakes          AuxiliaryBrakeStatus~%#   }~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%j2735_msgs/BrakeAppliedStatus wheelBrakes~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%j2735_msgs/TractionControlStatus traction~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%j2735_msgs/AntiLockBrakeStatus abs~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%j2735_msgs/StabilityControlStatus scs~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%j2735_msgs/BrakeBoostApplied brakeBoost~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%j2735_msgs/AuxiliaryBrakeStatus auxBrakes~%================================================================================~%MSG: j2735_msgs/BrakeAppliedStatus~%#~%# BrakeAppliedStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# ~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%~%uint8  brake_applied_status~%~%uint8 UNAVAILABLE=0~%uint8 LEFT_FRONT=1~%uint8 LEFT_REAR=2~%uint8 RIGHT_FRONT=3~%uint8 RIGHT_REAR=4~%~%~%================================================================================~%MSG: j2735_msgs/TractionControlStatus~%#~%# TractionControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%~%uint8  traction_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%~%================================================================================~%MSG: j2735_msgs/AntiLockBrakeStatus~%#~%# AntiLockBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%~%uint8  anti_lock_brake_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/StabilityControlStatus~%#~%# StabilityControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%~%uint8  stability_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/BrakeBoostApplied~%#~%# BrakeBoostApplied.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%~%uint8  brake_boost_applied~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%~%================================================================================~%MSG: j2735_msgs/AuxiliaryBrakeStatus~%#~%# AuxiliaryBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%uint8  auxiliary_brake_status~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  RESERVED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeSystemStatus)))
  "Returns full string definition for message of type 'BrakeSystemStatus"
  (cl:format cl:nil "#~%# BrakeSystemStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Conveys a variety of information about the current brake and system control activity of the vehicle.~%~%#BrakeSystemStatus ::= SEQUENCE { ~%#   wheelBrakes        BrakeAppliedStatus,~%#   traction           TractionControlStatus,~%#   abs                AntiLockBrakeStatus, ~%#   scs                StabilityControlStatus,~%#   brakeBoost         BrakeBoostApplied, ~%#   auxBrakes          AuxiliaryBrakeStatus~%#   }~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%j2735_msgs/BrakeAppliedStatus wheelBrakes~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%j2735_msgs/TractionControlStatus traction~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%j2735_msgs/AntiLockBrakeStatus abs~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%j2735_msgs/StabilityControlStatus scs~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%j2735_msgs/BrakeBoostApplied brakeBoost~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%j2735_msgs/AuxiliaryBrakeStatus auxBrakes~%================================================================================~%MSG: j2735_msgs/BrakeAppliedStatus~%#~%# BrakeAppliedStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# ~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%~%uint8  brake_applied_status~%~%uint8 UNAVAILABLE=0~%uint8 LEFT_FRONT=1~%uint8 LEFT_REAR=2~%uint8 RIGHT_FRONT=3~%uint8 RIGHT_REAR=4~%~%~%================================================================================~%MSG: j2735_msgs/TractionControlStatus~%#~%# TractionControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%~%uint8  traction_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%~%================================================================================~%MSG: j2735_msgs/AntiLockBrakeStatus~%#~%# AntiLockBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%~%uint8  anti_lock_brake_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/StabilityControlStatus~%#~%# StabilityControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%~%uint8  stability_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/BrakeBoostApplied~%#~%# BrakeBoostApplied.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%~%uint8  brake_boost_applied~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%~%================================================================================~%MSG: j2735_msgs/AuxiliaryBrakeStatus~%#~%# AuxiliaryBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%uint8  auxiliary_brake_status~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  RESERVED=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeSystemStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheelBrakes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brakeBoost))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auxBrakes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeSystemStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeSystemStatus
    (cl:cons ':wheelBrakes (wheelBrakes msg))
    (cl:cons ':traction (traction msg))
    (cl:cons ':abs (abs msg))
    (cl:cons ':scs (scs msg))
    (cl:cons ':brakeBoost (brakeBoost msg))
    (cl:cons ':auxBrakes (auxBrakes msg))
))
