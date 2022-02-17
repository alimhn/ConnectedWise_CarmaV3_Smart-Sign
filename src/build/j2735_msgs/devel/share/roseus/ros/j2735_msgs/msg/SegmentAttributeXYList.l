;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::SegmentAttributeXYList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'SegmentAttributeXYList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::SEGMENTATTRIBUTEXYLIST")
  (make-package "J2735_MSGS::SEGMENTATTRIBUTEXYLIST"))

(in-package "ROS")
;;//! \htmlinclude SegmentAttributeXYList.msg.html


(defclass j2735_msgs::SegmentAttributeXYList
  :super ros::object
  :slots (_segment_attribute_xy ))

(defmethod j2735_msgs::SegmentAttributeXYList
  (:init
   (&key
    ((:segment_attribute_xy __segment_attribute_xy) ())
    )
   (send-super :init)
   (setq _segment_attribute_xy __segment_attribute_xy)
   self)
  (:segment_attribute_xy
   (&rest __segment_attribute_xy)
   (if (keywordp (car __segment_attribute_xy))
       (send* _segment_attribute_xy __segment_attribute_xy)
     (progn
       (if __segment_attribute_xy (setq _segment_attribute_xy (car __segment_attribute_xy)))
       _segment_attribute_xy)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/SegmentAttributeXY[] _segment_attribute_xy
    (apply #'+ (send-all _segment_attribute_xy :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/SegmentAttributeXY[] _segment_attribute_xy
     (write-long (length _segment_attribute_xy) s)
     (dolist (elem _segment_attribute_xy)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/SegmentAttributeXY[] _segment_attribute_xy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segment_attribute_xy (let (r) (dotimes (i n) (push (instance j2735_msgs::SegmentAttributeXY :init) r)) r))
     (dolist (elem- _segment_attribute_xy)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::SegmentAttributeXYList :md5sum-) "c89c8ea8487e4681667c586a26613e54")
(setf (get j2735_msgs::SegmentAttributeXYList :datatype-) "j2735_msgs/SegmentAttributeXYList")
(setf (get j2735_msgs::SegmentAttributeXYList :definition-)
      "#
# NodeAttributeXYList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
#The DF_SegmentAttributeXYList data frame consists of a list of SegmentAttributeXY entries.

#SegmentAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF SegmentAttributeXY

j2735_msgs/SegmentAttributeXY[] segment_attribute_xy


================================================================================
MSG: j2735_msgs/SegmentAttributeXY
#
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



(provide :j2735_msgs/SegmentAttributeXYList "c89c8ea8487e4681667c586a26613e54")


