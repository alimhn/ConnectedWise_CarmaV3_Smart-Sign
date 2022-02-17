;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::AllowedManeuvers)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'AllowedManeuvers (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ALLOWEDMANEUVERS")
  (make-package "J2735_MSGS::ALLOWEDMANEUVERS"))

(in-package "ROS")
;;//! \htmlinclude AllowedManeuvers.msg.html


(intern "*STRAIGHT*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*STRAIGHT* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*STRAIGHT* 1)
(intern "*LEFT_TURN*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*LEFT_TURN* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*LEFT_TURN* 2)
(intern "*RIGHT_TURN*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*RIGHT_TURN* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*RIGHT_TURN* 4)
(intern "*U_TURN*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*U_TURN* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*U_TURN* 8)
(intern "*LEFT_TURN_ON_RED*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*LEFT_TURN_ON_RED* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*LEFT_TURN_ON_RED* 16)
(intern "*RIGHT_TURN_ON_RED*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*RIGHT_TURN_ON_RED* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*RIGHT_TURN_ON_RED* 32)
(intern "*LANE_CHANGE*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*LANE_CHANGE* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*LANE_CHANGE* 64)
(intern "*NO_STOPPING_ALLOWED*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*NO_STOPPING_ALLOWED* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*NO_STOPPING_ALLOWED* 128)
(intern "*ALWAYS_YIELD*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*ALWAYS_YIELD* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*ALWAYS_YIELD* 256)
(intern "*GO_WITH_HALT*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*GO_WITH_HALT* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*GO_WITH_HALT* 512)
(intern "*CAUTION*" (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(shadow '*CAUTION* (find-package "J2735_MSGS::ALLOWEDMANEUVERS"))
(defconstant j2735_msgs::AllowedManeuvers::*CAUTION* 1024)

(defun j2735_msgs::AllowedManeuvers-to-symbol (const)
  (cond
        ((= const 1) 'j2735_msgs::AllowedManeuvers::*STRAIGHT*)
        ((= const 2) 'j2735_msgs::AllowedManeuvers::*LEFT_TURN*)
        ((= const 4) 'j2735_msgs::AllowedManeuvers::*RIGHT_TURN*)
        ((= const 8) 'j2735_msgs::AllowedManeuvers::*U_TURN*)
        ((= const 16) 'j2735_msgs::AllowedManeuvers::*LEFT_TURN_ON_RED*)
        ((= const 32) 'j2735_msgs::AllowedManeuvers::*RIGHT_TURN_ON_RED*)
        ((= const 64) 'j2735_msgs::AllowedManeuvers::*LANE_CHANGE*)
        ((= const 128) 'j2735_msgs::AllowedManeuvers::*NO_STOPPING_ALLOWED*)
        ((= const 256) 'j2735_msgs::AllowedManeuvers::*ALWAYS_YIELD*)
        ((= const 512) 'j2735_msgs::AllowedManeuvers::*GO_WITH_HALT*)
        ((= const 1024) 'j2735_msgs::AllowedManeuvers::*CAUTION*)
        (t nil)))

(defclass j2735_msgs::AllowedManeuvers
  :super ros::object
  :slots (_allowed_maneuvers ))

(defmethod j2735_msgs::AllowedManeuvers
  (:init
   (&key
    ((:allowed_maneuvers __allowed_maneuvers) 0)
    )
   (send-super :init)
   (setq _allowed_maneuvers (round __allowed_maneuvers))
   self)
  (:allowed_maneuvers
   (&optional __allowed_maneuvers)
   (if __allowed_maneuvers (setq _allowed_maneuvers __allowed_maneuvers)) _allowed_maneuvers)
  (:serialization-length
   ()
   (+
    ;; uint16 _allowed_maneuvers
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _allowed_maneuvers
       (write-word _allowed_maneuvers s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _allowed_maneuvers
     (setq _allowed_maneuvers (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::AllowedManeuvers :md5sum-) "5f075ceebb35b879c36c787f46eabf5a")
(setf (get j2735_msgs::AllowedManeuvers :datatype-) "j2735_msgs/AllowedManeuvers")
(setf (get j2735_msgs::AllowedManeuvers :definition-)
      "#
# AllowedManeuvers.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# AllowedManeuvers ::= BIT STRING {
# -- With bits as defined:
# -- Allowed maneuvers at path end (stop line)
# -- All maneuvers with bits not set are therefore prohibited !
# -- A value of zero shall be used for unknown, indicating no Maneuver
# maneuverStraightAllowed(0),
# -- a Straight movement is allowed in this lane
# maneuverLeftAllowed(1),
# -- a Left Turn movement is allowed in this lane
# maneuverRightAllowed(2),
# -- a Right Turn movement is allowed in this lane
# maneuverUTurnAllowed(3),
# -- a U turn movement is allowed in this lane
# maneuverLeftTurnOnRedAllowed (4),
# -- a Stop, and then proceed when safe movement
# -- is allowed in this lane
# maneuverRightTurnOnRedAllowed (5),
# -- a Stop, and then proceed when safe movement
# -- is allowed in this lane
# maneuverLaneChangeAllowed(6),
# -- a movement which changes to an outer lane
# -- on the egress side is allowed in this lane
# -- (example: left into either outbound lane)
# maneuverNoStoppingAllowed(7),
# -- the vehicle should not stop at the stop line
# -- (example: a flashing green arrow)
# yieldAllwaysRequired(8),
# -- the allowed movements above are not protected
# -- (example: an permanent yellow condition)
# goWithHalt(9),
# -- after making a full stop, may proceed
# caution(10),
# -- proceed past stop line with caution
# reserved1(11)
# -- used to align to 12 Bit Field
# } (SIZE(12))

uint16 allowed_maneuvers

# Bit flags
uint16 STRAIGHT=1
uint16 LEFT_TURN=2
uint16 RIGHT_TURN=4
uint16 U_TURN=8
uint16 LEFT_TURN_ON_RED=16
uint16 RIGHT_TURN_ON_RED=32
uint16 LANE_CHANGE=64
uint16 NO_STOPPING_ALLOWED=128
uint16 ALWAYS_YIELD=256
uint16 GO_WITH_HALT=512
uint16 CAUTION=1024

")



(provide :j2735_msgs/AllowedManeuvers "5f075ceebb35b879c36c787f46eabf5a")


