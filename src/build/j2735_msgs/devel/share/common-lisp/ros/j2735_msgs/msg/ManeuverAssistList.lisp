; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude ManeuverAssistList.msg.html

(cl:defclass <ManeuverAssistList> (roslisp-msg-protocol:ros-message)
  ((connection_maneuver_assist_list
    :reader connection_maneuver_assist_list
    :initarg :connection_maneuver_assist_list
    :type (cl:vector j2735_msgs-msg:ConnectionManeuverAssist)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:ConnectionManeuverAssist :initial-element (cl:make-instance 'j2735_msgs-msg:ConnectionManeuverAssist))))
)

(cl:defclass ManeuverAssistList (<ManeuverAssistList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManeuverAssistList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManeuverAssistList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<ManeuverAssistList> is deprecated: use j2735_msgs-msg:ManeuverAssistList instead.")))

(cl:ensure-generic-function 'connection_maneuver_assist_list-val :lambda-list '(m))
(cl:defmethod connection_maneuver_assist_list-val ((m <ManeuverAssistList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:connection_maneuver_assist_list-val is deprecated.  Use j2735_msgs-msg:connection_maneuver_assist_list instead.")
  (connection_maneuver_assist_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManeuverAssistList>) ostream)
  "Serializes a message object of type '<ManeuverAssistList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connection_maneuver_assist_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'connection_maneuver_assist_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManeuverAssistList>) istream)
  "Deserializes a message object of type '<ManeuverAssistList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connection_maneuver_assist_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connection_maneuver_assist_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:ConnectionManeuverAssist))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManeuverAssistList>)))
  "Returns string type for a message object of type '<ManeuverAssistList>"
  "j2735_msgs/ManeuverAssistList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManeuverAssistList)))
  "Returns string type for a message object of type 'ManeuverAssistList"
  "j2735_msgs/ManeuverAssistList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManeuverAssistList>)))
  "Returns md5sum for a message object of type '<ManeuverAssistList>"
  "2086e09532cefc78ee69224b474da338")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManeuverAssistList)))
  "Returns md5sum for a message object of type 'ManeuverAssistList"
  "2086e09532cefc78ee69224b474da338")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManeuverAssistList>)))
  "Returns full string definition for message of type '<ManeuverAssistList>"
  (cl:format cl:nil "# This entry is used directly by one other data structure in this standard, a DF called DF_LaneAttributes <ASN>.~%#  In addition, this item may be used by data structures in other ITS standards.~%# ManeuverAssistList ::= SEQUENCE (SIZE(1..16)) OF ConnectionManeuverAssist~%~%j2735_msgs/ConnectionManeuverAssist[] connection_maneuver_assist_list~%~%================================================================================~%MSG: j2735_msgs/ConnectionManeuverAssist~%~%# The ConnectionManeuverAssist data frame contains information about the the dynamic flow of traffic for the lane(s)~%# and maneuvers in question (as determined by the LaneConnectionID). Note that this information can be sent regarding~%# any lane-to-lane movement; it need not be limited to the lanes with active (non-red) phases when sent.~%#~%# ConnectionManeuverAssist ::= SEQUENCE {~%# connectionID LaneConnectionID,~%# -- the common connectionID used by all lanes to which~%# -- this data applies~%# -- (this value traces to ConnectsTo entries in lanes)~%# -- Expected Clearance Information~%# queueLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no queue~%# -- The distance from the stop line to the back~%# -- edge of the last vehicle in the queue,~%# -- as measured along the lane center line.~%# availableStorageLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no space remains~%# -- Distance (e.g. beginning from the downstream~%# -- stop-line up to a given distance) with a high~%# -- probability for successfully executing the~%# -- connecting maneuver between the two lanes~%# -- during the current cycle.~%# -- Used for enhancing the awareness of vehicles~%# -- to anticipate if they can pass the stop line~%# -- of the lane. Used for optimizing the green wave,~%# -- due to knowledge of vehicles waiting in front~%# -- of a red light (downstream).~%# -- The element nextTime in TimeChangeDetails~%# -- in the containing data frame contains the next~%# -- timemark at which an active phase is expected,~%# -- a form of storage flush interval.~%# waitOnStop WaitOnStopline OPTIONAL,~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line and not~%# -- to enter the collision area~%# pedBicycleDetect PedestrianBicycleDetect OPTIONAL,~%# -- true if ANY ped or bicycles are detected crossing~%# -- the above lanes. Set to false ONLY if there is a~%# -- high certainty that there are none present,~%# -- otherwise element is not sent.~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ConnectionManeuverAssist}} OPTIONAL,~%# ...~%# }~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 queue_length~%bool queue_length_exists~%~%# ZoneLength ::= INTEGER (0..10000)~%uint16 available_storage_length~%bool available_storage_length_exists~%~%# WaitOnStopline ::= BOOLEAN --- True or False~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line~%# -- and not to enter the collision area~%bool wait_on_stop~%bool wait_on_stop_exists~%~%# PedestrianBicycleDetect ::= BOOLEAN~%# -- true if ANY Pedestrians or Bicyclists are~%# -- detected crossing the target lane or lanes~%bool ped_bicycle_detect~%bool ped_bicycle_detect_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManeuverAssistList)))
  "Returns full string definition for message of type 'ManeuverAssistList"
  (cl:format cl:nil "# This entry is used directly by one other data structure in this standard, a DF called DF_LaneAttributes <ASN>.~%#  In addition, this item may be used by data structures in other ITS standards.~%# ManeuverAssistList ::= SEQUENCE (SIZE(1..16)) OF ConnectionManeuverAssist~%~%j2735_msgs/ConnectionManeuverAssist[] connection_maneuver_assist_list~%~%================================================================================~%MSG: j2735_msgs/ConnectionManeuverAssist~%~%# The ConnectionManeuverAssist data frame contains information about the the dynamic flow of traffic for the lane(s)~%# and maneuvers in question (as determined by the LaneConnectionID). Note that this information can be sent regarding~%# any lane-to-lane movement; it need not be limited to the lanes with active (non-red) phases when sent.~%#~%# ConnectionManeuverAssist ::= SEQUENCE {~%# connectionID LaneConnectionID,~%# -- the common connectionID used by all lanes to which~%# -- this data applies~%# -- (this value traces to ConnectsTo entries in lanes)~%# -- Expected Clearance Information~%# queueLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no queue~%# -- The distance from the stop line to the back~%# -- edge of the last vehicle in the queue,~%# -- as measured along the lane center line.~%# availableStorageLength ZoneLength OPTIONAL,~%# -- Unit = 1 meter, 0 = no space remains~%# -- Distance (e.g. beginning from the downstream~%# -- stop-line up to a given distance) with a high~%# -- probability for successfully executing the~%# -- connecting maneuver between the two lanes~%# -- during the current cycle.~%# -- Used for enhancing the awareness of vehicles~%# -- to anticipate if they can pass the stop line~%# -- of the lane. Used for optimizing the green wave,~%# -- due to knowledge of vehicles waiting in front~%# -- of a red light (downstream).~%# -- The element nextTime in TimeChangeDetails~%# -- in the containing data frame contains the next~%# -- timemark at which an active phase is expected,~%# -- a form of storage flush interval.~%# waitOnStop WaitOnStopline OPTIONAL,~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line and not~%# -- to enter the collision area~%# pedBicycleDetect PedestrianBicycleDetect OPTIONAL,~%# -- true if ANY ped or bicycles are detected crossing~%# -- the above lanes. Set to false ONLY if there is a~%# -- high certainty that there are none present,~%# -- otherwise element is not sent.~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ConnectionManeuverAssist}} OPTIONAL,~%# ...~%# }~%~%# LaneConnectionID ::= INTEGER (0..255)~%uint8 connection_id~%~%# ZoneLength ::= INTEGER (0..10000)~%# -- Unit = 1 meter, 0 = unknown,~%# -- The value 10000 to be used for Distances >=10000 m~%# -- (e.g. from known point to another point along a~%# -- known path, often against traffic flow direction~%# -- when used for measuring queues)~%uint16 queue_length~%bool queue_length_exists~%~%# ZoneLength ::= INTEGER (0..10000)~%uint16 available_storage_length~%bool available_storage_length_exists~%~%# WaitOnStopline ::= BOOLEAN --- True or False~%# -- If \"true\", the vehicles on this specific connecting~%# -- maneuver have to stop on the stop-line~%# -- and not to enter the collision area~%bool wait_on_stop~%bool wait_on_stop_exists~%~%# PedestrianBicycleDetect ::= BOOLEAN~%# -- true if ANY Pedestrians or Bicyclists are~%# -- detected crossing the target lane or lanes~%bool ped_bicycle_detect~%bool ped_bicycle_detect_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManeuverAssistList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connection_maneuver_assist_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManeuverAssistList>))
  "Converts a ROS message object to a list"
  (cl:list 'ManeuverAssistList
    (cl:cons ':connection_maneuver_assist_list (connection_maneuver_assist_list msg))
))
