; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneTypeAttributes.msg.html

(cl:defclass <LaneTypeAttributes> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (vehicle
    :reader vehicle
    :initarg :vehicle
    :type j2735_msgs-msg:LaneAttributesVehicle
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesVehicle))
   (crosswalk
    :reader crosswalk
    :initarg :crosswalk
    :type j2735_msgs-msg:LaneAttributesCrosswalk
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesCrosswalk))
   (bikeLane
    :reader bikeLane
    :initarg :bikeLane
    :type j2735_msgs-msg:LaneAttributesBike
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesBike))
   (sidewalk
    :reader sidewalk
    :initarg :sidewalk
    :type j2735_msgs-msg:LaneAttributesSidewalk
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesSidewalk))
   (median
    :reader median
    :initarg :median
    :type j2735_msgs-msg:LaneAttributesBarrier
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesBarrier))
   (striping
    :reader striping
    :initarg :striping
    :type j2735_msgs-msg:LaneAttributesStriping
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesStriping))
   (trackedVehicle
    :reader trackedVehicle
    :initarg :trackedVehicle
    :type j2735_msgs-msg:LaneAttributesTrackedVehicle
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesTrackedVehicle))
   (parking
    :reader parking
    :initarg :parking
    :type j2735_msgs-msg:LaneAttributesParking
    :initform (cl:make-instance 'j2735_msgs-msg:LaneAttributesParking)))
)

(cl:defclass LaneTypeAttributes (<LaneTypeAttributes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneTypeAttributes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneTypeAttributes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneTypeAttributes> is deprecated: use j2735_msgs-msg:LaneTypeAttributes instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:vehicle-val is deprecated.  Use j2735_msgs-msg:vehicle instead.")
  (vehicle m))

(cl:ensure-generic-function 'crosswalk-val :lambda-list '(m))
(cl:defmethod crosswalk-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:crosswalk-val is deprecated.  Use j2735_msgs-msg:crosswalk instead.")
  (crosswalk m))

(cl:ensure-generic-function 'bikeLane-val :lambda-list '(m))
(cl:defmethod bikeLane-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:bikeLane-val is deprecated.  Use j2735_msgs-msg:bikeLane instead.")
  (bikeLane m))

(cl:ensure-generic-function 'sidewalk-val :lambda-list '(m))
(cl:defmethod sidewalk-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:sidewalk-val is deprecated.  Use j2735_msgs-msg:sidewalk instead.")
  (sidewalk m))

(cl:ensure-generic-function 'median-val :lambda-list '(m))
(cl:defmethod median-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:median-val is deprecated.  Use j2735_msgs-msg:median instead.")
  (median m))

(cl:ensure-generic-function 'striping-val :lambda-list '(m))
(cl:defmethod striping-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:striping-val is deprecated.  Use j2735_msgs-msg:striping instead.")
  (striping m))

(cl:ensure-generic-function 'trackedVehicle-val :lambda-list '(m))
(cl:defmethod trackedVehicle-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:trackedVehicle-val is deprecated.  Use j2735_msgs-msg:trackedVehicle instead.")
  (trackedVehicle m))

(cl:ensure-generic-function 'parking-val :lambda-list '(m))
(cl:defmethod parking-val ((m <LaneTypeAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:parking-val is deprecated.  Use j2735_msgs-msg:parking instead.")
  (parking m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneTypeAttributes>)))
    "Constants for message type '<LaneTypeAttributes>"
  '((:VEHICLE . 0)
    (:CROSSWALK . 1)
    (:BIKE_LANE . 2)
    (:SIDEWALK . 3)
    (:MEDIAN . 4)
    (:STRIPING . 5)
    (:TRACKED_VEHICLE . 6)
    (:PARKING . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneTypeAttributes)))
    "Constants for message type 'LaneTypeAttributes"
  '((:VEHICLE . 0)
    (:CROSSWALK . 1)
    (:BIKE_LANE . 2)
    (:SIDEWALK . 3)
    (:MEDIAN . 4)
    (:STRIPING . 5)
    (:TRACKED_VEHICLE . 6)
    (:PARKING . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneTypeAttributes>) ostream)
  "Serializes a message object of type '<LaneTypeAttributes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'crosswalk) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bikeLane) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sidewalk) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'median) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'striping) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trackedVehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneTypeAttributes>) istream)
  "Deserializes a message object of type '<LaneTypeAttributes>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'crosswalk) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bikeLane) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sidewalk) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'median) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'striping) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trackedVehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneTypeAttributes>)))
  "Returns string type for a message object of type '<LaneTypeAttributes>"
  "j2735_msgs/LaneTypeAttributes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneTypeAttributes)))
  "Returns string type for a message object of type 'LaneTypeAttributes"
  "j2735_msgs/LaneTypeAttributes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneTypeAttributes>)))
  "Returns md5sum for a message object of type '<LaneTypeAttributes>"
  "3e2aa6f113cac6b3d7a7bd5a414e2841")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneTypeAttributes)))
  "Returns md5sum for a message object of type 'LaneTypeAttributes"
  "3e2aa6f113cac6b3d7a7bd5a414e2841")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneTypeAttributes>)))
  "Returns full string definition for message of type '<LaneTypeAttributes>"
  (cl:format cl:nil "#~%# LaneTypeAttributes.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Lane Type Attributes data frame is used to hold attribute information specific to a given lane type.~%# LaneTypeAttributes ::= CHOICE {~%# vehicle LaneAttributes-Vehicle, -- motor vehicle lanes~%# crosswalk LaneAttributes-Crosswalk, -- pedestrian crosswalks~%# bikeLane LaneAttributes-Bike, -- bike lanes~%# sidewalk LaneAttributes-Sidewalk, -- pedestrian sidewalk paths~%# median LaneAttributes-Barrier, -- medians & channelization~%# striping LaneAttributes-Striping, -- roadway markings~%# trackedVehicle LaneAttributes-TrackedVehicle, -- trains and trolleys~%# parking LaneAttributes-Parking, -- parking and stopping lanes~%# }~%~%uint8 choice~%uint8 VEHICLE=0~%uint8 CROSSWALK=1~%uint8 BIKE_LANE=2~%uint8 SIDEWALK=3~%uint8 MEDIAN=4~%uint8 STRIPING=5~%uint8 TRACKED_VEHICLE=6~%uint8 PARKING=7~%~%j2735_msgs/LaneAttributesVehicle vehicle~%j2735_msgs/LaneAttributesCrosswalk crosswalk~%j2735_msgs/LaneAttributesBike bikeLane~%j2735_msgs/LaneAttributesSidewalk sidewalk~%j2735_msgs/LaneAttributesBarrier median~%j2735_msgs/LaneAttributesStriping striping~%j2735_msgs/LaneAttributesTrackedVehicle trackedVehicle~%j2735_msgs/LaneAttributesParking parking~%================================================================================~%MSG: j2735_msgs/LaneAttributesVehicle~%#~%# LaneAttributesVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# LaneAttributes-Vehicle ::= BIT STRING {~%# -- With bits as defined:~%# isVehicleRevocableLane (0),~%#       -- this lane may be activated or not based~%#       -- on the current SPAT message contents~%#       -- if not asserted, the lane is ALWAYS present~%# isVehicleFlyOverLane (1),~%#       -- path of lane is not at grade~%# hovLaneUseOnly (2),~%# restrictedToBusUse (3),~%# restrictedToTaxiUse(4),~%# restrictedFromPublicUse (5),~%# hasIRbeaconCoverage(6),~%# permissionOnRequest(7)~%#       -- e.g. to inform about a lane for e-cars~%# } (SIZE (8,...))~%~%uint8 lane_attributes_vehicle~%~%uint8 ISVEHICLEREVOCABLELANE=0~%uint8 ISVEHICLEFLYOVERLANE=1~%uint8 HOVLANEUSEONLY=2~%uint8 RESTRICTEDTOBUSUSE=3~%uint8 RESTRICTEDTOTAXIUSE=4~%uint8 RESTRICTEDFROMPUBLICUSE=5~%uint8 HASIRBEACONCOVERAGE=6~%uint8 PERMISSIONONREQUEST=7~%~%~%================================================================================~%MSG: j2735_msgs/LaneAttributesCrosswalk~%#~%# LaneAttributesCrosswalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%~%# LaneAttributes-Crosswalk ::= BIT STRING {~%# 	-- With bits as defined:~%# 	-- MUTCD provides no suitable \"types\" to use here~%# 	crosswalkRevocableLane (0),~%# 		-- this lane may be activated or not based~%# 		-- on the current SPAT message contents~%# 		-- if not asserted, the lane is ALWAYS present~%# 	bicyleUseAllowed (1),~%# 		-- The path allows bicycle traffic,~%# 		-- if not set, this mode is prohibited~%# 	isXwalkFlyOverLane (2),~%# 		-- path of lane is not at grade~%# 	fixedCycleTime (3),~%# 		-- ped walk phases use preset times~%# 		-- i.e. there is not a 'push to cross' button~%# 	biDirectionalCycleTimes (4),~%# 		-- ped walk phases use different SignalGroupID~%# 		-- for each direction. The first SignalGroupID~%# 		-- in the first Connection represents 'inbound'~%# 		-- flow (the direction of travel towards the first~%# 		-- node point) while second SignalGroupID in the~%# 		-- next Connection entry represents the 'outbound'~%# 		-- flow. And use of RestrictionClassID entries~%# 		-- in the Connect follow this same pattern in pairs.~%# 	hasPushToWalkButton (5),~%# 		-- Has a demand input~%# 	audioSupport (6),~%# 		-- audio crossing cues present~%# 	rfSignalRequestPresent (7),~%# 		-- Supports RF push to walk technologies~%# 	unsignalizedSegmentsPresent (8)~%# 		-- The lane path consists of one of more segments~%# 		-- which are not part of a signal group ID~%# } (SIZE (16))~%~%uint16  lane_attributes_crosswalk~%================================================================================~%MSG: j2735_msgs/LaneAttributesBike~%#~%# LaneAttributesBike.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.~%#~%# LaneAttributes-Bike ::= BIT STRING {~%#	-- With bits as defined:~%#	bikeRevocableLane (0),~%#		-- this lane may be activated or not based~%#		-- on the current SPAT message contents~%#		-- if not asserted, the lane is ALWAYS present~%#	pedestrianUseAllowed (1),~%#		-- The path allows pedestrian traffic,~%#		-- if not set, this mode is prohibited~%#	isBikeFlyOverLane (2),~%#		-- path of lane is not at grade~%#	fixedCycleTime (3),~%#		-- the phases use preset times~%#		-- Bits 7~~15 reserved and set to zero~%#	} (SIZE (16))~%~%uint16 lane_attributes_bike~%================================================================================~%MSG: j2735_msgs/LaneAttributesSidewalk~%#~%# LaneAttributesSidewalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type~%#~%# LaneAttributes-Sidewalk ::= BIT STRING {~%# -- With bits as defined:~%# sidewalk-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# bicyleUseAllowed (1),~%# -- The path allows bicycle traffic,~%# -- if not set, this mode is prohibited~%# isSidewalkFlyOverLane (2),~%# -- path of lane is not at grade~%# walkBikes (3)~%# -- bike traffic must dismount and walk~%# -- Bits 4~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_sidewalk~%================================================================================~%MSG: j2735_msgs/LaneAttributesBarrier~%#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Barrier data element relates specific properties found in a Barrier~%# or Median lane type (a type of lane object used to separate traffic lanes).~%#~%# LaneAttributes-Barrier ::= BIT STRING {~%# -- With bits as defined:~%# median-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# median (1),~%# whiteLineHashing (2),~%# stripedLines (3),~%# doubleStripedLines (4),~%# trafficCones (5),~%# constructionBarrier(6),~%# trafficChannels(7),~%# lowCurbs(8),~%# highCurbs(9)~%# -- Bits 10~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_barrier~%================================================================================~%MSG: j2735_msgs/LaneAttributesStriping~%#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Striping data element relates specific properties found~%# in various types of ground striping lane types.~%#~%# LaneAttributes-Striping ::= BIT STRING {~%# -- With bits as defined:~%# stripeToConnectingLanesRevocableLane(0),~%# -- this lane may be activated or not activated based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# stripeDrawOnLeft(1),~%# stripeDrawOnRight(2),~%# -- which side of lane to mark~%# stripeToConnectingLanesLeft(3),~%# stripeToConnectingLanesRight(4),~%# stripeToConnectingLanesAhead(5)~%# -- the stripe type should be~%# -- presented to the user visually~%# -- to reflect stripes in the~%# -- intersection for the type of~%# -- movement indicated~%# -- Bits 6~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_striping~%================================================================================~%MSG: j2735_msgs/LaneAttributesTrackedVehicle~%#~%# LaneAttributesTrackedVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Special data element relates specific properties found~%# in a tracked vehicle lane types (trolley and train lanes).~%# The term \"rail vehicle\" can be considered synonymous.~%# In this case, the term does not relate to vehicle types with tracks or treads.~%#~%# LaneAttributes-TrackedVehicle ::= BIT STRING {~%# -- With bits as defined:~%# spec-RevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# spec-commuterRailRoadTrack (1),~%# spec-lightRailRoadTrack(2),~%# spec-heavyRailRoadTrack(3),~%# spec-otherRailType(4)~%# -- Bits 5~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_trackedvehicle~%~%================================================================================~%MSG: j2735_msgs/LaneAttributesParking~%#~%# LaneAttributesParking.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.~%#~%# LaneAttributes-Parking ::= BIT STRING {~%# -- With bits as defined:~%# -- Parking use details, note that detailed restrictions such as~%# -- allowed hours are sent by way of ITIS codes in the TIM message~%# parkingRevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# parallelParkingInUse(1),~%# headInParkingInUse(2),~%# doNotParkZone(3),~%# -- used to denote fire hydrants as well as~%# -- short disruptions in a parking zone~%# parkingForBusUse(4),~%# parkingForTaxiUse(5),~%# noPublicParkingUse(6)~%# -- private parking, as in front of~%# -- private property~%# -- Bits 7~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16  lane_attributes_parking~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneTypeAttributes)))
  "Returns full string definition for message of type 'LaneTypeAttributes"
  (cl:format cl:nil "#~%# LaneTypeAttributes.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Lane Type Attributes data frame is used to hold attribute information specific to a given lane type.~%# LaneTypeAttributes ::= CHOICE {~%# vehicle LaneAttributes-Vehicle, -- motor vehicle lanes~%# crosswalk LaneAttributes-Crosswalk, -- pedestrian crosswalks~%# bikeLane LaneAttributes-Bike, -- bike lanes~%# sidewalk LaneAttributes-Sidewalk, -- pedestrian sidewalk paths~%# median LaneAttributes-Barrier, -- medians & channelization~%# striping LaneAttributes-Striping, -- roadway markings~%# trackedVehicle LaneAttributes-TrackedVehicle, -- trains and trolleys~%# parking LaneAttributes-Parking, -- parking and stopping lanes~%# }~%~%uint8 choice~%uint8 VEHICLE=0~%uint8 CROSSWALK=1~%uint8 BIKE_LANE=2~%uint8 SIDEWALK=3~%uint8 MEDIAN=4~%uint8 STRIPING=5~%uint8 TRACKED_VEHICLE=6~%uint8 PARKING=7~%~%j2735_msgs/LaneAttributesVehicle vehicle~%j2735_msgs/LaneAttributesCrosswalk crosswalk~%j2735_msgs/LaneAttributesBike bikeLane~%j2735_msgs/LaneAttributesSidewalk sidewalk~%j2735_msgs/LaneAttributesBarrier median~%j2735_msgs/LaneAttributesStriping striping~%j2735_msgs/LaneAttributesTrackedVehicle trackedVehicle~%j2735_msgs/LaneAttributesParking parking~%================================================================================~%MSG: j2735_msgs/LaneAttributesVehicle~%#~%# LaneAttributesVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# LaneAttributes-Vehicle ::= BIT STRING {~%# -- With bits as defined:~%# isVehicleRevocableLane (0),~%#       -- this lane may be activated or not based~%#       -- on the current SPAT message contents~%#       -- if not asserted, the lane is ALWAYS present~%# isVehicleFlyOverLane (1),~%#       -- path of lane is not at grade~%# hovLaneUseOnly (2),~%# restrictedToBusUse (3),~%# restrictedToTaxiUse(4),~%# restrictedFromPublicUse (5),~%# hasIRbeaconCoverage(6),~%# permissionOnRequest(7)~%#       -- e.g. to inform about a lane for e-cars~%# } (SIZE (8,...))~%~%uint8 lane_attributes_vehicle~%~%uint8 ISVEHICLEREVOCABLELANE=0~%uint8 ISVEHICLEFLYOVERLANE=1~%uint8 HOVLANEUSEONLY=2~%uint8 RESTRICTEDTOBUSUSE=3~%uint8 RESTRICTEDTOTAXIUSE=4~%uint8 RESTRICTEDFROMPUBLICUSE=5~%uint8 HASIRBEACONCOVERAGE=6~%uint8 PERMISSIONONREQUEST=7~%~%~%================================================================================~%MSG: j2735_msgs/LaneAttributesCrosswalk~%#~%# LaneAttributesCrosswalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%~%# LaneAttributes-Crosswalk ::= BIT STRING {~%# 	-- With bits as defined:~%# 	-- MUTCD provides no suitable \"types\" to use here~%# 	crosswalkRevocableLane (0),~%# 		-- this lane may be activated or not based~%# 		-- on the current SPAT message contents~%# 		-- if not asserted, the lane is ALWAYS present~%# 	bicyleUseAllowed (1),~%# 		-- The path allows bicycle traffic,~%# 		-- if not set, this mode is prohibited~%# 	isXwalkFlyOverLane (2),~%# 		-- path of lane is not at grade~%# 	fixedCycleTime (3),~%# 		-- ped walk phases use preset times~%# 		-- i.e. there is not a 'push to cross' button~%# 	biDirectionalCycleTimes (4),~%# 		-- ped walk phases use different SignalGroupID~%# 		-- for each direction. The first SignalGroupID~%# 		-- in the first Connection represents 'inbound'~%# 		-- flow (the direction of travel towards the first~%# 		-- node point) while second SignalGroupID in the~%# 		-- next Connection entry represents the 'outbound'~%# 		-- flow. And use of RestrictionClassID entries~%# 		-- in the Connect follow this same pattern in pairs.~%# 	hasPushToWalkButton (5),~%# 		-- Has a demand input~%# 	audioSupport (6),~%# 		-- audio crossing cues present~%# 	rfSignalRequestPresent (7),~%# 		-- Supports RF push to walk technologies~%# 	unsignalizedSegmentsPresent (8)~%# 		-- The lane path consists of one of more segments~%# 		-- which are not part of a signal group ID~%# } (SIZE (16))~%~%uint16  lane_attributes_crosswalk~%================================================================================~%MSG: j2735_msgs/LaneAttributesBike~%#~%# LaneAttributesBike.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.~%#~%# LaneAttributes-Bike ::= BIT STRING {~%#	-- With bits as defined:~%#	bikeRevocableLane (0),~%#		-- this lane may be activated or not based~%#		-- on the current SPAT message contents~%#		-- if not asserted, the lane is ALWAYS present~%#	pedestrianUseAllowed (1),~%#		-- The path allows pedestrian traffic,~%#		-- if not set, this mode is prohibited~%#	isBikeFlyOverLane (2),~%#		-- path of lane is not at grade~%#	fixedCycleTime (3),~%#		-- the phases use preset times~%#		-- Bits 7~~15 reserved and set to zero~%#	} (SIZE (16))~%~%uint16 lane_attributes_bike~%================================================================================~%MSG: j2735_msgs/LaneAttributesSidewalk~%#~%# LaneAttributesSidewalk.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type~%#~%# LaneAttributes-Sidewalk ::= BIT STRING {~%# -- With bits as defined:~%# sidewalk-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# bicyleUseAllowed (1),~%# -- The path allows bicycle traffic,~%# -- if not set, this mode is prohibited~%# isSidewalkFlyOverLane (2),~%# -- path of lane is not at grade~%# walkBikes (3)~%# -- bike traffic must dismount and walk~%# -- Bits 4~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_sidewalk~%================================================================================~%MSG: j2735_msgs/LaneAttributesBarrier~%#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Barrier data element relates specific properties found in a Barrier~%# or Median lane type (a type of lane object used to separate traffic lanes).~%#~%# LaneAttributes-Barrier ::= BIT STRING {~%# -- With bits as defined:~%# median-RevocableLane (0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# median (1),~%# whiteLineHashing (2),~%# stripedLines (3),~%# doubleStripedLines (4),~%# trafficCones (5),~%# constructionBarrier(6),~%# trafficChannels(7),~%# lowCurbs(8),~%# highCurbs(9)~%# -- Bits 10~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_barrier~%================================================================================~%MSG: j2735_msgs/LaneAttributesStriping~%#~%# LaneAttributesBarrier.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Striping data element relates specific properties found~%# in various types of ground striping lane types.~%#~%# LaneAttributes-Striping ::= BIT STRING {~%# -- With bits as defined:~%# stripeToConnectingLanesRevocableLane(0),~%# -- this lane may be activated or not activated based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# stripeDrawOnLeft(1),~%# stripeDrawOnRight(2),~%# -- which side of lane to mark~%# stripeToConnectingLanesLeft(3),~%# stripeToConnectingLanesRight(4),~%# stripeToConnectingLanesAhead(5)~%# -- the stripe type should be~%# -- presented to the user visually~%# -- to reflect stripes in the~%# -- intersection for the type of~%# -- movement indicated~%# -- Bits 6~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_striping~%================================================================================~%MSG: j2735_msgs/LaneAttributesTrackedVehicle~%#~%# LaneAttributesTrackedVehicle.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Special data element relates specific properties found~%# in a tracked vehicle lane types (trolley and train lanes).~%# The term \"rail vehicle\" can be considered synonymous.~%# In this case, the term does not relate to vehicle types with tracks or treads.~%#~%# LaneAttributes-TrackedVehicle ::= BIT STRING {~%# -- With bits as defined:~%# spec-RevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# spec-commuterRailRoadTrack (1),~%# spec-lightRailRoadTrack(2),~%# spec-heavyRailRoadTrack(3),~%# spec-otherRailType(4)~%# -- Bits 5~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16 lane_attributes_trackedvehicle~%~%================================================================================~%MSG: j2735_msgs/LaneAttributesParking~%#~%# LaneAttributesParking.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.~%#~%# LaneAttributes-Parking ::= BIT STRING {~%# -- With bits as defined:~%# -- Parking use details, note that detailed restrictions such as~%# -- allowed hours are sent by way of ITIS codes in the TIM message~%# parkingRevocableLane(0),~%# -- this lane may be activated or not based~%# -- on the current SPAT message contents~%# -- if not asserted, the lane is ALWAYS present~%# parallelParkingInUse(1),~%# headInParkingInUse(2),~%# doNotParkZone(3),~%# -- used to denote fire hydrants as well as~%# -- short disruptions in a parking zone~%# parkingForBusUse(4),~%# parkingForTaxiUse(5),~%# noPublicParkingUse(6)~%# -- private parking, as in front of~%# -- private property~%# -- Bits 7~~15 reserved and set to zero~%# } (SIZE (16))~%~%uint16  lane_attributes_parking~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneTypeAttributes>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'crosswalk))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bikeLane))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sidewalk))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'median))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'striping))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trackedVehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneTypeAttributes>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneTypeAttributes
    (cl:cons ':choice (choice msg))
    (cl:cons ':vehicle (vehicle msg))
    (cl:cons ':crosswalk (crosswalk msg))
    (cl:cons ':bikeLane (bikeLane msg))
    (cl:cons ':sidewalk (sidewalk msg))
    (cl:cons ':median (median msg))
    (cl:cons ':striping (striping msg))
    (cl:cons ':trackedVehicle (trackedVehicle msg))
    (cl:cons ':parking (parking msg))
))
