;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlGeometry)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlGeometry (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY")
  (make-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlGeometry.msg.html


(intern "*REFLON_UNAVAILABLE*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFLON_UNAVAILABLE* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFLON_UNAVAILABLE* 1800000001)
(intern "*REFLON_MAX*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFLON_MAX* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFLON_MAX* 1800000000)
(intern "*REFLON_MIN*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFLON_MIN* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFLON_MIN* -1799999999)
(intern "*REFLAT_UNAVAILABLE*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFLAT_UNAVAILABLE* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFLAT_UNAVAILABLE* 900000001)
(intern "*REFLAT_MAX*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFLAT_MAX* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFLAT_MAX* 900000000)
(intern "*REFLAT_MIN*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFLAT_MIN* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFLAT_MIN* -900000000)
(intern "*REFELV_UNKNOWN*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFELV_UNKNOWN* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFELV_UNKNOWN* 0)
(intern "*REFELV_MAX*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFELV_MAX* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFELV_MAX* 65535)
(intern "*REFELV_MIN*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*REFELV_MIN* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*REFELV_MIN* 1)
(intern "*HEADING_MAX*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*HEADING_MAX* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*HEADING_MAX* 3599)
(intern "*HEADING_MIN*" (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(shadow '*HEADING_MIN* (find-package "J2735_MSGS::TRAFFICCONTROLGEOMETRY"))
(defconstant j2735_msgs::TrafficControlGeometry::*HEADING_MIN* 0)

(defun j2735_msgs::TrafficControlGeometry-to-symbol (const)
  (cond
        ((= const 1800000001) 'j2735_msgs::TrafficControlGeometry::*REFLON_UNAVAILABLE*)
        ((= const 1800000000) 'j2735_msgs::TrafficControlGeometry::*REFLON_MAX*)
        ((= const -1799999999) 'j2735_msgs::TrafficControlGeometry::*REFLON_MIN*)
        ((= const 900000001) 'j2735_msgs::TrafficControlGeometry::*REFLAT_UNAVAILABLE*)
        ((= const 900000000) 'j2735_msgs::TrafficControlGeometry::*REFLAT_MAX*)
        ((= const -900000000) 'j2735_msgs::TrafficControlGeometry::*REFLAT_MIN*)
        ((= const 0) 'j2735_msgs::TrafficControlGeometry::*REFELV_UNKNOWN*)
        ((= const 65535) 'j2735_msgs::TrafficControlGeometry::*REFELV_MAX*)
        ((= const 1) 'j2735_msgs::TrafficControlGeometry::*REFELV_MIN*)
        ((= const 3599) 'j2735_msgs::TrafficControlGeometry::*HEADING_MAX*)
        ((= const 0) 'j2735_msgs::TrafficControlGeometry::*HEADING_MIN*)
        (t nil)))

(defclass j2735_msgs::TrafficControlGeometry
  :super ros::object
  :slots (_proj _datum _reftime _reflon _reflat _refelv _heading _nodes ))

(defmethod j2735_msgs::TrafficControlGeometry
  (:init
   (&key
    ((:proj __proj) "")
    ((:datum __datum) "")
    ((:reftime __reftime) 0)
    ((:reflon __reflon) 0)
    ((:reflat __reflat) 0)
    ((:refelv __refelv) 0)
    ((:heading __heading) 0)
    ((:nodes __nodes) ())
    )
   (send-super :init)
   (setq _proj (string __proj))
   (setq _datum (string __datum))
   (setq _reftime (round __reftime))
   (setq _reflon (round __reflon))
   (setq _reflat (round __reflat))
   (setq _refelv (round __refelv))
   (setq _heading (round __heading))
   (setq _nodes __nodes)
   self)
  (:proj
   (&optional __proj)
   (if __proj (setq _proj __proj)) _proj)
  (:datum
   (&optional __datum)
   (if __datum (setq _datum __datum)) _datum)
  (:reftime
   (&optional __reftime)
   (if __reftime (setq _reftime __reftime)) _reftime)
  (:reflon
   (&optional __reflon)
   (if __reflon (setq _reflon __reflon)) _reflon)
  (:reflat
   (&optional __reflat)
   (if __reflat (setq _reflat __reflat)) _reflat)
  (:refelv
   (&optional __refelv)
   (if __refelv (setq _refelv __refelv)) _refelv)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:nodes
   (&rest __nodes)
   (if (keywordp (car __nodes))
       (send* _nodes __nodes)
     (progn
       (if __nodes (setq _nodes (car __nodes)))
       _nodes)))
  (:serialization-length
   ()
   (+
    ;; string _proj
    4 (length _proj)
    ;; string _datum
    4 (length _datum)
    ;; uint64 _reftime
    8
    ;; int32 _reflon
    4
    ;; int32 _reflat
    4
    ;; int32 _refelv
    4
    ;; uint16 _heading
    2
    ;; j2735_msgs/PathNode[] _nodes
    (apply #'+ (send-all _nodes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _proj
       (write-long (length _proj) s) (princ _proj s)
     ;; string _datum
       (write-long (length _datum) s) (princ _datum s)
     ;; uint64 _reftime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reftime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reftime) (= (length (_reftime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reftime . bv) 0) 0) s)
              (write-long (ash (elt (_reftime . bv) 1) -1) s))
             ((and (class _reftime) (= (length (_reftime . bv)) 1)) ;; big1
              (write-long (elt (_reftime . bv) 0) s)
              (write-long (if (>= _reftime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reftime s)(write-long (if (>= _reftime 0) 0 #xffffffff) s)))
     ;; int32 _reflon
       (write-long _reflon s)
     ;; int32 _reflat
       (write-long _reflat s)
     ;; int32 _refelv
       (write-long _refelv s)
     ;; uint16 _heading
       (write-word _heading s)
     ;; j2735_msgs/PathNode[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _proj
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _proj (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _datum
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _datum (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _reftime
     
#+(or :alpha :irix6 :x86_64)
      (setf _reftime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reftime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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
   ;; int32 _refelv
     (setq _refelv (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _heading
     (setq _heading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; j2735_msgs/PathNode[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (let (r) (dotimes (i n) (push (instance j2735_msgs::PathNode :init) r)) r))
     (dolist (elem- _nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlGeometry :md5sum-) "8ffaf44999ab634ac9a3f1c4f537cc73")
(setf (get j2735_msgs::TrafficControlGeometry :datatype-) "j2735_msgs/TrafficControlGeometry")
(setf (get j2735_msgs::TrafficControlGeometry :definition-)
      "#
# TrafficControlGeometry.msg
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

# TrafficControlGeometry ::= SEQUENCE
# {
# 	proj IA5String (SIZE(0..63)),
# 	datum IA5String (SIZE(0..63)),
# 	reftime EpochMins,
# 	reflon Longitude,
# 	reflat Latitude,
# 	refelv Elevation, -- decimeter offset -4096 from reference datum
# 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees
# 	nodes SEQUENCE (SIZE(1..255)) OF PathNode
# }

# proj IA5String (SIZE(0..63)),
string proj

# datum IA5String (SIZE(0..63)),
string datum

# reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC
uint64 reftime

# reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null
int32 reflon

int32 REFLON_UNAVAILABLE = 1800000001
int32 REFLON_MAX = 1800000000
int32 REFLON_MIN = -1799999999

# reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null
int32 reflat

int32 REFLAT_UNAVAILABLE = 900000001
int32 REFLAT_MAX = 900000000
int32 REFLAT_MIN = -900000000

# refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum
int32 refelv

int32 REFELV_UNKNOWN = 0
int32 REFELV_MAX = 65535
int32 REFELV_MIN = 1

# heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees
uint16 heading
uint16 HEADING_MAX = 3599
uint16 HEADING_MIN = 0

# nodes SEQUENCE (SIZE(1..255)) OF PathNode
j2735_msgs/PathNode[] nodes



================================================================================
MSG: j2735_msgs/PathNode
#
# PathNode.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The positive x direction proceeds eastward, positive y proceeds
# northward, and positive z proceeds away from the center of the Earth. 

# X ::= INTEGER (-32768..32767)
#   -- units are in cm
int16 x
int16 y
int16 z

bool z_exists

# Width ::= INTEGER (-128..127)
#   -- units are in cm
int8 width
bool width_exists
")



(provide :j2735_msgs/TrafficControlGeometry "8ffaf44999ab634ac9a3f1c4f537cc73")


