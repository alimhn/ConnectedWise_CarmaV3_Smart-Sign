;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::IntersectionStatusObject)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'IntersectionStatusObject (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::INTERSECTIONSTATUSOBJECT")
  (make-package "J2735_MSGS::INTERSECTIONSTATUSOBJECT"))

(in-package "ROS")
;;//! \htmlinclude IntersectionStatusObject.msg.html


(defclass j2735_msgs::IntersectionStatusObject
  :super ros::object
  :slots (_intersection_status_object ))

(defmethod j2735_msgs::IntersectionStatusObject
  (:init
   (&key
    ((:intersection_status_object __intersection_status_object) 0)
    )
   (send-super :init)
   (setq _intersection_status_object (round __intersection_status_object))
   self)
  (:intersection_status_object
   (&optional __intersection_status_object)
   (if __intersection_status_object (setq _intersection_status_object __intersection_status_object)) _intersection_status_object)
  (:serialization-length
   ()
   (+
    ;; uint16 _intersection_status_object
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _intersection_status_object
       (write-word _intersection_status_object s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _intersection_status_object
     (setq _intersection_status_object (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::IntersectionStatusObject :md5sum-) "189e3f94ed4f7d42fc526476bb41da86")
(setf (get j2735_msgs::IntersectionStatusObject :datatype-) "j2735_msgs/IntersectionStatusObject")
(setf (get j2735_msgs::IntersectionStatusObject :definition-)
      "#
# IntersectionStatusObject.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Intersection Status Object contains Advanced Traffic Controller (ATC) status information that may be sent to
# local OBUs as part of the SPAT process.

# IntersectionStatusObject ::= BIT STRING {
# manualControlIsEnabled (0),
# -- Timing reported is per programmed values, etc. but person
# -- at cabinet can manually request that certain intervals are
# -- terminated early (e.g. green).
# stopTimeIsActivated (1),
# -- And all counting/timing has stopped.
# failureFlash (2),
# -- Above to be used for any detected hardware failures,
# -- e.g. conflict monitor as well as for police flash
# preemptIsActive (3),
# signalPriorityIsActive (4),
# -- Additional states
# fixedTimeOperation (5),
# -- Schedule of signals is based on time only
# -- (i.e. the state can be calculated)
# trafficDependentOperation (6),
# -- Operation is based on different levels of traffic parameters
# -- (requests, duration of gaps or more complex parameters)
# standbyOperation (7),
# -- Controller: partially switched off or partially amber flashing
# failureMode (8),
# -- Controller has a problem or failure in operation
# off (9),
# -- Controller is switched off
# -- Related to MAP and SPAT bindings
# recentMAPmessageUpdate (10),
# -- Map revision with content changes
# recentChangeInMAPassignedLanesIDsUsed (11),
# -- Change in MAP's assigned lanes used (lane changes)
# -- Changes in the active lane list description
# noValidMAPisAvailableAtThisTime (12),
# -- MAP (and various lanes indexes) not available
# noValidSPATisAvailableAtThisTime (13)
# -- SPAT system is not working at this time
# -- Bits 14,15 reserved at this time and shall be zero
# } (SIZE(16))

uint16 intersection_status_object
")



(provide :j2735_msgs/IntersectionStatusObject "189e3f94ed4f7d42fc526476bb41da86")


