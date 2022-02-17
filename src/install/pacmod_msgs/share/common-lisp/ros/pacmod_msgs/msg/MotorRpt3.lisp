; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude MotorRpt3.msg.html

(cl:defclass <MotorRpt3> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (torque_output
    :reader torque_output
    :initarg :torque_output
    :type cl:float
    :initform 0.0)
   (torque_input
    :reader torque_input
    :initarg :torque_input
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorRpt3 (<MotorRpt3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorRpt3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorRpt3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<MotorRpt3> is deprecated: use pacmod_msgs-msg:MotorRpt3 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorRpt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'torque_output-val :lambda-list '(m))
(cl:defmethod torque_output-val ((m <MotorRpt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:torque_output-val is deprecated.  Use pacmod_msgs-msg:torque_output instead.")
  (torque_output m))

(cl:ensure-generic-function 'torque_input-val :lambda-list '(m))
(cl:defmethod torque_input-val ((m <MotorRpt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:torque_input-val is deprecated.  Use pacmod_msgs-msg:torque_input instead.")
  (torque_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorRpt3>) ostream)
  "Serializes a message object of type '<MotorRpt3>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'torque_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'torque_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorRpt3>) istream)
  "Deserializes a message object of type '<MotorRpt3>"
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
    (cl:setf (cl:slot-value msg 'torque_output) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque_input) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorRpt3>)))
  "Returns string type for a message object of type '<MotorRpt3>"
  "pacmod_msgs/MotorRpt3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorRpt3)))
  "Returns string type for a message object of type 'MotorRpt3"
  "pacmod_msgs/MotorRpt3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorRpt3>)))
  "Returns md5sum for a message object of type '<MotorRpt3>"
  "1640bb8a85b4353a76a6e6a5df503313")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorRpt3)))
  "Returns md5sum for a message object of type 'MotorRpt3"
  "1640bb8a85b4353a76a6e6a5df503313")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorRpt3>)))
  "Returns full string definition for message of type '<MotorRpt3>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 torque_output   # Measured torque output of the motor in Newton-Meters~%float64 torque_input    # Measured torque input of the motor in Newton-Meters~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorRpt3)))
  "Returns full string definition for message of type 'MotorRpt3"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 torque_output   # Measured torque output of the motor in Newton-Meters~%float64 torque_input    # Measured torque input of the motor in Newton-Meters~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorRpt3>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorRpt3>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorRpt3
    (cl:cons ':header (header msg))
    (cl:cons ':torque_output (torque_output msg))
    (cl:cons ':torque_input (torque_input msg))
))
