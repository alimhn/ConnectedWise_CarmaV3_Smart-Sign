;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::SpeedLimitType)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'SpeedLimitType (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::SPEEDLIMITTYPE")
  (make-package "J2735_MSGS::SPEEDLIMITTYPE"))

(in-package "ROS")
;;//! \htmlinclude SpeedLimitType.msg.html


(intern "*UNKNOWN*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*UNKNOWN* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*UNKNOWN* 0)
(intern "*MAXSPEEDINSCHOOLZONE*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*MAXSPEEDINSCHOOLZONE* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*MAXSPEEDINSCHOOLZONE* 1)
(intern "*MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT* 2)
(intern "*MAXSPEEDINCONSTRUCTIONZONE*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*MAXSPEEDINCONSTRUCTIONZONE* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*MAXSPEEDINCONSTRUCTIONZONE* 3)
(intern "*VEHICLEMINSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*VEHICLEMINSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*VEHICLEMINSPEED* 4)
(intern "*VEHICLEMAXSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*VEHICLEMAXSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*VEHICLEMAXSPEED* 5)
(intern "*VEHICLENIGHTMAXSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*VEHICLENIGHTMAXSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*VEHICLENIGHTMAXSPEED* 6)
(intern "*TRUCKMINSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*TRUCKMINSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*TRUCKMINSPEED* 7)
(intern "*TRUCKMAXSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*TRUCKMAXSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*TRUCKMAXSPEED* 8)
(intern "*TRUCKNIGHTMAXSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*TRUCKNIGHTMAXSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*TRUCKNIGHTMAXSPEED* 9)
(intern "*VEHICLESWITHTRAILERSMINSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*VEHICLESWITHTRAILERSMINSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*VEHICLESWITHTRAILERSMINSPEED* 10)
(intern "*VEHICLESWITHTRAILERSMAXSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*VEHICLESWITHTRAILERSMAXSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*VEHICLESWITHTRAILERSMAXSPEED* 11)
(intern "*VEHICLESWITHTRAILERSNIGHTMAXSPEED*" (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(shadow '*VEHICLESWITHTRAILERSNIGHTMAXSPEED* (find-package "J2735_MSGS::SPEEDLIMITTYPE"))
(defconstant j2735_msgs::SpeedLimitType::*VEHICLESWITHTRAILERSNIGHTMAXSPEED* 12)

(defun j2735_msgs::SpeedLimitType-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::SpeedLimitType::*UNKNOWN*)
        ((= const 1) 'j2735_msgs::SpeedLimitType::*MAXSPEEDINSCHOOLZONE*)
        ((= const 2) 'j2735_msgs::SpeedLimitType::*MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT*)
        ((= const 3) 'j2735_msgs::SpeedLimitType::*MAXSPEEDINCONSTRUCTIONZONE*)
        ((= const 4) 'j2735_msgs::SpeedLimitType::*VEHICLEMINSPEED*)
        ((= const 5) 'j2735_msgs::SpeedLimitType::*VEHICLEMAXSPEED*)
        ((= const 6) 'j2735_msgs::SpeedLimitType::*VEHICLENIGHTMAXSPEED*)
        ((= const 7) 'j2735_msgs::SpeedLimitType::*TRUCKMINSPEED*)
        ((= const 8) 'j2735_msgs::SpeedLimitType::*TRUCKMAXSPEED*)
        ((= const 9) 'j2735_msgs::SpeedLimitType::*TRUCKNIGHTMAXSPEED*)
        ((= const 10) 'j2735_msgs::SpeedLimitType::*VEHICLESWITHTRAILERSMINSPEED*)
        ((= const 11) 'j2735_msgs::SpeedLimitType::*VEHICLESWITHTRAILERSMAXSPEED*)
        ((= const 12) 'j2735_msgs::SpeedLimitType::*VEHICLESWITHTRAILERSNIGHTMAXSPEED*)
        (t nil)))

(defclass j2735_msgs::SpeedLimitType
  :super ros::object
  :slots (_speed_limit_type ))

(defmethod j2735_msgs::SpeedLimitType
  (:init
   (&key
    ((:speed_limit_type __speed_limit_type) 0)
    )
   (send-super :init)
   (setq _speed_limit_type (round __speed_limit_type))
   self)
  (:speed_limit_type
   (&optional __speed_limit_type)
   (if __speed_limit_type (setq _speed_limit_type __speed_limit_type)) _speed_limit_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _speed_limit_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _speed_limit_type
       (write-byte _speed_limit_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _speed_limit_type
     (setq _speed_limit_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::SpeedLimitType :md5sum-) "04fbf222f6540824b156a63c8174b9b8")
(setf (get j2735_msgs::SpeedLimitType :datatype-) "j2735_msgs/SpeedLimitType")
(setf (get j2735_msgs::SpeedLimitType :definition-)
      "# SpeedLimitType.msg
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



(provide :j2735_msgs/SpeedLimitType "04fbf222f6540824b156a63c8174b9b8")


