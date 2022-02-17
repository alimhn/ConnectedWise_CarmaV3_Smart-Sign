;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TractionControlStatus)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TractionControlStatus (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS")
  (make-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TractionControlStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(defconstant j2735_msgs::TractionControlStatus::*UNAVAILABLE* 0)
(intern "*OFF*" (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(shadow '*OFF* (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(defconstant j2735_msgs::TractionControlStatus::*OFF* 1)
(intern "*ON*" (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(shadow '*ON* (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(defconstant j2735_msgs::TractionControlStatus::*ON* 2)
(intern "*ENGAGED*" (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(shadow '*ENGAGED* (find-package "J2735_MSGS::TRACTIONCONTROLSTATUS"))
(defconstant j2735_msgs::TractionControlStatus::*ENGAGED* 3)

(defun j2735_msgs::TractionControlStatus-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::TractionControlStatus::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::TractionControlStatus::*OFF*)
        ((= const 2) 'j2735_msgs::TractionControlStatus::*ON*)
        ((= const 3) 'j2735_msgs::TractionControlStatus::*ENGAGED*)
        (t nil)))

(defclass j2735_msgs::TractionControlStatus
  :super ros::object
  :slots (_traction_control_status ))

(defmethod j2735_msgs::TractionControlStatus
  (:init
   (&key
    ((:traction_control_status __traction_control_status) 0)
    )
   (send-super :init)
   (setq _traction_control_status (round __traction_control_status))
   self)
  (:traction_control_status
   (&optional __traction_control_status)
   (if __traction_control_status (setq _traction_control_status __traction_control_status)) _traction_control_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _traction_control_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _traction_control_status
       (write-byte _traction_control_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _traction_control_status
     (setq _traction_control_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TractionControlStatus :md5sum-) "8fbf2d5faa10e86d446d2450b8536b24")
(setf (get j2735_msgs::TractionControlStatus :datatype-) "j2735_msgs/TractionControlStatus")
(setf (get j2735_msgs::TractionControlStatus :definition-)
      "#
# TractionControlStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#TractionControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with traction control 
#                    --       or traction control status is unavailable
#   off         (1), -- B'01  traction control is Off
#   on          (2), -- B'10  traction control is On (but not Engaged)
#   engaged     (3)  -- B'11  traction control is Engaged
#   }
#

uint8  traction_control_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3



")



(provide :j2735_msgs/TractionControlStatus "8fbf2d5faa10e86d446d2450b8536b24")


