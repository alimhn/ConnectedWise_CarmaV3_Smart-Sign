;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneTypeAttributes)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneTypeAttributes (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANETYPEATTRIBUTES")
  (make-package "J2735_MSGS::LANETYPEATTRIBUTES"))

(in-package "ROS")
;;//! \htmlinclude LaneTypeAttributes.msg.html


(intern "*VEHICLE*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*VEHICLE* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*VEHICLE* 0)
(intern "*CROSSWALK*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*CROSSWALK* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*CROSSWALK* 1)
(intern "*BIKE_LANE*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*BIKE_LANE* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*BIKE_LANE* 2)
(intern "*SIDEWALK*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*SIDEWALK* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*SIDEWALK* 3)
(intern "*MEDIAN*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*MEDIAN* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*MEDIAN* 4)
(intern "*STRIPING*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*STRIPING* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*STRIPING* 5)
(intern "*TRACKED_VEHICLE*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*TRACKED_VEHICLE* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*TRACKED_VEHICLE* 6)
(intern "*PARKING*" (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(shadow '*PARKING* (find-package "J2735_MSGS::LANETYPEATTRIBUTES"))
(defconstant j2735_msgs::LaneTypeAttributes::*PARKING* 7)

(defun j2735_msgs::LaneTypeAttributes-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::LaneTypeAttributes::*VEHICLE*)
        ((= const 1) 'j2735_msgs::LaneTypeAttributes::*CROSSWALK*)
        ((= const 2) 'j2735_msgs::LaneTypeAttributes::*BIKE_LANE*)
        ((= const 3) 'j2735_msgs::LaneTypeAttributes::*SIDEWALK*)
        ((= const 4) 'j2735_msgs::LaneTypeAttributes::*MEDIAN*)
        ((= const 5) 'j2735_msgs::LaneTypeAttributes::*STRIPING*)
        ((= const 6) 'j2735_msgs::LaneTypeAttributes::*TRACKED_VEHICLE*)
        ((= const 7) 'j2735_msgs::LaneTypeAttributes::*PARKING*)
        (t nil)))

(defclass j2735_msgs::LaneTypeAttributes
  :super ros::object
  :slots (_choice _vehicle _crosswalk _bikeLane _sidewalk _median _striping _trackedVehicle _parking ))

(defmethod j2735_msgs::LaneTypeAttributes
  (:init
   (&key
    ((:choice __choice) 0)
    ((:vehicle __vehicle) (instance j2735_msgs::LaneAttributesVehicle :init))
    ((:crosswalk __crosswalk) (instance j2735_msgs::LaneAttributesCrosswalk :init))
    ((:bikeLane __bikeLane) (instance j2735_msgs::LaneAttributesBike :init))
    ((:sidewalk __sidewalk) (instance j2735_msgs::LaneAttributesSidewalk :init))
    ((:median __median) (instance j2735_msgs::LaneAttributesBarrier :init))
    ((:striping __striping) (instance j2735_msgs::LaneAttributesStriping :init))
    ((:trackedVehicle __trackedVehicle) (instance j2735_msgs::LaneAttributesTrackedVehicle :init))
    ((:parking __parking) (instance j2735_msgs::LaneAttributesParking :init))
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _vehicle __vehicle)
   (setq _crosswalk __crosswalk)
   (setq _bikeLane __bikeLane)
   (setq _sidewalk __sidewalk)
   (setq _median __median)
   (setq _striping __striping)
   (setq _trackedVehicle __trackedVehicle)
   (setq _parking __parking)
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:vehicle
   (&rest __vehicle)
   (if (keywordp (car __vehicle))
       (send* _vehicle __vehicle)
     (progn
       (if __vehicle (setq _vehicle (car __vehicle)))
       _vehicle)))
  (:crosswalk
   (&rest __crosswalk)
   (if (keywordp (car __crosswalk))
       (send* _crosswalk __crosswalk)
     (progn
       (if __crosswalk (setq _crosswalk (car __crosswalk)))
       _crosswalk)))
  (:bikeLane
   (&rest __bikeLane)
   (if (keywordp (car __bikeLane))
       (send* _bikeLane __bikeLane)
     (progn
       (if __bikeLane (setq _bikeLane (car __bikeLane)))
       _bikeLane)))
  (:sidewalk
   (&rest __sidewalk)
   (if (keywordp (car __sidewalk))
       (send* _sidewalk __sidewalk)
     (progn
       (if __sidewalk (setq _sidewalk (car __sidewalk)))
       _sidewalk)))
  (:median
   (&rest __median)
   (if (keywordp (car __median))
       (send* _median __median)
     (progn
       (if __median (setq _median (car __median)))
       _median)))
  (:striping
   (&rest __striping)
   (if (keywordp (car __striping))
       (send* _striping __striping)
     (progn
       (if __striping (setq _striping (car __striping)))
       _striping)))
  (:trackedVehicle
   (&rest __trackedVehicle)
   (if (keywordp (car __trackedVehicle))
       (send* _trackedVehicle __trackedVehicle)
     (progn
       (if __trackedVehicle (setq _trackedVehicle (car __trackedVehicle)))
       _trackedVehicle)))
  (:parking
   (&rest __parking)
   (if (keywordp (car __parking))
       (send* _parking __parking)
     (progn
       (if __parking (setq _parking (car __parking)))
       _parking)))
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; j2735_msgs/LaneAttributesVehicle _vehicle
    (send _vehicle :serialization-length)
    ;; j2735_msgs/LaneAttributesCrosswalk _crosswalk
    (send _crosswalk :serialization-length)
    ;; j2735_msgs/LaneAttributesBike _bikeLane
    (send _bikeLane :serialization-length)
    ;; j2735_msgs/LaneAttributesSidewalk _sidewalk
    (send _sidewalk :serialization-length)
    ;; j2735_msgs/LaneAttributesBarrier _median
    (send _median :serialization-length)
    ;; j2735_msgs/LaneAttributesStriping _striping
    (send _striping :serialization-length)
    ;; j2735_msgs/LaneAttributesTrackedVehicle _trackedVehicle
    (send _trackedVehicle :serialization-length)
    ;; j2735_msgs/LaneAttributesParking _parking
    (send _parking :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; j2735_msgs/LaneAttributesVehicle _vehicle
       (send _vehicle :serialize s)
     ;; j2735_msgs/LaneAttributesCrosswalk _crosswalk
       (send _crosswalk :serialize s)
     ;; j2735_msgs/LaneAttributesBike _bikeLane
       (send _bikeLane :serialize s)
     ;; j2735_msgs/LaneAttributesSidewalk _sidewalk
       (send _sidewalk :serialize s)
     ;; j2735_msgs/LaneAttributesBarrier _median
       (send _median :serialize s)
     ;; j2735_msgs/LaneAttributesStriping _striping
       (send _striping :serialize s)
     ;; j2735_msgs/LaneAttributesTrackedVehicle _trackedVehicle
       (send _trackedVehicle :serialize s)
     ;; j2735_msgs/LaneAttributesParking _parking
       (send _parking :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; j2735_msgs/LaneAttributesVehicle _vehicle
     (send _vehicle :deserialize buf ptr-) (incf ptr- (send _vehicle :serialization-length))
   ;; j2735_msgs/LaneAttributesCrosswalk _crosswalk
     (send _crosswalk :deserialize buf ptr-) (incf ptr- (send _crosswalk :serialization-length))
   ;; j2735_msgs/LaneAttributesBike _bikeLane
     (send _bikeLane :deserialize buf ptr-) (incf ptr- (send _bikeLane :serialization-length))
   ;; j2735_msgs/LaneAttributesSidewalk _sidewalk
     (send _sidewalk :deserialize buf ptr-) (incf ptr- (send _sidewalk :serialization-length))
   ;; j2735_msgs/LaneAttributesBarrier _median
     (send _median :deserialize buf ptr-) (incf ptr- (send _median :serialization-length))
   ;; j2735_msgs/LaneAttributesStriping _striping
     (send _striping :deserialize buf ptr-) (incf ptr- (send _striping :serialization-length))
   ;; j2735_msgs/LaneAttributesTrackedVehicle _trackedVehicle
     (send _trackedVehicle :deserialize buf ptr-) (incf ptr- (send _trackedVehicle :serialization-length))
   ;; j2735_msgs/LaneAttributesParking _parking
     (send _parking :deserialize buf ptr-) (incf ptr- (send _parking :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::LaneTypeAttributes :md5sum-) "3e2aa6f113cac6b3d7a7bd5a414e2841")
(setf (get j2735_msgs::LaneTypeAttributes :datatype-) "j2735_msgs/LaneTypeAttributes")
(setf (get j2735_msgs::LaneTypeAttributes :definition-)
      "#
# LaneTypeAttributes.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Lane Type Attributes data frame is used to hold attribute information specific to a given lane type.
# LaneTypeAttributes ::= CHOICE {
# vehicle LaneAttributes-Vehicle, -- motor vehicle lanes
# crosswalk LaneAttributes-Crosswalk, -- pedestrian crosswalks
# bikeLane LaneAttributes-Bike, -- bike lanes
# sidewalk LaneAttributes-Sidewalk, -- pedestrian sidewalk paths
# median LaneAttributes-Barrier, -- medians & channelization
# striping LaneAttributes-Striping, -- roadway markings
# trackedVehicle LaneAttributes-TrackedVehicle, -- trains and trolleys
# parking LaneAttributes-Parking, -- parking and stopping lanes
# }

uint8 choice
uint8 VEHICLE=0
uint8 CROSSWALK=1
uint8 BIKE_LANE=2
uint8 SIDEWALK=3
uint8 MEDIAN=4
uint8 STRIPING=5
uint8 TRACKED_VEHICLE=6
uint8 PARKING=7

j2735_msgs/LaneAttributesVehicle vehicle
j2735_msgs/LaneAttributesCrosswalk crosswalk
j2735_msgs/LaneAttributesBike bikeLane
j2735_msgs/LaneAttributesSidewalk sidewalk
j2735_msgs/LaneAttributesBarrier median
j2735_msgs/LaneAttributesStriping striping
j2735_msgs/LaneAttributesTrackedVehicle trackedVehicle
j2735_msgs/LaneAttributesParking parking
================================================================================
MSG: j2735_msgs/LaneAttributesVehicle
#
# LaneAttributesVehicle.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# LaneAttributes-Vehicle ::= BIT STRING {
# -- With bits as defined:
# isVehicleRevocableLane (0),
#       -- this lane may be activated or not based
#       -- on the current SPAT message contents
#       -- if not asserted, the lane is ALWAYS present
# isVehicleFlyOverLane (1),
#       -- path of lane is not at grade
# hovLaneUseOnly (2),
# restrictedToBusUse (3),
# restrictedToTaxiUse(4),
# restrictedFromPublicUse (5),
# hasIRbeaconCoverage(6),
# permissionOnRequest(7)
#       -- e.g. to inform about a lane for e-cars
# } (SIZE (8,...))

uint8 lane_attributes_vehicle

uint8 ISVEHICLEREVOCABLELANE=0
uint8 ISVEHICLEFLYOVERLANE=1
uint8 HOVLANEUSEONLY=2
uint8 RESTRICTEDTOBUSUSE=3
uint8 RESTRICTEDTOTAXIUSE=4
uint8 RESTRICTEDFROMPUBLICUSE=5
uint8 HASIRBEACONCOVERAGE=6
uint8 PERMISSIONONREQUEST=7


================================================================================
MSG: j2735_msgs/LaneAttributesCrosswalk
#
# LaneAttributesCrosswalk.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#

# LaneAttributes-Crosswalk ::= BIT STRING {
# 	-- With bits as defined:
# 	-- MUTCD provides no suitable \"types\" to use here
# 	crosswalkRevocableLane (0),
# 		-- this lane may be activated or not based
# 		-- on the current SPAT message contents
# 		-- if not asserted, the lane is ALWAYS present
# 	bicyleUseAllowed (1),
# 		-- The path allows bicycle traffic,
# 		-- if not set, this mode is prohibited
# 	isXwalkFlyOverLane (2),
# 		-- path of lane is not at grade
# 	fixedCycleTime (3),
# 		-- ped walk phases use preset times
# 		-- i.e. there is not a 'push to cross' button
# 	biDirectionalCycleTimes (4),
# 		-- ped walk phases use different SignalGroupID
# 		-- for each direction. The first SignalGroupID
# 		-- in the first Connection represents 'inbound'
# 		-- flow (the direction of travel towards the first
# 		-- node point) while second SignalGroupID in the
# 		-- next Connection entry represents the 'outbound'
# 		-- flow. And use of RestrictionClassID entries
# 		-- in the Connect follow this same pattern in pairs.
# 	hasPushToWalkButton (5),
# 		-- Has a demand input
# 	audioSupport (6),
# 		-- audio crossing cues present
# 	rfSignalRequestPresent (7),
# 		-- Supports RF push to walk technologies
# 	unsignalizedSegmentsPresent (8)
# 		-- The lane path consists of one of more segments
# 		-- which are not part of a signal group ID
# } (SIZE (16))

uint16  lane_attributes_crosswalk
================================================================================
MSG: j2735_msgs/LaneAttributesBike
#
# LaneAttributesBike.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.
#
# LaneAttributes-Bike ::= BIT STRING {
#	-- With bits as defined:
#	bikeRevocableLane (0),
#		-- this lane may be activated or not based
#		-- on the current SPAT message contents
#		-- if not asserted, the lane is ALWAYS present
#	pedestrianUseAllowed (1),
#		-- The path allows pedestrian traffic,
#		-- if not set, this mode is prohibited
#	isBikeFlyOverLane (2),
#		-- path of lane is not at grade
#	fixedCycleTime (3),
#		-- the phases use preset times
#		-- Bits 7~15 reserved and set to zero
#	} (SIZE (16))

uint16 lane_attributes_bike
================================================================================
MSG: j2735_msgs/LaneAttributesSidewalk
#
# LaneAttributesSidewalk.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type
#
# LaneAttributes-Sidewalk ::= BIT STRING {
# -- With bits as defined:
# sidewalk-RevocableLane (0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# bicyleUseAllowed (1),
# -- The path allows bicycle traffic,
# -- if not set, this mode is prohibited
# isSidewalkFlyOverLane (2),
# -- path of lane is not at grade
# walkBikes (3)
# -- bike traffic must dismount and walk
# -- Bits 4~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_sidewalk
================================================================================
MSG: j2735_msgs/LaneAttributesBarrier
#
# LaneAttributesBarrier.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Barrier data element relates specific properties found in a Barrier
# or Median lane type (a type of lane object used to separate traffic lanes).
#
# LaneAttributes-Barrier ::= BIT STRING {
# -- With bits as defined:
# median-RevocableLane (0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# median (1),
# whiteLineHashing (2),
# stripedLines (3),
# doubleStripedLines (4),
# trafficCones (5),
# constructionBarrier(6),
# trafficChannels(7),
# lowCurbs(8),
# highCurbs(9)
# -- Bits 10~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_barrier
================================================================================
MSG: j2735_msgs/LaneAttributesStriping
#
# LaneAttributesBarrier.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Striping data element relates specific properties found
# in various types of ground striping lane types.
#
# LaneAttributes-Striping ::= BIT STRING {
# -- With bits as defined:
# stripeToConnectingLanesRevocableLane(0),
# -- this lane may be activated or not activated based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# stripeDrawOnLeft(1),
# stripeDrawOnRight(2),
# -- which side of lane to mark
# stripeToConnectingLanesLeft(3),
# stripeToConnectingLanesRight(4),
# stripeToConnectingLanesAhead(5)
# -- the stripe type should be
# -- presented to the user visually
# -- to reflect stripes in the
# -- intersection for the type of
# -- movement indicated
# -- Bits 6~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_striping
================================================================================
MSG: j2735_msgs/LaneAttributesTrackedVehicle
#
# LaneAttributesTrackedVehicle.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Special data element relates specific properties found
# in a tracked vehicle lane types (trolley and train lanes).
# The term \"rail vehicle\" can be considered synonymous.
# In this case, the term does not relate to vehicle types with tracks or treads.
#
# LaneAttributes-TrackedVehicle ::= BIT STRING {
# -- With bits as defined:
# spec-RevocableLane(0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# spec-commuterRailRoadTrack (1),
# spec-lightRailRoadTrack(2),
# spec-heavyRailRoadTrack(3),
# spec-otherRailType(4)
# -- Bits 5~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_trackedvehicle

================================================================================
MSG: j2735_msgs/LaneAttributesParking
#
# LaneAttributesParking.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.
#
# LaneAttributes-Parking ::= BIT STRING {
# -- With bits as defined:
# -- Parking use details, note that detailed restrictions such as
# -- allowed hours are sent by way of ITIS codes in the TIM message
# parkingRevocableLane(0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# parallelParkingInUse(1),
# headInParkingInUse(2),
# doNotParkZone(3),
# -- used to denote fire hydrants as well as
# -- short disruptions in a parking zone
# parkingForBusUse(4),
# parkingForTaxiUse(5),
# noPublicParkingUse(6)
# -- private parking, as in front of
# -- private property
# -- Bits 7~15 reserved and set to zero
# } (SIZE (16))

uint16  lane_attributes_parking
")



(provide :j2735_msgs/LaneTypeAttributes "3e2aa6f113cac6b3d7a7bd5a414e2841")


