;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RegulatorySpeedLimit)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RegulatorySpeedLimit (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::REGULATORYSPEEDLIMIT")
  (make-package "J2735_MSGS::REGULATORYSPEEDLIMIT"))

(in-package "ROS")
;;//! \htmlinclude RegulatorySpeedLimit.msg.html


(defclass j2735_msgs::RegulatorySpeedLimit
  :super ros::object
  :slots (_type _speed ))

(defmethod j2735_msgs::RegulatorySpeedLimit
  (:init
   (&key
    ((:type __type) (instance j2735_msgs::SpeedLimitType :init))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _type __type)
   (setq _speed (float __speed))
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/SpeedLimitType _type
    (send _type :serialization-length)
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/SpeedLimitType _type
       (send _type :serialize s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/SpeedLimitType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get j2735_msgs::RegulatorySpeedLimit :md5sum-) "cef067aea5329792cd32d5c233033d98")
(setf (get j2735_msgs::RegulatorySpeedLimit :datatype-) "j2735_msgs/RegulatorySpeedLimit")
(setf (get j2735_msgs::RegulatorySpeedLimit :definition-)
      "#
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



(provide :j2735_msgs/RegulatorySpeedLimit "cef067aea5329792cd32d5c233033d98")


