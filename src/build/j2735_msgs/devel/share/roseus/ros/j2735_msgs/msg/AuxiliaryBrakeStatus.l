;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::AuxiliaryBrakeStatus)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'AuxiliaryBrakeStatus (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS")
  (make-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))

(in-package "ROS")
;;//! \htmlinclude AuxiliaryBrakeStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(defconstant j2735_msgs::AuxiliaryBrakeStatus::*UNAVAILABLE* 0)
(intern "*OFF*" (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(shadow '*OFF* (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(defconstant j2735_msgs::AuxiliaryBrakeStatus::*OFF* 1)
(intern "*ON*" (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(shadow '*ON* (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(defconstant j2735_msgs::AuxiliaryBrakeStatus::*ON* 2)
(intern "*RESERVED*" (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(shadow '*RESERVED* (find-package "J2735_MSGS::AUXILIARYBRAKESTATUS"))
(defconstant j2735_msgs::AuxiliaryBrakeStatus::*RESERVED* 3)

(defun j2735_msgs::AuxiliaryBrakeStatus-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::AuxiliaryBrakeStatus::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::AuxiliaryBrakeStatus::*OFF*)
        ((= const 2) 'j2735_msgs::AuxiliaryBrakeStatus::*ON*)
        ((= const 3) 'j2735_msgs::AuxiliaryBrakeStatus::*RESERVED*)
        (t nil)))

(defclass j2735_msgs::AuxiliaryBrakeStatus
  :super ros::object
  :slots (_auxiliary_brake_status ))

(defmethod j2735_msgs::AuxiliaryBrakeStatus
  (:init
   (&key
    ((:auxiliary_brake_status __auxiliary_brake_status) 0)
    )
   (send-super :init)
   (setq _auxiliary_brake_status (round __auxiliary_brake_status))
   self)
  (:auxiliary_brake_status
   (&optional __auxiliary_brake_status)
   (if __auxiliary_brake_status (setq _auxiliary_brake_status __auxiliary_brake_status)) _auxiliary_brake_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _auxiliary_brake_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _auxiliary_brake_status
       (write-byte _auxiliary_brake_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _auxiliary_brake_status
     (setq _auxiliary_brake_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::AuxiliaryBrakeStatus :md5sum-) "f347f9be77208a55630f9c2b43a80c65")
(setf (get j2735_msgs::AuxiliaryBrakeStatus :datatype-) "j2735_msgs/AuxiliaryBrakeStatus")
(setf (get j2735_msgs::AuxiliaryBrakeStatus :definition-)
      "#
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



(provide :j2735_msgs/AuxiliaryBrakeStatus "f347f9be77208a55630f9c2b43a80c65")


