;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::IntersectionReferenceID)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'IntersectionReferenceID (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::INTERSECTIONREFERENCEID")
  (make-package "J2735_MSGS::INTERSECTIONREFERENCEID"))

(in-package "ROS")
;;//! \htmlinclude IntersectionReferenceID.msg.html


(intern "*REGION_UNAVAILABLE*" (find-package "J2735_MSGS::INTERSECTIONREFERENCEID"))
(shadow '*REGION_UNAVAILABLE* (find-package "J2735_MSGS::INTERSECTIONREFERENCEID"))
(defconstant j2735_msgs::IntersectionReferenceID::*REGION_UNAVAILABLE* 0)

(defun j2735_msgs::IntersectionReferenceID-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::IntersectionReferenceID::*REGION_UNAVAILABLE*)
        (t nil)))

(defclass j2735_msgs::IntersectionReferenceID
  :super ros::object
  :slots (_region _region_exists _id ))

(defmethod j2735_msgs::IntersectionReferenceID
  (:init
   (&key
    ((:region __region) 0)
    ((:region_exists __region_exists) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _region (round __region))
   (setq _region_exists __region_exists)
   (setq _id (round __id))
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
  (:serialization-length
   ()
   (+
    ;; uint16 _region
    2
    ;; bool _region_exists
    1
    ;; uint16 _id
    2
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
   ;;
   self)
  )

(setf (get j2735_msgs::IntersectionReferenceID :md5sum-) "ab9a4df76e7acc4e7573572145314417")
(setf (get j2735_msgs::IntersectionReferenceID :datatype-) "j2735_msgs/IntersectionReferenceID")
(setf (get j2735_msgs::IntersectionReferenceID :definition-)
      "#
# IntersectionReferenceID.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an
# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is
# guaranteed to be globally unique.

# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)
# -- a globally unique regional assignment value
# -- typical assigned to a regional DOT authority
# -- the value zero shall be used for testing needs
# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.
uint16 region
uint16 REGION_UNAVAILABLE=0
bool region_exists

# id IntersectionID ::= INTEGER (0..65535)
# -- a unique mapping to the intersection
# -- in question within the above region of use
uint16 id

")



(provide :j2735_msgs/IntersectionReferenceID "ab9a4df76e7acc4e7573572145314417")


