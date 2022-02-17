;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesCrosswalk)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesCrosswalk (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESCROSSWALK")
  (make-package "J2735_MSGS::LANEATTRIBUTESCROSSWALK"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesCrosswalk.msg.html


(defclass j2735_msgs::LaneAttributesCrosswalk
  :super ros::object
  :slots (_lane_attributes_crosswalk ))

(defmethod j2735_msgs::LaneAttributesCrosswalk
  (:init
   (&key
    ((:lane_attributes_crosswalk __lane_attributes_crosswalk) 0)
    )
   (send-super :init)
   (setq _lane_attributes_crosswalk (round __lane_attributes_crosswalk))
   self)
  (:lane_attributes_crosswalk
   (&optional __lane_attributes_crosswalk)
   (if __lane_attributes_crosswalk (setq _lane_attributes_crosswalk __lane_attributes_crosswalk)) _lane_attributes_crosswalk)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_crosswalk
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_crosswalk
       (write-word _lane_attributes_crosswalk s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_crosswalk
     (setq _lane_attributes_crosswalk (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesCrosswalk :md5sum-) "e5120bfe121312032ad85867f1265ce1")
(setf (get j2735_msgs::LaneAttributesCrosswalk :datatype-) "j2735_msgs/LaneAttributesCrosswalk")
(setf (get j2735_msgs::LaneAttributesCrosswalk :definition-)
      "#
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
")



(provide :j2735_msgs/LaneAttributesCrosswalk "e5120bfe121312032ad85867f1265ce1")


