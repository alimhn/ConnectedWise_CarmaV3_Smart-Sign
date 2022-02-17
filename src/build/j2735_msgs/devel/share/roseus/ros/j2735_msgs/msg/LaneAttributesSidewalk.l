;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesSidewalk)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesSidewalk (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESSIDEWALK")
  (make-package "J2735_MSGS::LANEATTRIBUTESSIDEWALK"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesSidewalk.msg.html


(defclass j2735_msgs::LaneAttributesSidewalk
  :super ros::object
  :slots (_lane_attributes_sidewalk ))

(defmethod j2735_msgs::LaneAttributesSidewalk
  (:init
   (&key
    ((:lane_attributes_sidewalk __lane_attributes_sidewalk) 0)
    )
   (send-super :init)
   (setq _lane_attributes_sidewalk (round __lane_attributes_sidewalk))
   self)
  (:lane_attributes_sidewalk
   (&optional __lane_attributes_sidewalk)
   (if __lane_attributes_sidewalk (setq _lane_attributes_sidewalk __lane_attributes_sidewalk)) _lane_attributes_sidewalk)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_sidewalk
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_sidewalk
       (write-word _lane_attributes_sidewalk s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_sidewalk
     (setq _lane_attributes_sidewalk (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesSidewalk :md5sum-) "97871d7230232984666cd50c114ca7bf")
(setf (get j2735_msgs::LaneAttributesSidewalk :datatype-) "j2735_msgs/LaneAttributesSidewalk")
(setf (get j2735_msgs::LaneAttributesSidewalk :definition-)
      "#
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
")



(provide :j2735_msgs/LaneAttributesSidewalk "97871d7230232984666cd50c114ca7bf")


