; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude SegmentAttributeXYList.msg.html

(cl:defclass <SegmentAttributeXYList> (roslisp-msg-protocol:ros-message)
  ((segment_attribute_xy
    :reader segment_attribute_xy
    :initarg :segment_attribute_xy
    :type (cl:vector j2735_msgs-msg:SegmentAttributeXY)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:SegmentAttributeXY :initial-element (cl:make-instance 'j2735_msgs-msg:SegmentAttributeXY))))
)

(cl:defclass SegmentAttributeXYList (<SegmentAttributeXYList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentAttributeXYList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentAttributeXYList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<SegmentAttributeXYList> is deprecated: use j2735_msgs-msg:SegmentAttributeXYList instead.")))

(cl:ensure-generic-function 'segment_attribute_xy-val :lambda-list '(m))
(cl:defmethod segment_attribute_xy-val ((m <SegmentAttributeXYList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:segment_attribute_xy-val is deprecated.  Use j2735_msgs-msg:segment_attribute_xy instead.")
  (segment_attribute_xy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentAttributeXYList>) ostream)
  "Serializes a message object of type '<SegmentAttributeXYList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segment_attribute_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segment_attribute_xy))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentAttributeXYList>) istream)
  "Deserializes a message object of type '<SegmentAttributeXYList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segment_attribute_xy) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segment_attribute_xy)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:SegmentAttributeXY))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentAttributeXYList>)))
  "Returns string type for a message object of type '<SegmentAttributeXYList>"
  "j2735_msgs/SegmentAttributeXYList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentAttributeXYList)))
  "Returns string type for a message object of type 'SegmentAttributeXYList"
  "j2735_msgs/SegmentAttributeXYList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentAttributeXYList>)))
  "Returns md5sum for a message object of type '<SegmentAttributeXYList>"
  "c89c8ea8487e4681667c586a26613e54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentAttributeXYList)))
  "Returns md5sum for a message object of type 'SegmentAttributeXYList"
  "c89c8ea8487e4681667c586a26613e54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentAttributeXYList>)))
  "Returns full string definition for message of type '<SegmentAttributeXYList>"
  (cl:format cl:nil "#~%# NodeAttributeXYList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%#The DF_SegmentAttributeXYList data frame consists of a list of SegmentAttributeXY entries.~%~%#SegmentAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF SegmentAttributeXY~%~%j2735_msgs/SegmentAttributeXY[] segment_attribute_xy~%~%~%================================================================================~%MSG: j2735_msgs/SegmentAttributeXY~%#~%# SegmentAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which~%# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.~%#~%# SegmentAttributeXY ::= ENUMERATED {~%# -- Various values which can be Enabled and Disabled for a lane segment~%#~%# -- General Items~%# reserved	,~%# doNotBlock	, 	-- segment where a vehicle~%# 		  	-- may not come to a stop~%# whiteLine	, 	-- segment where lane crossing not allowed~%# 		  	-- such as the final few meters of a lane~%#~%# -- Porous Lane states, merging, turn outs, parking etc.~%# mergingLaneLeft,  	-- indicates porous lanes~%# mergingLaneRight,~%# curbOnLeft,	  	-- indicates presence of curbs~%# curbOnRight,~%# loadingzoneOnLeft,	-- loading or drop off zones~%# loadingzoneOnRight,~%# turnOutPointOnLeft,	-- opening to adjacent street/alley/road~%# turnOutPointOnRight,~%# adjacentParkingOnLeft, 	-- side of road parking~%# adjacentParkingOnRight,~%#~%# -- Bike Lane Needs~%# adjacentBikeLaneOnLeft, -- presence of marked bike lanes~%# adjacentBikeLaneOnRight,~%# sharedBikeLane, 	-- right of way is shared with bikes~%# 			-- who may occupy entire lane width~%# bikeBoxInFront,~%#~%# -- Transit Needs~%# transitStopOnLeft,	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on left~%# transitStopOnRight, 	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on right~%# transitStopInLane, 	-- any form of bus/transit loading~%# 			-- in mid path of the lane~%# sharedWithTrackedVehicle, -- lane is shared with train or trolley~%# 			-- not used for crossing tracks~%#~%# -- Pedestrian Support Attributes~%# safeIsland, 		-- begin/end a safety island in path~%# lowCurbsPresent, 	-- for ADA support~%# rumbleStripPresent, 	-- for ADA support~%# audibleSignalingPresent, -- for ADA support~%# adaptiveTimingPresent, 	-- for ADA support~%# rfSignalRequestPresent, -- Supports RF push to walk technologies~%# partialCurbIntrusion, 	-- path is blocked by a median or curb~%# 			-- but at least 1 meter remains open for use~%# 			-- and at-grade passage~%#~%# -- Lane geometry details~%# taperToLeft,		-- Used to control final path shape~%# taperToRight,		-- Used to control final path shape~%# taperToCenterLine,	-- Used to control final path shape~%#~%# -- Parking Lane and Curb Attributes~%# parallelParking, 	-- Parking at an angle with the street~%# freeParking, 		-- no restriction on use of parking~%# timeRestrictionsOnParking , -- Parking is not permitted at all times~%# 			-- typically used when the 'parking' lane~%# 			-- becomes a driving lane at times~%# costToPark, 		-- Used where parking has a cost~%# midBlockCurbPresent, 	-- a protruding curb near lane edge~%# unEvenPavementPresent, 	-- a disjoint height at lane edge~%# ...~%# }~%~%uint8  segment_attribute_xy~%~%uint8 RESERVED=0~%uint8 DONOTBLOCK=1~%uint8 WHITELINE=2~%uint8 MERGINGLANELEFT=3~%uint8 MERGINGLANERIGHT=4~%uint8 CURBONLEFT=5~%uint8 CURBONRIGHT=6~%uint8 LOADINGZONEONLEFT=7~%uint8 LOADINGZONEONRIGHT=8~%uint8 TURNOUTPOINTONLEFT=9~%uint8 TURNOUTPOINTONRIGHT=10~%uint8 ADJACENTPARKINGONLEFT=11~%uint8 ADJACENTPARKINGONRIGHT=12~%uint8 ADJACENTBIKELANEONLEFT=13~%uint8 ADJACENTBIKELANEONRIGHT=14~%uint8 SHAREDBIKELANE=15~%uint8 BIKEBOXINFRONT=16~%uint8 TRANSITSTOPONLEFT=17~%uint8 TRANSITSTOPONRIGHT=18~%uint8 TRANSITSTOPINLANE=19~%uint8 SHAREDWITHTRACKEDVEHICLE=20~%uint8 SAFEISLAND=21~%uint8 LOWCURBSPRESENT=22~%uint8 RUMBLESTRIPPRESENT=23~%uint8 AUDIBLESIGNALINGPRESENT=24~%uint8 ADAPTIVETIMINGPRESENT=25~%uint8 RFSIGNALREQUESTPRESENT=26~%uint8 PARTIALCURBINTRUSION=27~%uint8 TAPERTOLEFT=28~%uint8 TAPERTORIGHT=29~%uint8 TAPERTOCENTERLINE=30~%uint8 PARALLELPARKING=31~%uint8 FREEPARKING=32~%uint8 TIMERESTRICTIONSONPARKING=33~%uint8 COSTTOPARK=34~%uint8 MIDBLOCKCURBPRESENT=35~%uint8 UNEVENPAVEMENTPRESENT=36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentAttributeXYList)))
  "Returns full string definition for message of type 'SegmentAttributeXYList"
  (cl:format cl:nil "#~%# NodeAttributeXYList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%#The DF_SegmentAttributeXYList data frame consists of a list of SegmentAttributeXY entries.~%~%#SegmentAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF SegmentAttributeXY~%~%j2735_msgs/SegmentAttributeXY[] segment_attribute_xy~%~%~%================================================================================~%MSG: j2735_msgs/SegmentAttributeXY~%#~%# SegmentAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which~%# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.~%#~%# SegmentAttributeXY ::= ENUMERATED {~%# -- Various values which can be Enabled and Disabled for a lane segment~%#~%# -- General Items~%# reserved	,~%# doNotBlock	, 	-- segment where a vehicle~%# 		  	-- may not come to a stop~%# whiteLine	, 	-- segment where lane crossing not allowed~%# 		  	-- such as the final few meters of a lane~%#~%# -- Porous Lane states, merging, turn outs, parking etc.~%# mergingLaneLeft,  	-- indicates porous lanes~%# mergingLaneRight,~%# curbOnLeft,	  	-- indicates presence of curbs~%# curbOnRight,~%# loadingzoneOnLeft,	-- loading or drop off zones~%# loadingzoneOnRight,~%# turnOutPointOnLeft,	-- opening to adjacent street/alley/road~%# turnOutPointOnRight,~%# adjacentParkingOnLeft, 	-- side of road parking~%# adjacentParkingOnRight,~%#~%# -- Bike Lane Needs~%# adjacentBikeLaneOnLeft, -- presence of marked bike lanes~%# adjacentBikeLaneOnRight,~%# sharedBikeLane, 	-- right of way is shared with bikes~%# 			-- who may occupy entire lane width~%# bikeBoxInFront,~%#~%# -- Transit Needs~%# transitStopOnLeft,	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on left~%# transitStopOnRight, 	-- any form of bus/transit loading~%# 			-- with pull in-out access to lane on right~%# transitStopInLane, 	-- any form of bus/transit loading~%# 			-- in mid path of the lane~%# sharedWithTrackedVehicle, -- lane is shared with train or trolley~%# 			-- not used for crossing tracks~%#~%# -- Pedestrian Support Attributes~%# safeIsland, 		-- begin/end a safety island in path~%# lowCurbsPresent, 	-- for ADA support~%# rumbleStripPresent, 	-- for ADA support~%# audibleSignalingPresent, -- for ADA support~%# adaptiveTimingPresent, 	-- for ADA support~%# rfSignalRequestPresent, -- Supports RF push to walk technologies~%# partialCurbIntrusion, 	-- path is blocked by a median or curb~%# 			-- but at least 1 meter remains open for use~%# 			-- and at-grade passage~%#~%# -- Lane geometry details~%# taperToLeft,		-- Used to control final path shape~%# taperToRight,		-- Used to control final path shape~%# taperToCenterLine,	-- Used to control final path shape~%#~%# -- Parking Lane and Curb Attributes~%# parallelParking, 	-- Parking at an angle with the street~%# freeParking, 		-- no restriction on use of parking~%# timeRestrictionsOnParking , -- Parking is not permitted at all times~%# 			-- typically used when the 'parking' lane~%# 			-- becomes a driving lane at times~%# costToPark, 		-- Used where parking has a cost~%# midBlockCurbPresent, 	-- a protruding curb near lane edge~%# unEvenPavementPresent, 	-- a disjoint height at lane edge~%# ...~%# }~%~%uint8  segment_attribute_xy~%~%uint8 RESERVED=0~%uint8 DONOTBLOCK=1~%uint8 WHITELINE=2~%uint8 MERGINGLANELEFT=3~%uint8 MERGINGLANERIGHT=4~%uint8 CURBONLEFT=5~%uint8 CURBONRIGHT=6~%uint8 LOADINGZONEONLEFT=7~%uint8 LOADINGZONEONRIGHT=8~%uint8 TURNOUTPOINTONLEFT=9~%uint8 TURNOUTPOINTONRIGHT=10~%uint8 ADJACENTPARKINGONLEFT=11~%uint8 ADJACENTPARKINGONRIGHT=12~%uint8 ADJACENTBIKELANEONLEFT=13~%uint8 ADJACENTBIKELANEONRIGHT=14~%uint8 SHAREDBIKELANE=15~%uint8 BIKEBOXINFRONT=16~%uint8 TRANSITSTOPONLEFT=17~%uint8 TRANSITSTOPONRIGHT=18~%uint8 TRANSITSTOPINLANE=19~%uint8 SHAREDWITHTRACKEDVEHICLE=20~%uint8 SAFEISLAND=21~%uint8 LOWCURBSPRESENT=22~%uint8 RUMBLESTRIPPRESENT=23~%uint8 AUDIBLESIGNALINGPRESENT=24~%uint8 ADAPTIVETIMINGPRESENT=25~%uint8 RFSIGNALREQUESTPRESENT=26~%uint8 PARTIALCURBINTRUSION=27~%uint8 TAPERTOLEFT=28~%uint8 TAPERTORIGHT=29~%uint8 TAPERTOCENTERLINE=30~%uint8 PARALLELPARKING=31~%uint8 FREEPARKING=32~%uint8 TIMERESTRICTIONSONPARKING=33~%uint8 COSTTOPARK=34~%uint8 MIDBLOCKCURBPRESENT=35~%uint8 UNEVENPAVEMENTPRESENT=36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentAttributeXYList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segment_attribute_xy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentAttributeXYList>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentAttributeXYList
    (cl:cons ':segment_attribute_xy (segment_attribute_xy msg))
))
