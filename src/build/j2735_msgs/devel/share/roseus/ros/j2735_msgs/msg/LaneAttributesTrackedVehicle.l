;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesTrackedVehicle)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesTrackedVehicle (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESTRACKEDVEHICLE")
  (make-package "J2735_MSGS::LANEATTRIBUTESTRACKEDVEHICLE"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesTrackedVehicle.msg.html


(defclass j2735_msgs::LaneAttributesTrackedVehicle
  :super ros::object
  :slots (_lane_attributes_trackedvehicle ))

(defmethod j2735_msgs::LaneAttributesTrackedVehicle
  (:init
   (&key
    ((:lane_attributes_trackedvehicle __lane_attributes_trackedvehicle) 0)
    )
   (send-super :init)
   (setq _lane_attributes_trackedvehicle (round __lane_attributes_trackedvehicle))
   self)
  (:lane_attributes_trackedvehicle
   (&optional __lane_attributes_trackedvehicle)
   (if __lane_attributes_trackedvehicle (setq _lane_attributes_trackedvehicle __lane_attributes_trackedvehicle)) _lane_attributes_trackedvehicle)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_trackedvehicle
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_trackedvehicle
       (write-word _lane_attributes_trackedvehicle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_trackedvehicle
     (setq _lane_attributes_trackedvehicle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesTrackedVehicle :md5sum-) "5c46f1b05aeda06003bee863bd58817a")
(setf (get j2735_msgs::LaneAttributesTrackedVehicle :datatype-) "j2735_msgs/LaneAttributesTrackedVehicle")
(setf (get j2735_msgs::LaneAttributesTrackedVehicle :definition-)
      "#
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

")



(provide :j2735_msgs/LaneAttributesTrackedVehicle "5c46f1b05aeda06003bee863bd58817a")


