; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude SystemCmdInt.msg.html

(cl:defclass <SystemCmdInt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (ignore_overrides
    :reader ignore_overrides
    :initarg :ignore_overrides
    :type cl:boolean
    :initform cl:nil)
   (clear_override
    :reader clear_override
    :initarg :clear_override
    :type cl:boolean
    :initform cl:nil)
   (clear_faults
    :reader clear_faults
    :initarg :clear_faults
    :type cl:boolean
    :initform cl:nil)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SystemCmdInt (<SystemCmdInt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemCmdInt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemCmdInt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<SystemCmdInt> is deprecated: use pacmod_msgs-msg:SystemCmdInt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemCmdInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SystemCmdInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enable-val is deprecated.  Use pacmod_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'ignore_overrides-val :lambda-list '(m))
(cl:defmethod ignore_overrides-val ((m <SystemCmdInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:ignore_overrides-val is deprecated.  Use pacmod_msgs-msg:ignore_overrides instead.")
  (ignore_overrides m))

(cl:ensure-generic-function 'clear_override-val :lambda-list '(m))
(cl:defmethod clear_override-val ((m <SystemCmdInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:clear_override-val is deprecated.  Use pacmod_msgs-msg:clear_override instead.")
  (clear_override m))

(cl:ensure-generic-function 'clear_faults-val :lambda-list '(m))
(cl:defmethod clear_faults-val ((m <SystemCmdInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:clear_faults-val is deprecated.  Use pacmod_msgs-msg:clear_faults instead.")
  (clear_faults m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SystemCmdInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:command-val is deprecated.  Use pacmod_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SystemCmdInt>)))
    "Constants for message type '<SystemCmdInt>"
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
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SystemCmdInt)))
    "Constants for message type 'SystemCmdInt"
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
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemCmdInt>) ostream)
  "Serializes a message object of type '<SystemCmdInt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignore_overrides) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_override) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_faults) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemCmdInt>) istream)
  "Deserializes a message object of type '<SystemCmdInt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ignore_overrides) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_faults) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemCmdInt>)))
  "Returns string type for a message object of type '<SystemCmdInt>"
  "pacmod_msgs/SystemCmdInt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemCmdInt)))
  "Returns string type for a message object of type 'SystemCmdInt"
  "pacmod_msgs/SystemCmdInt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemCmdInt>)))
  "Returns md5sum for a message object of type '<SystemCmdInt>"
  "843586c2df7a468d7cc89fb9df7fa2c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemCmdInt)))
  "Returns md5sum for a message object of type 'SystemCmdInt"
  "843586c2df7a468d7cc89fb9df7fa2c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemCmdInt>)))
  "Returns full string definition for message of type '<SystemCmdInt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enable~%bool ignore_overrides~%bool clear_override~%bool clear_faults~%~%uint16 command~%~%uint16 CRUISE_CONTROL_NONE = 0~%uint16 CRUISE_CONTROL_CNCL = 1~%uint16 CRUISE_CONTROL_ACC_FURTHER = 2~%uint16 CRUISE_CONTROL_ACC_CLOSER = 3~%uint16 CRUISE_CONTROL_SET_DEC = 4~%uint16 CRUISE_CONTROL_RES_INC = 5~%~%uint16 DASH_CONTROL_NONE = 0~%uint16 DASH_CONTROL_OK = 1~%uint16 DASH_CONTROL_LEFT = 2~%uint16 DASH_CONTROL_RIGHT = 3~%uint16 DASH_CONTROL_UP = 4~%uint16 DASH_CONTROL_DOWN = 5~%~%uint16 HEADLIGHTS_OFF = 0~%uint16 HEADLIGHTS_PARKING_ONLY = 1~%uint16 HEADLIGHTS_MANUAL_LOW = 2~%uint16 HEADLIGHTS_MANUAL_HIGH = 3~%uint16 HEADLIGHTS_AUTO_LOW = 4~%uint16 HEADLIGHTS_AUTO_HIGH = 5~%~%uint16 MEDIA_CONTROL_NONE = 0~%uint16 MEDIA_CONTROL_VOICE_COMMAND = 1~%uint16 MEDIA_CONTROL_MUTE = 2~%uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3~%uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4~%uint16 MEDIA_CONTROL_VOL_UP = 5~%uint16 MEDIA_CONTROL_VOL_DOWN = 6~%~%uint16 SHIFT_PARK = 0~%uint16 SHIFT_REVERSE = 1~%uint16 SHIFT_NEUTRAL = 2~%uint16 SHIFT_HIGH = 3~%uint16 SHIFT_FORWARD = 3~%uint16 SHIFT_LOW = 4~%uint16 SHIFT_NONE = 7~%~%uint16 TURN_RIGHT = 0~%uint16 TURN_NONE = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_HAZARDS = 3~%~%uint16 DOOR_NEUTRAL = 0~%uint16 DOOR_OPEN = 1~%uint16 DOOR_CLOSE = 2~%~%uint16 WIPERS_OFF = 0~%uint16 WIPERS_INT_1 = 1~%uint16 WIPERS_INT_2 = 2~%uint16 WIPERS_INT_3 = 3~%uint16 WIPERS_INT_4 = 4~%uint16 WIPERS_INT_5 = 5~%uint16 WIPERS_INT_6 = 6~%uint16 WIPERS_MEDIUM = 7~%uint16 WIPERS_HIGH = 8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemCmdInt)))
  "Returns full string definition for message of type 'SystemCmdInt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enable~%bool ignore_overrides~%bool clear_override~%bool clear_faults~%~%uint16 command~%~%uint16 CRUISE_CONTROL_NONE = 0~%uint16 CRUISE_CONTROL_CNCL = 1~%uint16 CRUISE_CONTROL_ACC_FURTHER = 2~%uint16 CRUISE_CONTROL_ACC_CLOSER = 3~%uint16 CRUISE_CONTROL_SET_DEC = 4~%uint16 CRUISE_CONTROL_RES_INC = 5~%~%uint16 DASH_CONTROL_NONE = 0~%uint16 DASH_CONTROL_OK = 1~%uint16 DASH_CONTROL_LEFT = 2~%uint16 DASH_CONTROL_RIGHT = 3~%uint16 DASH_CONTROL_UP = 4~%uint16 DASH_CONTROL_DOWN = 5~%~%uint16 HEADLIGHTS_OFF = 0~%uint16 HEADLIGHTS_PARKING_ONLY = 1~%uint16 HEADLIGHTS_MANUAL_LOW = 2~%uint16 HEADLIGHTS_MANUAL_HIGH = 3~%uint16 HEADLIGHTS_AUTO_LOW = 4~%uint16 HEADLIGHTS_AUTO_HIGH = 5~%~%uint16 MEDIA_CONTROL_NONE = 0~%uint16 MEDIA_CONTROL_VOICE_COMMAND = 1~%uint16 MEDIA_CONTROL_MUTE = 2~%uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3~%uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4~%uint16 MEDIA_CONTROL_VOL_UP = 5~%uint16 MEDIA_CONTROL_VOL_DOWN = 6~%~%uint16 SHIFT_PARK = 0~%uint16 SHIFT_REVERSE = 1~%uint16 SHIFT_NEUTRAL = 2~%uint16 SHIFT_HIGH = 3~%uint16 SHIFT_FORWARD = 3~%uint16 SHIFT_LOW = 4~%uint16 SHIFT_NONE = 7~%~%uint16 TURN_RIGHT = 0~%uint16 TURN_NONE = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_HAZARDS = 3~%~%uint16 DOOR_NEUTRAL = 0~%uint16 DOOR_OPEN = 1~%uint16 DOOR_CLOSE = 2~%~%uint16 WIPERS_OFF = 0~%uint16 WIPERS_INT_1 = 1~%uint16 WIPERS_INT_2 = 2~%uint16 WIPERS_INT_3 = 3~%uint16 WIPERS_INT_4 = 4~%uint16 WIPERS_INT_5 = 5~%uint16 WIPERS_INT_6 = 6~%uint16 WIPERS_MEDIUM = 7~%uint16 WIPERS_HIGH = 8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemCmdInt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemCmdInt>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemCmdInt
    (cl:cons ':header (header msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':ignore_overrides (ignore_overrides msg))
    (cl:cons ':clear_override (clear_override msg))
    (cl:cons ':clear_faults (clear_faults msg))
    (cl:cons ':command (command msg))
))
