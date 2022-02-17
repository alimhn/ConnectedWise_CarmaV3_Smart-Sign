; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude GlobalRpt.msg.html

(cl:defclass <GlobalRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (override_active
    :reader override_active
    :initarg :override_active
    :type cl:boolean
    :initform cl:nil)
   (fault_active
    :reader fault_active
    :initarg :fault_active
    :type cl:boolean
    :initform cl:nil)
   (config_fault_active
    :reader config_fault_active
    :initarg :config_fault_active
    :type cl:boolean
    :initform cl:nil)
   (user_can_timeout
    :reader user_can_timeout
    :initarg :user_can_timeout
    :type cl:boolean
    :initform cl:nil)
   (brake_can_timeout
    :reader brake_can_timeout
    :initarg :brake_can_timeout
    :type cl:boolean
    :initform cl:nil)
   (steering_can_timeout
    :reader steering_can_timeout
    :initarg :steering_can_timeout
    :type cl:boolean
    :initform cl:nil)
   (vehicle_can_timeout
    :reader vehicle_can_timeout
    :initarg :vehicle_can_timeout
    :type cl:boolean
    :initform cl:nil)
   (subsystem_can_timeout
    :reader subsystem_can_timeout
    :initarg :subsystem_can_timeout
    :type cl:boolean
    :initform cl:nil)
   (user_can_read_errors
    :reader user_can_read_errors
    :initarg :user_can_read_errors
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GlobalRpt (<GlobalRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<GlobalRpt> is deprecated: use pacmod_msgs-msg:GlobalRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:enabled-val is deprecated.  Use pacmod_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'override_active-val :lambda-list '(m))
(cl:defmethod override_active-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:override_active-val is deprecated.  Use pacmod_msgs-msg:override_active instead.")
  (override_active m))

(cl:ensure-generic-function 'fault_active-val :lambda-list '(m))
(cl:defmethod fault_active-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:fault_active-val is deprecated.  Use pacmod_msgs-msg:fault_active instead.")
  (fault_active m))

(cl:ensure-generic-function 'config_fault_active-val :lambda-list '(m))
(cl:defmethod config_fault_active-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:config_fault_active-val is deprecated.  Use pacmod_msgs-msg:config_fault_active instead.")
  (config_fault_active m))

(cl:ensure-generic-function 'user_can_timeout-val :lambda-list '(m))
(cl:defmethod user_can_timeout-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:user_can_timeout-val is deprecated.  Use pacmod_msgs-msg:user_can_timeout instead.")
  (user_can_timeout m))

(cl:ensure-generic-function 'brake_can_timeout-val :lambda-list '(m))
(cl:defmethod brake_can_timeout-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:brake_can_timeout-val is deprecated.  Use pacmod_msgs-msg:brake_can_timeout instead.")
  (brake_can_timeout m))

(cl:ensure-generic-function 'steering_can_timeout-val :lambda-list '(m))
(cl:defmethod steering_can_timeout-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:steering_can_timeout-val is deprecated.  Use pacmod_msgs-msg:steering_can_timeout instead.")
  (steering_can_timeout m))

(cl:ensure-generic-function 'vehicle_can_timeout-val :lambda-list '(m))
(cl:defmethod vehicle_can_timeout-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:vehicle_can_timeout-val is deprecated.  Use pacmod_msgs-msg:vehicle_can_timeout instead.")
  (vehicle_can_timeout m))

(cl:ensure-generic-function 'subsystem_can_timeout-val :lambda-list '(m))
(cl:defmethod subsystem_can_timeout-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:subsystem_can_timeout-val is deprecated.  Use pacmod_msgs-msg:subsystem_can_timeout instead.")
  (subsystem_can_timeout m))

(cl:ensure-generic-function 'user_can_read_errors-val :lambda-list '(m))
(cl:defmethod user_can_read_errors-val ((m <GlobalRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:user_can_read_errors-val is deprecated.  Use pacmod_msgs-msg:user_can_read_errors instead.")
  (user_can_read_errors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalRpt>) ostream)
  "Serializes a message object of type '<GlobalRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fault_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'config_fault_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_can_timeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_can_timeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steering_can_timeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_can_timeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'subsystem_can_timeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_can_read_errors) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalRpt>) istream)
  "Deserializes a message object of type '<GlobalRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'override_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fault_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'config_fault_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_can_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_can_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'steering_can_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_can_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'subsystem_can_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_can_read_errors) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalRpt>)))
  "Returns string type for a message object of type '<GlobalRpt>"
  "pacmod_msgs/GlobalRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalRpt)))
  "Returns string type for a message object of type 'GlobalRpt"
  "pacmod_msgs/GlobalRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalRpt>)))
  "Returns md5sum for a message object of type '<GlobalRpt>"
  "e844957facaf4f6bfdea20a3ffdb048f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalRpt)))
  "Returns md5sum for a message object of type 'GlobalRpt"
  "e844957facaf4f6bfdea20a3ffdb048f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalRpt>)))
  "Returns full string definition for message of type '<GlobalRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled                # Indicates whether any system on the PACMod is enabled or disabled.~%bool override_active        # Indicates whether an override has been triggered on any system.~%bool fault_active           # Indicates whether a fault is active on any system.~%bool config_fault_active    # Indicates whether the CONFIG.TXT file was read correctly~%bool user_can_timeout       # Indicates a timeout has been exceeded on the user CAN interface.~%bool brake_can_timeout      # Indicates a timeout has been exceeded on the brake CAN interface.~%bool steering_can_timeout   # Indicates a timeout has been exceeded on the steering CAN interface.~%bool vehicle_can_timeout    # Indicates a timeout has been exceeded on a vehicle CAN interface.~%bool subsystem_can_timeout  # Indicates a timeout has been exceeded when communicating with a PACMod subsystem.~%bool user_can_read_errors   # The number of read errors encoutered by the PACMod on the user CAN interface.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalRpt)))
  "Returns full string definition for message of type 'GlobalRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%bool enabled                # Indicates whether any system on the PACMod is enabled or disabled.~%bool override_active        # Indicates whether an override has been triggered on any system.~%bool fault_active           # Indicates whether a fault is active on any system.~%bool config_fault_active    # Indicates whether the CONFIG.TXT file was read correctly~%bool user_can_timeout       # Indicates a timeout has been exceeded on the user CAN interface.~%bool brake_can_timeout      # Indicates a timeout has been exceeded on the brake CAN interface.~%bool steering_can_timeout   # Indicates a timeout has been exceeded on the steering CAN interface.~%bool vehicle_can_timeout    # Indicates a timeout has been exceeded on a vehicle CAN interface.~%bool subsystem_can_timeout  # Indicates a timeout has been exceeded when communicating with a PACMod subsystem.~%bool user_can_read_errors   # The number of read errors encoutered by the PACMod on the user CAN interface.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalRpt>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalRpt
    (cl:cons ':header (header msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':override_active (override_active msg))
    (cl:cons ':fault_active (fault_active msg))
    (cl:cons ':config_fault_active (config_fault_active msg))
    (cl:cons ':user_can_timeout (user_can_timeout msg))
    (cl:cons ':brake_can_timeout (brake_can_timeout msg))
    (cl:cons ':steering_can_timeout (steering_can_timeout msg))
    (cl:cons ':vehicle_can_timeout (vehicle_can_timeout msg))
    (cl:cons ':subsystem_can_timeout (subsystem_can_timeout msg))
    (cl:cons ':user_can_read_errors (user_can_read_errors msg))
))
