;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlDetail)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlDetail (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL")
  (make-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlDetail.msg.html


(intern "*SIGNAL_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*SIGNAL_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*SIGNAL_CHOICE* 0)
(intern "*STOP_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*STOP_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*STOP_CHOICE* 1)
(intern "*YIELD_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*YIELD_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*YIELD_CHOICE* 2)
(intern "*NOTOWING_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*NOTOWING_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*NOTOWING_CHOICE* 3)
(intern "*RESTRICTED_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*RESTRICTED_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*RESTRICTED_CHOICE* 4)
(intern "*CLOSED_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*CLOSED_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*CLOSED_CHOICE* 5)
(intern "*CHAINS_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*CHAINS_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*CHAINS_CHOICE* 6)
(intern "*DIRECTION_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*DIRECTION_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*DIRECTION_CHOICE* 7)
(intern "*LATAFFINITY_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*LATAFFINITY_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*LATAFFINITY_CHOICE* 8)
(intern "*LATPERM_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*LATPERM_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*LATPERM_CHOICE* 9)
(intern "*PARKING_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*PARKING_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*PARKING_CHOICE* 10)
(intern "*MINSPEED_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MINSPEED_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MINSPEED_CHOICE* 11)
(intern "*MAXSPEED_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MAXSPEED_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MAXSPEED_CHOICE* 12)
(intern "*MINHDWY_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MINHDWY_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MINHDWY_CHOICE* 13)
(intern "*MAXVEHMASS_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MAXVEHMASS_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MAXVEHMASS_CHOICE* 14)
(intern "*MAXVEHHEIGHT_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MAXVEHHEIGHT_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MAXVEHHEIGHT_CHOICE* 15)
(intern "*MAXVEHWIDTH_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MAXVEHWIDTH_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MAXVEHWIDTH_CHOICE* 16)
(intern "*MAXVEHLENGTH_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MAXVEHLENGTH_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MAXVEHLENGTH_CHOICE* 17)
(intern "*MAXVEHAXLES_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MAXVEHAXLES_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MAXVEHAXLES_CHOICE* 18)
(intern "*MINVEHOCC_CHOICE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*MINVEHOCC_CHOICE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*MINVEHOCC_CHOICE* 19)
(intern "*OPEN*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*OPEN* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*OPEN* 0)
(intern "*CLOSED*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*CLOSED* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*CLOSED* 1)
(intern "*TAPERLEFT*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*TAPERLEFT* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*TAPERLEFT* 2)
(intern "*TAPERRIGHT*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*TAPERRIGHT* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*TAPERRIGHT* 3)
(intern "*OPENLEFT*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*OPENLEFT* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*OPENLEFT* 4)
(intern "*OPENRIGHT*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*OPENRIGHT* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*OPENRIGHT* 5)
(intern "*NO*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*NO* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*NO* 0)
(intern "*PERMITTED*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*PERMITTED* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*PERMITTED* 1)
(intern "*REQUIRED*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*REQUIRED* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*REQUIRED* 2)
(intern "*FORWARD*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*FORWARD* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*FORWARD* 0)
(intern "*REVERSE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*REVERSE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*REVERSE* 1)
(intern "*LEFT*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*LEFT* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*LEFT* 0)
(intern "*RIGHT*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*RIGHT* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*RIGHT* 1)
(intern "*NONE*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*NONE* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*NONE* 0)
(intern "*PASSINGONLY*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*PASSINGONLY* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*PASSINGONLY* 2)
(intern "*EMERGENCYONLY*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*EMERGENCYONLY* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*EMERGENCYONLY* 3)
(intern "*PARALLEL*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*PARALLEL* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*PARALLEL* 1)
(intern "*ANGLED*" (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(shadow '*ANGLED* (find-package "J2735_MSGS::TRAFFICCONTROLDETAIL"))
(defconstant j2735_msgs::TrafficControlDetail::*ANGLED* 2)

(defun j2735_msgs::TrafficControlDetail-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::TrafficControlDetail::*SIGNAL_CHOICE*)
        ((= const 1) 'j2735_msgs::TrafficControlDetail::*STOP_CHOICE*)
        ((= const 2) 'j2735_msgs::TrafficControlDetail::*YIELD_CHOICE*)
        ((= const 3) 'j2735_msgs::TrafficControlDetail::*NOTOWING_CHOICE*)
        ((= const 4) 'j2735_msgs::TrafficControlDetail::*RESTRICTED_CHOICE*)
        ((= const 5) 'j2735_msgs::TrafficControlDetail::*CLOSED_CHOICE*)
        ((= const 6) 'j2735_msgs::TrafficControlDetail::*CHAINS_CHOICE*)
        ((= const 7) 'j2735_msgs::TrafficControlDetail::*DIRECTION_CHOICE*)
        ((= const 8) 'j2735_msgs::TrafficControlDetail::*LATAFFINITY_CHOICE*)
        ((= const 9) 'j2735_msgs::TrafficControlDetail::*LATPERM_CHOICE*)
        ((= const 10) 'j2735_msgs::TrafficControlDetail::*PARKING_CHOICE*)
        ((= const 11) 'j2735_msgs::TrafficControlDetail::*MINSPEED_CHOICE*)
        ((= const 12) 'j2735_msgs::TrafficControlDetail::*MAXSPEED_CHOICE*)
        ((= const 13) 'j2735_msgs::TrafficControlDetail::*MINHDWY_CHOICE*)
        ((= const 14) 'j2735_msgs::TrafficControlDetail::*MAXVEHMASS_CHOICE*)
        ((= const 15) 'j2735_msgs::TrafficControlDetail::*MAXVEHHEIGHT_CHOICE*)
        ((= const 16) 'j2735_msgs::TrafficControlDetail::*MAXVEHWIDTH_CHOICE*)
        ((= const 17) 'j2735_msgs::TrafficControlDetail::*MAXVEHLENGTH_CHOICE*)
        ((= const 18) 'j2735_msgs::TrafficControlDetail::*MAXVEHAXLES_CHOICE*)
        ((= const 19) 'j2735_msgs::TrafficControlDetail::*MINVEHOCC_CHOICE*)
        ((= const 0) 'j2735_msgs::TrafficControlDetail::*OPEN*)
        ((= const 1) 'j2735_msgs::TrafficControlDetail::*CLOSED*)
        ((= const 2) 'j2735_msgs::TrafficControlDetail::*TAPERLEFT*)
        ((= const 3) 'j2735_msgs::TrafficControlDetail::*TAPERRIGHT*)
        ((= const 4) 'j2735_msgs::TrafficControlDetail::*OPENLEFT*)
        ((= const 5) 'j2735_msgs::TrafficControlDetail::*OPENRIGHT*)
        ((= const 0) 'j2735_msgs::TrafficControlDetail::*NO*)
        ((= const 1) 'j2735_msgs::TrafficControlDetail::*PERMITTED*)
        ((= const 2) 'j2735_msgs::TrafficControlDetail::*REQUIRED*)
        ((= const 0) 'j2735_msgs::TrafficControlDetail::*FORWARD*)
        ((= const 1) 'j2735_msgs::TrafficControlDetail::*REVERSE*)
        ((= const 0) 'j2735_msgs::TrafficControlDetail::*LEFT*)
        ((= const 1) 'j2735_msgs::TrafficControlDetail::*RIGHT*)
        ((= const 0) 'j2735_msgs::TrafficControlDetail::*NONE*)
        ((= const 2) 'j2735_msgs::TrafficControlDetail::*PASSINGONLY*)
        ((= const 3) 'j2735_msgs::TrafficControlDetail::*EMERGENCYONLY*)
        ((= const 1) 'j2735_msgs::TrafficControlDetail::*PARALLEL*)
        ((= const 2) 'j2735_msgs::TrafficControlDetail::*ANGLED*)
        (t nil)))

(defclass j2735_msgs::TrafficControlDetail
  :super ros::object
  :slots (_choice _signal _closed _chains _direction _lataffinity _latperm _parking _minspeed _maxspeed _minhdwy _maxvehmass _maxvehheight _maxvehwidth _maxvehlength _maxvehaxles _minvehocc ))

(defmethod j2735_msgs::TrafficControlDetail
  (:init
   (&key
    ((:choice __choice) 0)
    ((:signal __signal) (make-array 0 :initial-element 0 :element-type :char))
    ((:closed __closed) 0)
    ((:chains __chains) 0)
    ((:direction __direction) 0)
    ((:lataffinity __lataffinity) 0)
    ((:latperm __latperm) (make-array 2 :initial-element 0 :element-type :char))
    ((:parking __parking) 0)
    ((:minspeed __minspeed) 0)
    ((:maxspeed __maxspeed) 0)
    ((:minhdwy __minhdwy) 0)
    ((:maxvehmass __maxvehmass) 0)
    ((:maxvehheight __maxvehheight) 0)
    ((:maxvehwidth __maxvehwidth) 0)
    ((:maxvehlength __maxvehlength) 0)
    ((:maxvehaxles __maxvehaxles) 0)
    ((:minvehocc __minvehocc) 0)
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _signal __signal)
   (setq _closed (round __closed))
   (setq _chains (round __chains))
   (setq _direction (round __direction))
   (setq _lataffinity (round __lataffinity))
   (setq _latperm __latperm)
   (setq _parking (round __parking))
   (setq _minspeed (round __minspeed))
   (setq _maxspeed (round __maxspeed))
   (setq _minhdwy (round __minhdwy))
   (setq _maxvehmass (round __maxvehmass))
   (setq _maxvehheight (round __maxvehheight))
   (setq _maxvehwidth (round __maxvehwidth))
   (setq _maxvehlength (round __maxvehlength))
   (setq _maxvehaxles (round __maxvehaxles))
   (setq _minvehocc (round __minvehocc))
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:closed
   (&optional __closed)
   (if __closed (setq _closed __closed)) _closed)
  (:chains
   (&optional __chains)
   (if __chains (setq _chains __chains)) _chains)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:lataffinity
   (&optional __lataffinity)
   (if __lataffinity (setq _lataffinity __lataffinity)) _lataffinity)
  (:latperm
   (&optional __latperm)
   (if __latperm (setq _latperm __latperm)) _latperm)
  (:parking
   (&optional __parking)
   (if __parking (setq _parking __parking)) _parking)
  (:minspeed
   (&optional __minspeed)
   (if __minspeed (setq _minspeed __minspeed)) _minspeed)
  (:maxspeed
   (&optional __maxspeed)
   (if __maxspeed (setq _maxspeed __maxspeed)) _maxspeed)
  (:minhdwy
   (&optional __minhdwy)
   (if __minhdwy (setq _minhdwy __minhdwy)) _minhdwy)
  (:maxvehmass
   (&optional __maxvehmass)
   (if __maxvehmass (setq _maxvehmass __maxvehmass)) _maxvehmass)
  (:maxvehheight
   (&optional __maxvehheight)
   (if __maxvehheight (setq _maxvehheight __maxvehheight)) _maxvehheight)
  (:maxvehwidth
   (&optional __maxvehwidth)
   (if __maxvehwidth (setq _maxvehwidth __maxvehwidth)) _maxvehwidth)
  (:maxvehlength
   (&optional __maxvehlength)
   (if __maxvehlength (setq _maxvehlength __maxvehlength)) _maxvehlength)
  (:maxvehaxles
   (&optional __maxvehaxles)
   (if __maxvehaxles (setq _maxvehaxles __maxvehaxles)) _maxvehaxles)
  (:minvehocc
   (&optional __minvehocc)
   (if __minvehocc (setq _minvehocc __minvehocc)) _minvehocc)
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; uint8[] _signal
    (* 1    (length _signal)) 4
    ;; uint8 _closed
    1
    ;; uint8 _chains
    1
    ;; uint8 _direction
    1
    ;; uint8 _lataffinity
    1
    ;; uint8[2] _latperm
    (* 1    2)
    ;; uint8 _parking
    1
    ;; uint16 _minspeed
    2
    ;; uint16 _maxspeed
    2
    ;; uint16 _minhdwy
    2
    ;; uint16 _maxvehmass
    2
    ;; uint8 _maxvehheight
    1
    ;; uint8 _maxvehwidth
    1
    ;; uint16 _maxvehlength
    2
    ;; uint8 _maxvehaxles
    1
    ;; uint8 _minvehocc
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; uint8[] _signal
     (write-long (length _signal) s)
     (princ _signal s)
     ;; uint8 _closed
       (write-byte _closed s)
     ;; uint8 _chains
       (write-byte _chains s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint8 _lataffinity
       (write-byte _lataffinity s)
     ;; uint8[2] _latperm
     (princ _latperm s)
     ;; uint8 _parking
       (write-byte _parking s)
     ;; uint16 _minspeed
       (write-word _minspeed s)
     ;; uint16 _maxspeed
       (write-word _maxspeed s)
     ;; uint16 _minhdwy
       (write-word _minhdwy s)
     ;; uint16 _maxvehmass
       (write-word _maxvehmass s)
     ;; uint8 _maxvehheight
       (write-byte _maxvehheight s)
     ;; uint8 _maxvehwidth
       (write-byte _maxvehwidth s)
     ;; uint16 _maxvehlength
       (write-word _maxvehlength s)
     ;; uint8 _maxvehaxles
       (write-byte _maxvehaxles s)
     ;; uint8 _minvehocc
       (write-byte _minvehocc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _signal
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _signal (make-array n :element-type :char))
     (replace _signal buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _closed
     (setq _closed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _chains
     (setq _chains (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lataffinity
     (setq _lataffinity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _latperm
   (setq _latperm (make-array 2 :element-type :char))
   (replace _latperm buf :start2 ptr-) (incf ptr- 2)
   ;; uint8 _parking
     (setq _parking (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _minspeed
     (setq _minspeed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _maxspeed
     (setq _maxspeed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _minhdwy
     (setq _minhdwy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _maxvehmass
     (setq _maxvehmass (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _maxvehheight
     (setq _maxvehheight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _maxvehwidth
     (setq _maxvehwidth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _maxvehlength
     (setq _maxvehlength (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _maxvehaxles
     (setq _maxvehaxles (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minvehocc
     (setq _minvehocc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlDetail :md5sum-) "1729e85f043b0bad7ed698acb5917bcb")
(setf (get j2735_msgs::TrafficControlDetail :datatype-) "j2735_msgs/TrafficControlDetail")
(setf (get j2735_msgs::TrafficControlDetail :definition-)
      "#
# TrafficControlDetail.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

#TrafficControlDetail ::= CHOICE
#{
#	signal OCTET STRING SIZE(0..63),
#	stop NULL,
#	yield NULL,
#	notowing NULL,
#	restricted NULL,
#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},
#	chains ENUMERATED {no, permitted, required},
#	direction ENUMERATED {forward, reverse},
#	lataffinity ENUMERATED {left, right},
#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},
#	parking ENUMERATED {no, parallel, angled},
#	minspeed INTEGER (0..1023), -- tenths of m/s
#	maxspeed INTEGER (0..1023), -- tenths of m/s
#	minhdwy INTEGER (0..2047), -- tenths of meters
#	maxvehmass INTEGER (0..65535), -- kg
#	maxvehheight INTEGER (0..127), -- tenths of meters
#	maxvehwidth INTEGER (0..127), -- tenths of meters
#	maxvehlength INTEGER (0..1023), -- tenths of meters
#	maxvehaxles INTEGER (2..15),
#	minvehocc INTEGER (1..15), 
#	...
#}


uint8 choice

# enumeration values for choice:

uint8 SIGNAL_CHOICE =0
uint8 STOP_CHOICE =1
uint8 YIELD_CHOICE =2
uint8 NOTOWING_CHOICE =3
uint8 RESTRICTED_CHOICE =4
uint8 CLOSED_CHOICE =5
uint8 CHAINS_CHOICE =6
uint8 DIRECTION_CHOICE =7
uint8 LATAFFINITY_CHOICE =8
uint8 LATPERM_CHOICE =9
uint8 PARKING_CHOICE =10
uint8 MINSPEED_CHOICE =11
uint8 MAXSPEED_CHOICE =12
uint8 MINHDWY_CHOICE =13
uint8 MAXVEHMASS_CHOICE =14
uint8 MAXVEHHEIGHT_CHOICE =15
uint8 MAXVEHWIDTH_CHOICE =16
uint8 MAXVEHLENGTH_CHOICE =17
uint8 MAXVEHAXLES_CHOICE =18
uint8 MINVEHOCC_CHOICE =19

# signal ::= OCTET STRING SIZE(0..63)
uint8[] signal

#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}

uint8 closed

# enumeration values for closed:

uint8 OPEN=0

uint8 CLOSED=1

uint8 TAPERLEFT=2

uint8 TAPERRIGHT=3

uint8 OPENLEFT=4

uint8 OPENRIGHT=5

#chains ENUMERATED {no, permitted, required}

uint8 chains

# enumeration values for chains:

uint8 NO=0

uint8 PERMITTED=1

uint8 REQUIRED=2


#direction ENUMERATED {forward, reverse}

uint8 direction

# enumeration values for direction:

uint8 FORWARD=0

uint8 REVERSE=1

#lataffinity ENUMERATED {left, right}

uint8 lataffinity

# enumeration values for lataffinity:

uint8 LEFT=0

uint8 RIGHT=1

#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}

uint8[2] latperm

# enumeration values for latperm:

uint8 NONE=0

# uint8 PERMITTED=1 redeclaration

uint8 PASSINGONLY=2

uint8 EMERGENCYONLY=3

#parking ENUMERATED {no, parallel, angled}

uint8 parking

# enumeration values for parking:

# uint8 NO=0 redeclaration

uint8 PARALLEL=1

uint8 ANGLED=2

#minspeed ::= INTEGER (0..1023), -- tenths of m/s
uint16 minspeed

#maxspeed ::= INTEGER (0..1023), -- tenths of m/s
uint16 maxspeed

#minhdwy ::= INTEGER (0..2047), -- tenths of meters
uint16 minhdwy

#maxvehmass ::= INTEGER (0..65535), -- kg
uint16 maxvehmass

#maxvehheight ::= INTEGER (0..127), -- tenths of meters
uint8 maxvehheight

#maxvehwidth ::= INTEGER (0..127), -- tenths of meters
uint8 maxvehwidth

#maxvehlength ::= INTEGER (0..1023), -- tenths of meters
uint16 maxvehlength

#maxvehaxles ::= INTEGER (2..15)
uint8 maxvehaxles

#minvehocc ::= INTEGER (1..15)
uint8 minvehocc





")



(provide :j2735_msgs/TrafficControlDetail "1729e85f043b0bad7ed698acb5917bcb")


