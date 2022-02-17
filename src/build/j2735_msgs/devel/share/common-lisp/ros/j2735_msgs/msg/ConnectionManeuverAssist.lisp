; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude ConnectionManeuverAssist.msg.html

(cl:defclass <ConnectionManeuverAssist> (roslisp-msg-protocol:ros-message)
  ((connection_id
    :reader connection_id
    :initarg :connection_id
    :type cl:fixnum
    :initform 0)
   (queue_length
    :reader queue_length
    :initarg :queue_length
    :type cl:fixnum
    :initform 0)
   (queue_length_exists
    :reader queue_length_exists
    :initarg :queue_length_exists
    :type cl:boolean
    :initform cl:nil)
   (available_storage_length
    :reader available_storage_length
    :initarg :available_storage_length
    :type cl:fixnum
    :initform 0)
   (available_storage_length_exists
    :reader available_storage_length_exists
    :initarg :available_storage_length_exists
    :type cl:boolean
    :initform cl:nil)
   (wait_on_stop
    :reader wait_on_stop
    :initarg :wait_on_stop
    :type cl:boolean
    :initform cl:nil)
   (wait_on_stop_exists
    :reader wait_on_stop_exists
    :initarg :wait_on_stop_exists
    :type cl:boolean
    :initform cl:nil)
   (ped_bicycle_detect
    :reader ped_bicycle_detect
    :initarg :ped_bicycle_detect
    :type cl:boolean
    :initform cl:nil)
   (ped_bicycle_detect_exists
    :reader ped_bicycle_detect_exists
    :initarg :ped_bicycle_detect_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConnectionManeuverAssist (<ConnectionManeuverAssist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionManeuverAssist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionManeuverAssist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<ConnectionManeuverAssist> is deprecated: use j2735_msgs-msg:ConnectionManeuverAssist instead.")))

(cl:ensure-generic-function 'connection_id-val :lambda-list '(m))
(cl:defmethod connection_id-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:connection_id-val is deprecated.  Use j2735_msgs-msg:connection_id instead.")
  (connection_id m))

(cl:ensure-generic-function 'queue_length-val :lambda-list '(m))
(cl:defmethod queue_length-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:queue_length-val is deprecated.  Use j2735_msgs-msg:queue_length instead.")
  (queue_length m))

(cl:ensure-generic-function 'queue_length_exists-val :lambda-list '(m))
(cl:defmethod queue_length_exists-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:queue_length_exists-val is deprecated.  Use j2735_msgs-msg:queue_length_exists instead.")
  (queue_length_exists m))

(cl:ensure-generic-function 'available_storage_length-val :lambda-list '(m))
(cl:defmethod available_storage_length-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:available_storage_length-val is deprecated.  Use j2735_msgs-msg:available_storage_length instead.")
  (available_storage_length m))

(cl:ensure-generic-function 'available_storage_length_exists-val :lambda-list '(m))
(cl:defmethod available_storage_length_exists-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:available_storage_length_exists-val is deprecated.  Use j2735_msgs-msg:available_storage_length_exists instead.")
  (available_storage_length_exists m))

(cl:ensure-generic-function 'wait_on_stop-val :lambda-list '(m))
(cl:defmethod wait_on_stop-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:wait_on_stop-val is deprecated.  Use j2735_msgs-msg:wait_on_stop instead.")
  (wait_on_stop m))

(cl:ensure-generic-function 'wait_on_stop_exists-val :lambda-list '(m))
(cl:defmethod wait_on_stop_exists-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:wait_on_stop_exists-val is deprecated.  Use j2735_msgs-msg:wait_on_stop_exists instead.")
  (wait_on_stop_exists m))

(cl:ensure-generic-function 'ped_bicycle_detect-val :lambda-list '(m))
(cl:defmethod ped_bicycle_detect-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:ped_bicycle_detect-val is deprecated.  Use j2735_msgs-msg:ped_bicycle_detect instead.")
  (ped_bicycle_detect m))

(cl:ensure-generic-function 'ped_bicycle_detect_exists-val :lambda-list '(m))
(cl:defmethod ped_bicycle_detect_exists-val ((m <ConnectionManeuverAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:ped_bicycle_detect_exists-val is deprecated.  Use j2735_msgs-msg:ped_bicycle_detect_exists instead.")
  (ped_bicycle_detect_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionManeuverAssist>) ostream)
  "Serializes a message object of type '<ConnectionManeuverAssist>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queue_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'queue_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'queue_length_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available_storage_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available_storage_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available_storage_length_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait_on_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait_on_stop_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ped_bicycle_detect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ped_bicycle_detect_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionManeuverAssist>) istream)
  "Deserializes a message object of type '<ConnectionManeuverAssist>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queue_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'queue_length)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'queue_length_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available_storage_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available_storage_length)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'available_storage_length_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wait_on_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wait_on_stop_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ped_bicycle_detect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ped_bicycle_detect_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionManeuverAssist>)))
  "Returns string type for a message object of type '<ConnectionManeuverAssist>"
  "j2735_msgs/ConnectionManeuverAssist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionManeuverAssist)))
  "Returns string type for a message object of type 'ConnectionManeuverAssist"
  "j2735_msgs/ConnectionManeuverAssist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionManeuverAssist>)))
  "Returns md5sum for a message object of type '<ConnectionManeuverAssist>"
  "0828917931a657d68a5c850fd3b65bc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionManeuverAssist)))
  "Returns md5sum for a message object of type 'ConnectionManeuverAssist"
  "0828917931a657d68a5c850fd3b65bc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionManeuverAssist>)))
  "Returns full string definition for message of type '<ConnectionManeuverAssist>"
  (cl:format cl:nil "~%# The ConnectionManeuverAssist data frame contains information about the the dynamic flow of traffic for the lane(s)~%# and maneuvers in question (as determined by the LaneConnectionID). Note that this information can be sent regarding~%# any lane-to-lane movement; it need not be limited to the lanes with active (non-red) phases when sent.~%#~%# ConnectionManeuverAssist ::= SEQUENCE {~%# connectionID LaneConnectionID,~%# -- the common connectionID used by all lanes to which~%# -- this data applies~%# -- (this value traces to ConnectsTo entries in lanes)~%# -- Expected Clearance Information~%# queueLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no queue~%# -- The distance from the stop line to the back~%# -- edge of the last vehicle in the queue,~%# -- as measured along the lane center line.~%# availableStorageLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no space remains~%# -- Distance (e.g. beginning from the downstream~%# -- stop-line up to a given distance) with a high~%# -- probability for successfully executing the~%# -- connecting maneuver between the two lanes~%# -- during the current cycle.~%# -- Used for enhancing the awareness of vehicles~%# -- to anticipate if they can pass the stop line~%# -- of the lane. Used for optimizing the green wave,~%# -- due to knowledge of vehicles waiting in front~%# -- of a red light (downstream).~%# -- The element nextTime in TimeChangeDetails~%# -- in the containing data frame contains the next~%# -- timemark at which an active phase is expected,~%# -- a form of storage flush interval.~%# waitOnStop WaitOnStopline OPTIONAL,~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line and not~%# -- to enter the collision area~%# pedBicycleDetect PedestrianBicycleDetect OPTIONAL,~%# -- true if ANY ped or bicycles are detected crossing~%# -- the above lanes. Set to false ONLY if there is a~%# -- high certainty that there are none present,~%# -- otherwise element is not sent.~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ConnectionManeuverAssist}} OPTIONAL,~%# ...~%# }~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 queue_length~%bool queue_length_exists~%~%# ZoneLength ::= INTEGER (0..10000)~%uint16 available_storage_length~%bool available_storage_length_exists~%~%# WaitOnStopline ::= BOOLEAN --- True or False~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line~%# -- and not to enter the collision area~%bool wait_on_stop~%bool wait_on_stop_exists~%~%# PedestrianBicycleDetect ::= BOOLEAN~%# -- true if ANY Pedestrians or Bicyclists are~%# -- detected crossing the target lane or lanes~%bool ped_bicycle_detect~%bool ped_bicycle_detect_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionManeuverAssist)))
  "Returns full string definition for message of type 'ConnectionManeuverAssist"
  (cl:format cl:nil "~%# The ConnectionManeuverAssist data frame contains information about the the dynamic flow of traffic for the lane(s)~%# and maneuvers in question (as determined by the LaneConnectionID). Note that this information can be sent regarding~%# any lane-to-lane movement; it need not be limited to the lanes with active (non-red) phases when sent.~%#~%# ConnectionManeuverAssist ::= SEQUENCE {~%# connectionID LaneConnectionID,~%# -- the common connectionID used by all lanes to which~%# -- this data applies~%# -- (this value traces to ConnectsTo entries in lanes)~%# -- Expected Clearance Information~%# queueLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no queue~%# -- The distance from the stop line to the back~%# -- edge of the last vehicle in the queue,~%# -- as measured along the lane center line.~%# availableStorageLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no space remains~%# -- Distance (e.g. beginning from the downstream~%# -- stop-line up to a given distance) with a high~%# -- probability for successfully executing the~%# -- connecting maneuver between the two lanes~%# -- during the current cycle.~%# -- Used for enhancing the awareness of vehicles~%# -- to anticipate if they can pass the stop line~%# -- of the lane. Used for optimizing the green wave,~%# -- due to knowledge of vehicles waiting in front~%# -- of a red light (downstream).~%# -- The element nextTime in TimeChangeDetails~%# -- in the containing data frame contains the next~%# -- timemark at which an active phase is expected,~%# -- a form of storage flush interval.~%# waitOnStop WaitOnStopline OPTIONAL,~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line and not~%# -- to enter the collision area~%# pedBicycleDetect PedestrianBicycleDetect OPTIONAL,~%# -- true if ANY ped or bicycles are detected crossing~%# -- the above lanes. Set to false ONLY if there is a~%# -- high certainty that there are none present,~%# -- otherwise element is not sent.~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ConnectionManeuverAssist}} OPTIONAL,~%# ...~%# }~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 queue_length~%bool queue_length_exists~%~%# ZoneLength ::= INTEGER (0..10000)~%uint16 available_storage_length~%bool available_storage_length_exists~%~%# WaitOnStopline ::= BOOLEAN --- True or False~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line~%# -- and not to enter the collision area~%bool wait_on_stop~%bool wait_on_stop_exists~%~%# PedestrianBicycleDetect ::= BOOLEAN~%# -- true if ANY Pedestrians or Bicyclists are~%# -- detected crossing the target lane or lanes~%bool ped_bicycle_detect~%bool ped_bicycle_detect_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionManeuverAssist>))
  (cl:+ 0
     1
     2
     1
     2
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionManeuverAssist>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionManeuverAssist
    (cl:cons ':connection_id (connection_id msg))
    (cl:cons ':queue_length (queue_length msg))
    (cl:cons ':queue_length_exists (queue_length_exists msg))
    (cl:cons ':available_storage_length (available_storage_length msg))
    (cl:cons ':available_storage_length_exists (available_storage_length_exists msg))
    (cl:cons ':wait_on_stop (wait_on_stop msg))
    (cl:cons ':wait_on_stop_exists (wait_on_stop_exists msg))
    (cl:cons ':ped_bicycle_detect (ped_bicycle_detect msg))
    (cl:cons ':ped_bicycle_detect_exists (ped_bicycle_detect_exists msg))
))
