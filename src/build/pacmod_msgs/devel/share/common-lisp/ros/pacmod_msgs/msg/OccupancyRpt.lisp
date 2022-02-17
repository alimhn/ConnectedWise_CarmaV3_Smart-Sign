; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude OccupancyRpt.msg.html

(cl:defclass <OccupancyRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (driver_seat_occupied
    :reader driver_seat_occupied
    :initarg :driver_seat_occupied
    :type cl:boolean
    :initform cl:nil)
   (driver_seat_occupied_is_valid
    :reader driver_seat_occupied_is_valid
    :initarg :driver_seat_occupied_is_valid
    :type cl:boolean
    :initform cl:nil)
   (passenger_seat_occupied
    :reader passenger_seat_occupied
    :initarg :passenger_seat_occupied
    :type cl:boolean
    :initform cl:nil)
   (passenger_seat_occupied_is_valid
    :reader passenger_seat_occupied_is_valid
    :initarg :passenger_seat_occupied_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_seat_occupied
    :reader rear_seat_occupied
    :initarg :rear_seat_occupied
    :type cl:boolean
    :initform cl:nil)
   (rear_seat_occupied_is_valid
    :reader rear_seat_occupied_is_valid
    :initarg :rear_seat_occupied_is_valid
    :type cl:boolean
    :initform cl:nil)
   (driver_seatbelt_buckled
    :reader driver_seatbelt_buckled
    :initarg :driver_seatbelt_buckled
    :type cl:boolean
    :initform cl:nil)
   (driver_seatbelt_buckled_is_valid
    :reader driver_seatbelt_buckled_is_valid
    :initarg :driver_seatbelt_buckled_is_valid
    :type cl:boolean
    :initform cl:nil)
   (passenger_seatbelt_buckled
    :reader passenger_seatbelt_buckled
    :initarg :passenger_seatbelt_buckled
    :type cl:boolean
    :initform cl:nil)
   (passenger_seatbelt_buckled_is_valid
    :reader passenger_seatbelt_buckled_is_valid
    :initarg :passenger_seatbelt_buckled_is_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_seatbelt_buckled
    :reader rear_seatbelt_buckled
    :initarg :rear_seatbelt_buckled
    :type cl:boolean
    :initform cl:nil)
   (rear_seatbelt_buckled_is_valid
    :reader rear_seatbelt_buckled_is_valid
    :initarg :rear_seatbelt_buckled_is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OccupancyRpt (<OccupancyRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OccupancyRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OccupancyRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<OccupancyRpt> is deprecated: use pacmod_msgs-msg:OccupancyRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driver_seat_occupied-val :lambda-list '(m))
(cl:defmethod driver_seat_occupied-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_seat_occupied-val is deprecated.  Use pacmod_msgs-msg:driver_seat_occupied instead.")
  (driver_seat_occupied m))

(cl:ensure-generic-function 'driver_seat_occupied_is_valid-val :lambda-list '(m))
(cl:defmethod driver_seat_occupied_is_valid-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_seat_occupied_is_valid-val is deprecated.  Use pacmod_msgs-msg:driver_seat_occupied_is_valid instead.")
  (driver_seat_occupied_is_valid m))

(cl:ensure-generic-function 'passenger_seat_occupied-val :lambda-list '(m))
(cl:defmethod passenger_seat_occupied-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_seat_occupied-val is deprecated.  Use pacmod_msgs-msg:passenger_seat_occupied instead.")
  (passenger_seat_occupied m))

(cl:ensure-generic-function 'passenger_seat_occupied_is_valid-val :lambda-list '(m))
(cl:defmethod passenger_seat_occupied_is_valid-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_seat_occupied_is_valid-val is deprecated.  Use pacmod_msgs-msg:passenger_seat_occupied_is_valid instead.")
  (passenger_seat_occupied_is_valid m))

(cl:ensure-generic-function 'rear_seat_occupied-val :lambda-list '(m))
(cl:defmethod rear_seat_occupied-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_seat_occupied-val is deprecated.  Use pacmod_msgs-msg:rear_seat_occupied instead.")
  (rear_seat_occupied m))

(cl:ensure-generic-function 'rear_seat_occupied_is_valid-val :lambda-list '(m))
(cl:defmethod rear_seat_occupied_is_valid-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_seat_occupied_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_seat_occupied_is_valid instead.")
  (rear_seat_occupied_is_valid m))

(cl:ensure-generic-function 'driver_seatbelt_buckled-val :lambda-list '(m))
(cl:defmethod driver_seatbelt_buckled-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_seatbelt_buckled-val is deprecated.  Use pacmod_msgs-msg:driver_seatbelt_buckled instead.")
  (driver_seatbelt_buckled m))

(cl:ensure-generic-function 'driver_seatbelt_buckled_is_valid-val :lambda-list '(m))
(cl:defmethod driver_seatbelt_buckled_is_valid-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:driver_seatbelt_buckled_is_valid-val is deprecated.  Use pacmod_msgs-msg:driver_seatbelt_buckled_is_valid instead.")
  (driver_seatbelt_buckled_is_valid m))

(cl:ensure-generic-function 'passenger_seatbelt_buckled-val :lambda-list '(m))
(cl:defmethod passenger_seatbelt_buckled-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_seatbelt_buckled-val is deprecated.  Use pacmod_msgs-msg:passenger_seatbelt_buckled instead.")
  (passenger_seatbelt_buckled m))

(cl:ensure-generic-function 'passenger_seatbelt_buckled_is_valid-val :lambda-list '(m))
(cl:defmethod passenger_seatbelt_buckled_is_valid-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:passenger_seatbelt_buckled_is_valid-val is deprecated.  Use pacmod_msgs-msg:passenger_seatbelt_buckled_is_valid instead.")
  (passenger_seatbelt_buckled_is_valid m))

(cl:ensure-generic-function 'rear_seatbelt_buckled-val :lambda-list '(m))
(cl:defmethod rear_seatbelt_buckled-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_seatbelt_buckled-val is deprecated.  Use pacmod_msgs-msg:rear_seatbelt_buckled instead.")
  (rear_seatbelt_buckled m))

(cl:ensure-generic-function 'rear_seatbelt_buckled_is_valid-val :lambda-list '(m))
(cl:defmethod rear_seatbelt_buckled_is_valid-val ((m <OccupancyRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:rear_seatbelt_buckled_is_valid-val is deprecated.  Use pacmod_msgs-msg:rear_seatbelt_buckled_is_valid instead.")
  (rear_seatbelt_buckled_is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OccupancyRpt>) ostream)
  "Serializes a message object of type '<OccupancyRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_seat_occupied) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_seat_occupied_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_seat_occupied) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_seat_occupied_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_seat_occupied) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_seat_occupied_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_seatbelt_buckled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_seatbelt_buckled_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_seatbelt_buckled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_seatbelt_buckled_is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_seatbelt_buckled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_seatbelt_buckled_is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OccupancyRpt>) istream)
  "Deserializes a message object of type '<OccupancyRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'driver_seat_occupied) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_seat_occupied_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_seat_occupied) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_seat_occupied_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_seat_occupied) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_seat_occupied_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_seatbelt_buckled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_seatbelt_buckled_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_seatbelt_buckled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_seatbelt_buckled_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_seatbelt_buckled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_seatbelt_buckled_is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OccupancyRpt>)))
  "Returns string type for a message object of type '<OccupancyRpt>"
  "pacmod_msgs/OccupancyRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OccupancyRpt)))
  "Returns string type for a message object of type 'OccupancyRpt"
  "pacmod_msgs/OccupancyRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OccupancyRpt>)))
  "Returns md5sum for a message object of type '<OccupancyRpt>"
  "0721e1bb580b55ac7fd96411e39adf3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OccupancyRpt)))
  "Returns md5sum for a message object of type 'OccupancyRpt"
  "0721e1bb580b55ac7fd96411e39adf3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OccupancyRpt>)))
  "Returns full string definition for message of type '<OccupancyRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool driver_seat_occupied~%bool driver_seat_occupied_is_valid~%bool passenger_seat_occupied~%bool passenger_seat_occupied_is_valid~%bool rear_seat_occupied~%bool rear_seat_occupied_is_valid~%bool driver_seatbelt_buckled~%bool driver_seatbelt_buckled_is_valid~%bool passenger_seatbelt_buckled~%bool passenger_seatbelt_buckled_is_valid~%bool rear_seatbelt_buckled~%bool rear_seatbelt_buckled_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OccupancyRpt)))
  "Returns full string definition for message of type 'OccupancyRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool driver_seat_occupied~%bool driver_seat_occupied_is_valid~%bool passenger_seat_occupied~%bool passenger_seat_occupied_is_valid~%bool rear_seat_occupied~%bool rear_seat_occupied_is_valid~%bool driver_seatbelt_buckled~%bool driver_seatbelt_buckled_is_valid~%bool passenger_seatbelt_buckled~%bool passenger_seatbelt_buckled_is_valid~%bool rear_seatbelt_buckled~%bool rear_seatbelt_buckled_is_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OccupancyRpt>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OccupancyRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'OccupancyRpt
    (cl:cons ':header (header msg))
    (cl:cons ':driver_seat_occupied (driver_seat_occupied msg))
    (cl:cons ':driver_seat_occupied_is_valid (driver_seat_occupied_is_valid msg))
    (cl:cons ':passenger_seat_occupied (passenger_seat_occupied msg))
    (cl:cons ':passenger_seat_occupied_is_valid (passenger_seat_occupied_is_valid msg))
    (cl:cons ':rear_seat_occupied (rear_seat_occupied msg))
    (cl:cons ':rear_seat_occupied_is_valid (rear_seat_occupied_is_valid msg))
    (cl:cons ':driver_seatbelt_buckled (driver_seatbelt_buckled msg))
    (cl:cons ':driver_seatbelt_buckled_is_valid (driver_seatbelt_buckled_is_valid msg))
    (cl:cons ':passenger_seatbelt_buckled (passenger_seatbelt_buckled msg))
    (cl:cons ':passenger_seatbelt_buckled_is_valid (passenger_seatbelt_buckled_is_valid msg))
    (cl:cons ':rear_seatbelt_buckled (rear_seatbelt_buckled msg))
    (cl:cons ':rear_seatbelt_buckled_is_valid (rear_seatbelt_buckled_is_valid msg))
))
