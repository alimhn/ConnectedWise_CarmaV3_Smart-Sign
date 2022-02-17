; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude ComponentRpt.msg.html

(cl:defclass <ComponentRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (component_type
    :reader component_type
    :initarg :component_type
    :type cl:fixnum
    :initform 0)
   (component_func
    :reader component_func
    :initarg :component_func
    :type cl:fixnum
    :initform 0)
   (counter
    :reader counter
    :initarg :counter
    :type cl:fixnum
    :initform 0)
   (complement
    :reader complement
    :initarg :complement
    :type cl:fixnum
    :initform 0)
   (config_fault
    :reader config_fault
    :initarg :config_fault
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ComponentRpt (<ComponentRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComponentRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComponentRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<ComponentRpt> is deprecated: use pacmod_msgs-msg:ComponentRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ComponentRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'component_type-val :lambda-list '(m))
(cl:defmethod component_type-val ((m <ComponentRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:component_type-val is deprecated.  Use pacmod_msgs-msg:component_type instead.")
  (component_type m))

(cl:ensure-generic-function 'component_func-val :lambda-list '(m))
(cl:defmethod component_func-val ((m <ComponentRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:component_func-val is deprecated.  Use pacmod_msgs-msg:component_func instead.")
  (component_func m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <ComponentRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:counter-val is deprecated.  Use pacmod_msgs-msg:counter instead.")
  (counter m))

(cl:ensure-generic-function 'complement-val :lambda-list '(m))
(cl:defmethod complement-val ((m <ComponentRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:complement-val is deprecated.  Use pacmod_msgs-msg:complement instead.")
  (complement m))

(cl:ensure-generic-function 'config_fault-val :lambda-list '(m))
(cl:defmethod config_fault-val ((m <ComponentRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:config_fault-val is deprecated.  Use pacmod_msgs-msg:config_fault instead.")
  (config_fault m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ComponentRpt>)))
    "Constants for message type '<ComponentRpt>"
  '((:COMPONENT_TYPE_PACMOD . 0)
    (:COMPONENT_TYPE_PACMINI . 1)
    (:COMPONENT_TYPE_PACMICRO . 2)
    (:COMPONENT_FUNC_PACMOD . 0)
    (:COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN . 1)
    (:COMPONENT_FUNC_ACCELERATOR_AND_BRAKING . 2)
    (:COMPONENT_FUNC_BRAKING . 3)
    (:COMPONENT_FUNC_SHIFTING . 4)
    (:COMPONENT_FUNC_STEERING . 5)
    (:COMPONENT_FUNC_E_SHIFTER . 6)
    (:COMPONENT_FUNC_WATCHDOG . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ComponentRpt)))
    "Constants for message type 'ComponentRpt"
  '((:COMPONENT_TYPE_PACMOD . 0)
    (:COMPONENT_TYPE_PACMINI . 1)
    (:COMPONENT_TYPE_PACMICRO . 2)
    (:COMPONENT_FUNC_PACMOD . 0)
    (:COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN . 1)
    (:COMPONENT_FUNC_ACCELERATOR_AND_BRAKING . 2)
    (:COMPONENT_FUNC_BRAKING . 3)
    (:COMPONENT_FUNC_SHIFTING . 4)
    (:COMPONENT_FUNC_STEERING . 5)
    (:COMPONENT_FUNC_E_SHIFTER . 6)
    (:COMPONENT_FUNC_WATCHDOG . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComponentRpt>) ostream)
  "Serializes a message object of type '<ComponentRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component_func)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'complement)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'config_fault) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComponentRpt>) istream)
  "Deserializes a message object of type '<ComponentRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component_func)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'complement)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'config_fault) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComponentRpt>)))
  "Returns string type for a message object of type '<ComponentRpt>"
  "pacmod_msgs/ComponentRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComponentRpt)))
  "Returns string type for a message object of type 'ComponentRpt"
  "pacmod_msgs/ComponentRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComponentRpt>)))
  "Returns md5sum for a message object of type '<ComponentRpt>"
  "1d5b5cb01195437dc5e2f534206c1017")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComponentRpt)))
  "Returns md5sum for a message object of type 'ComponentRpt"
  "1d5b5cb01195437dc5e2f534206c1017")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComponentRpt>)))
  "Returns full string definition for message of type '<ComponentRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 component_type~%uint8 component_func~%uint8 counter~%uint8 complement~%~%bool config_fault~%~%uint8 COMPONENT_TYPE_PACMOD = 0~%uint8 COMPONENT_TYPE_PACMINI = 1~%uint8 COMPONENT_TYPE_PACMICRO = 2~%~%uint8 COMPONENT_FUNC_PACMOD = 0~%uint8 COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN = 1~%uint8 COMPONENT_FUNC_ACCELERATOR_AND_BRAKING = 2~%uint8 COMPONENT_FUNC_BRAKING = 3~%uint8 COMPONENT_FUNC_SHIFTING = 4~%uint8 COMPONENT_FUNC_STEERING = 5~%uint8 COMPONENT_FUNC_E_SHIFTER = 6~%uint8 COMPONENT_FUNC_WATCHDOG = 7~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComponentRpt)))
  "Returns full string definition for message of type 'ComponentRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 component_type~%uint8 component_func~%uint8 counter~%uint8 complement~%~%bool config_fault~%~%uint8 COMPONENT_TYPE_PACMOD = 0~%uint8 COMPONENT_TYPE_PACMINI = 1~%uint8 COMPONENT_TYPE_PACMICRO = 2~%~%uint8 COMPONENT_FUNC_PACMOD = 0~%uint8 COMPONENT_FUNC_STEERING_AND_STEERING_COLUMN = 1~%uint8 COMPONENT_FUNC_ACCELERATOR_AND_BRAKING = 2~%uint8 COMPONENT_FUNC_BRAKING = 3~%uint8 COMPONENT_FUNC_SHIFTING = 4~%uint8 COMPONENT_FUNC_STEERING = 5~%uint8 COMPONENT_FUNC_E_SHIFTER = 6~%uint8 COMPONENT_FUNC_WATCHDOG = 7~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComponentRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComponentRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'ComponentRpt
    (cl:cons ':header (header msg))
    (cl:cons ':component_type (component_type msg))
    (cl:cons ':component_func (component_func msg))
    (cl:cons ':counter (counter msg))
    (cl:cons ':complement (complement msg))
    (cl:cons ':config_fault (config_fault msg))
))
