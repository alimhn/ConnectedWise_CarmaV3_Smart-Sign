;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::BrakeBoostApplied)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'BrakeBoostApplied (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED")
  (make-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))

(in-package "ROS")
;;//! \htmlinclude BrakeBoostApplied.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))
(defconstant j2735_msgs::BrakeBoostApplied::*UNAVAILABLE* 0)
(intern "*OFF*" (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))
(shadow '*OFF* (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))
(defconstant j2735_msgs::BrakeBoostApplied::*OFF* 1)
(intern "*ON*" (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))
(shadow '*ON* (find-package "J2735_MSGS::BRAKEBOOSTAPPLIED"))
(defconstant j2735_msgs::BrakeBoostApplied::*ON* 2)

(defun j2735_msgs::BrakeBoostApplied-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::BrakeBoostApplied::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::BrakeBoostApplied::*OFF*)
        ((= const 2) 'j2735_msgs::BrakeBoostApplied::*ON*)
        (t nil)))

(defclass j2735_msgs::BrakeBoostApplied
  :super ros::object
  :slots (_brake_boost_applied ))

(defmethod j2735_msgs::BrakeBoostApplied
  (:init
   (&key
    ((:brake_boost_applied __brake_boost_applied) 0)
    )
   (send-super :init)
   (setq _brake_boost_applied (round __brake_boost_applied))
   self)
  (:brake_boost_applied
   (&optional __brake_boost_applied)
   (if __brake_boost_applied (setq _brake_boost_applied __brake_boost_applied)) _brake_boost_applied)
  (:serialization-length
   ()
   (+
    ;; uint8 _brake_boost_applied
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _brake_boost_applied
       (write-byte _brake_boost_applied s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _brake_boost_applied
     (setq _brake_boost_applied (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::BrakeBoostApplied :md5sum-) "ff8787fa0a36560577484f92f3640ad7")
(setf (get j2735_msgs::BrakeBoostApplied :datatype-) "j2735_msgs/BrakeBoostApplied")
(setf (get j2735_msgs::BrakeBoostApplied :definition-)
      "#
# BrakeBoostApplied.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#BrakeBoostApplied ::= ENUMERATED {
#   unavailable   (0), -- Vehicle not equipped with brake boost
#                      -- or brake boost data is unavailable
#   off           (1), -- Vehicle's brake boost is off
#   on            (2)  -- Vehicle's brake boost is on (applied)
#   }
#   

uint8  brake_boost_applied

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2

")



(provide :j2735_msgs/BrakeBoostApplied "ff8787fa0a36560577484f92f3640ad7")


