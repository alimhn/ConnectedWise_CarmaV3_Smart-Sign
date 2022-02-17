;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlVehClass)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlVehClass (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS")
  (make-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlVehClass.msg.html


(intern "*ANY*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*ANY* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*ANY* 0)
(intern "*PEDESTRIAN*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*PEDESTRIAN* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*PEDESTRIAN* 1)
(intern "*BICYCLE*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*BICYCLE* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*BICYCLE* 2)
(intern "*MICROMOBILE*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*MICROMOBILE* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*MICROMOBILE* 3)
(intern "*MOTORCYCLE*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*MOTORCYCLE* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*MOTORCYCLE* 4)
(intern "*PASSENGER_CAR*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*PASSENGER_CAR* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*PASSENGER_CAR* 5)
(intern "*LIGHT_TRUCK_VAN*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*LIGHT_TRUCK_VAN* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*LIGHT_TRUCK_VAN* 6)
(intern "*BUS*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*BUS* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*BUS* 7)
(intern "*TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK* 8)
(intern "*THREE_AXLE_SINGLE_UNIT_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*THREE_AXLE_SINGLE_UNIT_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*THREE_AXLE_SINGLE_UNIT_TRUCK* 9)
(intern "*FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK* 10)
(intern "*FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK* 11)
(intern "*FIVE_AXLE_SINGLE_TRAILER_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*FIVE_AXLE_SINGLE_TRAILER_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*FIVE_AXLE_SINGLE_TRAILER_TRUCK* 12)
(intern "*SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK* 13)
(intern "*FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK* 14)
(intern "*SIX_AXLE_MULTI_TRAILER_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*SIX_AXLE_MULTI_TRAILER_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*SIX_AXLE_MULTI_TRAILER_TRUCK* 15)
(intern "*SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK* 16)
(intern "*RAIL*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*RAIL* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*RAIL* 17)
(intern "*UNCLASSIFIED*" (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(shadow '*UNCLASSIFIED* (find-package "J2735_MSGS::TRAFFICCONTROLVEHCLASS"))
(defconstant j2735_msgs::TrafficControlVehClass::*UNCLASSIFIED* 18)

(defun j2735_msgs::TrafficControlVehClass-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::TrafficControlVehClass::*ANY*)
        ((= const 1) 'j2735_msgs::TrafficControlVehClass::*PEDESTRIAN*)
        ((= const 2) 'j2735_msgs::TrafficControlVehClass::*BICYCLE*)
        ((= const 3) 'j2735_msgs::TrafficControlVehClass::*MICROMOBILE*)
        ((= const 4) 'j2735_msgs::TrafficControlVehClass::*MOTORCYCLE*)
        ((= const 5) 'j2735_msgs::TrafficControlVehClass::*PASSENGER_CAR*)
        ((= const 6) 'j2735_msgs::TrafficControlVehClass::*LIGHT_TRUCK_VAN*)
        ((= const 7) 'j2735_msgs::TrafficControlVehClass::*BUS*)
        ((= const 8) 'j2735_msgs::TrafficControlVehClass::*TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK*)
        ((= const 9) 'j2735_msgs::TrafficControlVehClass::*THREE_AXLE_SINGLE_UNIT_TRUCK*)
        ((= const 10) 'j2735_msgs::TrafficControlVehClass::*FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK*)
        ((= const 11) 'j2735_msgs::TrafficControlVehClass::*FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK*)
        ((= const 12) 'j2735_msgs::TrafficControlVehClass::*FIVE_AXLE_SINGLE_TRAILER_TRUCK*)
        ((= const 13) 'j2735_msgs::TrafficControlVehClass::*SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK*)
        ((= const 14) 'j2735_msgs::TrafficControlVehClass::*FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK*)
        ((= const 15) 'j2735_msgs::TrafficControlVehClass::*SIX_AXLE_MULTI_TRAILER_TRUCK*)
        ((= const 16) 'j2735_msgs::TrafficControlVehClass::*SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK*)
        ((= const 17) 'j2735_msgs::TrafficControlVehClass::*RAIL*)
        ((= const 18) 'j2735_msgs::TrafficControlVehClass::*UNCLASSIFIED*)
        (t nil)))

(defclass j2735_msgs::TrafficControlVehClass
  :super ros::object
  :slots (_vehicle_class ))

(defmethod j2735_msgs::TrafficControlVehClass
  (:init
   (&key
    ((:vehicle_class __vehicle_class) 0)
    )
   (send-super :init)
   (setq _vehicle_class (round __vehicle_class))
   self)
  (:vehicle_class
   (&optional __vehicle_class)
   (if __vehicle_class (setq _vehicle_class __vehicle_class)) _vehicle_class)
  (:serialization-length
   ()
   (+
    ;; uint8 _vehicle_class
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vehicle_class
       (write-byte _vehicle_class s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vehicle_class
     (setq _vehicle_class (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlVehClass :md5sum-) "89399be8dc36339b2dee535e6aa32c9a")
(setf (get j2735_msgs::TrafficControlVehClass :datatype-) "j2735_msgs/TrafficControlVehClass")
(setf (get j2735_msgs::TrafficControlVehClass :definition-)
      "#
# TrafficControlVehClass.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

# TrafficControlVehClass ::= ENUMERATED
# {
# 	any, 
# 	pedestrian,
# 	bicycle,
# 	micromobile,
# 	motorcycle,
# 	passenger-car,
# 	light-truck-van,
# 	bus,
# 	two-axle-six-tire-single-unit-truck,
# 	three-axle-single-unit-truck,
# 	four-or-more-axle-single-unit-truck,
# 	four-or-fewer-axle-single-trailer-truck,
# 	five-axle-single-trailer-truck,
# 	six-or-more-axle-single-trailer-truck,
# 	five-or-fewer-axle-multi-trailer-truck,
# 	six-axle-multi-trailer-truck,
# 	seven-or-more-axle-multi-trailer-truck,
# 	rail,
# 	unclassified, 
# 	...
# }

uint8 vehicle_class

# enumeration values for vehicle_class:

uint8 ANY = 0
uint8 PEDESTRIAN = 1
uint8 BICYCLE = 2
uint8 MICROMOBILE = 3
uint8 MOTORCYCLE = 4
uint8 PASSENGER_CAR = 5
uint8 LIGHT_TRUCK_VAN = 6
uint8 BUS = 7
uint8 TWO_AXLE_SIX_TIRE_SINGLE_UNIT_TRUCK = 8
uint8 THREE_AXLE_SINGLE_UNIT_TRUCK = 9
uint8 FOUR_OR_MORE_AXLE_SINGLE_UNIT_TRUCK = 10
uint8 FOUR_OR_FEWER_AXLE_SINGLE_TRAILER_TRUCK = 11
uint8 FIVE_AXLE_SINGLE_TRAILER_TRUCK = 12
uint8 SIX_OR_MORE_AXLE_SINGLE_TRAILER_TRUCK = 13
uint8 FIVE_OR_FEWER_AXLE_MULTI_TRAILER_TRUCK = 14
uint8 SIX_AXLE_MULTI_TRAILER_TRUCK = 15
uint8 SEVEN_OR_MORE_AXLE_MULTI_TRAILER_TRUCK = 16
uint8 RAIL = 17
uint8 UNCLASSIFIED = 18
")



(provide :j2735_msgs/TrafficControlVehClass "89399be8dc36339b2dee535e6aa32c9a")


