;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlRequest)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlRequest (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLREQUEST")
  (make-package "J2735_MSGS::TRAFFICCONTROLREQUEST"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlRequest.msg.html


(intern "*RESERVED*" (find-package "J2735_MSGS::TRAFFICCONTROLREQUEST"))
(shadow '*RESERVED* (find-package "J2735_MSGS::TRAFFICCONTROLREQUEST"))
(defconstant j2735_msgs::TrafficControlRequest::*RESERVED* 0)
(intern "*TCRV01*" (find-package "J2735_MSGS::TRAFFICCONTROLREQUEST"))
(shadow '*TCRV01* (find-package "J2735_MSGS::TRAFFICCONTROLREQUEST"))
(defconstant j2735_msgs::TrafficControlRequest::*TCRV01* 1)

(defun j2735_msgs::TrafficControlRequest-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::TrafficControlRequest::*RESERVED*)
        ((= const 1) 'j2735_msgs::TrafficControlRequest::*TCRV01*)
        (t nil)))

(defclass j2735_msgs::TrafficControlRequest
  :super ros::object
  :slots (_choice _tcrV01 ))

(defmethod j2735_msgs::TrafficControlRequest
  (:init
   (&key
    ((:choice __choice) 0)
    ((:tcrV01 __tcrV01) (instance j2735_msgs::TrafficControlRequestV01 :init))
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _tcrV01 __tcrV01)
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:tcrV01
   (&rest __tcrV01)
   (if (keywordp (car __tcrV01))
       (send* _tcrV01 __tcrV01)
     (progn
       (if __tcrV01 (setq _tcrV01 (car __tcrV01)))
       _tcrV01)))
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; j2735_msgs/TrafficControlRequestV01 _tcrV01
    (send _tcrV01 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; j2735_msgs/TrafficControlRequestV01 _tcrV01
       (send _tcrV01 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; j2735_msgs/TrafficControlRequestV01 _tcrV01
     (send _tcrV01 :deserialize buf ptr-) (incf ptr- (send _tcrV01 :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlRequest :md5sum-) "a4cf6cce1430d4d443b6d27e379c1881")
(setf (get j2735_msgs::TrafficControlRequest :datatype-) "j2735_msgs/TrafficControlRequest")
(setf (get j2735_msgs::TrafficControlRequest :definition-)
      "#
# TrafficControlRequest.msg
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

#TrafficControlRequest ::= CHOICE
#{
#	reserved NULL, -- skip version zero
#	tcrV01 TrafficControlRequestV01, -- traffic control request version 1
#	...
#}

uint8 choice

uint8 RESERVED=0
uint8 TCRV01=1

#tcrV01 ::= TrafficControlRequestV01
j2735_msgs/TrafficControlRequestV01 tcrV01

================================================================================
MSG: j2735_msgs/TrafficControlRequestV01
#
# TrafficControlRequestV01.msg
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

#TrafficControlRequestV01 ::= SEQUENCE
#{
#	reqid Id64b, -- randomly generated ephemeral request identifier
#	reqseq INTEGER (0..255), -- sequential counter used to differentiate traffic control requests
#	scale INTEGER (-3..3), -- vertex offset units 10^n meters
#	bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds
#}


# reqid ::= Id64b
j2735_msgs/Id64b reqid

# reqseq ::= INTEGER (0..255)
uint8 reqseq

# Scale ::= INTEGER (-3..3)  
int8 scale

# Bounds SEQUENCE (SIZE(1..63)) OF TrafficControlBounds
j2735_msgs/TrafficControlBounds[] bounds


































================================================================================
MSG: j2735_msgs/Id64b
#
# Id64b.msg
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

# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids

uint8[8] id
================================================================================
MSG: j2735_msgs/TrafficControlBounds
#
# TrafficControlBounds.msg
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


#TrafficControlBounds ::= SEQUENCE
#{
#	oldest EpochMins, -- timestamp of oldest traffic control message within bounds
#	reflon Longitude, -- initial vertex reference longitude
#	reflat Latitude, -- initial vertex reference latitude
#	offsets SEQUENCE (SIZE(3)) OF OffsetPoint -- relative vertex positions in scaled meters
#}

#oldest ::= EpochMins
uint64 oldest

# reflon ::= INTEGER (-1799999999..1800000000)
#  -- initial vertex reference longitude
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 reflon

int32 REFLON_MAX = 1800000000
int32 REFLON_MIN = -1799999999
int32 REFLON_UNAVAILABLE = 1800000001


# reflat ::= INTEGER (-900000000..900000000)
#  -- initial vertex reference latitude
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 reflat

int32 REFLAT_MAX = 900000000
int32 REFLAT_MIN = -900000000
int32 REFLAT_UNAVAILABLE = 900000001

#offsets ::= SEQUENCE (SIZE(3)) OF OffsetPoint 
j2735_msgs/OffsetPoint[3] offsets

================================================================================
MSG: j2735_msgs/OffsetPoint
#
# OffsetPoint.msg
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

#OffsetPoint ::= SEQUENCE
#{
#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters
#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters
#}

#deltax ::= INTEGER (-32768..32767)
int16 deltax

#deltay ::= INTEGER (-32768..32767)
int16 deltay



")



(provide :j2735_msgs/TrafficControlRequest "a4cf6cce1430d4d443b6d27e379c1881")


