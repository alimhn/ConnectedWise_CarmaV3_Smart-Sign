;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::VehicleSize)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'VehicleSize (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::VEHICLESIZE")
  (make-package "J2735_MSGS::VEHICLESIZE"))

(in-package "ROS")
;;//! \htmlinclude VehicleSize.msg.html


(intern "*VEHICLE_WIDTH_UNAVAILABLE*" (find-package "J2735_MSGS::VEHICLESIZE"))
(shadow '*VEHICLE_WIDTH_UNAVAILABLE* (find-package "J2735_MSGS::VEHICLESIZE"))
(defconstant j2735_msgs::VehicleSize::*VEHICLE_WIDTH_UNAVAILABLE* 0)
(intern "*VEHICLE_WIDTH_MAX*" (find-package "J2735_MSGS::VEHICLESIZE"))
(shadow '*VEHICLE_WIDTH_MAX* (find-package "J2735_MSGS::VEHICLESIZE"))
(defconstant j2735_msgs::VehicleSize::*VEHICLE_WIDTH_MAX* 1023)
(intern "*VEHICLE_WIDTH_MIN*" (find-package "J2735_MSGS::VEHICLESIZE"))
(shadow '*VEHICLE_WIDTH_MIN* (find-package "J2735_MSGS::VEHICLESIZE"))
(defconstant j2735_msgs::VehicleSize::*VEHICLE_WIDTH_MIN* 1)
(intern "*VEHICLE_LENGTH_UNAVAILABLE*" (find-package "J2735_MSGS::VEHICLESIZE"))
(shadow '*VEHICLE_LENGTH_UNAVAILABLE* (find-package "J2735_MSGS::VEHICLESIZE"))
(defconstant j2735_msgs::VehicleSize::*VEHICLE_LENGTH_UNAVAILABLE* 0)
(intern "*VEHICLE_LENGTH_MAX*" (find-package "J2735_MSGS::VEHICLESIZE"))
(shadow '*VEHICLE_LENGTH_MAX* (find-package "J2735_MSGS::VEHICLESIZE"))
(defconstant j2735_msgs::VehicleSize::*VEHICLE_LENGTH_MAX* 4095)
(intern "*VEHICLE_LENGTH_MIN*" (find-package "J2735_MSGS::VEHICLESIZE"))
(shadow '*VEHICLE_LENGTH_MIN* (find-package "J2735_MSGS::VEHICLESIZE"))
(defconstant j2735_msgs::VehicleSize::*VEHICLE_LENGTH_MIN* 1)

(defun j2735_msgs::VehicleSize-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::VehicleSize::*VEHICLE_WIDTH_UNAVAILABLE*)
        ((= const 1023) 'j2735_msgs::VehicleSize::*VEHICLE_WIDTH_MAX*)
        ((= const 1) 'j2735_msgs::VehicleSize::*VEHICLE_WIDTH_MIN*)
        ((= const 0) 'j2735_msgs::VehicleSize::*VEHICLE_LENGTH_UNAVAILABLE*)
        ((= const 4095) 'j2735_msgs::VehicleSize::*VEHICLE_LENGTH_MAX*)
        ((= const 1) 'j2735_msgs::VehicleSize::*VEHICLE_LENGTH_MIN*)
        (t nil)))

(defclass j2735_msgs::VehicleSize
  :super ros::object
  :slots (_vehicle_width _vehicle_length ))

(defmethod j2735_msgs::VehicleSize
  (:init
   (&key
    ((:vehicle_width __vehicle_width) 0)
    ((:vehicle_length __vehicle_length) 0)
    )
   (send-super :init)
   (setq _vehicle_width (round __vehicle_width))
   (setq _vehicle_length (round __vehicle_length))
   self)
  (:vehicle_width
   (&optional __vehicle_width)
   (if __vehicle_width (setq _vehicle_width __vehicle_width)) _vehicle_width)
  (:vehicle_length
   (&optional __vehicle_length)
   (if __vehicle_length (setq _vehicle_length __vehicle_length)) _vehicle_length)
  (:serialization-length
   ()
   (+
    ;; uint16 _vehicle_width
    2
    ;; uint16 _vehicle_length
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _vehicle_width
       (write-word _vehicle_width s)
     ;; uint16 _vehicle_length
       (write-word _vehicle_length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _vehicle_width
     (setq _vehicle_width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _vehicle_length
     (setq _vehicle_length (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::VehicleSize :md5sum-) "b73dfa0d45d588029a74086992728a81")
(setf (get j2735_msgs::VehicleSize :datatype-) "j2735_msgs/VehicleSize")
(setf (get j2735_msgs::VehicleSize :definition-)
      "#
# VehicleSize.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The vehicle length and width 

#VehicleSize ::= SEQUENCE {
#   width     VehicleWidth,
#   length    VehicleLength
#   }
#

#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters
#  -- Convert to meter with factor 0.01 when this field is used
uint16 vehicle_width

uint16 VEHICLE_WIDTH_UNAVAILABLE = 0
uint16 VEHICLE_WIDTH_MAX = 1023
uint16 VEHICLE_WIDTH_MIN = 1

#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters
#  -- Convert to meter with factor 0.01 when this field is used
uint16 vehicle_length

uint16 VEHICLE_LENGTH_UNAVAILABLE = 0
uint16 VEHICLE_LENGTH_MAX = 4095
uint16 VEHICLE_LENGTH_MIN = 1

")



(provide :j2735_msgs/VehicleSize "b73dfa0d45d588029a74086992728a81")


