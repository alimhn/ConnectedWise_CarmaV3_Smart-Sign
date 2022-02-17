;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::OverlayLaneList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'OverlayLaneList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::OVERLAYLANELIST")
  (make-package "J2735_MSGS::OVERLAYLANELIST"))

(in-package "ROS")
;;//! \htmlinclude OverlayLaneList.msg.html


(defclass j2735_msgs::OverlayLaneList
  :super ros::object
  :slots (_overlay_lane_list ))

(defmethod j2735_msgs::OverlayLaneList
  (:init
   (&key
    ((:overlay_lane_list __overlay_lane_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _overlay_lane_list __overlay_lane_list)
   self)
  (:overlay_lane_list
   (&optional __overlay_lane_list)
   (if __overlay_lane_list (setq _overlay_lane_list __overlay_lane_list)) _overlay_lane_list)
  (:serialization-length
   ()
   (+
    ;; uint16[] _overlay_lane_list
    (* 2    (length _overlay_lane_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _overlay_lane_list
     (write-long (length _overlay_lane_list) s)
     (dotimes (i (length _overlay_lane_list))
       (write-word (elt _overlay_lane_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _overlay_lane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _overlay_lane_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _overlay_lane_list i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::OverlayLaneList :md5sum-) "b6336706d1d1df05ba24af7224350228")
(setf (get j2735_msgs::OverlayLaneList :datatype-) "j2735_msgs/OverlayLaneList")
(setf (get j2735_msgs::OverlayLaneList :definition-)
      "#
# OverlayLaneList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Overlay Lane List data frame is a sequence of lane IDs which refers to lane objects that overlap or overlay the
# current lane's spatial path.
#  OverlayLaneList ::= SEQUENCE (SIZE(1..5)) OF LaneID
# -- The unique ID numbers for any lane object which have
# -- spatial paths that overlay (run on top of, and not
# -- simply cross with) the current lane.
# -- Such as a train path that overlays a motor vehicle
# -- lane object for a roadway segment.

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is
# -- not available or not known
# -- the value 255 is reserved for future use
uint16[] overlay_lane_list
")



(provide :j2735_msgs/OverlayLaneList "b6336706d1d1df05ba24af7224350228")


