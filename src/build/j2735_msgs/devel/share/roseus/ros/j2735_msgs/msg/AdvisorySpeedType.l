;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::AdvisorySpeedType)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'AdvisorySpeedType (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ADVISORYSPEEDTYPE")
  (make-package "J2735_MSGS::ADVISORYSPEEDTYPE"))

(in-package "ROS")
;;//! \htmlinclude AdvisorySpeedType.msg.html


(intern "*NONE*" (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(shadow '*NONE* (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(defconstant j2735_msgs::AdvisorySpeedType::*NONE* 0)
(intern "*GREENWAVE*" (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(shadow '*GREENWAVE* (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(defconstant j2735_msgs::AdvisorySpeedType::*GREENWAVE* 1)
(intern "*ECODRIVE*" (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(shadow '*ECODRIVE* (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(defconstant j2735_msgs::AdvisorySpeedType::*ECODRIVE* 2)
(intern "*TRANSIT*" (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(shadow '*TRANSIT* (find-package "J2735_MSGS::ADVISORYSPEEDTYPE"))
(defconstant j2735_msgs::AdvisorySpeedType::*TRANSIT* 3)

(defun j2735_msgs::AdvisorySpeedType-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::AdvisorySpeedType::*NONE*)
        ((= const 1) 'j2735_msgs::AdvisorySpeedType::*GREENWAVE*)
        ((= const 2) 'j2735_msgs::AdvisorySpeedType::*ECODRIVE*)
        ((= const 3) 'j2735_msgs::AdvisorySpeedType::*TRANSIT*)
        (t nil)))

(defclass j2735_msgs::AdvisorySpeedType
  :super ros::object
  :slots (_advisory_speed_type ))

(defmethod j2735_msgs::AdvisorySpeedType
  (:init
   (&key
    ((:advisory_speed_type __advisory_speed_type) 0)
    )
   (send-super :init)
   (setq _advisory_speed_type (round __advisory_speed_type))
   self)
  (:advisory_speed_type
   (&optional __advisory_speed_type)
   (if __advisory_speed_type (setq _advisory_speed_type __advisory_speed_type)) _advisory_speed_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _advisory_speed_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _advisory_speed_type
       (write-byte _advisory_speed_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _advisory_speed_type
     (setq _advisory_speed_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::AdvisorySpeedType :md5sum-) "2577b7d853d2b485bd9efc66a0050f71")
(setf (get j2735_msgs::AdvisorySpeedType :datatype-) "j2735_msgs/AdvisorySpeedType")
(setf (get j2735_msgs::AdvisorySpeedType :definition-)
      "#
# AdvisorySpeedType.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_AdvisorySpeedType data element relates the type of travel to which a given speed refers. This element is
# typically used as part of an AdvisorySpeed data frame for signal phase and timing data.
#
# AdvisorySpeedType ::= ENUMERATED {
# none (0),
# greenwave (1),
# ecoDrive (2),
# transit (3),
# ...
# } -- Note: subject to further growth

uint8 advisory_speed_type

uint8 NONE=0
uint8 GREENWAVE=1
uint8 ECODRIVE=2
uint8 TRANSIT=3

")



(provide :j2735_msgs/AdvisorySpeedType "2577b7d853d2b485bd9efc66a0050f71")


