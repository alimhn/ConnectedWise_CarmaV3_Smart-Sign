; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude InteriorLightsRpt.msg.html

(cl:defclass <InteriorLightsRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_dome_lights_on
    :reader front_dome_lights_on
    :initarg :front_dome_lights_on
    :type cl:boolean
    :initform cl:nil)
   (front_dome_lights_on_is_valid
    :reader front_dome_lights_on_is_valid
    :initarg :front_dome_lights_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_dome_lights_on
    :reader rear_dome_lights_on
    :initarg :rear_dome_lights_on
    :type cl:boolean
    :initform cl:nil)
   (rear_dome_lights_on_is_valid
    :reader rear_dome_lights_on_is_valid
    :initarg :rear_dome_lights_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (mood_lights_on
    :reader mood_lights_on
    :initarg :mood_lights_on
    :type cl:boolean
    :initform cl:nil)
   (mood_lights_on_is_valid
    :reader mood_lights_on_is_valid
    :initarg :mood_lights_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (dim_level
    :reader dim_level
    :initarg :dim_level
    :type cl:fixnum
    :initform 0)
   (dim_level_is_valid
    :reader dim_level_is_valid
    :initarg :dim_level_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InteriorLightsRpt (<InteriorLightsRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteriorLightsRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteriorLightsRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<InteriorLightsRpt> is deprecated: use pacmod_msgs-msg:InteriorLightsRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_dome_lights_on-val :lambda-list '(m))
(cl:defmethod front_dome_lights_on-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_dome_lights_on-val is deprecated.  Use pacmod_msgs-msg:front_dome_lights_on instead.")
  (front_dome_lights_on m))

(cl:ensure-generic-function 'front_dome_lights_on_is_valid-val :lambda-list '(m))
(cl:defmethod front_dome_lights_on_is_valid-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:front_dome_lights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:front_dome_lights_on_is_valid instead.")
  (front_dome_lights_on_is_valid m))

(cl:ensure-generic-function 'rear_dome_lights_on-val :lambda-list '(m))
(cl:defmethod rear_dome_lights_on-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_dome_lights_on-val is deprecated.  Use pacmod_msgs-msg:rear_dome_lights_on instead.")
  (rear_dome_lights_on m))

(cl:ensure-generic-function 'rear_dome_lights_on_is_valid-val :lambda-list '(m))
(cl:defmethod rear_dome_lights_on_is_valid-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_dome_lights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_dome_lights_on_is_valid instead.")
  (rear_dome_lights_on_is_valid m))

(cl:ensure-generic-function 'mood_lights_on-val :lambda-list '(m))
(cl:defmethod mood_lights_on-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:mood_lights_on-val is deprecated.  Use pacmod_msgs-msg:mood_lights_on instead.")
  (mood_lights_on m))

(cl:ensure-generic-function 'mood_lights_on_is_valid-val :lambda-list '(m))
(cl:defmethod mood_lights_on_is_valid-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:mood_lights_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:mood_lights_on_is_valid instead.")
  (mood_lights_on_is_valid m))

(cl:ensure-generic-function 'dim_level-val :lambda-list '(m))
(cl:defmethod dim_level-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:dim_level-val is deprecated.  Use pacmod_msgs-msg:dim_level instead.")
  (dim_level m))

(cl:ensure-generic-function 'dim_level_is_valid-val :lambda-list '(m))
(cl:defmethod dim_level_is_valid-val ((m <InteriorLightsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:dim_level_is_valid-val is deprecated.  Use pacmod_msgs-msg:dim_level_is_valid instead.")
  (dim_level_is_valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InteriorLightsRpt>)))
    "Constants for message type '<InteriorLightsRpt>"
  '((:DIM_LEVEL_MIN . 0)
    (:DIM_LEVEL_1 . 1)
    (:DIM_LEVEL_2 . 2)
    (:DIM_LEVEL_3 . 3)
    (:DIM_LEVEL_4 . 4)
    (:DIM_LEVEL_5 . 5)
    (:DIM_LEVEL_6 . 6)
    (:DIM_LEVEL_7 . 7)
    (:DIM_LEVEL_8 . 8)
    (:DIM_LEVEL_9 . 9)
    (:DIM_LEVEL_10 . 10)
    (:DIM_LEVEL_11 . 11)
    (:DIM_LEVEL_MAX . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InteriorLightsRpt)))
    "Constants for message type 'InteriorLightsRpt"
  '((:DIM_LEVEL_MIN . 0)
    (:DIM_LEVEL_1 . 1)
    (:DIM_LEVEL_2 . 2)
    (:DIM_LEVEL_3 . 3)
    (:DIM_LEVEL_4 . 4)
    (:DIM_LEVEL_5 . 5)
    (:DIM_LEVEL_6 . 6)
    (:DIM_LEVEL_7 . 7)
    (:DIM_LEVEL_8 . 8)
    (:DIM_LEVEL_9 . 9)
    (:DIM_LEVEL_10 . 10)
    (:DIM_LEVEL_11 . 11)
    (:DIM_LEVEL_MAX . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteriorLightsRpt>) ostream)
  "Serializes a message object of type '<InteriorLightsRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_dome_lights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_dome_lights_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_dome_lights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_dome_lights_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mood_lights_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mood_lights_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dim_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dim_level_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteriorLightsRpt>) istream)
  "Deserializes a message object of type '<InteriorLightsRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'front_dome_lights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_dome_lights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_dome_lights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_dome_lights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mood_lights_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mood_lights_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dim_level)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dim_level_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteriorLightsRpt>)))
  "Returns string type for a message object of type '<InteriorLightsRpt>"
  "pacmod_msgs/InteriorLightsRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteriorLightsRpt)))
  "Returns string type for a message object of type 'InteriorLightsRpt"
  "pacmod_msgs/InteriorLightsRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteriorLightsRpt>)))
  "Returns md5sum for a message object of type '<InteriorLightsRpt>"
  "edb83c466d141d95fcc059ad99141e5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteriorLightsRpt)))
  "Returns md5sum for a message object of type 'InteriorLightsRpt"
  "edb83c466d141d95fcc059ad99141e5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteriorLightsRpt>)))
  "Returns full string definition for message of type '<InteriorLightsRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool front_dome_lights_on~%bool front_dome_lights_on_is_valid~%bool rear_dome_lights_on~%bool rear_dome_lights_on_is_valid~%bool mood_lights_on~%bool mood_lights_on_is_valid~%uint8 dim_level~%bool dim_level_is_valid~%~%uint8 DIM_LEVEL_MIN = 0~%uint8 DIM_LEVEL_1 = 1~%uint8 DIM_LEVEL_2 = 2~%uint8 DIM_LEVEL_3 = 3~%uint8 DIM_LEVEL_4 = 4~%uint8 DIM_LEVEL_5 = 5~%uint8 DIM_LEVEL_6 = 6~%uint8 DIM_LEVEL_7 = 7~%uint8 DIM_LEVEL_8 = 8~%uint8 DIM_LEVEL_9 = 9~%uint8 DIM_LEVEL_10 = 10~%uint8 DIM_LEVEL_11 = 11~%uint8 DIM_LEVEL_MAX = 12~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteriorLightsRpt)))
  "Returns full string definition for message of type 'InteriorLightsRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool front_dome_lights_on~%bool front_dome_lights_on_is_valid~%bool rear_dome_lights_on~%bool rear_dome_lights_on_is_valid~%bool mood_lights_on~%bool mood_lights_on_is_valid~%uint8 dim_level~%bool dim_level_is_valid~%~%uint8 DIM_LEVEL_MIN = 0~%uint8 DIM_LEVEL_1 = 1~%uint8 DIM_LEVEL_2 = 2~%uint8 DIM_LEVEL_3 = 3~%uint8 DIM_LEVEL_4 = 4~%uint8 DIM_LEVEL_5 = 5~%uint8 DIM_LEVEL_6 = 6~%uint8 DIM_LEVEL_7 = 7~%uint8 DIM_LEVEL_8 = 8~%uint8 DIM_LEVEL_9 = 9~%uint8 DIM_LEVEL_10 = 10~%uint8 DIM_LEVEL_11 = 11~%uint8 DIM_LEVEL_MAX = 12~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteriorLightsRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteriorLightsRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'InteriorLightsRpt
    (cl:cons ':header (header msg))
    (cl:cons ':front_dome_lights_on (front_dome_lights_on msg))
    (cl:cons ':front_dome_lights_on_is_valid (front_dome_lights_on_is_valid msg))
    (cl:cons ':rear_dome_lights_on (rear_dome_lights_on msg))
    (cl:cons ':rear_dome_lights_on_is_valid (rear_dome_lights_on_is_valid msg))
    (cl:cons ':mood_lights_on (mood_lights_on msg))
    (cl:cons ':mood_lights_on_is_valid (mood_lights_on_is_valid msg))
    (cl:cons ':dim_level (dim_level msg))
    (cl:cons ':dim_level_is_valid (dim_level_is_valid msg))
))
