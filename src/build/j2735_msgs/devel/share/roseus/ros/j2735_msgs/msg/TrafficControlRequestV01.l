;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlRequestV01)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlRequestV01 (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLREQUESTV01")
  (make-package "J2735_MSGS::TRAFFICCONTROLREQUESTV01"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlRequestV01.msg.html


(defclass j2735_msgs::TrafficControlRequestV01
  :super ros::object
  :slots (_reqid _reqseq _scale _bounds ))

(defmethod j2735_msgs::TrafficControlRequestV01
  (:init
   (&key
    ((:reqid __reqid) (instance j2735_msgs::Id64b :init))
    ((:reqseq __reqseq) 0)
    ((:scale __scale) 0)
    ((:bounds __bounds) ())
    )
   (send-super :init)
   (setq _reqid __reqid)
   (setq _reqseq (round __reqseq))
   (setq _scale (round __scale))
   (setq _bounds __bounds)
   self)
  (:reqid
   (&rest __reqid)
   (if (keywordp (car __reqid))
       (send* _reqid __reqid)
     (progn
       (if __reqid (setq _reqid (car __reqid)))
       _reqid)))
  (:reqseq
   (&optional __reqseq)
   (if __reqseq (setq _reqseq __reqseq)) _reqseq)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:bounds
   (&rest __bounds)
   (if (keywordp (car __bounds))
       (send* _bounds __bounds)
     (progn
       (if __bounds (setq _bounds (car __bounds)))
       _bounds)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/Id64b _reqid
    (send _reqid :serialization-length)
    ;; uint8 _reqseq
    1
    ;; int8 _scale
    1
    ;; j2735_msgs/TrafficControlBounds[] _bounds
    (apply #'+ (send-all _bounds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/Id64b _reqid
       (send _reqid :serialize s)
     ;; uint8 _reqseq
       (write-byte _reqseq s)
     ;; int8 _scale
       (write-byte _scale s)
     ;; j2735_msgs/TrafficControlBounds[] _bounds
     (write-long (length _bounds) s)
     (dolist (elem _bounds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/Id64b _reqid
     (send _reqid :deserialize buf ptr-) (incf ptr- (send _reqid :serialization-length))
   ;; uint8 _reqseq
     (setq _reqseq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _scale
     (setq _scale (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _scale 127) (setq _scale (- _scale 256)))
   ;; j2735_msgs/TrafficControlBounds[] _bounds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounds (let (r) (dotimes (i n) (push (instance j2735_msgs::TrafficControlBounds :init) r)) r))
     (dolist (elem- _bounds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlRequestV01 :md5sum-) "5c9add83cd83b8c7ef3a3df866b7f621")
(setf (get j2735_msgs::TrafficControlRequestV01 :datatype-) "j2735_msgs/TrafficControlRequestV01")
(setf (get j2735_msgs::TrafficControlRequestV01 :definition-)
      "#
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



(provide :j2735_msgs/TrafficControlRequestV01 "5c9add83cd83b8c7ef3a3df866b7f621")


