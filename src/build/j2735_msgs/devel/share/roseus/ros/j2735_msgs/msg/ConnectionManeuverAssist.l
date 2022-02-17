;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::ConnectionManeuverAssist)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'ConnectionManeuverAssist (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::CONNECTIONMANEUVERASSIST")
  (make-package "J2735_MSGS::CONNECTIONMANEUVERASSIST"))

(in-package "ROS")
;;//! \htmlinclude ConnectionManeuverAssist.msg.html


(defclass j2735_msgs::ConnectionManeuverAssist
  :super ros::object
  :slots (_connection_id _queue_length _queue_length_exists _available_storage_length _available_storage_length_exists _wait_on_stop _wait_on_stop_exists _ped_bicycle_detect _ped_bicycle_detect_exists ))

(defmethod j2735_msgs::ConnectionManeuverAssist
  (:init
   (&key
    ((:connection_id __connection_id) 0)
    ((:queue_length __queue_length) 0)
    ((:queue_length_exists __queue_length_exists) nil)
    ((:available_storage_length __available_storage_length) 0)
    ((:available_storage_length_exists __available_storage_length_exists) nil)
    ((:wait_on_stop __wait_on_stop) nil)
    ((:wait_on_stop_exists __wait_on_stop_exists) nil)
    ((:ped_bicycle_detect __ped_bicycle_detect) nil)
    ((:ped_bicycle_detect_exists __ped_bicycle_detect_exists) nil)
    )
   (send-super :init)
   (setq _connection_id (round __connection_id))
   (setq _queue_length (round __queue_length))
   (setq _queue_length_exists __queue_length_exists)
   (setq _available_storage_length (round __available_storage_length))
   (setq _available_storage_length_exists __available_storage_length_exists)
   (setq _wait_on_stop __wait_on_stop)
   (setq _wait_on_stop_exists __wait_on_stop_exists)
   (setq _ped_bicycle_detect __ped_bicycle_detect)
   (setq _ped_bicycle_detect_exists __ped_bicycle_detect_exists)
   self)
  (:connection_id
   (&optional __connection_id)
   (if __connection_id (setq _connection_id __connection_id)) _connection_id)
  (:queue_length
   (&optional __queue_length)
   (if __queue_length (setq _queue_length __queue_length)) _queue_length)
  (:queue_length_exists
   (&optional (__queue_length_exists :null))
   (if (not (eq __queue_length_exists :null)) (setq _queue_length_exists __queue_length_exists)) _queue_length_exists)
  (:available_storage_length
   (&optional __available_storage_length)
   (if __available_storage_length (setq _available_storage_length __available_storage_length)) _available_storage_length)
  (:available_storage_length_exists
   (&optional (__available_storage_length_exists :null))
   (if (not (eq __available_storage_length_exists :null)) (setq _available_storage_length_exists __available_storage_length_exists)) _available_storage_length_exists)
  (:wait_on_stop
   (&optional (__wait_on_stop :null))
   (if (not (eq __wait_on_stop :null)) (setq _wait_on_stop __wait_on_stop)) _wait_on_stop)
  (:wait_on_stop_exists
   (&optional (__wait_on_stop_exists :null))
   (if (not (eq __wait_on_stop_exists :null)) (setq _wait_on_stop_exists __wait_on_stop_exists)) _wait_on_stop_exists)
  (:ped_bicycle_detect
   (&optional (__ped_bicycle_detect :null))
   (if (not (eq __ped_bicycle_detect :null)) (setq _ped_bicycle_detect __ped_bicycle_detect)) _ped_bicycle_detect)
  (:ped_bicycle_detect_exists
   (&optional (__ped_bicycle_detect_exists :null))
   (if (not (eq __ped_bicycle_detect_exists :null)) (setq _ped_bicycle_detect_exists __ped_bicycle_detect_exists)) _ped_bicycle_detect_exists)
  (:serialization-length
   ()
   (+
    ;; uint8 _connection_id
    1
    ;; uint16 _queue_length
    2
    ;; bool _queue_length_exists
    1
    ;; uint16 _available_storage_length
    2
    ;; bool _available_storage_length_exists
    1
    ;; bool _wait_on_stop
    1
    ;; bool _wait_on_stop_exists
    1
    ;; bool _ped_bicycle_detect
    1
    ;; bool _ped_bicycle_detect_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _connection_id
       (write-byte _connection_id s)
     ;; uint16 _queue_length
       (write-word _queue_length s)
     ;; bool _queue_length_exists
       (if _queue_length_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _available_storage_length
       (write-word _available_storage_length s)
     ;; bool _available_storage_length_exists
       (if _available_storage_length_exists (write-byte -1 s) (write-byte 0 s))
     ;; bool _wait_on_stop
       (if _wait_on_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _wait_on_stop_exists
       (if _wait_on_stop_exists (write-byte -1 s) (write-byte 0 s))
     ;; bool _ped_bicycle_detect
       (if _ped_bicycle_detect (write-byte -1 s) (write-byte 0 s))
     ;; bool _ped_bicycle_detect_exists
       (if _ped_bicycle_detect_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _connection_id
     (setq _connection_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _queue_length
     (setq _queue_length (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _queue_length_exists
     (setq _queue_length_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _available_storage_length
     (setq _available_storage_length (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _available_storage_length_exists
     (setq _available_storage_length_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wait_on_stop
     (setq _wait_on_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wait_on_stop_exists
     (setq _wait_on_stop_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ped_bicycle_detect
     (setq _ped_bicycle_detect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ped_bicycle_detect_exists
     (setq _ped_bicycle_detect_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::ConnectionManeuverAssist :md5sum-) "0828917931a657d68a5c850fd3b65bc0")
(setf (get j2735_msgs::ConnectionManeuverAssist :datatype-) "j2735_msgs/ConnectionManeuverAssist")
(setf (get j2735_msgs::ConnectionManeuverAssist :definition-)
      "
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



(provide :j2735_msgs/ConnectionManeuverAssist "0828917931a657d68a5c850fd3b65bc0")


