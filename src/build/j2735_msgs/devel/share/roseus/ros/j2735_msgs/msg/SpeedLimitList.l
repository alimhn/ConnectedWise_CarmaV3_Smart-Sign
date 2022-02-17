;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::SpeedLimitList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'SpeedLimitList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::SPEEDLIMITLIST")
  (make-package "J2735_MSGS::SPEEDLIMITLIST"))

(in-package "ROS")
;;//! \htmlinclude SpeedLimitList.msg.html


(defclass j2735_msgs::SpeedLimitList
  :super ros::object
  :slots (_speed_limits ))

(defmethod j2735_msgs::SpeedLimitList
  (:init
   (&key
    ((:speed_limits __speed_limits) ())
    )
   (send-super :init)
   (setq _speed_limits __speed_limits)
   self)
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
    ;; j2735_msgs/RegulatorySpeedLimit[] _speed_limits
    (apply #'+ (send-all _speed_limits :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/RegulatorySpeedLimit[] _speed_limits
     (write-long (length _speed_limits) s)
     (dolist (elem _speed_limits)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/RegulatorySpeedLimit[] _speed_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_limits (let (r) (dotimes (i n) (push (instance j2735_msgs::RegulatorySpeedLimit :init) r)) r))
     (dolist (elem- _speed_limits)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::SpeedLimitList :md5sum-) "aa3a8bdd3d4567c7dd66a46382a0f4b7")
(setf (get j2735_msgs::SpeedLimitList :datatype-) "j2735_msgs/SpeedLimitList")
(setf (get j2735_msgs::SpeedLimitList :definition-)
      "#
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



(provide :j2735_msgs/SpeedLimitList "aa3a8bdd3d4567c7dd66a46382a0f4b7")


