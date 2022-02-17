; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude TurnAuxRpt.msg.html

(cl:defclass <TurnAuxRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (driver_blinker_bulb_on
    :reader driver_blinker_bulb_on
    :initarg :driver_blinker_bulb_on
    :type cl:boolean
    :initform cl:nil)
   (driver_blinker_bulb_on_is_valid
    :reader driver_blinker_bulb_on_is_valid
    :initarg :driver_blinker_bulb_on_is_valid
    :type cl:boolean
    :initform cl:nil)
   (passenger_blinker_bulb_on
    :reader passenger_blinker_bulb_on
    :initarg :passenger_blinker_bulb_on
    :type cl:boolean
    :initform cl:nil)
   (passenger_blinker_bulb_on_is_valid
    :reader passenger_blinker_bulb_on_is_valid
    :initarg :passenger_blinker_bulb_on_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TurnAuxRpt (<TurnAuxRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnAuxRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnAuxRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<TurnAuxRpt> is deprecated: use pacmod_msgs-msg:TurnAuxRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TurnAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driver_blinker_bulb_on-val :lambda-list '(m))
(cl:defmethod driver_blinker_bulb_on-val ((m <TurnAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_blinker_bulb_on-val is deprecated.  Use pacmod_msgs-msg:driver_blinker_bulb_on instead.")
  (driver_blinker_bulb_on m))

(cl:ensure-generic-function 'driver_blinker_bulb_on_is_valid-val :lambda-list '(m))
(cl:defmethod driver_blinker_bulb_on_is_valid-val ((m <TurnAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_blinker_bulb_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:driver_blinker_bulb_on_is_valid instead.")
  (driver_blinker_bulb_on_is_valid m))

(cl:ensure-generic-function 'passenger_blinker_bulb_on-val :lambda-list '(m))
(cl:defmethod passenger_blinker_bulb_on-val ((m <TurnAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_blinker_bulb_on-val is deprecated.  Use pacmod_msgs-msg:passenger_blinker_bulb_on instead.")
  (passenger_blinker_bulb_on m))

(cl:ensure-generic-function 'passenger_blinker_bulb_on_is_valid-val :lambda-list '(m))
(cl:defmethod passenger_blinker_bulb_on_is_valid-val ((m <TurnAuxRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_blinker_bulb_on_is_valid-val is deprecated.  Use pacmod_msgs-msg:passenger_blinker_bulb_on_is_valid instead.")
  (passenger_blinker_bulb_on_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnAuxRpt>) ostream)
  "Serializes a message object of type '<TurnAuxRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_blinker_bulb_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_blinker_bulb_on_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_blinker_bulb_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_blinker_bulb_on_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnAuxRpt>) istream)
  "Deserializes a message object of type '<TurnAuxRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'driver_blinker_bulb_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_blinker_bulb_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_blinker_bulb_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_blinker_bulb_on_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnAuxRpt>)))
  "Returns string type for a message object of type '<TurnAuxRpt>"
  "pacmod_msgs/TurnAuxRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnAuxRpt)))
  "Returns string type for a message object of type 'TurnAuxRpt"
  "pacmod_msgs/TurnAuxRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnAuxRpt>)))
  "Returns md5sum for a message object of type '<TurnAuxRpt>"
  "c04dad80913279be4de094443dc50dca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnAuxRpt)))
  "Returns md5sum for a message object of type 'TurnAuxRpt"
  "c04dad80913279be4de094443dc50dca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnAuxRpt>)))
  "Returns full string definition for message of type '<TurnAuxRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool driver_blinker_bulb_on~%bool driver_blinker_bulb_on_is_valid~%bool passenger_blinker_bulb_on~%bool passenger_blinker_bulb_on_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnAuxRpt)))
  "Returns full string definition for message of type 'TurnAuxRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool driver_blinker_bulb_on~%bool driver_blinker_bulb_on_is_valid~%bool passenger_blinker_bulb_on~%bool passenger_blinker_bulb_on_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnAuxRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnAuxRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnAuxRpt
    (cl:cons ':header (header msg))
    (cl:cons ':driver_blinker_bulb_on (driver_blinker_bulb_on msg))
    (cl:cons ':driver_blinker_bulb_on_is_valid (driver_blinker_bulb_on_is_valid msg))
    (cl:cons ':passenger_blinker_bulb_on (passenger_blinker_bulb_on msg))
    (cl:cons ':passenger_blinker_bulb_on_is_valid (passenger_blinker_bulb_on_is_valid msg))
))
