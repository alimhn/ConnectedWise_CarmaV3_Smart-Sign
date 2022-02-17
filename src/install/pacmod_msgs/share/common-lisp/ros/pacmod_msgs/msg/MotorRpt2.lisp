; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude MotorRpt2.msg.html

(cl:defclass <MotorRpt2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (encoder_temp
    :reader encoder_temp
    :initarg :encoder_temp
    :type cl:float
    :initform 0.0)
   (motor_temp
    :reader motor_temp
    :initarg :motor_temp
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorRpt2 (<MotorRpt2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorRpt2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorRpt2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<MotorRpt2> is deprecated: use pacmod_msgs-msg:MotorRpt2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorRpt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'encoder_temp-val :lambda-list '(m))
(cl:defmethod encoder_temp-val ((m <MotorRpt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:encoder_temp-val is deprecated.  Use pacmod_msgs-msg:encoder_temp instead.")
  (encoder_temp m))

(cl:ensure-generic-function 'motor_temp-val :lambda-list '(m))
(cl:defmethod motor_temp-val ((m <MotorRpt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:motor_temp-val is deprecated.  Use pacmod_msgs-msg:motor_temp instead.")
  (motor_temp m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <MotorRpt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:angular_velocity-val is deprecated.  Use pacmod_msgs-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorRpt2>) ostream)
  "Serializes a message object of type '<MotorRpt2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'encoder_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorRpt2>) istream)
  "Deserializes a message object of type '<MotorRpt2>"
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
    (cl:setf (cl:slot-value msg 'encoder_temp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_temp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorRpt2>)))
  "Returns string type for a message object of type '<MotorRpt2>"
  "pacmod_msgs/MotorRpt2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorRpt2)))
  "Returns string type for a message object of type 'MotorRpt2"
  "pacmod_msgs/MotorRpt2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorRpt2>)))
  "Returns md5sum for a message object of type '<MotorRpt2>"
  "d757953b36f8ffe8db6389da9ff787a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorRpt2)))
  "Returns md5sum for a message object of type 'MotorRpt2"
  "d757953b36f8ffe8db6389da9ff787a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorRpt2>)))
  "Returns full string definition for message of type '<MotorRpt2>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 encoder_temp        # Encoder temperature in degrees Celsius~%float64 motor_temp          # Internal motor temperature in degrees Celsius~%float64 angular_velocity    # Angular velocity of the motor shaft (z axis) in Radians/second~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorRpt2)))
  "Returns full string definition for message of type 'MotorRpt2"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 encoder_temp        # Encoder temperature in degrees Celsius~%float64 motor_temp          # Internal motor temperature in degrees Celsius~%float64 angular_velocity    # Angular velocity of the motor shaft (z axis) in Radians/second~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorRpt2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorRpt2>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorRpt2
    (cl:cons ':header (header msg))
    (cl:cons ':encoder_temp (encoder_temp msg))
    (cl:cons ':motor_temp (motor_temp msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
