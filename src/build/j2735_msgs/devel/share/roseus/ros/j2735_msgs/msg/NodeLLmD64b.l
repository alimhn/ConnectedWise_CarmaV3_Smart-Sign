;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::NodeLLmD64b)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'NodeLLmD64b (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::NODELLMD64B")
  (make-package "J2735_MSGS::NODELLMD64B"))

(in-package "ROS")
;;//! \htmlinclude NodeLLmD64b.msg.html


(intern "*LONGITUDE_UNAVAILABLE*" (find-package "J2735_MSGS::NODELLMD64B"))
(shadow '*LONGITUDE_UNAVAILABLE* (find-package "J2735_MSGS::NODELLMD64B"))
(defconstant j2735_msgs::NodeLLmD64b::*LONGITUDE_UNAVAILABLE* 1800000001)
(intern "*LONGITUDE_MAX*" (find-package "J2735_MSGS::NODELLMD64B"))
(shadow '*LONGITUDE_MAX* (find-package "J2735_MSGS::NODELLMD64B"))
(defconstant j2735_msgs::NodeLLmD64b::*LONGITUDE_MAX* 1800000000)
(intern "*LONGITUDE_MIN*" (find-package "J2735_MSGS::NODELLMD64B"))
(shadow '*LONGITUDE_MIN* (find-package "J2735_MSGS::NODELLMD64B"))
(defconstant j2735_msgs::NodeLLmD64b::*LONGITUDE_MIN* -1799999999)
(intern "*LATITUDE_UNAVAILABLE*" (find-package "J2735_MSGS::NODELLMD64B"))
(shadow '*LATITUDE_UNAVAILABLE* (find-package "J2735_MSGS::NODELLMD64B"))
(defconstant j2735_msgs::NodeLLmD64b::*LATITUDE_UNAVAILABLE* 900000001)
(intern "*LATITUDE_MAX*" (find-package "J2735_MSGS::NODELLMD64B"))
(shadow '*LATITUDE_MAX* (find-package "J2735_MSGS::NODELLMD64B"))
(defconstant j2735_msgs::NodeLLmD64b::*LATITUDE_MAX* 900000000)
(intern "*LATITUDE_MIN*" (find-package "J2735_MSGS::NODELLMD64B"))
(shadow '*LATITUDE_MIN* (find-package "J2735_MSGS::NODELLMD64B"))
(defconstant j2735_msgs::NodeLLmD64b::*LATITUDE_MIN* -900000000)

(defun j2735_msgs::NodeLLmD64b-to-symbol (const)
  (cond
        ((= const 1800000001) 'j2735_msgs::NodeLLmD64b::*LONGITUDE_UNAVAILABLE*)
        ((= const 1800000000) 'j2735_msgs::NodeLLmD64b::*LONGITUDE_MAX*)
        ((= const -1799999999) 'j2735_msgs::NodeLLmD64b::*LONGITUDE_MIN*)
        ((= const 900000001) 'j2735_msgs::NodeLLmD64b::*LATITUDE_UNAVAILABLE*)
        ((= const 900000000) 'j2735_msgs::NodeLLmD64b::*LATITUDE_MAX*)
        ((= const -900000000) 'j2735_msgs::NodeLLmD64b::*LATITUDE_MIN*)
        (t nil)))

(defclass j2735_msgs::NodeLLmD64b
  :super ros::object
  :slots (_longitude _latitude ))

(defmethod j2735_msgs::NodeLLmD64b
  (:init
   (&key
    ((:longitude __longitude) 0)
    ((:latitude __latitude) 0)
    )
   (send-super :init)
   (setq _longitude (round __longitude))
   (setq _latitude (round __latitude))
   self)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:serialization-length
   ()
   (+
    ;; int32 _longitude
    4
    ;; int32 _latitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _longitude
       (write-long _longitude s)
     ;; int32 _latitude
       (write-long _latitude s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _longitude
     (setq _longitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _latitude
     (setq _latitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get j2735_msgs::NodeLLmD64b :md5sum-) "efa0e1c69ee465f94ef0c4372e50ef36")
(setf (get j2735_msgs::NodeLLmD64b :datatype-) "j2735_msgs/NodeLLmD64b")
(setf (get j2735_msgs::NodeLLmD64b :definition-)
      "#
# NodeLLmD64b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.

# Node-LLmD-64b ::= SEQUENCE {
# lon Longitude,
# lat Latitude
# }

#Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_UNAVAILABLE = 1800000001
int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999

#Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_UNAVAILABLE = 900000001
int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000





")



(provide :j2735_msgs/NodeLLmD64b "efa0e1c69ee465f94ef0c4372e50ef36")


