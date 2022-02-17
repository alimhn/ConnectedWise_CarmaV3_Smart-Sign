; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude VehicleDynamicsRpt.msg.html

(cl:defclass <VehicleDynamicsRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brake_torque
    :reader brake_torque
    :initarg :brake_torque
    :type cl:float
    :initform 0.0)
   (g_forces
    :reader g_forces
    :initarg :g_forces
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleDynamicsRpt (<VehicleDynamicsRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleDynamicsRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleDynamicsRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<VehicleDynamicsRpt> is deprecated: use pacmod_msgs-msg:VehicleDynamicsRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleDynamicsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brake_torque-val :lambda-list '(m))
(cl:defmethod brake_torque-val ((m <VehicleDynamicsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:brake_torque-val is deprecated.  Use pacmod_msgs-msg:brake_torque instead.")
  (brake_torque m))

(cl:ensure-generic-function 'g_forces-val :lambda-list '(m))
(cl:defmethod g_forces-val ((m <VehicleDynamicsRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:g_forces-val is deprecated.  Use pacmod_msgs-msg:g_forces instead.")
  (g_forces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleDynamicsRpt>) ostream)
  "Serializes a message object of type '<VehicleDynamicsRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_forces)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleDynamicsRpt>) istream)
  "Deserializes a message object of type '<VehicleDynamicsRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_forces)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleDynamicsRpt>)))
  "Returns string type for a message object of type '<VehicleDynamicsRpt>"
  "pacmod_msgs/VehicleDynamicsRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleDynamicsRpt)))
  "Returns string type for a message object of type 'VehicleDynamicsRpt"
  "pacmod_msgs/VehicleDynamicsRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleDynamicsRpt>)))
  "Returns md5sum for a message object of type '<VehicleDynamicsRpt>"
  "76c5ee0fb5b1065da372a973e2ffdd31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleDynamicsRpt)))
  "Returns md5sum for a message object of type 'VehicleDynamicsRpt"
  "76c5ee0fb5b1065da372a973e2ffdd31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleDynamicsRpt>)))
  "Returns full string definition for message of type '<VehicleDynamicsRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 brake_torque       # Measured brake torque~%uint8 g_forces             # Measured g forces~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleDynamicsRpt)))
  "Returns full string definition for message of type 'VehicleDynamicsRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 brake_torque       # Measured brake torque~%uint8 g_forces             # Measured g forces~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleDynamicsRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleDynamicsRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleDynamicsRpt
    (cl:cons ':header (header msg))
    (cl:cons ':brake_torque (brake_torque msg))
    (cl:cons ':g_forces (g_forces msg))
))
