; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude VehicleSpecificRpt1.msg.html

(cl:defclass <VehicleSpecificRpt1> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (shift_pos_1
    :reader shift_pos_1
    :initarg :shift_pos_1
    :type cl:fixnum
    :initform 0)
   (shift_pos_2
    :reader shift_pos_2
    :initarg :shift_pos_2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleSpecificRpt1 (<VehicleSpecificRpt1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSpecificRpt1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSpecificRpt1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<VehicleSpecificRpt1> is deprecated: use pacmod_msgs-msg:VehicleSpecificRpt1 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleSpecificRpt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'shift_pos_1-val :lambda-list '(m))
(cl:defmethod shift_pos_1-val ((m <VehicleSpecificRpt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:shift_pos_1-val is deprecated.  Use pacmod_msgs-msg:shift_pos_1 instead.")
  (shift_pos_1 m))

(cl:ensure-generic-function 'shift_pos_2-val :lambda-list '(m))
(cl:defmethod shift_pos_2-val ((m <VehicleSpecificRpt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:shift_pos_2-val is deprecated.  Use pacmod_msgs-msg:shift_pos_2 instead.")
  (shift_pos_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSpecificRpt1>) ostream)
  "Serializes a message object of type '<VehicleSpecificRpt1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shift_pos_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shift_pos_2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSpecificRpt1>) istream)
  "Deserializes a message object of type '<VehicleSpecificRpt1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shift_pos_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shift_pos_2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSpecificRpt1>)))
  "Returns string type for a message object of type '<VehicleSpecificRpt1>"
  "pacmod_msgs/VehicleSpecificRpt1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSpecificRpt1)))
  "Returns string type for a message object of type 'VehicleSpecificRpt1"
  "pacmod_msgs/VehicleSpecificRpt1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSpecificRpt1>)))
  "Returns md5sum for a message object of type '<VehicleSpecificRpt1>"
  "e61481747bb1386c6b9f8ef5c5adad62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSpecificRpt1)))
  "Returns md5sum for a message object of type 'VehicleSpecificRpt1"
  "e61481747bb1386c6b9f8ef5c5adad62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSpecificRpt1>)))
  "Returns full string definition for message of type '<VehicleSpecificRpt1>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 shift_pos_1~%uint8 shift_pos_2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSpecificRpt1)))
  "Returns full string definition for message of type 'VehicleSpecificRpt1"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 shift_pos_1~%uint8 shift_pos_2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSpecificRpt1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSpecificRpt1>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSpecificRpt1
    (cl:cons ':header (header msg))
    (cl:cons ':shift_pos_1 (shift_pos_1 msg))
    (cl:cons ':shift_pos_2 (shift_pos_2 msg))
))
