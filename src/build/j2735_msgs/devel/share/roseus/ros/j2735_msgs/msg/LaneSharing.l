;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneSharing)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneSharing (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANESHARING")
  (make-package "J2735_MSGS::LANESHARING"))

(in-package "ROS")
;;//! \htmlinclude LaneSharing.msg.html


(defclass j2735_msgs::LaneSharing
  :super ros::object
  :slots (_lane_sharing ))

(defmethod j2735_msgs::LaneSharing
  (:init
   (&key
    ((:lane_sharing __lane_sharing) 0)
    )
   (send-super :init)
   (setq _lane_sharing (round __lane_sharing))
   self)
  (:lane_sharing
   (&optional __lane_sharing)
   (if __lane_sharing (setq _lane_sharing __lane_sharing)) _lane_sharing)
  (:serialization-length
   ()
   (+
    ;; uint16 _lane_sharing
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _lane_sharing
       (write-word _lane_sharing s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _lane_sharing
     (setq _lane_sharing (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneSharing :md5sum-) "a5b20babfaf86f7076116f556cbdd772")
(setf (get j2735_msgs::LaneSharing :datatype-) "j2735_msgs/LaneSharing")
(setf (get j2735_msgs::LaneSharing :definition-)
      "#
# LaneSharing.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
#
# LaneSharing ::= BIT STRING {
# -- With bits as defined:
# overlappingLaneDescriptionProvided (0),
# -- Assert when another lane object is present to describe the
# -- path of the overlapping shared lane
# -- this construct is not used for lane objects which simply cross
# multipleLanesTreatedAsOneLane(1),
# -- Assert if the lane object path and width details represents
# -- multiple lanes within it that are not further described
# -- Various modes and type of traffic that may share this lane:
# otherNonMotorizedTrafficTypes (2), -- horse drawn etc.
# individualMotorizedVehicleTraffic (3),
# busVehicleTraffic (4),
# taxiVehicleTraffic (5),
# pedestriansTraffic (6),
# cyclistVehicleTraffic (7),
# trackedVehicleTraffic (8),
# pedestrianTraffic (9)
# } (SIZE (10))
# -- All zeros would indicate 'not shared' and 'not overlapping'

uint16 lane_sharing
")



(provide :j2735_msgs/LaneSharing "a5b20babfaf86f7076116f556cbdd772")


