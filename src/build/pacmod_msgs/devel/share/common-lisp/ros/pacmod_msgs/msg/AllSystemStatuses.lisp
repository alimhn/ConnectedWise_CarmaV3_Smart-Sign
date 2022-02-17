; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude AllSystemStatuses.msg.html

(cl:defclass <AllSystemStatuses> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enabled_status
    :reader enabled_status
    :initarg :enabled_status
    :type (cl:vector pacmod_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'pacmod_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'pacmod_msgs-msg:KeyValuePair)))
   (overridden_status
    :reader overridden_status
    :initarg :overridden_status
    :type (cl:vector pacmod_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'pacmod_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'pacmod_msgs-msg:KeyValuePair)))
   (fault_status
    :reader fault_status
    :initarg :fault_status
    :type (cl:vector pacmod_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'pacmod_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'pacmod_msgs-msg:KeyValuePair))))
)

(cl:defclass AllSystemStatuses (<AllSystemStatuses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllSystemStatuses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllSystemStatuses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<AllSystemStatuses> is deprecated: use pacmod_msgs-msg:AllSystemStatuses instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AllSystemStatuses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled_status-val :lambda-list '(m))
(cl:defmethod enabled_status-val ((m <AllSystemStatuses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enabled_status-val is deprecated.  Use pacmod_msgs-msg:enabled_status instead.")
  (enabled_status m))

(cl:ensure-generic-function 'overridden_status-val :lambda-list '(m))
(cl:defmethod overridden_status-val ((m <AllSystemStatuses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:overridden_status-val is deprecated.  Use pacmod_msgs-msg:overridden_status instead.")
  (overridden_status m))

(cl:ensure-generic-function 'fault_status-val :lambda-list '(m))
(cl:defmethod fault_status-val ((m <AllSystemStatuses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:fault_status-val is deprecated.  Use pacmod_msgs-msg:fault_status instead.")
  (fault_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllSystemStatuses>) ostream)
  "Serializes a message object of type '<AllSystemStatuses>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'enabled_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'enabled_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'overridden_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'overridden_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fault_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fault_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllSystemStatuses>) istream)
  "Deserializes a message object of type '<AllSystemStatuses>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'enabled_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'enabled_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pacmod_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'overridden_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'overridden_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pacmod_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fault_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fault_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pacmod_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllSystemStatuses>)))
  "Returns string type for a message object of type '<AllSystemStatuses>"
  "pacmod_msgs/AllSystemStatuses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllSystemStatuses)))
  "Returns string type for a message object of type 'AllSystemStatuses"
  "pacmod_msgs/AllSystemStatuses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllSystemStatuses>)))
  "Returns md5sum for a message object of type '<AllSystemStatuses>"
  "c02f347061ed74b0bef510eb7368d90a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllSystemStatuses)))
  "Returns md5sum for a message object of type 'AllSystemStatuses"
  "c02f347061ed74b0bef510eb7368d90a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllSystemStatuses>)))
  "Returns full string definition for message of type '<AllSystemStatuses>"
  (cl:format cl:nil "std_msgs/Header header~%~%pacmod_msgs/KeyValuePair[] enabled_status~%pacmod_msgs/KeyValuePair[] overridden_status~%pacmod_msgs/KeyValuePair[] fault_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pacmod_msgs/KeyValuePair~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllSystemStatuses)))
  "Returns full string definition for message of type 'AllSystemStatuses"
  (cl:format cl:nil "std_msgs/Header header~%~%pacmod_msgs/KeyValuePair[] enabled_status~%pacmod_msgs/KeyValuePair[] overridden_status~%pacmod_msgs/KeyValuePair[] fault_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pacmod_msgs/KeyValuePair~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllSystemStatuses>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'enabled_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'overridden_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fault_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllSystemStatuses>))
  "Converts a ROS message object to a list"
  (cl:list 'AllSystemStatuses
    (cl:cons ':header (header msg))
    (cl:cons ':enabled_status (enabled_status msg))
    (cl:cons ':overridden_status (overridden_status msg))
    (cl:cons ':fault_status (fault_status msg))
))
