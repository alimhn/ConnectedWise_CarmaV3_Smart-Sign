;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LayerType)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LayerType (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LAYERTYPE")
  (make-package "J2735_MSGS::LAYERTYPE"))

(in-package "ROS")
;;//! \htmlinclude LayerType.msg.html


(intern "*NONE*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*NONE* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*NONE* 0)
(intern "*MIXED_CONTENT*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*MIXED_CONTENT* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*MIXED_CONTENT* 1)
(intern "*GENERAL_MAP_DATA*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*GENERAL_MAP_DATA* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*GENERAL_MAP_DATA* 2)
(intern "*INTERSECTION_DATA*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*INTERSECTION_DATA* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*INTERSECTION_DATA* 3)
(intern "*CURVE_DATA*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*CURVE_DATA* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*CURVE_DATA* 4)
(intern "*ROADWAY_SECTION_DATA*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*ROADWAY_SECTION_DATA* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*ROADWAY_SECTION_DATA* 5)
(intern "*PARKING_AREA_DATA*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*PARKING_AREA_DATA* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*PARKING_AREA_DATA* 6)
(intern "*SHARED_LANE_DATA*" (find-package "J2735_MSGS::LAYERTYPE"))
(shadow '*SHARED_LANE_DATA* (find-package "J2735_MSGS::LAYERTYPE"))
(defconstant j2735_msgs::LayerType::*SHARED_LANE_DATA* 7)

(defun j2735_msgs::LayerType-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::LayerType::*NONE*)
        ((= const 1) 'j2735_msgs::LayerType::*MIXED_CONTENT*)
        ((= const 2) 'j2735_msgs::LayerType::*GENERAL_MAP_DATA*)
        ((= const 3) 'j2735_msgs::LayerType::*INTERSECTION_DATA*)
        ((= const 4) 'j2735_msgs::LayerType::*CURVE_DATA*)
        ((= const 5) 'j2735_msgs::LayerType::*ROADWAY_SECTION_DATA*)
        ((= const 6) 'j2735_msgs::LayerType::*PARKING_AREA_DATA*)
        ((= const 7) 'j2735_msgs::LayerType::*SHARED_LANE_DATA*)
        (t nil)))

(defclass j2735_msgs::LayerType
  :super ros::object
  :slots (_layer_type ))

(defmethod j2735_msgs::LayerType
  (:init
   (&key
    ((:layer_type __layer_type) 0)
    )
   (send-super :init)
   (setq _layer_type (round __layer_type))
   self)
  (:layer_type
   (&optional __layer_type)
   (if __layer_type (setq _layer_type __layer_type)) _layer_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _layer_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _layer_type
       (write-byte _layer_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _layer_type
     (setq _layer_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::LayerType :md5sum-) "225f090984ed5db591d792a4385a39de")
(setf (get j2735_msgs::LayerType :datatype-) "j2735_msgs/LayerType")
(setf (get j2735_msgs::LayerType :definition-)
      "# LayerType.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Data element used to uniquely identify the type of information to be found in a layer of geographic map fragment
# such as an intersection.
#

uint8 layer_type

# LayerType ::= ENUMERATED {
# none,
# mixedContent, -- two or more of the below types
# generalMapData,
# intersectionData,
# curveData,
# roadwaySectionData,
# parkingAreaData,
# sharedLaneData,
# ...
# }

# enumeration values for plan type:
uint8       NONE = 0
uint8       MIXED_CONTENT = 1
uint8       GENERAL_MAP_DATA = 2
uint8       INTERSECTION_DATA = 3
uint8       CURVE_DATA = 4
uint8       ROADWAY_SECTION_DATA = 5
uint8       PARKING_AREA_DATA = 6
uint8       SHARED_LANE_DATA = 7
")



(provide :j2735_msgs/LayerType "225f090984ed5db591d792a4385a39de")


