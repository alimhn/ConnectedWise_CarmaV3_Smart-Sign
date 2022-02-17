;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesStriping)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesStriping (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESSTRIPING")
  (make-package "J2735_MSGS::LANEATTRIBUTESSTRIPING"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesStriping.msg.html


(defclass j2735_msgs::LaneAttributesStriping
  :super ros::object
  :slots (_lane_attributes_striping ))

(defmethod j2735_msgs::LaneAttributesStriping
  (:init
   (&key
    ((:lane_attributes_striping __lane_attributes_striping) 0)
    )
   (send-super :init)
   (setq _lane_attributes_striping (round __lane_attributes_striping))
   self)
  (:lane_attributes_striping
   (&optional __lane_attributes_striping)
   (if __lane_attributes_striping (setq _lane_attributes_striping __lane_attributes_striping)) _lane_attributes_striping)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_striping
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_striping
       (write-word _lane_attributes_striping s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_striping
     (setq _lane_attributes_striping (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesStriping :md5sum-) "2426985d7e69b33e60c48db181bef6d2")
(setf (get j2735_msgs::LaneAttributesStriping :datatype-) "j2735_msgs/LaneAttributesStriping")
(setf (get j2735_msgs::LaneAttributesStriping :definition-)
      "#
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
")



(provide :j2735_msgs/LaneAttributesStriping "2426985d7e69b33e60c48db181bef6d2")


