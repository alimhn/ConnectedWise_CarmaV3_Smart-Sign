;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::SpeedConfidence)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'SpeedConfidence (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::SPEEDCONFIDENCE")
  (make-package "J2735_MSGS::SPEEDCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude SpeedConfidence.msg.html


(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*UNAVAILABLE* 0)
(intern "*PREC100MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC100MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC100MS* 1)
(intern "*PREC10MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC10MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC10MS* 2)
(intern "*PREC5MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC5MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC5MS* 3)
(intern "*PREC1MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC1MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC1MS* 4)
(intern "*PREC0_1MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC0_1MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC0_1MS* 5)
(intern "*PREC0_05MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC0_05MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC0_05MS* 6)
(intern "*PREC0_01MS*" (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(shadow '*PREC0_01MS* (find-package "J2735_MSGS::SPEEDCONFIDENCE"))
(defconstant j2735_msgs::SpeedConfidence::*PREC0_01MS* 7)

(defun j2735_msgs::SpeedConfidence-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::SpeedConfidence::*UNAVAILABLE*)
        ((= const 1) 'j2735_msgs::SpeedConfidence::*PREC100MS*)
        ((= const 2) 'j2735_msgs::SpeedConfidence::*PREC10MS*)
        ((= const 3) 'j2735_msgs::SpeedConfidence::*PREC5MS*)
        ((= const 4) 'j2735_msgs::SpeedConfidence::*PREC1MS*)
        ((= const 5) 'j2735_msgs::SpeedConfidence::*PREC0_1MS*)
        ((= const 6) 'j2735_msgs::SpeedConfidence::*PREC0_05MS*)
        ((= const 7) 'j2735_msgs::SpeedConfidence::*PREC0_01MS*)
        (t nil)))

(defclass j2735_msgs::SpeedConfidence
  :super ros::object
  :slots (_speed_confidence ))

(defmethod j2735_msgs::SpeedConfidence
  (:init
   (&key
    ((:speed_confidence __speed_confidence) 0)
    )
   (send-super :init)
   (setq _speed_confidence (round __speed_confidence))
   self)
  (:speed_confidence
   (&optional __speed_confidence)
   (if __speed_confidence (setq _speed_confidence __speed_confidence)) _speed_confidence)
  (:serialization-length
   ()
   (+
    ;; uint8 _speed_confidence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _speed_confidence
       (write-byte _speed_confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _speed_confidence
     (setq _speed_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::SpeedConfidence :md5sum-) "a542e0efd9d48eb9bcc3e9968cb696e0")
(setf (get j2735_msgs::SpeedConfidence :datatype-) "j2735_msgs/SpeedConfidence")
(setf (get j2735_msgs::SpeedConfidence :definition-)
      "#
# SpeedConfidence.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_SpeedConfidence data element is used to provide the 95% confidence level for the currently reported
# value of DE_Speed, taking into account the current calibration and precision of the sensor(s) used to measure and/or
# calculate the value.

# SpeedConfidence ::= ENUMERATED {
# unavailable (0), -- Not Equipped or unavailable
# prec100ms (1), -- 100 meters / sec
# prec10ms(2), -- 10 meters / sec
# prec5ms (3), -- 5 meters / sec
# prec1ms (4), -- 1 meters / sec
# prec0-1ms (5), -- 0.1 meters / sec
# prec0-05ms (6), -- -- 0.05 meters / sec
# prec0-01ms (7) -- -- 0.01 meters / sec
# }

uint8 speed_confidence

uint8 UNAVAILABLE=0
uint8 PREC100MS=1
uint8 PREC10MS=2
uint8 PREC5MS=3
uint8 PREC1MS=4
uint8 PREC0_1MS=5
uint8 PREC0_05MS=6
uint8 PREC0_01MS=7
")



(provide :j2735_msgs/SpeedConfidence "a542e0efd9d48eb9bcc3e9968cb696e0")


