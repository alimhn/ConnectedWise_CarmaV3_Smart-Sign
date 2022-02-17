; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SystemRptInt.msg.html

(cl:defclass <SystemRptInt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (override_active
    :reader override_active
    :initarg :override_active
    :type cl:boolean
    :initform cl:nil)
   (command_output_fault
    :reader command_output_fault
    :initarg :command_output_fault
    :type cl:boolean
    :initform cl:nil)
   (input_output_fault
    :reader input_output_fault
    :initarg :input_output_fault
    :type cl:boolean
    :initform cl:nil)
   (output_reported_fault
    :reader output_reported_fault
    :initarg :output_reported_fault
    :type cl:boolean
    :initform cl:nil)
   (pacmod_fault
    :reader pacmod_fault
    :initarg :pacmod_fault
    :type cl:boolean
    :initform cl:nil)
   (vehicle_fault
    :reader vehicle_fault
    :initarg :vehicle_fault
    :type cl:boolean
    :initform cl:nil)
   (manual_input
    :reader manual_input
    :initarg :manual_input
    :type cl:fixnum
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (output
    :reader output
    :initarg :output
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SystemRptInt (<SystemRptInt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemRptInt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemRptInt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SystemRptInt> is deprecated: use pacmod_msgs-msg:SystemRptInt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enabled-val is deprecated.  Use pacmod_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'override_active-val :lambda-list '(m))
(cl:defmethod override_active-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:override_active-val is deprecated.  Use pacmod_msgs-msg:override_active instead.")
  (override_active m))

(cl:ensure-generic-function 'command_output_fault-val :lambda-list '(m))
(cl:defmethod command_output_fault-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command_output_fault-val is deprecated.  Use pacmod_msgs-msg:command_output_fault instead.")
  (command_output_fault m))

(cl:ensure-generic-function 'input_output_fault-val :lambda-list '(m))
(cl:defmethod input_output_fault-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:input_output_fault-val is deprecated.  Use pacmod_msgs-msg:input_output_fault instead.")
  (input_output_fault m))

(cl:ensure-generic-function 'output_reported_fault-val :lambda-list '(m))
(cl:defmethod output_reported_fault-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:output_reported_fault-val is deprecated.  Use pacmod_msgs-msg:output_reported_fault instead.")
  (output_reported_fault m))

(cl:ensure-generic-function 'pacmod_fault-val :lambda-list '(m))
(cl:defmethod pacmod_fault-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:pacmod_fault-val is deprecated.  Use pacmod_msgs-msg:pacmod_fault instead.")
  (pacmod_fault m))

(cl:ensure-generic-function 'vehicle_fault-val :lambda-list '(m))
(cl:defmethod vehicle_fault-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_fault-val is deprecated.  Use pacmod_msgs-msg:vehicle_fault instead.")
  (vehicle_fault m))

(cl:ensure-generic-function 'manual_input-val :lambda-list '(m))
(cl:defmethod manual_input-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:manual_input-val is deprecated.  Use pacmod_msgs-msg:manual_input instead.")
  (manual_input m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command-val is deprecated.  Use pacmod_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <SystemRptInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:output-val is deprecated.  Use pacmod_msgs-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SystemRptInt>)))
    "Constants for message type '<SystemRptInt>"
  '((:CRUISE_CONTROL_NONE . 0)
    (:CRUISE_CONTROL_CNCL . 1)
    (:CRUISE_CONTROL_ACC_FURTHER . 2)
    (:CRUISE_CONTROL_ACC_CLOSER . 3)
    (:CRUISE_CONTROL_SET_DEC . 4)
    (:CRUISE_CONTROL_RES_INC . 5)
    (:DASH_CONTROL_NONE . 0)
    (:DASH_CONTROL_OK . 1)
    (:DASH_CONTROL_LEFT . 2)
    (:DASH_CONTROL_RIGHT . 3)
    (:DASH_CONTROL_UP . 4)
    (:DASH_CONTROL_DOWN . 5)
    (:HEADLIGHTS_OFF . 0)
    (:HEADLIGHTS_PARKING_ONLY . 1)
    (:HEADLIGHTS_MANUAL_LOW . 2)
    (:HEADLIGHTS_MANUAL_HIGH . 3)
    (:HEADLIGHTS_AUTO_LOW . 4)
    (:HEADLIGHTS_AUTO_HIGH . 5)
    (:MEDIA_CONTROL_NONE . 0)
    (:MEDIA_CONTROL_VOICE_COMMAND . 1)
    (:MEDIA_CONTROL_MUTE . 2)
    (:MEDIA_CONTROL_PREV_TRACK_ANSWER . 3)
    (:MEDIA_CONTROL_NEXT_TRACK_HANG_UP . 4)
    (:MEDIA_CONTROL_VOL_UP . 5)
    (:MEDIA_CONTROL_VOL_DOWN . 6)
    (:SHIFT_PARK . 0)
    (:SHIFT_REVERSE . 1)
    (:SHIFT_NEUTRAL . 2)
    (:SHIFT_HIGH . 3)
    (:SHIFT_FORWARD . 3)
    (:SHIFT_LOW . 4)
    (:SHIFT_BETWEEN_GEARS . 5)
    (:SHIFT_ERROR . 6)
    (:SHIFT_NONE . 7)
    (:TURN_RIGHT . 0)
    (:TURN_NONE . 1)
    (:TURN_LEFT . 2)
    (:TURN_HAZARDS . 3)
    (:DOOR_NEUTRAL . 0)
    (:DOOR_OPEN . 1)
    (:DOOR_CLOSE . 2)
    (:WIPERS_OFF . 0)
    (:WIPERS_INT_1 . 1)
    (:WIPERS_INT_2 . 2)
    (:WIPERS_INT_3 . 3)
    (:WIPERS_INT_4 . 4)
    (:WIPERS_INT_5 . 5)
    (:WIPERS_INT_6 . 6)
    (:WIPERS_MEDIUM . 7)
    (:WIPERS_HIGH . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SystemRptInt)))
    "Constants for message type 'SystemRptInt"
  '((:CRUISE_CONTROL_NONE . 0)
    (:CRUISE_CONTROL_CNCL . 1)
    (:CRUISE_CONTROL_ACC_FURTHER . 2)
    (:CRUISE_CONTROL_ACC_CLOSER . 3)
    (:CRUISE_CONTROL_SET_DEC . 4)
    (:CRUISE_CONTROL_RES_INC . 5)
    (:DASH_CONTROL_NONE . 0)
    (:DASH_CONTROL_OK . 1)
    (:DASH_CONTROL_LEFT . 2)
    (:DASH_CONTROL_RIGHT . 3)
    (:DASH_CONTROL_UP . 4)
    (:DASH_CONTROL_DOWN . 5)
    (:HEADLIGHTS_OFF . 0)
    (:HEADLIGHTS_PARKING_ONLY . 1)
    (:HEADLIGHTS_MANUAL_LOW . 2)
    (:HEADLIGHTS_MANUAL_HIGH . 3)
    (:HEADLIGHTS_AUTO_LOW . 4)
    (:HEADLIGHTS_AUTO_HIGH . 5)
    (:MEDIA_CONTROL_NONE . 0)
    (:MEDIA_CONTROL_VOICE_COMMAND . 1)
    (:MEDIA_CONTROL_MUTE . 2)
    (:MEDIA_CONTROL_PREV_TRACK_ANSWER . 3)
    (:MEDIA_CONTROL_NEXT_TRACK_HANG_UP . 4)
    (:MEDIA_CONTROL_VOL_UP . 5)
    (:MEDIA_CONTROL_VOL_DOWN . 6)
    (:SHIFT_PARK . 0)
    (:SHIFT_REVERSE . 1)
    (:SHIFT_NEUTRAL . 2)
    (:SHIFT_HIGH . 3)
    (:SHIFT_FORWARD . 3)
    (:SHIFT_LOW . 4)
    (:SHIFT_BETWEEN_GEARS . 5)
    (:SHIFT_ERROR . 6)
    (:SHIFT_NONE . 7)
    (:TURN_RIGHT . 0)
    (:TURN_NONE . 1)
    (:TURN_LEFT . 2)
    (:TURN_HAZARDS . 3)
    (:DOOR_NEUTRAL . 0)
    (:DOOR_OPEN . 1)
    (:DOOR_CLOSE . 2)
    (:WIPERS_OFF . 0)
    (:WIPERS_INT_1 . 1)
    (:WIPERS_INT_2 . 2)
    (:WIPERS_INT_3 . 3)
    (:WIPERS_INT_4 . 4)
    (:WIPERS_INT_5 . 5)
    (:WIPERS_INT_6 . 6)
    (:WIPERS_MEDIUM . 7)
    (:WIPERS_HIGH . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemRptInt>) ostream)
  "Serializes a message object of type '<SystemRptInt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command_output_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'input_output_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output_reported_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pacmod_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'manual_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'output)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemRptInt>) istream)
  "Deserializes a message object of type '<SystemRptInt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'override_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'command_output_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'input_output_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'output_reported_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pacmod_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'manual_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'output)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemRptInt>)))
  "Returns string type for a message object of type '<SystemRptInt>"
  "pacmod_msgs/SystemRptInt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemRptInt)))
  "Returns string type for a message object of type 'SystemRptInt"
  "pacmod_msgs/SystemRptInt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemRptInt>)))
  "Returns md5sum for a message object of type '<SystemRptInt>"
  "da718c3df94de6df3ce729dd13078d8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemRptInt)))
  "Returns md5sum for a message object of type 'SystemRptInt"
  "da718c3df94de6df3ce729dd13078d8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemRptInt>)))
  "Returns full string definition for message of type '<SystemRptInt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled~%bool override_active~%bool command_output_fault~%bool input_output_fault~%bool output_reported_fault~%bool pacmod_fault~%bool vehicle_fault~%~%uint16 manual_input~%uint16 command~%uint16 output~%~%uint16 CRUISE_CONTROL_NONE = 0~%uint16 CRUISE_CONTROL_CNCL = 1~%uint16 CRUISE_CONTROL_ACC_FURTHER = 2~%uint16 CRUISE_CONTROL_ACC_CLOSER = 3~%uint16 CRUISE_CONTROL_SET_DEC = 4~%uint16 CRUISE_CONTROL_RES_INC = 5~%~%uint16 DASH_CONTROL_NONE = 0~%uint16 DASH_CONTROL_OK = 1~%uint16 DASH_CONTROL_LEFT = 2~%uint16 DASH_CONTROL_RIGHT = 3~%uint16 DASH_CONTROL_UP = 4~%uint16 DASH_CONTROL_DOWN = 5~%~%uint16 HEADLIGHTS_OFF = 0~%uint16 HEADLIGHTS_PARKING_ONLY = 1~%uint16 HEADLIGHTS_MANUAL_LOW = 2~%uint16 HEADLIGHTS_MANUAL_HIGH = 3~%uint16 HEADLIGHTS_AUTO_LOW = 4~%uint16 HEADLIGHTS_AUTO_HIGH = 5~%~%uint16 MEDIA_CONTROL_NONE = 0~%uint16 MEDIA_CONTROL_VOICE_COMMAND = 1~%uint16 MEDIA_CONTROL_MUTE = 2~%uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3~%uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4~%uint16 MEDIA_CONTROL_VOL_UP = 5~%uint16 MEDIA_CONTROL_VOL_DOWN = 6~%~%uint16 SHIFT_PARK = 0~%uint16 SHIFT_REVERSE = 1~%uint16 SHIFT_NEUTRAL = 2~%uint16 SHIFT_HIGH = 3~%uint16 SHIFT_FORWARD = 3~%uint16 SHIFT_LOW = 4~%uint16 SHIFT_BETWEEN_GEARS = 5~%uint16 SHIFT_ERROR = 6~%uint16 SHIFT_NONE = 7~%~%uint16 TURN_RIGHT = 0~%uint16 TURN_NONE = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_HAZARDS = 3~%~%uint16 DOOR_NEUTRAL = 0~%uint16 DOOR_OPEN = 1~%uint16 DOOR_CLOSE = 2~%~%uint16 WIPERS_OFF = 0~%uint16 WIPERS_INT_1 = 1~%uint16 WIPERS_INT_2 = 2~%uint16 WIPERS_INT_3 = 3~%uint16 WIPERS_INT_4 = 4~%uint16 WIPERS_INT_5 = 5~%uint16 WIPERS_INT_6 = 6~%uint16 WIPERS_MEDIUM = 7~%uint16 WIPERS_HIGH = 8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemRptInt)))
  "Returns full string definition for message of type 'SystemRptInt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled~%bool override_active~%bool command_output_fault~%bool input_output_fault~%bool output_reported_fault~%bool pacmod_fault~%bool vehicle_fault~%~%uint16 manual_input~%uint16 command~%uint16 output~%~%uint16 CRUISE_CONTROL_NONE = 0~%uint16 CRUISE_CONTROL_CNCL = 1~%uint16 CRUISE_CONTROL_ACC_FURTHER = 2~%uint16 CRUISE_CONTROL_ACC_CLOSER = 3~%uint16 CRUISE_CONTROL_SET_DEC = 4~%uint16 CRUISE_CONTROL_RES_INC = 5~%~%uint16 DASH_CONTROL_NONE = 0~%uint16 DASH_CONTROL_OK = 1~%uint16 DASH_CONTROL_LEFT = 2~%uint16 DASH_CONTROL_RIGHT = 3~%uint16 DASH_CONTROL_UP = 4~%uint16 DASH_CONTROL_DOWN = 5~%~%uint16 HEADLIGHTS_OFF = 0~%uint16 HEADLIGHTS_PARKING_ONLY = 1~%uint16 HEADLIGHTS_MANUAL_LOW = 2~%uint16 HEADLIGHTS_MANUAL_HIGH = 3~%uint16 HEADLIGHTS_AUTO_LOW = 4~%uint16 HEADLIGHTS_AUTO_HIGH = 5~%~%uint16 MEDIA_CONTROL_NONE = 0~%uint16 MEDIA_CONTROL_VOICE_COMMAND = 1~%uint16 MEDIA_CONTROL_MUTE = 2~%uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3~%uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4~%uint16 MEDIA_CONTROL_VOL_UP = 5~%uint16 MEDIA_CONTROL_VOL_DOWN = 6~%~%uint16 SHIFT_PARK = 0~%uint16 SHIFT_REVERSE = 1~%uint16 SHIFT_NEUTRAL = 2~%uint16 SHIFT_HIGH = 3~%uint16 SHIFT_FORWARD = 3~%uint16 SHIFT_LOW = 4~%uint16 SHIFT_BETWEEN_GEARS = 5~%uint16 SHIFT_ERROR = 6~%uint16 SHIFT_NONE = 7~%~%uint16 TURN_RIGHT = 0~%uint16 TURN_NONE = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_HAZARDS = 3~%~%uint16 DOOR_NEUTRAL = 0~%uint16 DOOR_OPEN = 1~%uint16 DOOR_CLOSE = 2~%~%uint16 WIPERS_OFF = 0~%uint16 WIPERS_INT_1 = 1~%uint16 WIPERS_INT_2 = 2~%uint16 WIPERS_INT_3 = 3~%uint16 WIPERS_INT_4 = 4~%uint16 WIPERS_INT_5 = 5~%uint16 WIPERS_INT_6 = 6~%uint16 WIPERS_MEDIUM = 7~%uint16 WIPERS_HIGH = 8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemRptInt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemRptInt>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemRptInt
    (cl:cons ':header (header msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':override_active (override_active msg))
    (cl:cons ':command_output_fault (command_output_fault msg))
    (cl:cons ':input_output_fault (input_output_fault msg))
    (cl:cons ':output_reported_fault (output_reported_fault msg))
    (cl:cons ':pacmod_fault (pacmod_fault msg))
    (cl:cons ':vehicle_fault (vehicle_fault msg))
    (cl:cons ':manual_input (manual_input msg))
    (cl:cons ':command (command msg))
    (cl:cons ':output (output msg))
))
