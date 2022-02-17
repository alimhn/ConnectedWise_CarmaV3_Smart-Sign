;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::EnabledLaneList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'EnabledLaneList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ENABLEDLANELIST")
  (make-package "J2735_MSGS::ENABLEDLANELIST"))

(in-package "ROS")
;;//! \htmlinclude EnabledLaneList.msg.html


(defclass j2735_msgs::EnabledLaneList
  :super ros::object
  :slots (_lane_id_list ))

(defmethod j2735_msgs::EnabledLaneList
  (:init
   (&key
    ((:lane_id_list __lane_id_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _lane_id_list __lane_id_list)
   self)
  (:lane_id_list
   (&optional __lane_id_list)
   (if __lane_id_list (setq _lane_id_list __lane_id_list)) _lane_id_list)
  (:serialization-length
   ()
   (+
    ;; uint16[] _lane_id_list
    (* 2    (length _lane_id_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _lane_id_list
     (write-long (length _lane_id_list) s)
     (dotimes (i (length _lane_id_list))
       (write-word (elt _lane_id_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _lane_id_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_id_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lane_id_list i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::EnabledLaneList :md5sum-) "bac2474615e566c4122e6a3675ef4441")
(setf (get j2735_msgs::EnabledLaneList :datatype-) "j2735_msgs/EnabledLaneList")
(setf (get j2735_msgs::EnabledLaneList :definition-)
      "#
# EnabledLaneList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Enabled Lane List data frame is a sequence of lane IDs for lane objects that are activated in the current map
# configuration. These lanes, unlike most lanes, have their RevocableLane bit set to one (asserted). Such lanes are not
# considered to be part of the current map unless they are in the Enabled Lane List. This concept is used to describe all the
# possible regulatory states for a given physical lane.
#
# EnabledLaneList ::= SEQUENCE (SIZE(1..16)) OF LaneID
#-- The unique ID numbers for each
#-- lane object which is 'active'
#-- as part of the dynamic map contents.

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is not available or not known
# -- the value 255 is reserved for future use
uint16[] lane_id_list
")



(provide :j2735_msgs/EnabledLaneList "bac2474615e566c4122e6a3675ef4441")


