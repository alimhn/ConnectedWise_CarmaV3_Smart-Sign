;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::SegmentAttributeXY)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'SegmentAttributeXY (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY")
  (make-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))

(in-package "ROS")
;;//! \htmlinclude SegmentAttributeXY.msg.html


(intern "*RESERVED*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*RESERVED* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*RESERVED* 0)
(intern "*DONOTBLOCK*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*DONOTBLOCK* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*DONOTBLOCK* 1)
(intern "*WHITELINE*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*WHITELINE* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*WHITELINE* 2)
(intern "*MERGINGLANELEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*MERGINGLANELEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*MERGINGLANELEFT* 3)
(intern "*MERGINGLANERIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*MERGINGLANERIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*MERGINGLANERIGHT* 4)
(intern "*CURBONLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*CURBONLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*CURBONLEFT* 5)
(intern "*CURBONRIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*CURBONRIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*CURBONRIGHT* 6)
(intern "*LOADINGZONEONLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*LOADINGZONEONLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*LOADINGZONEONLEFT* 7)
(intern "*LOADINGZONEONRIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*LOADINGZONEONRIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*LOADINGZONEONRIGHT* 8)
(intern "*TURNOUTPOINTONLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TURNOUTPOINTONLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TURNOUTPOINTONLEFT* 9)
(intern "*TURNOUTPOINTONRIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TURNOUTPOINTONRIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TURNOUTPOINTONRIGHT* 10)
(intern "*ADJACENTPARKINGONLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*ADJACENTPARKINGONLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*ADJACENTPARKINGONLEFT* 11)
(intern "*ADJACENTPARKINGONRIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*ADJACENTPARKINGONRIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*ADJACENTPARKINGONRIGHT* 12)
(intern "*ADJACENTBIKELANEONLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*ADJACENTBIKELANEONLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*ADJACENTBIKELANEONLEFT* 13)
(intern "*ADJACENTBIKELANEONRIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*ADJACENTBIKELANEONRIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*ADJACENTBIKELANEONRIGHT* 14)
(intern "*SHAREDBIKELANE*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*SHAREDBIKELANE* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*SHAREDBIKELANE* 15)
(intern "*BIKEBOXINFRONT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*BIKEBOXINFRONT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*BIKEBOXINFRONT* 16)
(intern "*TRANSITSTOPONLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TRANSITSTOPONLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TRANSITSTOPONLEFT* 17)
(intern "*TRANSITSTOPONRIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TRANSITSTOPONRIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TRANSITSTOPONRIGHT* 18)
(intern "*TRANSITSTOPINLANE*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TRANSITSTOPINLANE* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TRANSITSTOPINLANE* 19)
(intern "*SHAREDWITHTRACKEDVEHICLE*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*SHAREDWITHTRACKEDVEHICLE* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*SHAREDWITHTRACKEDVEHICLE* 20)
(intern "*SAFEISLAND*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*SAFEISLAND* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*SAFEISLAND* 21)
(intern "*LOWCURBSPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*LOWCURBSPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*LOWCURBSPRESENT* 22)
(intern "*RUMBLESTRIPPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*RUMBLESTRIPPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*RUMBLESTRIPPRESENT* 23)
(intern "*AUDIBLESIGNALINGPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*AUDIBLESIGNALINGPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*AUDIBLESIGNALINGPRESENT* 24)
(intern "*ADAPTIVETIMINGPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*ADAPTIVETIMINGPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*ADAPTIVETIMINGPRESENT* 25)
(intern "*RFSIGNALREQUESTPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*RFSIGNALREQUESTPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*RFSIGNALREQUESTPRESENT* 26)
(intern "*PARTIALCURBINTRUSION*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*PARTIALCURBINTRUSION* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*PARTIALCURBINTRUSION* 27)
(intern "*TAPERTOLEFT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TAPERTOLEFT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TAPERTOLEFT* 28)
(intern "*TAPERTORIGHT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TAPERTORIGHT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TAPERTORIGHT* 29)
(intern "*TAPERTOCENTERLINE*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TAPERTOCENTERLINE* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TAPERTOCENTERLINE* 30)
(intern "*PARALLELPARKING*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*PARALLELPARKING* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*PARALLELPARKING* 31)
(intern "*FREEPARKING*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*FREEPARKING* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*FREEPARKING* 32)
(intern "*TIMERESTRICTIONSONPARKING*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*TIMERESTRICTIONSONPARKING* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*TIMERESTRICTIONSONPARKING* 33)
(intern "*COSTTOPARK*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*COSTTOPARK* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*COSTTOPARK* 34)
(intern "*MIDBLOCKCURBPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*MIDBLOCKCURBPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*MIDBLOCKCURBPRESENT* 35)
(intern "*UNEVENPAVEMENTPRESENT*" (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(shadow '*UNEVENPAVEMENTPRESENT* (find-package "J2735_MSGS::SEGMENTATTRIBUTEXY"))
(defconstant j2735_msgs::SegmentAttributeXY::*UNEVENPAVEMENTPRESENT* 36)

(defun j2735_msgs::SegmentAttributeXY-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::SegmentAttributeXY::*RESERVED*)
        ((= const 1) 'j2735_msgs::SegmentAttributeXY::*DONOTBLOCK*)
        ((= const 2) 'j2735_msgs::SegmentAttributeXY::*WHITELINE*)
        ((= const 3) 'j2735_msgs::SegmentAttributeXY::*MERGINGLANELEFT*)
        ((= const 4) 'j2735_msgs::SegmentAttributeXY::*MERGINGLANERIGHT*)
        ((= const 5) 'j2735_msgs::SegmentAttributeXY::*CURBONLEFT*)
        ((= const 6) 'j2735_msgs::SegmentAttributeXY::*CURBONRIGHT*)
        ((= const 7) 'j2735_msgs::SegmentAttributeXY::*LOADINGZONEONLEFT*)
        ((= const 8) 'j2735_msgs::SegmentAttributeXY::*LOADINGZONEONRIGHT*)
        ((= const 9) 'j2735_msgs::SegmentAttributeXY::*TURNOUTPOINTONLEFT*)
        ((= const 10) 'j2735_msgs::SegmentAttributeXY::*TURNOUTPOINTONRIGHT*)
        ((= const 11) 'j2735_msgs::SegmentAttributeXY::*ADJACENTPARKINGONLEFT*)
        ((= const 12) 'j2735_msgs::SegmentAttributeXY::*ADJACENTPARKINGONRIGHT*)
        ((= const 13) 'j2735_msgs::SegmentAttributeXY::*ADJACENTBIKELANEONLEFT*)
        ((= const 14) 'j2735_msgs::SegmentAttributeXY::*ADJACENTBIKELANEONRIGHT*)
        ((= const 15) 'j2735_msgs::SegmentAttributeXY::*SHAREDBIKELANE*)
        ((= const 16) 'j2735_msgs::SegmentAttributeXY::*BIKEBOXINFRONT*)
        ((= const 17) 'j2735_msgs::SegmentAttributeXY::*TRANSITSTOPONLEFT*)
        ((= const 18) 'j2735_msgs::SegmentAttributeXY::*TRANSITSTOPONRIGHT*)
        ((= const 19) 'j2735_msgs::SegmentAttributeXY::*TRANSITSTOPINLANE*)
        ((= const 20) 'j2735_msgs::SegmentAttributeXY::*SHAREDWITHTRACKEDVEHICLE*)
        ((= const 21) 'j2735_msgs::SegmentAttributeXY::*SAFEISLAND*)
        ((= const 22) 'j2735_msgs::SegmentAttributeXY::*LOWCURBSPRESENT*)
        ((= const 23) 'j2735_msgs::SegmentAttributeXY::*RUMBLESTRIPPRESENT*)
        ((= const 24) 'j2735_msgs::SegmentAttributeXY::*AUDIBLESIGNALINGPRESENT*)
        ((= const 25) 'j2735_msgs::SegmentAttributeXY::*ADAPTIVETIMINGPRESENT*)
        ((= const 26) 'j2735_msgs::SegmentAttributeXY::*RFSIGNALREQUESTPRESENT*)
        ((= const 27) 'j2735_msgs::SegmentAttributeXY::*PARTIALCURBINTRUSION*)
        ((= const 28) 'j2735_msgs::SegmentAttributeXY::*TAPERTOLEFT*)
        ((= const 29) 'j2735_msgs::SegmentAttributeXY::*TAPERTORIGHT*)
        ((= const 30) 'j2735_msgs::SegmentAttributeXY::*TAPERTOCENTERLINE*)
        ((= const 31) 'j2735_msgs::SegmentAttributeXY::*PARALLELPARKING*)
        ((= const 32) 'j2735_msgs::SegmentAttributeXY::*FREEPARKING*)
        ((= const 33) 'j2735_msgs::SegmentAttributeXY::*TIMERESTRICTIONSONPARKING*)
        ((= const 34) 'j2735_msgs::SegmentAttributeXY::*COSTTOPARK*)
        ((= const 35) 'j2735_msgs::SegmentAttributeXY::*MIDBLOCKCURBPRESENT*)
        ((= const 36) 'j2735_msgs::SegmentAttributeXY::*UNEVENPAVEMENTPRESENT*)
        (t nil)))

(defclass j2735_msgs::SegmentAttributeXY
  :super ros::object
  :slots (_segment_attribute_xy ))

(defmethod j2735_msgs::SegmentAttributeXY
  (:init
   (&key
    ((:segment_attribute_xy __segment_attribute_xy) 0)
    )
   (send-super :init)
   (setq _segment_attribute_xy (round __segment_attribute_xy))
   self)
  (:segment_attribute_xy
   (&optional __segment_attribute_xy)
   (if __segment_attribute_xy (setq _segment_attribute_xy __segment_attribute_xy)) _segment_attribute_xy)
  (:serialization-length
   ()
   (+
    ;; uint8 _segment_attribute_xy
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _segment_attribute_xy
       (write-byte _segment_attribute_xy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _segment_attribute_xy
     (setq _segment_attribute_xy (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::SegmentAttributeXY :md5sum-) "0bf655d03b7cd76b23e9b3a8553000c1")
(setf (get j2735_msgs::SegmentAttributeXY :datatype-) "j2735_msgs/SegmentAttributeXY")
(setf (get j2735_msgs::SegmentAttributeXY :definition-)
      "#
# SegmentAttributeXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which
# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.
#
# SegmentAttributeXY ::= ENUMERATED {
# -- Various values which can be Enabled and Disabled for a lane segment
#
# -- General Items
# reserved	,
# doNotBlock	, 	-- segment where a vehicle
# 		  	-- may not come to a stop
# whiteLine	, 	-- segment where lane crossing not allowed
# 		  	-- such as the final few meters of a lane
#
# -- Porous Lane states, merging, turn outs, parking etc.
# mergingLaneLeft,  	-- indicates porous lanes
# mergingLaneRight,
# curbOnLeft,	  	-- indicates presence of curbs
# curbOnRight,
# loadingzoneOnLeft,	-- loading or drop off zones
# loadingzoneOnRight,
# turnOutPointOnLeft,	-- opening to adjacent street/alley/road
# turnOutPointOnRight,
# adjacentParkingOnLeft, 	-- side of road parking
# adjacentParkingOnRight,
#
# -- Bike Lane Needs
# adjacentBikeLaneOnLeft, -- presence of marked bike lanes
# adjacentBikeLaneOnRight,
# sharedBikeLane, 	-- right of way is shared with bikes
# 			-- who may occupy entire lane width
# bikeBoxInFront,
#
# -- Transit Needs
# transitStopOnLeft,	-- any form of bus/transit loading
# 			-- with pull in-out access to lane on left
# transitStopOnRight, 	-- any form of bus/transit loading
# 			-- with pull in-out access to lane on right
# transitStopInLane, 	-- any form of bus/transit loading
# 			-- in mid path of the lane
# sharedWithTrackedVehicle, -- lane is shared with train or trolley
# 			-- not used for crossing tracks
#
# -- Pedestrian Support Attributes
# safeIsland, 		-- begin/end a safety island in path
# lowCurbsPresent, 	-- for ADA support
# rumbleStripPresent, 	-- for ADA support
# audibleSignalingPresent, -- for ADA support
# adaptiveTimingPresent, 	-- for ADA support
# rfSignalRequestPresent, -- Supports RF push to walk technologies
# partialCurbIntrusion, 	-- path is blocked by a median or curb
# 			-- but at least 1 meter remains open for use
# 			-- and at-grade passage
#
# -- Lane geometry details
# taperToLeft,		-- Used to control final path shape
# taperToRight,		-- Used to control final path shape
# taperToCenterLine,	-- Used to control final path shape
#
# -- Parking Lane and Curb Attributes
# parallelParking, 	-- Parking at an angle with the street
# freeParking, 		-- no restriction on use of parking
# timeRestrictionsOnParking , -- Parking is not permitted at all times
# 			-- typically used when the 'parking' lane
# 			-- becomes a driving lane at times
# costToPark, 		-- Used where parking has a cost
# midBlockCurbPresent, 	-- a protruding curb near lane edge
# unEvenPavementPresent, 	-- a disjoint height at lane edge
# ...
# }

uint8  segment_attribute_xy

uint8 RESERVED=0
uint8 DONOTBLOCK=1
uint8 WHITELINE=2
uint8 MERGINGLANELEFT=3
uint8 MERGINGLANERIGHT=4
uint8 CURBONLEFT=5
uint8 CURBONRIGHT=6
uint8 LOADINGZONEONLEFT=7
uint8 LOADINGZONEONRIGHT=8
uint8 TURNOUTPOINTONLEFT=9
uint8 TURNOUTPOINTONRIGHT=10
uint8 ADJACENTPARKINGONLEFT=11
uint8 ADJACENTPARKINGONRIGHT=12
uint8 ADJACENTBIKELANEONLEFT=13
uint8 ADJACENTBIKELANEONRIGHT=14
uint8 SHAREDBIKELANE=15
uint8 BIKEBOXINFRONT=16
uint8 TRANSITSTOPONLEFT=17
uint8 TRANSITSTOPONRIGHT=18
uint8 TRANSITSTOPINLANE=19
uint8 SHAREDWITHTRACKEDVEHICLE=20
uint8 SAFEISLAND=21
uint8 LOWCURBSPRESENT=22
uint8 RUMBLESTRIPPRESENT=23
uint8 AUDIBLESIGNALINGPRESENT=24
uint8 ADAPTIVETIMINGPRESENT=25
uint8 RFSIGNALREQUESTPRESENT=26
uint8 PARTIALCURBINTRUSION=27
uint8 TAPERTOLEFT=28
uint8 TAPERTORIGHT=29
uint8 TAPERTOCENTERLINE=30
uint8 PARALLELPARKING=31
uint8 FREEPARKING=32
uint8 TIMERESTRICTIONSONPARKING=33
uint8 COSTTOPARK=34
uint8 MIDBLOCKCURBPRESENT=35
uint8 UNEVENPAVEMENTPRESENT=36


")



(provide :j2735_msgs/SegmentAttributeXY "0bf655d03b7cd76b23e9b3a8553000c1")


