;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::ManeuverAssistList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'ManeuverAssistList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::MANEUVERASSISTLIST")
  (make-package "J2735_MSGS::MANEUVERASSISTLIST"))

(in-package "ROS")
;;//! \htmlinclude ManeuverAssistList.msg.html


(defclass j2735_msgs::ManeuverAssistList
  :super ros::object
  :slots (_connection_maneuver_assist_list ))

(defmethod j2735_msgs::ManeuverAssistList
  (:init
   (&key
    ((:connection_maneuver_assist_list __connection_maneuver_assist_list) ())
    )
   (send-super :init)
   (setq _connection_maneuver_assist_list __connection_maneuver_assist_list)
   self)
  (:connection_maneuver_assist_list
   (&rest __connection_maneuver_assist_list)
   (if (keywordp (car __connection_maneuver_assist_list))
       (send* _connection_maneuver_assist_list __connection_maneuver_assist_list)
     (progn
       (if __connection_maneuver_assist_list (setq _connection_maneuver_assist_list (car __connection_maneuver_assist_list)))
       _connection_maneuver_assist_list)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/ConnectionManeuverAssist[] _connection_maneuver_assist_list
    (apply #'+ (send-all _connection_maneuver_assist_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/ConnectionManeuverAssist[] _connection_maneuver_assist_list
     (write-long (length _connection_maneuver_assist_list) s)
     (dolist (elem _connection_maneuver_assist_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/ConnectionManeuverAssist[] _connection_maneuver_assist_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connection_maneuver_assist_list (let (r) (dotimes (i n) (push (instance j2735_msgs::ConnectionManeuverAssist :init) r)) r))
     (dolist (elem- _connection_maneuver_assist_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::ManeuverAssistList :md5sum-) "2086e09532cefc78ee69224b474da338")
(setf (get j2735_msgs::ManeuverAssistList :datatype-) "j2735_msgs/ManeuverAssistList")
(setf (get j2735_msgs::ManeuverAssistList :definition-)
      "# This entry is used directly by one other data structure in this standard, a DF called DF_LaneAttributes <ASN>.
#  In addition, this item may be used by data structures in other ITS standards.
# ManeuverAssistList ::= SEQUENCE (SIZE(1..16)) OF ConnectionManeuverAssist

j2735_msgs/ConnectionManeuverAssist[] connection_maneuver_assist_list

================================================================================
MSG: j2735_msgs/ConnectionManeuverAssist

# The ConnectionManeuverAssist data frame contains information about the the dynamic flow of traffic for the lane(s)
# and maneuvers in question (as determined by the LaneConnectionID). Note that this information can be sent regarding
# any lane-to-lane movement; it need not be limited to the lanes with active (non-red) phases when sent.
#
# ConnectionManeuverAssist ::= SEQUENCE {
# connectionID LaneConnectionID,
# -- the common connectionID used by all lanes to which
# -- this data applies
# -- (this value traces to ConnectsTo entries in lanes)
# -- Expected Clearance Information
# queueLength ZoneLength OPTIONAL,
# -- Unit = 1 meter, 0 = no queue
# -- The distance from the stop line to the back
# -- edge of the last vehicle in the queue,
# -- as measured along the lane center line.
# availableStorageLength ZoneLength OPTIONAL,
# -- Unit = 1 meter, 0 = no space remains
# -- Distance (e.g. beginning from the downstream
# -- stop-line up to a given distance) with a high
# -- probability for successfully executing the
# -- connecting maneuver between the two lanes
# -- during the current cycle.
# -- Used for enhancing the awareness of vehicles
# -- to anticipate if they can pass the stop line
# -- of the lane. Used for optimizing the green wave,
# -- due to knowledge of vehicles waiting in front
# -- of a red light (downstream).
# -- The element nextTime in TimeChangeDetails
# -- in the containing data frame contains the next
# -- timemark at which an active phase is expected,
# -- a form of storage flush interval.
# waitOnStop WaitOnStopline OPTIONAL,
# -- If \"true\", the vehicles on this specific connecting
# -- maneuver have to stop on the stop-line and not
# -- to enter the collision area
# pedBicycleDetect PedestrianBicycleDetect OPTIONAL,
# -- true if ANY ped or bicycles are detected crossing
# -- the above lanes. Set to false ONLY if there is a
# -- high certainty that there are none present,
# -- otherwise element is not sent.
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ConnectionManeuverAssist}} OPTIONAL,
# ...
# }

# LaneConnectionID ::= INTEGER (0..255)
uint8 connection_id

# ZoneLength ::= INTEGER (0..10000)
# -- Unit = 1 meter, 0 = unknown,
# -- The value 10000 to be used for Distances >=10000 m
# -- (e.g. from known point to another point along a
# -- known path, often against traffic flow direction
# -- when used for measuring queues)
uint16 queue_length
bool queue_length_exists

# ZoneLength ::= INTEGER (0..10000)
uint16 available_storage_length
bool available_storage_length_exists

# WaitOnStopline ::= BOOLEAN --- True or False
# -- If \"true\", the vehicles on this specific connecting
# -- maneuver have to stop on the stop-line
# -- and not to enter the collision area
bool wait_on_stop
bool wait_on_stop_exists

# PedestrianBicycleDetect ::= BOOLEAN
# -- true if ANY Pedestrians or Bicyclists are
# -- detected crossing the target lane or lanes
bool ped_bicycle_detect
bool ped_bicycle_detect_exists

# regional #TODO: RegionalExtensions are not yet implemented in asn1c
")



(provide :j2735_msgs/ManeuverAssistList "2086e09532cefc78ee69224b474da338")


