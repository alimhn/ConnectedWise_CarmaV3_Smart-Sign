;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::ConnectingLane)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'ConnectingLane (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::CONNECTINGLANE")
  (make-package "J2735_MSGS::CONNECTINGLANE"))

(in-package "ROS")
;;//! \htmlinclude ConnectingLane.msg.html


(intern "*LANE_UNAVAILABLE*" (find-package "J2735_MSGS::CONNECTINGLANE"))
(shadow '*LANE_UNAVAILABLE* (find-package "J2735_MSGS::CONNECTINGLANE"))
(defconstant j2735_msgs::ConnectingLane::*LANE_UNAVAILABLE* 0)

(defun j2735_msgs::ConnectingLane-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::ConnectingLane::*LANE_UNAVAILABLE*)
        (t nil)))

(defclass j2735_msgs::ConnectingLane
  :super ros::object
  :slots (_lane _maneuver _maneuver_exists ))

(defmethod j2735_msgs::ConnectingLane
  (:init
   (&key
    ((:lane __lane) 0)
    ((:maneuver __maneuver) (instance j2735_msgs::AllowedManeuvers :init))
    ((:maneuver_exists __maneuver_exists) nil)
    )
   (send-super :init)
   (setq _lane (round __lane))
   (setq _maneuver __maneuver)
   (setq _maneuver_exists __maneuver_exists)
   self)
  (:lane
   (&optional __lane)
   (if __lane (setq _lane __lane)) _lane)
  (:maneuver
   (&rest __maneuver)
   (if (keywordp (car __maneuver))
       (send* _maneuver __maneuver)
     (progn
       (if __maneuver (setq _maneuver (car __maneuver)))
       _maneuver)))
  (:maneuver_exists
   (&optional (__maneuver_exists :null))
   (if (not (eq __maneuver_exists :null)) (setq _maneuver_exists __maneuver_exists)) _maneuver_exists)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane
    2
    ;; j2735_msgs/AllowedManeuvers _maneuver
    (send _maneuver :serialization-length)
    ;; bool _maneuver_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane
       (write-word _lane s)
     ;; j2735_msgs/AllowedManeuvers _maneuver
       (send _maneuver :serialize s)
     ;; bool _maneuver_exists
       (if _maneuver_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane
     (setq _lane (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; j2735_msgs/AllowedManeuvers _maneuver
     (send _maneuver :deserialize buf ptr-) (incf ptr- (send _maneuver :serialization-length))
   ;; bool _maneuver_exists
     (setq _maneuver_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::ConnectingLane :md5sum-) "39012b597fc8bbc11af942fd310810ca")
(setf (get j2735_msgs::ConnectingLane :datatype-) "j2735_msgs/ConnectingLane")
(setf (get j2735_msgs::ConnectingLane :definition-)
      "#
# ConnectingLane.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# ConnectingLane ::= SEQUENCE {
# lane LaneID,
# -- Index of the connecting lane
# maneuver AllowedManeuvers OPTIONAL
# -- The Maneuver between
# -- the enclosing lane and this lane
# -- at the stop line to connect them
# }

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is
# -- not available or not known
# -- the value 255 is reserved for future use
uint16 lane
uint16 LANE_UNAVAILABLE=0

# -- the permitted maneuvers for this lane
# AllowedManeuvers ::= BIT STRING {
# -- With bits as defined:
# -- Allowed maneuvers at path end (stop line)
# -- *** All maneuvers with bits not set are therefore prohibited ! ***
# -- A value of zero shall be used for unknown, indicating no Maneuver
j2735_msgs/AllowedManeuvers maneuver
bool maneuver_exists



================================================================================
MSG: j2735_msgs/AllowedManeuvers
#
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



(provide :j2735_msgs/ConnectingLane "39012b597fc8bbc11af942fd310810ca")


