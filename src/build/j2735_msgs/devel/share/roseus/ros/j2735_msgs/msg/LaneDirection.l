;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneDirection)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneDirection (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEDIRECTION")
  (make-package "J2735_MSGS::LANEDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude LaneDirection.msg.html


(defclass j2735_msgs::LaneDirection
  :super ros::object
  :slots (_lane_direction ))

(defmethod j2735_msgs::LaneDirection
  (:init
   (&key
    ((:lane_direction __lane_direction) 0)
    )
   (send-super :init)
   (setq _lane_direction (round __lane_direction))
   self)
  (:lane_direction
   (&optional __lane_direction)
   (if __lane_direction (setq _lane_direction __lane_direction)) _lane_direction)
  (:serialization-length
   ()
   (+
    ;; uint8 _lane_direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lane_direction
       (write-byte _lane_direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lane_direction
     (setq _lane_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneDirection :md5sum-) "e54bbf0b78a512c3a5e1e30ccec9630b")
(setf (get j2735_msgs::LaneDirection :datatype-) "j2735_msgs/LaneDirection")
(setf (get j2735_msgs::LaneDirection :definition-)
      "#
# LaneDirection.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneDirection data element is used to denote the allowed direction of travel over a lane object. By convention,
# the lane object is always described from the stop line outwards away from the intersection. Therefore, the ingress
# direction is from the end of the path to the stop line and the egress direction is from the stop line outwards. It should be
# noted that some lane objects are not used for travel and that some lane objects allow bi-directional travel.
#
# LaneDirection ::= BIT STRING {
# -- With bits as defined:
# -- Allowed directions of travel in the lane object
# -- All lanes are described from the stop line outwards
# ingressPath (0),
# -- travel from rear of path to front is allowed
# egressPath (1)
# -- travel from front of path to rear is allowed
# -- Notes: No Travel, i.e. the lane object type does not support travel (medians, curbs, etc.)
# is indicated by not asserting any bit value
# - Bi-Directional Travel (such as a ped crosswalk) is indicated by asserting both of the bits
# } (SIZE (2))

uint8 lane_direction
")



(provide :j2735_msgs/LaneDirection "e54bbf0b78a512c3a5e1e30ccec9630b")


