;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::AntiLockBrakeStatus)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'AntiLockBrakeStatus (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS")
  (make-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))

(in-package "ROS")
;;//! \htmlinclude AntiLockBrakeStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(defconstant j2735_msgs::AntiLockBrakeStatus::*UNAVAILABLE* 0)
(intern "*OFF*" (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(shadow '*OFF* (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(defconstant j2735_msgs::AntiLockBrakeStatus::*OFF* 1)
(intern "*ON*" (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(shadow '*ON* (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(defconstant j2735_msgs::AntiLockBrakeStatus::*ON* 2)
(intern "*ENGAGED*" (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(shadow '*ENGAGED* (find-package "J2735_MSGS::ANTILOCKBRAKESTATUS"))
(defconstant j2735_msgs::AntiLockBrakeStatus::*ENGAGED* 3)

(defun j2735_msgs::AntiLockBrakeStatus-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::AntiLockBrakeStatus::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::AntiLockBrakeStatus::*OFF*)
        ((= const 2) 'j2735_msgs::AntiLockBrakeStatus::*ON*)
        ((= const 3) 'j2735_msgs::AntiLockBrakeStatus::*ENGAGED*)
        (t nil)))

(defclass j2735_msgs::AntiLockBrakeStatus
  :super ros::object
  :slots (_anti_lock_brake_status ))

(defmethod j2735_msgs::AntiLockBrakeStatus
  (:init
   (&key
    ((:anti_lock_brake_status __anti_lock_brake_status) 0)
    )
   (send-super :init)
   (setq _anti_lock_brake_status (round __anti_lock_brake_status))
   self)
  (:anti_lock_brake_status
   (&optional __anti_lock_brake_status)
   (if __anti_lock_brake_status (setq _anti_lock_brake_status __anti_lock_brake_status)) _anti_lock_brake_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _anti_lock_brake_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _anti_lock_brake_status
       (write-byte _anti_lock_brake_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _anti_lock_brake_status
     (setq _anti_lock_brake_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::AntiLockBrakeStatus :md5sum-) "10d3c69ab8bdca744a019c4c3fb22ac9")
(setf (get j2735_msgs::AntiLockBrakeStatus :datatype-) "j2735_msgs/AntiLockBrakeStatus")
(setf (get j2735_msgs::AntiLockBrakeStatus :definition-)
      "#
# AntiLockBrakeStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#AntiLockBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
#                    --       or ABS Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's ABS are Off
#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
#   }
#

uint8  anti_lock_brake_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3

")



(provide :j2735_msgs/AntiLockBrakeStatus "10d3c69ab8bdca744a019c4c3fb22ac9")


