;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TransmissionState)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TransmissionState (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRANSMISSIONSTATE")
  (make-package "J2735_MSGS::TRANSMISSIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude TransmissionState.msg.html


(intern "*NEUTRAL*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*NEUTRAL* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*NEUTRAL* 0)
(intern "*PARK*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*PARK* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*PARK* 1)
(intern "*FORWARDGEARS*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*FORWARDGEARS* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*FORWARDGEARS* 2)
(intern "*REVERSEGEARS*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*REVERSEGEARS* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*REVERSEGEARS* 3)
(intern "*RESERVED1*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*RESERVED1* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*RESERVED1* 4)
(intern "*RESERVED2*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*RESERVED2* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*RESERVED2* 5)
(intern "*RESERVED3*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*RESERVED3* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*RESERVED3* 6)
(intern "*UNAVAILABLE*" (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(shadow '*UNAVAILABLE* (find-package "J2735_MSGS::TRANSMISSIONSTATE"))
(defconstant j2735_msgs::TransmissionState::*UNAVAILABLE* 7)

(defun j2735_msgs::TransmissionState-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::TransmissionState::*NEUTRAL*)
        ((= const 1) 'j2735_msgs::TransmissionState::*PARK*)
        ((= const 2) 'j2735_msgs::TransmissionState::*FORWARDGEARS*)
        ((= const 3) 'j2735_msgs::TransmissionState::*REVERSEGEARS*)
        ((= const 4) 'j2735_msgs::TransmissionState::*RESERVED1*)
        ((= const 5) 'j2735_msgs::TransmissionState::*RESERVED2*)
        ((= const 6) 'j2735_msgs::TransmissionState::*RESERVED3*)
        ((= const 7) 'j2735_msgs::TransmissionState::*UNAVAILABLE*)
        (t nil)))

(defclass j2735_msgs::TransmissionState
  :super ros::object
  :slots (_transmission_state ))

(defmethod j2735_msgs::TransmissionState
  (:init
   (&key
    ((:transmission_state __transmission_state) 0)
    )
   (send-super :init)
   (setq _transmission_state (round __transmission_state))
   self)
  (:transmission_state
   (&optional __transmission_state)
   (if __transmission_state (setq _transmission_state __transmission_state)) _transmission_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _transmission_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _transmission_state
       (write-byte _transmission_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _transmission_state
     (setq _transmission_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TransmissionState :md5sum-) "2d6a4d2af8ea1a5841861f3e0592e05f")
(setf (get j2735_msgs::TransmissionState :datatype-) "j2735_msgs/TransmissionState")
(setf (get j2735_msgs::TransmissionState :definition-)
      "#
# TransmissionState.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Provide the current state of the vehicle transmission.

#TransmissionState ::= ENUMERATED {
#   neutral      (0), -- Neutral
#   park         (1), -- Park 
#   forwardGears (2), -- Forward gears
#   reverseGears (3), -- Reverse gears 
#   reserved1    (4),      
#   reserved2    (5),      
#   reserved3    (6),      
#   unavailable  (7)  -- not-equipped or unavailable value,
#   -- Any related speed is relative to the vehicle reference frame used
#   }

uint8  transmission_state

# enumeration values for status:
uint8 NEUTRAL=0
uint8 PARK=1
uint8 FORWARDGEARS=2
uint8 REVERSEGEARS=3
uint8 RESERVED1=4
uint8 RESERVED2=5
uint8 RESERVED3=6
uint8 UNAVAILABLE=7
")



(provide :j2735_msgs/TransmissionState "2d6a4d2af8ea1a5841861f3e0592e05f")


