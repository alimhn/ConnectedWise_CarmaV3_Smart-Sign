; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude VehicleSpeedRpt.msg.html

(cl:defclass <VehicleSpeedRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_speed
    :reader vehicle_speed
    :initarg :vehicle_speed
    :type cl:float
    :initform 0.0)
   (vehicle_speed_valid
    :reader vehicle_speed_valid
    :initarg :vehicle_speed_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_speed_raw
    :reader vehicle_speed_raw
    :initarg :vehicle_speed_raw
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass VehicleSpeedRpt (<VehicleSpeedRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSpeedRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSpeedRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<VehicleSpeedRpt> is deprecated: use pacmod_msgs-msg:VehicleSpeedRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleSpeedRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_speed-val :lambda-list '(m))
(cl:defmethod vehicle_speed-val ((m <VehicleSpeedRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_speed-val is deprecated.  Use pacmod_msgs-msg:vehicle_speed instead.")
  (vehicle_speed m))

(cl:ensure-generic-function 'vehicle_speed_valid-val :lambda-list '(m))
(cl:defmethod vehicle_speed_valid-val ((m <VehicleSpeedRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_speed_valid-val is deprecated.  Use pacmod_msgs-msg:vehicle_speed_valid instead.")
  (vehicle_speed_valid m))

(cl:ensure-generic-function 'vehicle_speed_raw-val :lambda-list '(m))
(cl:defmethod vehicle_speed_raw-val ((m <VehicleSpeedRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_speed_raw-val is deprecated.  Use pacmod_msgs-msg:vehicle_speed_raw instead.")
  (vehicle_speed_raw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSpeedRpt>) ostream)
  "Serializes a message object of type '<VehicleSpeedRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicle_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_speed_valid) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'vehicle_speed_raw))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSpeedRpt>) istream)
  "Deserializes a message object of type '<VehicleSpeedRpt>"
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
    (cl:setf (cl:slot-value msg 'vehicle_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vehicle_speed_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'vehicle_speed_raw) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'vehicle_speed_raw)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSpeedRpt>)))
  "Returns string type for a message object of type '<VehicleSpeedRpt>"
  "pacmod_msgs/VehicleSpeedRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSpeedRpt)))
  "Returns string type for a message object of type 'VehicleSpeedRpt"
  "pacmod_msgs/VehicleSpeedRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSpeedRpt>)))
  "Returns md5sum for a message object of type '<VehicleSpeedRpt>"
  "33c26f1bbea2c9136f0821ddc90cd049")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSpeedRpt)))
  "Returns md5sum for a message object of type 'VehicleSpeedRpt"
  "33c26f1bbea2c9136f0821ddc90cd049")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSpeedRpt>)))
  "Returns full string definition for message of type '<VehicleSpeedRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 vehicle_speed         # Measured vehicle speed~%bool vehicle_speed_valid      # Flag indicating if measured vehicle speed is valid~%uint8[2] vehicle_speed_raw    # Raw bytes from vehicle CAN bus                ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSpeedRpt)))
  "Returns full string definition for message of type 'VehicleSpeedRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 vehicle_speed         # Measured vehicle speed~%bool vehicle_speed_valid      # Flag indicating if measured vehicle speed is valid~%uint8[2] vehicle_speed_raw    # Raw bytes from vehicle CAN bus                ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSpeedRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicle_speed_raw) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSpeedRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSpeedRpt
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_speed (vehicle_speed msg))
    (cl:cons ':vehicle_speed_valid (vehicle_speed_valid msg))
    (cl:cons ':vehicle_speed_raw (vehicle_speed_raw msg))
))
