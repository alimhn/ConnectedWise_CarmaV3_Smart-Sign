;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesBike)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesBike (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESBIKE")
  (make-package "J2735_MSGS::LANEATTRIBUTESBIKE"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesBike.msg.html


(defclass j2735_msgs::LaneAttributesBike
  :super ros::object
  :slots (_lane_attributes_bike ))

(defmethod j2735_msgs::LaneAttributesBike
  (:init
   (&key
    ((:lane_attributes_bike __lane_attributes_bike) 0)
    )
   (send-super :init)
   (setq _lane_attributes_bike (round __lane_attributes_bike))
   self)
  (:lane_attributes_bike
   (&optional __lane_attributes_bike)
   (if __lane_attributes_bike (setq _lane_attributes_bike __lane_attributes_bike)) _lane_attributes_bike)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_bike
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_bike
       (write-word _lane_attributes_bike s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_bike
     (setq _lane_attributes_bike (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesBike :md5sum-) "d97edc5cc6e1a0f94524b84eca2f039f")
(setf (get j2735_msgs::LaneAttributesBike :datatype-) "j2735_msgs/LaneAttributesBike")
(setf (get j2735_msgs::LaneAttributesBike :definition-)
      "#
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
")



(provide :j2735_msgs/LaneAttributesBike "d97edc5cc6e1a0f94524b84eca2f039f")


