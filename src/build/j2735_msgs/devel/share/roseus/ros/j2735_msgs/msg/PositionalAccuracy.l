;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::PositionalAccuracy)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'PositionalAccuracy (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::POSITIONALACCURACY")
  (make-package "J2735_MSGS::POSITIONALACCURACY"))

(in-package "ROS")
;;//! \htmlinclude PositionalAccuracy.msg.html


(intern "*ACCURACY_UNAVAILABLE*" (find-package "J2735_MSGS::POSITIONALACCURACY"))
(shadow '*ACCURACY_UNAVAILABLE* (find-package "J2735_MSGS::POSITIONALACCURACY"))
(defconstant j2735_msgs::PositionalAccuracy::*ACCURACY_UNAVAILABLE* 255)
(intern "*ACCURACY_MAX*" (find-package "J2735_MSGS::POSITIONALACCURACY"))
(shadow '*ACCURACY_MAX* (find-package "J2735_MSGS::POSITIONALACCURACY"))
(defconstant j2735_msgs::PositionalAccuracy::*ACCURACY_MAX* 254)
(intern "*ACCURACY_MIN*" (find-package "J2735_MSGS::POSITIONALACCURACY"))
(shadow '*ACCURACY_MIN* (find-package "J2735_MSGS::POSITIONALACCURACY"))
(defconstant j2735_msgs::PositionalAccuracy::*ACCURACY_MIN* 0)
(intern "*ACCURACY_ORIENTATION_UNAVAILABLE*" (find-package "J2735_MSGS::POSITIONALACCURACY"))
(shadow '*ACCURACY_ORIENTATION_UNAVAILABLE* (find-package "J2735_MSGS::POSITIONALACCURACY"))
(defconstant j2735_msgs::PositionalAccuracy::*ACCURACY_ORIENTATION_UNAVAILABLE* 65535)
(intern "*ACCURACY_ORIENTATION_MAX*" (find-package "J2735_MSGS::POSITIONALACCURACY"))
(shadow '*ACCURACY_ORIENTATION_MAX* (find-package "J2735_MSGS::POSITIONALACCURACY"))
(defconstant j2735_msgs::PositionalAccuracy::*ACCURACY_ORIENTATION_MAX* 65534)
(intern "*ACCURACY_ORIENTATION_MIN*" (find-package "J2735_MSGS::POSITIONALACCURACY"))
(shadow '*ACCURACY_ORIENTATION_MIN* (find-package "J2735_MSGS::POSITIONALACCURACY"))
(defconstant j2735_msgs::PositionalAccuracy::*ACCURACY_ORIENTATION_MIN* 0)

(defun j2735_msgs::PositionalAccuracy-to-symbol (const)
  (cond
        ((= const 255) 'j2735_msgs::PositionalAccuracy::*ACCURACY_UNAVAILABLE*)
        ((= const 254) 'j2735_msgs::PositionalAccuracy::*ACCURACY_MAX*)
        ((= const 0) 'j2735_msgs::PositionalAccuracy::*ACCURACY_MIN*)
        ((= const 65535) 'j2735_msgs::PositionalAccuracy::*ACCURACY_ORIENTATION_UNAVAILABLE*)
        ((= const 65534) 'j2735_msgs::PositionalAccuracy::*ACCURACY_ORIENTATION_MAX*)
        ((= const 0) 'j2735_msgs::PositionalAccuracy::*ACCURACY_ORIENTATION_MIN*)
        (t nil)))

(defclass j2735_msgs::PositionalAccuracy
  :super ros::object
  :slots (_semiMajor _semiMinor _orientation ))

(defmethod j2735_msgs::PositionalAccuracy
  (:init
   (&key
    ((:semiMajor __semiMajor) 0)
    ((:semiMinor __semiMinor) 0)
    ((:orientation __orientation) 0)
    )
   (send-super :init)
   (setq _semiMajor (round __semiMajor))
   (setq _semiMinor (round __semiMinor))
   (setq _orientation (round __orientation))
   self)
  (:semiMajor
   (&optional __semiMajor)
   (if __semiMajor (setq _semiMajor __semiMajor)) _semiMajor)
  (:semiMinor
   (&optional __semiMinor)
   (if __semiMinor (setq _semiMinor __semiMinor)) _semiMinor)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; uint8 _semiMajor
    1
    ;; uint8 _semiMinor
    1
    ;; uint16 _orientation
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _semiMajor
       (write-byte _semiMajor s)
     ;; uint8 _semiMinor
       (write-byte _semiMinor s)
     ;; uint16 _orientation
       (write-word _orientation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _semiMajor
     (setq _semiMajor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _semiMinor
     (setq _semiMinor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _orientation
     (setq _orientation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::PositionalAccuracy :md5sum-) "993c06d8702326587d0e9f49bc843cde")
(setf (get j2735_msgs::PositionalAccuracy :datatype-) "j2735_msgs/PositionalAccuracy")
(setf (get j2735_msgs::PositionalAccuracy :definition-)
      "#
# PositionalAccuracy.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Used to model the accuracy of the positional determination with respect to each given axis.

#PositionalAccuracy ::= SEQUENCE {
#   -- NMEA-183 values expressed in strict ASN form
#   semiMajor     SemiMajorAxisAccuracy,
#   semiMinor     SemiMinorAxisAccuracy,
#   orientation   SemiMajorAxisOrientation
#   }

#SemiMajorAxisAccuracy ::= INTEGER (0..255)
#   -- semi-major/semi-minor axis accuracy at one standard dev
#   -- range 0-12.7 meter, LSB = .05m
#   -- 254 = any value equal or greater than 12.70 meter
#   -- 255 = unavailable semi-major axis value
#   -- Convert to meter with factor 0.05 when this field is used
uint8 semiMajor
uint8 semiMinor

uint8 ACCURACY_UNAVAILABLE = 255
uint8 ACCURACY_MAX = 254
uint8 ACCURACY_MIN = 0

#SemiMajorAxisOrientation ::= INTEGER (0..65535)
#   -- orientation of semi-major axis
#   -- relative to true north (0~359.9945078786 degrees)
#   -- LSB units of 360/65535 deg  = 0.0054932479
#   -- a value of 0 shall be 0 degrees
#   -- a value of 1 shall be 0.0054932479 degrees
#   -- a value of 65534 shall be 359.9945078786 deg
#   -- a value of 65535 shall be used for orientation unavailable
#   -- Convert to degree with factor 0.0054932479 when this field is used
uint16 orientation

uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535
uint16 ACCURACY_ORIENTATION_MAX = 65534
uint16 ACCURACY_ORIENTATION_MIN = 0

")



(provide :j2735_msgs/PositionalAccuracy "993c06d8702326587d0e9f49bc843cde")


