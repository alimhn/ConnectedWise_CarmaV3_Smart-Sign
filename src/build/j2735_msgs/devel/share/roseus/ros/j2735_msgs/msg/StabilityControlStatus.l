;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::StabilityControlStatus)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'StabilityControlStatus (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::STABILITYCONTROLSTATUS")
  (make-package "J2735_MSGS::STABILITYCONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude StabilityControlStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(defconstant j2735_msgs::StabilityControlStatus::*UNAVAILABLE* 0)
(intern "*OFF*" (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(shadow '*OFF* (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(defconstant j2735_msgs::StabilityControlStatus::*OFF* 1)
(intern "*ON*" (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(shadow '*ON* (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(defconstant j2735_msgs::StabilityControlStatus::*ON* 2)
(intern "*ENGAGED*" (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(shadow '*ENGAGED* (find-package "J2735_MSGS::STABILITYCONTROLSTATUS"))
(defconstant j2735_msgs::StabilityControlStatus::*ENGAGED* 3)

(defun j2735_msgs::StabilityControlStatus-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::StabilityControlStatus::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::StabilityControlStatus::*OFF*)
        ((= const 2) 'j2735_msgs::StabilityControlStatus::*ON*)
        ((= const 3) 'j2735_msgs::StabilityControlStatus::*ENGAGED*)
        (t nil)))

(defclass j2735_msgs::StabilityControlStatus
  :super ros::object
  :slots (_stability_control_status ))

(defmethod j2735_msgs::StabilityControlStatus
  (:init
   (&key
    ((:stability_control_status __stability_control_status) 0)
    )
   (send-super :init)
   (setq _stability_control_status (round __stability_control_status))
   self)
  (:stability_control_status
   (&optional __stability_control_status)
   (if __stability_control_status (setq _stability_control_status __stability_control_status)) _stability_control_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _stability_control_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _stability_control_status
       (write-byte _stability_control_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _stability_control_status
     (setq _stability_control_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::StabilityControlStatus :md5sum-) "350e65c5b8f0b2157c2ddfc4d46c5a68")
(setf (get j2735_msgs::StabilityControlStatus :datatype-) "j2735_msgs/StabilityControlStatus")
(setf (get j2735_msgs::StabilityControlStatus :definition-)
      "#
# StabilityControlStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#StabilityControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with SC
#                    --       or SC status is unavailable
#   off         (1), -- B'01  Off
#   on          (2), -- B'10  On or active (but not engaged)
#   engaged     (3)  -- B'11  stability control is Engaged 
#   }
#   

uint8  stability_control_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3

")



(provide :j2735_msgs/StabilityControlStatus "350e65c5b8f0b2157c2ddfc4d46c5a68")


