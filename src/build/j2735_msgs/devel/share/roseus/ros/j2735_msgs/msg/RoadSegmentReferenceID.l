;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RoadSegmentReferenceID)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RoadSegmentReferenceID (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ROADSEGMENTREFERENCEID")
  (make-package "J2735_MSGS::ROADSEGMENTREFERENCEID"))

(in-package "ROS")
;;//! \htmlinclude RoadSegmentReferenceID.msg.html


(defclass j2735_msgs::RoadSegmentReferenceID
  :super ros::object
  :slots (_region _region_exists _id _id_exists ))

(defmethod j2735_msgs::RoadSegmentReferenceID
  (:init
   (&key
    ((:region __region) 0)
    ((:region_exists __region_exists) nil)
    ((:id __id) 0)
    ((:id_exists __id_exists) nil)
    )
   (send-super :init)
   (setq _region (round __region))
   (setq _region_exists __region_exists)
   (setq _id (round __id))
   (setq _id_exists __id_exists)
   self)
  (:region
   (&optional __region)
   (if __region (setq _region __region)) _region)
  (:region_exists
   (&optional (__region_exists :null))
   (if (not (eq __region_exists :null)) (setq _region_exists __region_exists)) _region_exists)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:id_exists
   (&optional (__id_exists :null))
   (if (not (eq __id_exists :null)) (setq _id_exists __id_exists)) _id_exists)
  (:serialization-length
   ()
   (+
    ;; uint16 _region
    2
    ;; bool _region_exists
    1
    ;; uint16 _id
    2
    ;; bool _id_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _region
       (write-word _region s)
     ;; bool _region_exists
       (if _region_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _id
       (write-word _id s)
     ;; bool _id_exists
       (if _id_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _region
     (setq _region (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _region_exists
     (setq _region_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _id_exists
     (setq _id_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::RoadSegmentReferenceID :md5sum-) "4bf4691f490fdc19634fca26ef0c582f")
(setf (get j2735_msgs::RoadSegmentReferenceID :datatype-) "j2735_msgs/RoadSegmentReferenceID")
(setf (get j2735_msgs::RoadSegmentReferenceID :definition-)
      "#
# RoadSegmentReferenceID.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RoadSegmentReferenceID data frame is used to convey theRoadSegmentID which is unique to a given
# road segment of interest, and also the RoadRegulatorID assigned to the region in which it is operating (when required).

# RoadSegmentReferenceID ::= SEQUENCE {
# region RoadRegulatorID OPTIONAL,
# -- a globally unique regional assignment value
# -- typically assigned to a regional DOT authority
# -- the value zero shall be used for testing needs
# id RoadSegmentID
# -- a unique mapping to the road segment
# -- in question within the above region of use
# -- during its period of assignment and use
# -- note that unlike intersectionID values,
# -- this value can be reused by the region
# }

# RoadRegulatorID ::= INTEGER (0..65535)
uint16 region
bool region_exists

# RoadSegmentID ::= INTEGER (0..65535)
# -- The values zero to 255 shall be used for testing only
# -- Note that the value assigned to an RoadSegment will be
# -- unique within a given regional ID only during its use
uint16 id
bool id_exists




")



(provide :j2735_msgs/RoadSegmentReferenceID "4bf4691f490fdc19634fca26ef0c582f")


