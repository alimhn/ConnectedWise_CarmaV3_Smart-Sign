;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesParking)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesParking (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESPARKING")
  (make-package "J2735_MSGS::LANEATTRIBUTESPARKING"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesParking.msg.html


(defclass j2735_msgs::LaneAttributesParking
  :super ros::object
  :slots (_lane_attributes_parking ))

(defmethod j2735_msgs::LaneAttributesParking
  (:init
   (&key
    ((:lane_attributes_parking __lane_attributes_parking) 0)
    )
   (send-super :init)
   (setq _lane_attributes_parking (round __lane_attributes_parking))
   self)
  (:lane_attributes_parking
   (&optional __lane_attributes_parking)
   (if __lane_attributes_parking (setq _lane_attributes_parking __lane_attributes_parking)) _lane_attributes_parking)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_attributes_parking
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_attributes_parking
       (write-word _lane_attributes_parking s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_attributes_parking
     (setq _lane_attributes_parking (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesParking :md5sum-) "6fcf0ebd1c63223de5a1deb01ebf0960")
(setf (get j2735_msgs::LaneAttributesParking :datatype-) "j2735_msgs/LaneAttributesParking")
(setf (get j2735_msgs::LaneAttributesParking :definition-)
      "#
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



(provide :j2735_msgs/LaneAttributesParking "6fcf0ebd1c63223de5a1deb01ebf0960")


