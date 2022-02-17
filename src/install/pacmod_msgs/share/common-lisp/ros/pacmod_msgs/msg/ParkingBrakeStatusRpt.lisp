; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude ParkingBrakeStatusRpt.msg.html

(cl:defclass <ParkingBrakeStatusRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parking_brake_engaged
    :reader parking_brake_engaged
    :initarg :parking_brake_engaged
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ParkingBrakeStatusRpt (<ParkingBrakeStatusRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingBrakeStatusRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingBrakeStatusRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<ParkingBrakeStatusRpt> is deprecated: use pacmod_msgs-msg:ParkingBrakeStatusRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingBrakeStatusRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parking_brake_engaged-val :lambda-list '(m))
(cl:defmethod parking_brake_engaged-val ((m <ParkingBrakeStatusRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:parking_brake_engaged-val is deprecated.  Use pacmod_msgs-msg:parking_brake_engaged instead.")
  (parking_brake_engaged m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingBrakeStatusRpt>) ostream)
  "Serializes a message object of type '<ParkingBrakeStatusRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'parking_brake_engaged) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingBrakeStatusRpt>) istream)
  "Deserializes a message object of type '<ParkingBrakeStatusRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'parking_brake_engaged) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingBrakeStatusRpt>)))
  "Returns string type for a message object of type '<ParkingBrakeStatusRpt>"
  "pacmod_msgs/ParkingBrakeStatusRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingBrakeStatusRpt)))
  "Returns string type for a message object of type 'ParkingBrakeStatusRpt"
  "pacmod_msgs/ParkingBrakeStatusRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingBrakeStatusRpt>)))
  "Returns md5sum for a message object of type '<ParkingBrakeStatusRpt>"
  "28531874ceb48a58d4faa42b130fc228")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingBrakeStatusRpt)))
  "Returns md5sum for a message object of type 'ParkingBrakeStatusRpt"
  "28531874ceb48a58d4faa42b130fc228")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingBrakeStatusRpt>)))
  "Returns full string definition for message of type '<ParkingBrakeStatusRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool parking_brake_engaged~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingBrakeStatusRpt)))
  "Returns full string definition for message of type 'ParkingBrakeStatusRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool parking_brake_engaged~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingBrakeStatusRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingBrakeStatusRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingBrakeStatusRpt
    (cl:cons ':header (header msg))
    (cl:cons ':parking_brake_engaged (parking_brake_engaged msg))
))
