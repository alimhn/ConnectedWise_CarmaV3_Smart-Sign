;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesBarrier)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesBarrier (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESBARRIER")
  (make-package "J2735_MSGS::LANEATTRIBUTESBARRIER"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesBarrier.msg.html


(defclass j2735_msgs::LaneAttributesBarrier
  :super ros::object
  :slots (_lane_attributes_barrier ))

(defmethod j2735_msgs::LaneAttributesBarrier
  (:init
   (&key
    ((:lane_attributes_barrier __lane_attributes_barrier) 0)
    )
   (send-super :init)
   (setq _lane_attributes_barrier (round __lane_attributes_barrier))
   self)
  (:lane_attributes_barrier
   (&optional __lane_attributes_barrier)
   (if __lane_attributes_barrier (setq _lane_attributes_barrier __lane_attributes_barrier)) _lane_attributes_barrier)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_barrier
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_barrier
       (write-word _lane_attributes_barrier s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_barrier
     (setq _lane_attributes_barrier (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesBarrier :md5sum-) "5531954e90106cf99fd38e717468b88b")
(setf (get j2735_msgs::LaneAttributesBarrier :datatype-) "j2735_msgs/LaneAttributesBarrier")
(setf (get j2735_msgs::LaneAttributesBarrier :definition-)
      "#
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
")



(provide :j2735_msgs/LaneAttributesBarrier "5531954e90106cf99fd38e717468b88b")


