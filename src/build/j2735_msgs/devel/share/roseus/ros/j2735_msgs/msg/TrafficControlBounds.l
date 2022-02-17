;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlBounds)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlBounds (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS")
  (make-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlBounds.msg.html


(intern "*REFLON_MAX*" (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(shadow '*REFLON_MAX* (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(defconstant j2735_msgs::TrafficControlBounds::*REFLON_MAX* 1800000000)
(intern "*REFLON_MIN*" (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(shadow '*REFLON_MIN* (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(defconstant j2735_msgs::TrafficControlBounds::*REFLON_MIN* -1799999999)
(intern "*REFLON_UNAVAILABLE*" (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(shadow '*REFLON_UNAVAILABLE* (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(defconstant j2735_msgs::TrafficControlBounds::*REFLON_UNAVAILABLE* 1800000001)
(intern "*REFLAT_MAX*" (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(shadow '*REFLAT_MAX* (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(defconstant j2735_msgs::TrafficControlBounds::*REFLAT_MAX* 900000000)
(intern "*REFLAT_MIN*" (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(shadow '*REFLAT_MIN* (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(defconstant j2735_msgs::TrafficControlBounds::*REFLAT_MIN* -900000000)
(intern "*REFLAT_UNAVAILABLE*" (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(shadow '*REFLAT_UNAVAILABLE* (find-package "J2735_MSGS::TRAFFICCONTROLBOUNDS"))
(defconstant j2735_msgs::TrafficControlBounds::*REFLAT_UNAVAILABLE* 900000001)

(defun j2735_msgs::TrafficControlBounds-to-symbol (const)
  (cond
        ((= const 1800000000) 'j2735_msgs::TrafficControlBounds::*REFLON_MAX*)
        ((= const -1799999999) 'j2735_msgs::TrafficControlBounds::*REFLON_MIN*)
        ((= const 1800000001) 'j2735_msgs::TrafficControlBounds::*REFLON_UNAVAILABLE*)
        ((= const 900000000) 'j2735_msgs::TrafficControlBounds::*REFLAT_MAX*)
        ((= const -900000000) 'j2735_msgs::TrafficControlBounds::*REFLAT_MIN*)
        ((= const 900000001) 'j2735_msgs::TrafficControlBounds::*REFLAT_UNAVAILABLE*)
        (t nil)))

(defclass j2735_msgs::TrafficControlBounds
  :super ros::object
  :slots (_oldest _reflon _reflat _offsets ))

(defmethod j2735_msgs::TrafficControlBounds
  (:init
   (&key
    ((:oldest __oldest) 0)
    ((:reflon __reflon) 0)
    ((:reflat __reflat) 0)
    ((:offsets __offsets) (let (r) (dotimes (i 3) (push (instance j2735_msgs::OffsetPoint :init) r)) r))
    )
   (send-super :init)
   (setq _oldest (round __oldest))
   (setq _reflon (round __reflon))
   (setq _reflat (round __reflat))
   (setq _offsets __offsets)
   self)
  (:oldest
   (&optional __oldest)
   (if __oldest (setq _oldest __oldest)) _oldest)
  (:reflon
   (&optional __reflon)
   (if __reflon (setq _reflon __reflon)) _reflon)
  (:reflat
   (&optional __reflat)
   (if __reflat (setq _reflat __reflat)) _reflat)
  (:offsets
   (&rest __offsets)
   (if (keywordp (car __offsets))
       (send* _offsets __offsets)
     (progn
       (if __offsets (setq _offsets (car __offsets)))
       _offsets)))
  (:serialization-length
   ()
   (+
    ;; uint64 _oldest
    8
    ;; int32 _reflon
    4
    ;; int32 _reflat
    4
    ;; j2735_msgs/OffsetPoint[3] _offsets
    (apply #'+ (send-all _offsets :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _oldest
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _oldest (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _oldest) (= (length (_oldest . bv)) 2)) ;; bignum
              (write-long (ash (elt (_oldest . bv) 0) 0) s)
              (write-long (ash (elt (_oldest . bv) 1) -1) s))
             ((and (class _oldest) (= (length (_oldest . bv)) 1)) ;; big1
              (write-long (elt (_oldest . bv) 0) s)
              (write-long (if (>= _oldest 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _oldest s)(write-long (if (>= _oldest 0) 0 #xffffffff) s)))
     ;; int32 _reflon
       (write-long _reflon s)
     ;; int32 _reflat
       (write-long _reflat s)
     ;; j2735_msgs/OffsetPoint[3] _offsets
     (dolist (elem _offsets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _oldest
     
#+(or :alpha :irix6 :x86_64)
      (setf _oldest (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _oldest (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _reflon
     (setq _reflon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reflat
     (setq _reflat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; j2735_msgs/OffsetPoint[3] _offsets
   (dotimes (i 3)
     (send (elt _offsets i) :deserialize buf ptr-) (incf ptr- (send (elt _offsets i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlBounds :md5sum-) "306f71a9cda43001373a32c7e26b44da")
(setf (get j2735_msgs::TrafficControlBounds :datatype-) "j2735_msgs/TrafficControlBounds")
(setf (get j2735_msgs::TrafficControlBounds :definition-)
      "#
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



(provide :j2735_msgs/TrafficControlBounds "306f71a9cda43001373a32c7e26b44da")


