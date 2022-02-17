;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneDataAttribute)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneDataAttribute (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEDATAATTRIBUTE")
  (make-package "J2735_MSGS::LANEDATAATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude LaneDataAttribute.msg.html


(intern "*PATH_END_POINT_ANGLE*" (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(shadow '*PATH_END_POINT_ANGLE* (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(defconstant j2735_msgs::LaneDataAttribute::*PATH_END_POINT_ANGLE* 0)
(intern "*LANE_CROWN_POINT_CENTER*" (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(shadow '*LANE_CROWN_POINT_CENTER* (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(defconstant j2735_msgs::LaneDataAttribute::*LANE_CROWN_POINT_CENTER* 1)
(intern "*LANE_CROWN_POINT_LEFT*" (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(shadow '*LANE_CROWN_POINT_LEFT* (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(defconstant j2735_msgs::LaneDataAttribute::*LANE_CROWN_POINT_LEFT* 2)
(intern "*LANE_CROWN_POINT_RIGHT*" (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(shadow '*LANE_CROWN_POINT_RIGHT* (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(defconstant j2735_msgs::LaneDataAttribute::*LANE_CROWN_POINT_RIGHT* 3)
(intern "*LANE_ANGLE*" (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(shadow '*LANE_ANGLE* (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(defconstant j2735_msgs::LaneDataAttribute::*LANE_ANGLE* 4)
(intern "*SPEED_LIMITS*" (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(shadow '*SPEED_LIMITS* (find-package "J2735_MSGS::LANEDATAATTRIBUTE"))
(defconstant j2735_msgs::LaneDataAttribute::*SPEED_LIMITS* 5)

(defun j2735_msgs::LaneDataAttribute-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::LaneDataAttribute::*PATH_END_POINT_ANGLE*)
        ((= const 1) 'j2735_msgs::LaneDataAttribute::*LANE_CROWN_POINT_CENTER*)
        ((= const 2) 'j2735_msgs::LaneDataAttribute::*LANE_CROWN_POINT_LEFT*)
        ((= const 3) 'j2735_msgs::LaneDataAttribute::*LANE_CROWN_POINT_RIGHT*)
        ((= const 4) 'j2735_msgs::LaneDataAttribute::*LANE_ANGLE*)
        ((= const 5) 'j2735_msgs::LaneDataAttribute::*SPEED_LIMITS*)
        (t nil)))

(defclass j2735_msgs::LaneDataAttribute
  :super ros::object
  :slots (_choice _path_end_point_angle _lane_crown_point_center _lane_crown_point_right _lane_crown_point_left _lane_angle _speed_limits ))

(defmethod j2735_msgs::LaneDataAttribute
  (:init
   (&key
    ((:choice __choice) 0)
    ((:path_end_point_angle __path_end_point_angle) 0)
    ((:lane_crown_point_center __lane_crown_point_center) 0)
    ((:lane_crown_point_right __lane_crown_point_right) 0)
    ((:lane_crown_point_left __lane_crown_point_left) 0)
    ((:lane_angle __lane_angle) 0)
    ((:speed_limits __speed_limits) (instance j2735_msgs::SpeedLimitList :init))
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _path_end_point_angle (round __path_end_point_angle))
   (setq _lane_crown_point_center (round __lane_crown_point_center))
   (setq _lane_crown_point_right (round __lane_crown_point_right))
   (setq _lane_crown_point_left (round __lane_crown_point_left))
   (setq _lane_angle (round __lane_angle))
   (setq _speed_limits __speed_limits)
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:path_end_point_angle
   (&optional __path_end_point_angle)
   (if __path_end_point_angle (setq _path_end_point_angle __path_end_point_angle)) _path_end_point_angle)
  (:lane_crown_point_center
   (&optional __lane_crown_point_center)
   (if __lane_crown_point_center (setq _lane_crown_point_center __lane_crown_point_center)) _lane_crown_point_center)
  (:lane_crown_point_right
   (&optional __lane_crown_point_right)
   (if __lane_crown_point_right (setq _lane_crown_point_right __lane_crown_point_right)) _lane_crown_point_right)
  (:lane_crown_point_left
   (&optional __lane_crown_point_left)
   (if __lane_crown_point_left (setq _lane_crown_point_left __lane_crown_point_left)) _lane_crown_point_left)
  (:lane_angle
   (&optional __lane_angle)
   (if __lane_angle (setq _lane_angle __lane_angle)) _lane_angle)
  (:speed_limits
   (&rest __speed_limits)
   (if (keywordp (car __speed_limits))
       (send* _speed_limits __speed_limits)
     (progn
       (if __speed_limits (setq _speed_limits (car __speed_limits)))
       _speed_limits)))
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; int16 _path_end_point_angle
    2
    ;; int8 _lane_crown_point_center
    1
    ;; int8 _lane_crown_point_right
    1
    ;; int8 _lane_crown_point_left
    1
    ;; int16 _lane_angle
    2
    ;; j2735_msgs/SpeedLimitList _speed_limits
    (send _speed_limits :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; int16 _path_end_point_angle
       (write-word _path_end_point_angle s)
     ;; int8 _lane_crown_point_center
       (write-byte _lane_crown_point_center s)
     ;; int8 _lane_crown_point_right
       (write-byte _lane_crown_point_right s)
     ;; int8 _lane_crown_point_left
       (write-byte _lane_crown_point_left s)
     ;; int16 _lane_angle
       (write-word _lane_angle s)
     ;; j2735_msgs/SpeedLimitList _speed_limits
       (send _speed_limits :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _path_end_point_angle
     (setq _path_end_point_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _lane_crown_point_center
     (setq _lane_crown_point_center (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lane_crown_point_center 127) (setq _lane_crown_point_center (- _lane_crown_point_center 256)))
   ;; int8 _lane_crown_point_right
     (setq _lane_crown_point_right (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lane_crown_point_right 127) (setq _lane_crown_point_right (- _lane_crown_point_right 256)))
   ;; int8 _lane_crown_point_left
     (setq _lane_crown_point_left (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lane_crown_point_left 127) (setq _lane_crown_point_left (- _lane_crown_point_left 256)))
   ;; int16 _lane_angle
     (setq _lane_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; j2735_msgs/SpeedLimitList _speed_limits
     (send _speed_limits :deserialize buf ptr-) (incf ptr- (send _speed_limits :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::LaneDataAttribute :md5sum-) "60767373006c4dcaecb2eed2a25e812b")
(setf (get j2735_msgs::LaneDataAttribute :datatype-) "j2735_msgs/LaneDataAttribute")
(setf (get j2735_msgs::LaneDataAttribute :definition-)
      "

# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a
# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and
# which is defined elsewhere in this standard.


# LaneDataAttribute ::= CHOICE {
# -- Segment attribute types and the data needed for each
# pathEndPointAngle DeltaAngle,
# -- adjusts final point/width slant
# -- of the lane to align with the stop line
# laneCrownPointCenter RoadwayCrownAngle,
# -- sets the canter of the road bed
# -- from centerline point
# laneCrownPointLeft RoadwayCrownAngle,
# -- sets the canter of the road bed
# -- from left edge
# laneCrownPointRight RoadwayCrownAngle,
# -- sets the canter of the road bed
# -- from right edge
# laneAngle MergeDivergeNodeAngle,
# -- the angle or direction of another lane
# -- this is required to support Japan style
# -- when a merge point angle is required
# speedLimits SpeedLimitList,
# -- Reference regulatory speed limits
# -- used by all segments
# -- Add others as needed, in regional space
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},
# ...
# }

uint8 choice
uint8 PATH_END_POINT_ANGLE=0
uint8 LANE_CROWN_POINT_CENTER=1
uint8 LANE_CROWN_POINT_LEFT=2
uint8 LANE_CROWN_POINT_RIGHT=3
uint8 LANE_ANGLE=4
uint8 SPEED_LIMITS=5

# DeltaAngle ::= INTEGER (-150..150)
# -- With an angle range from
# -- negative 150 to positive 150
# -- in one degree steps where zero is directly
# -- along the axis or the lane center line as defined by the
# -- two closest points
#
# The DeltaAngle data element provides the final angle used in the last point of the lane path.
# Used to \"cant\" the stop line of the lane.

int16 path_end_point_angle

# RoadwayCrownAngle ::= INTEGER (-128..127)
# -- In LSB units of 0.3 degrees of angle
# -- over a range of -38.1 to + 38.1 degrees
# -- The value -128 shall be used for unknown
# -- The value zero shall be used for angles
# -- which are between -0.15 and +0.15
#
# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to
# the local horizontal axis and is measured at the indicated part of the lane.

int8 lane_crown_point_center
int8 lane_crown_point_right
int8 lane_crown_point_left

# MergeDivergeNodeAngle ::= INTEGER (-180..180)
# -- In units of 1.5 degrees from north
# -- the value -180 shall be used to represent
# -- data is not available or unknown
int16 lane_angle

# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit
j2735_msgs/SpeedLimitList speed_limits

# regional #TODO: RegionalExtensions are not yet implemented in asn1c

================================================================================
MSG: j2735_msgs/SpeedLimitList
#
# SpeedLimitList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit

#A list of RegulatorySpeedLimit
j2735_msgs/RegulatorySpeedLimit[] speed_limits
================================================================================
MSG: j2735_msgs/RegulatorySpeedLimit
#
# RegulatorySpeedLimit.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# Used to convey a regulatory speed about a lane, lanes, or roadway segment.

# RegulatorySpeedLimit ::= SEQUENCE {
# type SpeedLimitType,
# -- The type of regulatory speed which follows
j2735_msgs/SpeedLimitType type

# speed Velocity
# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s
#-- The value 8191 indicates that velocity is unavailable
float64 speed
================================================================================
MSG: j2735_msgs/SpeedLimitType
# SpeedLimitType.msg
#
# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.
#
# SpeedLimitType ::= ENUMERATED {
#
# unknown, -- Speed limit type not available
# maxSpeedInSchoolZone, -- Only sent when the limit is active
# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time
# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present
#
# vehicleMinSpeed,
# vehicleMaxSpeed, -- Regulatory speed limit for general traffic
# vehicleNightMaxSpeed,
#
# truckMinSpeed,
# truckMaxSpeed,
# truckNightMaxSpeed,
#
# vehiclesWithTrailersMinSpeed,
# vehiclesWithTrailersMaxSpeed,
# vehiclesWithTrailersNightMaxSpeed,
# ...
# }

uint8 speed_limit_type

uint8 UNKNOWN=0
uint8 MAXSPEEDINSCHOOLZONE=1
uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2
uint8 MAXSPEEDINCONSTRUCTIONZONE=3
uint8 VEHICLEMINSPEED=4
uint8 VEHICLEMAXSPEED=5
uint8 VEHICLENIGHTMAXSPEED=6
uint8 TRUCKMINSPEED=7
uint8 TRUCKMAXSPEED=8
uint8 TRUCKNIGHTMAXSPEED=9
uint8 VEHICLESWITHTRAILERSMINSPEED=10
uint8 VEHICLESWITHTRAILERSMAXSPEED=11
uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12
")



(provide :j2735_msgs/LaneDataAttribute "60767373006c4dcaecb2eed2a25e812b")


