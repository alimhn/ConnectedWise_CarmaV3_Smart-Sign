;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::BrakeAppliedStatus)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'BrakeAppliedStatus (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS")
  (make-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BrakeAppliedStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(defconstant j2735_msgs::BrakeAppliedStatus::*UNAVAILABLE* 0)
(intern "*LEFT_FRONT*" (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(shadow '*LEFT_FRONT* (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(defconstant j2735_msgs::BrakeAppliedStatus::*LEFT_FRONT* 1)
(intern "*LEFT_REAR*" (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(shadow '*LEFT_REAR* (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(defconstant j2735_msgs::BrakeAppliedStatus::*LEFT_REAR* 2)
(intern "*RIGHT_FRONT*" (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(shadow '*RIGHT_FRONT* (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(defconstant j2735_msgs::BrakeAppliedStatus::*RIGHT_FRONT* 3)
(intern "*RIGHT_REAR*" (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(shadow '*RIGHT_REAR* (find-package "J2735_MSGS::BRAKEAPPLIEDSTATUS"))
(defconstant j2735_msgs::BrakeAppliedStatus::*RIGHT_REAR* 4)

(defun j2735_msgs::BrakeAppliedStatus-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::BrakeAppliedStatus::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::BrakeAppliedStatus::*LEFT_FRONT*)
        ((= const 2) 'j2735_msgs::BrakeAppliedStatus::*LEFT_REAR*)
        ((= const 3) 'j2735_msgs::BrakeAppliedStatus::*RIGHT_FRONT*)
        ((= const 4) 'j2735_msgs::BrakeAppliedStatus::*RIGHT_REAR*)
        (t nil)))

(defclass j2735_msgs::BrakeAppliedStatus
  :super ros::object
  :slots (_brake_applied_status ))

(defmethod j2735_msgs::BrakeAppliedStatus
  (:init
   (&key
    ((:brake_applied_status __brake_applied_status) 0)
    )
   (send-super :init)
   (setq _brake_applied_status (round __brake_applied_status))
   self)
  (:brake_applied_status
   (&optional __brake_applied_status)
   (if __brake_applied_status (setq _brake_applied_status __brake_applied_status)) _brake_applied_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _brake_applied_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _brake_applied_status
       (write-byte _brake_applied_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _brake_applied_status
     (setq _brake_applied_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::BrakeAppliedStatus :md5sum-) "b9d951a3b57c116ca4befe0886581520")
(setf (get j2735_msgs::BrakeAppliedStatus :datatype-) "j2735_msgs/BrakeAppliedStatus")
(setf (get j2735_msgs::BrakeAppliedStatus :definition-)
      "#
# BrakeAppliedStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# 

#BrakeAppliedStatus ::= BIT STRING {
#   unavailable (0),  -- When set, the brake applied status is unavailable
#   leftFront   (1),  -- Left Front Active
#   leftRear    (2),  -- Left Rear Active
#   rightFront  (3),  -- Right Front Active
#   rightRear   (4)   -- Right Rear Active
#   } (SIZE (5))
#   

uint8  brake_applied_status

uint8 UNAVAILABLE=0
uint8 LEFT_FRONT=1
uint8 LEFT_REAR=2
uint8 RIGHT_FRONT=3
uint8 RIGHT_REAR=4


")



(provide :j2735_msgs/BrakeAppliedStatus "b9d951a3b57c116ca4befe0886581520")


