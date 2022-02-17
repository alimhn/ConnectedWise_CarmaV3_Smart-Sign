; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude SegmentAttributeXY.msg.html

(cl:defclass <SegmentAttributeXY> (roslisp-msg-protocol:ros-message)
  ((segment_attribute_xy
    :reader segment_attribute_xy
    :initarg :segment_attribute_xy
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SegmentAttributeXY (<SegmentAttributeXY>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentAttributeXY>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentAttributeXY)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<SegmentAttributeXY> is deprecated: use j2735_msgs-msg:SegmentAttributeXY instead.")))

(cl:ensure-generic-function 'segment_attribute_xy-val :lambda-list '(m))
(cl:defmethod segment_attribute_xy-val ((m <SegmentAttributeXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:segment_attribute_xy-val is deprecated.  Use j2735_msgs-msg:segment_attribute_xy instead.")
  (segment_attribute_xy m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SegmentAttributeXY>)))
    "Constants for message type '<SegmentAttributeXY>"
  '((:RESERVED . 0)
    (:DONOTBLOCK . 1)
    (:WHITELINE . 2)
    (:MERGINGLANELEFT . 3)
    (:MERGINGLANERIGHT . 4)
    (:CURBONLEFT . 5)
    (:CURBONRIGHT . 6)
    (:LOADINGZONEONLEFT . 7)
    (:LOADINGZONEONRIGHT . 8)
    (:TURNOUTPOINTONLEFT . 9)
    (:TURNOUTPOINTONRIGHT . 10)
    (:ADJACENTPARKINGONLEFT . 11)
    (:ADJACENTPARKINGONRIGHT . 12)
    (:ADJACENTBIKELANEONLEFT . 13)
    (:ADJACENTBIKELANEONRIGHT . 14)
    (:SHAREDBIKELANE . 15)
    (:BIKEBOXINFRONT . 16)
    (:TRANSITSTOPONLEFT . 17)
    (:TRANSITSTOPONRIGHT . 18)
    (:TRANSITSTOPINLANE . 19)
    (:SHAREDWITHTRACKEDVEHICLE . 20)
    (:SAFEISLAND . 21)
    (:LOWCURBSPRESENT . 22)
    (:RUMBLESTRIPPRESENT . 23)
    (:AUDIBLESIGNALINGPRESENT . 24)
    (:ADAPTIVETIMINGPRESENT . 25)
    (:RFSIGNALREQUESTPRESENT . 26)
    (:PARTIALCURBINTRUSION . 27)
    (:TAPERTOLEFT . 28)
    (:TAPERTORIGHT . 29)
    (:TAPERTOCENTERLINE . 30)
    (:PARALLELPARKING . 31)
    (:FREEPARKING . 32)
    (:TIMERESTRICTIONSONPARKING . 33)
    (:COSTTOPARK . 34)
    (:MIDBLOCKCURBPRESENT . 35)
    (:UNEVENPAVEMENTPRESENT . 36))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SegmentAttributeXY)))
    "Constants for message type 'SegmentAttributeXY"
  '((:RESERVED . 0)
    (:DONOTBLOCK . 1)
    (:WHITELINE . 2)
    (:MERGINGLANELEFT . 3)
    (:MERGINGLANERIGHT . 4)
    (:CURBONLEFT . 5)
    (:CURBONRIGHT . 6)
    (:LOADINGZONEONLEFT . 7)
    (:LOADINGZONEONRIGHT . 8)
    (:TURNOUTPOINTONLEFT . 9)
    (:TURNOUTPOINTONRIGHT . 10)
    (:ADJACENTPARKINGONLEFT . 11)
    (:ADJACENTPARKINGONRIGHT . 12)
    (:ADJACENTBIKELANEONLEFT . 13)
    (:ADJACENTBIKELANEONRIGHT . 14)
    (:SHAREDBIKELANE . 15)
    (:BIKEBOXINFRONT . 16)
    (:TRANSITSTOPONLEFT . 17)
    (:TRANSITSTOPONRIGHT . 18)
    (:TRANSITSTOPINLANE . 19)
    (:SHAREDWITHTRACKEDVEHICLE . 20)
    (:SAFEISLAND . 21)
    (:LOWCURBSPRESENT . 22)
    (:RUMBLESTRIPPRESENT . 23)
    (:AUDIBLESIGNALINGPRESENT . 24)
    (:ADAPTIVETIMINGPRESENT . 25)
    (:RFSIGNALREQUESTPRESENT . 26)
    (:PARTIALCURBINTRUSION . 27)
    (:TAPERTOLEFT . 28)
    (:TAPERTORIGHT . 29)
    (:TAPERTOCENTERLINE . 30)
    (:PARALLELPARKING . 31)
    (:FREEPARKING . 32)
    (:TIMERESTRICTIONSONPARKING . 33)
    (:COSTTOPARK . 34)
    (:MIDBLOCKCURBPRESENT . 35)
    (:UNEVENPAVEMENTPRESENT . 36))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentAttributeXY>) ostream)
  "Serializes a message object of type '<SegmentAttributeXY>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'segment_attribute_xy)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentAttributeXY>) istream)
  "Deserializes a message object of type '<SegmentAttributeXY>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'segment_attribute_xy)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentAttributeXY>)))
  "Returns string type for a message object of type '<SegmentAttributeXY>"
  "j2735_msgs/SegmentAttributeXY")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentAttributeXY)))
  "Returns string type for a message object of type 'SegmentAttributeXY"
  "j2735_msgs/SegmentAttributeXY")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentAttributeXY>)))
  "Returns md5sum for a message object of type '<SegmentAttributeXY>"
  "0bf655d03b7cd76b23e9b3a8553000c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentAttributeXY)))
  "Returns md5sum for a message object of type 'SegmentAttributeXY"
  "0bf655d03b7cd76b23e9b3a8553000c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentAttributeXY>)))
  "Returns full string definition for message of type '<SegmentAttributeXY>"
  (cl:format cl:nil "#~%# SegmentAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which~%# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.~%#~%# SegmentAttributeXY ::= ENUMERATED {~%# -- Various values which can be Enabled and Disabled for a lane segment~%#~%# -- General Items~%# reserved	,~%# doNotBlock	, 	-- segment where a vehicle~%# 		  	-- may not come to a stop~%# whiteLine	, 	-- segment where lane crossing not allowed~%# 		  	-- such as the final few meters of a lane~%#~%# -- Porous Lane states, merging, turn outs, parking etc.~%# mergingLaneLeft,  	-- indicates porous lanes~%# mergingLaneRight,~%# curbOnLeft,	  	-- indicates presence of curbs~%# curbOnRight,~%# loadingzoneOnLeft,	-- loading or drop off zones~%# loadingzoneOnRight,~%# turnOutPointOnLeft,	-- opening to adjacent street/alley/road~%# turnOutPointOnRight,~%# adjacentParkingOnLeft, 	-- side of road parking~%# adjacentParkingOnRight,~%#~%# -- Bike Lane Needs~%# adjacentBikeLaneOnLeft, -- presence of marked bike lanes~%# adjacentBikeLaneOnRight,~%# sharedBikeLane, 	-- right of way is shared with bikes~%# 			-- who may occupy entire lane width~%# bikeBoxInFront,~%#~%# -- Transit Needs~%# transitStopOnLeft,	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on left~%# transitStopOnRight, 	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on right~%# transitStopInLane, 	-- any form of bus/transit loading~%# 			-- in mid path of the lane~%# sharedWithTrackedVehicle, -- lane is shared with train or trolley~%# 			-- not used for crossing tracks~%#~%# -- Pedestrian Support Attributes~%# safeIsland, 		-- begin/end a safety island in path~%# lowCurbsPresent, 	-- for ADA support~%# rumbleStripPresent, 	-- for ADA support~%# audibleSignalingPresent, -- for ADA support~%# adaptiveTimingPresent, 	-- for ADA support~%# rfSignalRequestPresent, -- Supports RF push to walk technologies~%# partialCurbIntrusion, 	-- path is blocked by a median or curb~%# 			-- but at least 1 meter remains open for use~%# 			-- and at-grade passage~%#~%# -- Lane geometry details~%# taperToLeft,		-- Used to control final path shape~%# taperToRight,		-- Used to control final path shape~%# taperToCenterLine,	-- Used to control final path shape~%#~%# -- Parking Lane and Curb Attributes~%# parallelParking, 	-- Parking at an angle with the street~%# freeParking, 		-- no restriction on use of parking~%# timeRestrictionsOnParking , -- Parking is not permitted at all times~%# 			-- typically used when the 'parking' lane~%# 			-- becomes a driving lane at times~%# costToPark, 		-- Used where parking has a cost~%# midBlockCurbPresent, 	-- a protruding curb near lane edge~%# unEvenPavementPresent, 	-- a disjoint height at lane edge~%# ...~%# }~%~%uint8  segment_attribute_xy~%~%uint8 RESERVED=0~%uint8 DONOTBLOCK=1~%uint8 WHITELINE=2~%uint8 MERGINGLANELEFT=3~%uint8 MERGINGLANERIGHT=4~%uint8 CURBONLEFT=5~%uint8 CURBONRIGHT=6~%uint8 LOADINGZONEONLEFT=7~%uint8 LOADINGZONEONRIGHT=8~%uint8 TURNOUTPOINTONLEFT=9~%uint8 TURNOUTPOINTONRIGHT=10~%uint8 ADJACENTPARKINGONLEFT=11~%uint8 ADJACENTPARKINGONRIGHT=12~%uint8 ADJACENTBIKELANEONLEFT=13~%uint8 ADJACENTBIKELANEONRIGHT=14~%uint8 SHAREDBIKELANE=15~%uint8 BIKEBOXINFRONT=16~%uint8 TRANSITSTOPONLEFT=17~%uint8 TRANSITSTOPONRIGHT=18~%uint8 TRANSITSTOPINLANE=19~%uint8 SHAREDWITHTRACKEDVEHICLE=20~%uint8 SAFEISLAND=21~%uint8 LOWCURBSPRESENT=22~%uint8 RUMBLESTRIPPRESENT=23~%uint8 AUDIBLESIGNALINGPRESENT=24~%uint8 ADAPTIVETIMINGPRESENT=25~%uint8 RFSIGNALREQUESTPRESENT=26~%uint8 PARTIALCURBINTRUSION=27~%uint8 TAPERTOLEFT=28~%uint8 TAPERTORIGHT=29~%uint8 TAPERTOCENTERLINE=30~%uint8 PARALLELPARKING=31~%uint8 FREEPARKING=32~%uint8 TIMERESTRICTIONSONPARKING=33~%uint8 COSTTOPARK=34~%uint8 MIDBLOCKCURBPRESENT=35~%uint8 UNEVENPAVEMENTPRESENT=36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentAttributeXY)))
  "Returns full string definition for message of type 'SegmentAttributeXY"
  (cl:format cl:nil "#~%# SegmentAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which~%# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.~%#~%# SegmentAttributeXY ::= ENUMERATED {~%# -- Various values which can be Enabled and Disabled for a lane segment~%#~%# -- General Items~%# reserved	,~%# doNotBlock	, 	-- segment where a vehicle~%# 		  	-- may not come to a stop~%# whiteLine	, 	-- segment where lane crossing not allowed~%# 		  	-- such as the final few meters of a lane~%#~%# -- Porous Lane states, merging, turn outs, parking etc.~%# mergingLaneLeft,  	-- indicates porous lanes~%# mergingLaneRight,~%# curbOnLeft,	  	-- indicates presence of curbs~%# curbOnRight,~%# loadingzoneOnLeft,	-- loading or drop off zones~%# loadingzoneOnRight,~%# turnOutPointOnLeft,	-- opening to adjacent street/alley/road~%# turnOutPointOnRight,~%# adjacentParkingOnLeft, 	-- side of road parking~%# adjacentParkingOnRight,~%#~%# -- Bike Lane Needs~%# adjacentBikeLaneOnLeft, -- presence of marked bike lanes~%# adjacentBikeLaneOnRight,~%# sharedBikeLane, 	-- right of way is shared with bikes~%# 			-- who may occupy entire lane width~%# bikeBoxInFront,~%#~%# -- Transit Needs~%# transitStopOnLeft,	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on left~%# transitStopOnRight, 	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on right~%# transitStopInLane, 	-- any form of bus/transit loading~%# 			-- in mid path of the lane~%# sharedWithTrackedVehicle, -- lane is shared with train or trolley~%# 			-- not used for crossing tracks~%#~%# -- Pedestrian Support Attributes~%# safeIsland, 		-- begin/end a safety island in path~%# lowCurbsPresent, 	-- for ADA support~%# rumbleStripPresent, 	-- for ADA support~%# audibleSignalingPresent, -- for ADA support~%# adaptiveTimingPresent, 	-- for ADA support~%# rfSignalRequestPresent, -- Supports RF push to walk technologies~%# partialCurbIntrusion, 	-- path is blocked by a median or curb~%# 			-- but at least 1 meter remains open for use~%# 			-- and at-grade passage~%#~%# -- Lane geometry details~%# taperToLeft,		-- Used to control final path shape~%# taperToRight,		-- Used to control final path shape~%# taperToCenterLine,	-- Used to control final path shape~%#~%# -- Parking Lane and Curb Attributes~%# parallelParking, 	-- Parking at an angle with the street~%# freeParking, 		-- no restriction on use of parking~%# timeRestrictionsOnParking , -- Parking is not permitted at all times~%# 			-- typically used when the 'parking' lane~%# 			-- becomes a driving lane at times~%# costToPark, 		-- Used where parking has a cost~%# midBlockCurbPresent, 	-- a protruding curb near lane edge~%# unEvenPavementPresent, 	-- a disjoint height at lane edge~%# ...~%# }~%~%uint8  segment_attribute_xy~%~%uint8 RESERVED=0~%uint8 DONOTBLOCK=1~%uint8 WHITELINE=2~%uint8 MERGINGLANELEFT=3~%uint8 MERGINGLANERIGHT=4~%uint8 CURBONLEFT=5~%uint8 CURBONRIGHT=6~%uint8 LOADINGZONEONLEFT=7~%uint8 LOADINGZONEONRIGHT=8~%uint8 TURNOUTPOINTONLEFT=9~%uint8 TURNOUTPOINTONRIGHT=10~%uint8 ADJACENTPARKINGONLEFT=11~%uint8 ADJACENTPARKINGONRIGHT=12~%uint8 ADJACENTBIKELANEONLEFT=13~%uint8 ADJACENTBIKELANEONRIGHT=14~%uint8 SHAREDBIKELANE=15~%uint8 BIKEBOXINFRONT=16~%uint8 TRANSITSTOPONLEFT=17~%uint8 TRANSITSTOPONRIGHT=18~%uint8 TRANSITSTOPINLANE=19~%uint8 SHAREDWITHTRACKEDVEHICLE=20~%uint8 SAFEISLAND=21~%uint8 LOWCURBSPRESENT=22~%uint8 RUMBLESTRIPPRESENT=23~%uint8 AUDIBLESIGNALINGPRESENT=24~%uint8 ADAPTIVETIMINGPRESENT=25~%uint8 RFSIGNALREQUESTPRESENT=26~%uint8 PARTIALCURBINTRUSION=27~%uint8 TAPERTOLEFT=28~%uint8 TAPERTORIGHT=29~%uint8 TAPERTOCENTERLINE=30~%uint8 PARALLELPARKING=31~%uint8 FREEPARKING=32~%uint8 TIMERESTRICTIONSONPARKING=33~%uint8 COSTTOPARK=34~%uint8 MIDBLOCKCURBPRESENT=35~%uint8 UNEVENPAVEMENTPRESENT=36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentAttributeXY>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentAttributeXY>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentAttributeXY
    (cl:cons ':segment_attribute_xy (segment_attribute_xy msg))
))
