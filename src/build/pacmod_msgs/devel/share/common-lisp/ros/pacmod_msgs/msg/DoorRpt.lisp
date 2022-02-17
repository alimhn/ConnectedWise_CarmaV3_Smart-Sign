; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude DoorRpt.msg.html

(cl:defclass <DoorRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (driver_door_open
    :reader driver_door_open
    :initarg :driver_door_open
    :type cl:boolean
    :initform cl:nil)
   (driver_door_open_is_valid
    :reader driver_door_open_is_valid
    :initarg :driver_door_open_is_valid
    :type cl:boolean
    :initform cl:nil)
   (passenger_door_open
    :reader passenger_door_open
    :initarg :passenger_door_open
    :type cl:boolean
    :initform cl:nil)
   (passenger_door_open_is_valid
    :reader passenger_door_open_is_valid
    :initarg :passenger_door_open_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_driver_door_open
    :reader rear_driver_door_open
    :initarg :rear_driver_door_open
    :type cl:boolean
    :initform cl:nil)
   (rear_driver_door_open_is_valid
    :reader rear_driver_door_open_is_valid
    :initarg :rear_driver_door_open_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_passenger_door_open
    :reader rear_passenger_door_open
    :initarg :rear_passenger_door_open
    :type cl:boolean
    :initform cl:nil)
   (rear_passenger_door_open_is_valid
    :reader rear_passenger_door_open_is_valid
    :initarg :rear_passenger_door_open_is_valid
    :type cl:boolean
    :initform cl:nil)
   (hood_open
    :reader hood_open
    :initarg :hood_open
    :type cl:boolean
    :initform cl:nil)
   (hood_open_is_valid
    :reader hood_open_is_valid
    :initarg :hood_open_is_valid
    :type cl:boolean
    :initform cl:nil)
   (trunk_open
    :reader trunk_open
    :initarg :trunk_open
    :type cl:boolean
    :initform cl:nil)
   (trunk_open_is_valid
    :reader trunk_open_is_valid
    :initarg :trunk_open_is_valid
    :type cl:boolean
    :initform cl:nil)
   (fuel_door_open
    :reader fuel_door_open
    :initarg :fuel_door_open
    :type cl:boolean
    :initform cl:nil)
   (fuel_door_open_is_valid
    :reader fuel_door_open_is_valid
    :initarg :fuel_door_open_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DoorRpt (<DoorRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<DoorRpt> is deprecated: use pacmod_msgs-msg:DoorRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driver_door_open-val :lambda-list '(m))
(cl:defmethod driver_door_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_door_open-val is deprecated.  Use pacmod_msgs-msg:driver_door_open instead.")
  (driver_door_open m))

(cl:ensure-generic-function 'driver_door_open_is_valid-val :lambda-list '(m))
(cl:defmethod driver_door_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_door_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:driver_door_open_is_valid instead.")
  (driver_door_open_is_valid m))

(cl:ensure-generic-function 'passenger_door_open-val :lambda-list '(m))
(cl:defmethod passenger_door_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_door_open-val is deprecated.  Use pacmod_msgs-msg:passenger_door_open instead.")
  (passenger_door_open m))

(cl:ensure-generic-function 'passenger_door_open_is_valid-val :lambda-list '(m))
(cl:defmethod passenger_door_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_door_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:passenger_door_open_is_valid instead.")
  (passenger_door_open_is_valid m))

(cl:ensure-generic-function 'rear_driver_door_open-val :lambda-list '(m))
(cl:defmethod rear_driver_door_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_driver_door_open-val is deprecated.  Use pacmod_msgs-msg:rear_driver_door_open instead.")
  (rear_driver_door_open m))

(cl:ensure-generic-function 'rear_driver_door_open_is_valid-val :lambda-list '(m))
(cl:defmethod rear_driver_door_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_driver_door_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_driver_door_open_is_valid instead.")
  (rear_driver_door_open_is_valid m))

(cl:ensure-generic-function 'rear_passenger_door_open-val :lambda-list '(m))
(cl:defmethod rear_passenger_door_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_passenger_door_open-val is deprecated.  Use pacmod_msgs-msg:rear_passenger_door_open instead.")
  (rear_passenger_door_open m))

(cl:ensure-generic-function 'rear_passenger_door_open_is_valid-val :lambda-list '(m))
(cl:defmethod rear_passenger_door_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_passenger_door_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_passenger_door_open_is_valid instead.")
  (rear_passenger_door_open_is_valid m))

(cl:ensure-generic-function 'hood_open-val :lambda-list '(m))
(cl:defmethod hood_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:hood_open-val is deprecated.  Use pacmod_msgs-msg:hood_open instead.")
  (hood_open m))

(cl:ensure-generic-function 'hood_open_is_valid-val :lambda-list '(m))
(cl:defmethod hood_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:hood_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:hood_open_is_valid instead.")
  (hood_open_is_valid m))

(cl:ensure-generic-function 'trunk_open-val :lambda-list '(m))
(cl:defmethod trunk_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:trunk_open-val is deprecated.  Use pacmod_msgs-msg:trunk_open instead.")
  (trunk_open m))

(cl:ensure-generic-function 'trunk_open_is_valid-val :lambda-list '(m))
(cl:defmethod trunk_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:trunk_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:trunk_open_is_valid instead.")
  (trunk_open_is_valid m))

(cl:ensure-generic-function 'fuel_door_open-val :lambda-list '(m))
(cl:defmethod fuel_door_open-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:fuel_door_open-val is deprecated.  Use pacmod_msgs-msg:fuel_door_open instead.")
  (fuel_door_open m))

(cl:ensure-generic-function 'fuel_door_open_is_valid-val :lambda-list '(m))
(cl:defmethod fuel_door_open_is_valid-val ((m <DoorRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:fuel_door_open_is_valid-val is deprecated.  Use pacmod_msgs-msg:fuel_door_open_is_valid instead.")
  (fuel_door_open_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorRpt>) ostream)
  "Serializes a message object of type '<DoorRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_door_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_door_open_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_door_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_door_open_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_driver_door_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_driver_door_open_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_passenger_door_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_passenger_door_open_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hood_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hood_open_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trunk_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trunk_open_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fuel_door_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fuel_door_open_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorRpt>) istream)
  "Deserializes a message object of type '<DoorRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'driver_door_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_door_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_door_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_door_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_driver_door_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_driver_door_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_passenger_door_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_passenger_door_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hood_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hood_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'trunk_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'trunk_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fuel_door_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fuel_door_open_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorRpt>)))
  "Returns string type for a message object of type '<DoorRpt>"
  "pacmod_msgs/DoorRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorRpt)))
  "Returns string type for a message object of type 'DoorRpt"
  "pacmod_msgs/DoorRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorRpt>)))
  "Returns md5sum for a message object of type '<DoorRpt>"
  "a2ffa235d04f8d5d5e349a5d9caead12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorRpt)))
  "Returns md5sum for a message object of type 'DoorRpt"
  "a2ffa235d04f8d5d5e349a5d9caead12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorRpt>)))
  "Returns full string definition for message of type '<DoorRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool driver_door_open~%bool driver_door_open_is_valid~%bool passenger_door_open~%bool passenger_door_open_is_valid~%bool rear_driver_door_open~%bool rear_driver_door_open_is_valid~%bool rear_passenger_door_open~%bool rear_passenger_door_open_is_valid~%bool hood_open~%bool hood_open_is_valid~%bool trunk_open~%bool trunk_open_is_valid~%bool fuel_door_open~%bool fuel_door_open_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorRpt)))
  "Returns full string definition for message of type 'DoorRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool driver_door_open~%bool driver_door_open_is_valid~%bool passenger_door_open~%bool passenger_door_open_is_valid~%bool rear_driver_door_open~%bool rear_driver_door_open_is_valid~%bool rear_passenger_door_open~%bool rear_passenger_door_open_is_valid~%bool hood_open~%bool hood_open_is_valid~%bool trunk_open~%bool trunk_open_is_valid~%bool fuel_door_open~%bool fuel_door_open_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorRpt>))
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
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorRpt
    (cl:cons ':header (header msg))
    (cl:cons ':driver_door_open (driver_door_open msg))
    (cl:cons ':driver_door_open_is_valid (driver_door_open_is_valid msg))
    (cl:cons ':passenger_door_open (passenger_door_open msg))
    (cl:cons ':passenger_door_open_is_valid (passenger_door_open_is_valid msg))
    (cl:cons ':rear_driver_door_open (rear_driver_door_open msg))
    (cl:cons ':rear_driver_door_open_is_valid (rear_driver_door_open_is_valid msg))
    (cl:cons ':rear_passenger_door_open (rear_passenger_door_open msg))
    (cl:cons ':rear_passenger_door_open_is_valid (rear_passenger_door_open_is_valid msg))
    (cl:cons ':hood_open (hood_open msg))
    (cl:cons ':hood_open_is_valid (hood_open_is_valid msg))
    (cl:cons ':trunk_open (trunk_open msg))
    (cl:cons ':trunk_open_is_valid (trunk_open_is_valid msg))
    (cl:cons ':fuel_door_open (fuel_door_open msg))
    (cl:cons ':fuel_door_open_is_valid (fuel_door_open_is_valid msg))
))
