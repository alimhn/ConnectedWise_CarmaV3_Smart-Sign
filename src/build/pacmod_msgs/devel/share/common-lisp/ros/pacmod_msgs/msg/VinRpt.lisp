; Auto-generated. Do not edit!


(cl:in-package pacmod_msgs-msg)


;//! \htmlinclude VinRpt.msg.html

(cl:defclass <VinRpt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mfg_code
    :reader mfg_code
    :initarg :mfg_code
    :type cl:string
    :initform "")
   (mfg
    :reader mfg
    :initarg :mfg
    :type cl:string
    :initform "")
   (model_year_code
    :reader model_year_code
    :initarg :model_year_code
    :type cl:string
    :initform "")
   (model_year
    :reader model_year
    :initarg :model_year
    :type cl:integer
    :initform 0)
   (serial
    :reader serial
    :initarg :serial
    :type cl:integer
    :initform 0))
)

(cl:defclass VinRpt (<VinRpt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VinRpt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VinRpt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pacmod_msgs-msg:<VinRpt> is deprecated: use pacmod_msgs-msg:VinRpt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VinRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:header-val is deprecated.  Use pacmod_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mfg_code-val :lambda-list '(m))
(cl:defmethod mfg_code-val ((m <VinRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:mfg_code-val is deprecated.  Use pacmod_msgs-msg:mfg_code instead.")
  (mfg_code m))

(cl:ensure-generic-function 'mfg-val :lambda-list '(m))
(cl:defmethod mfg-val ((m <VinRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:mfg-val is deprecated.  Use pacmod_msgs-msg:mfg instead.")
  (mfg m))

(cl:ensure-generic-function 'model_year_code-val :lambda-list '(m))
(cl:defmethod model_year_code-val ((m <VinRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:model_year_code-val is deprecated.  Use pacmod_msgs-msg:model_year_code instead.")
  (model_year_code m))

(cl:ensure-generic-function 'model_year-val :lambda-list '(m))
(cl:defmethod model_year-val ((m <VinRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:model_year-val is deprecated.  Use pacmod_msgs-msg:model_year instead.")
  (model_year m))

(cl:ensure-generic-function 'serial-val :lambda-list '(m))
(cl:defmethod serial-val ((m <VinRpt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pacmod_msgs-msg:serial-val is deprecated.  Use pacmod_msgs-msg:serial instead.")
  (serial m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VinRpt>) ostream)
  "Serializes a message object of type '<VinRpt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mfg_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mfg_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mfg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mfg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_year_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_year_code))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'model_year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'model_year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'model_year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'model_year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VinRpt>) istream)
  "Deserializes a message object of type '<VinRpt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mfg_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mfg_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mfg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mfg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_year_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_year_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'model_year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'model_year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'model_year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'model_year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VinRpt>)))
  "Returns string type for a message object of type '<VinRpt>"
  "pacmod_msgs/VinRpt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VinRpt)))
  "Returns string type for a message object of type 'VinRpt"
  "pacmod_msgs/VinRpt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VinRpt>)))
  "Returns md5sum for a message object of type '<VinRpt>"
  "9adca84caaa097b32fc7b71a0ca8da36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VinRpt)))
  "Returns md5sum for a message object of type 'VinRpt"
  "9adca84caaa097b32fc7b71a0ca8da36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VinRpt>)))
  "Returns full string definition for message of type '<VinRpt>"
  (cl:format cl:nil "std_msgs/Header header~%~%string mfg_code~%string mfg~%string model_year_code~%uint32 model_year~%uint32 serial~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VinRpt)))
  "Returns full string definition for message of type 'VinRpt"
  (cl:format cl:nil "std_msgs/Header header~%~%string mfg_code~%string mfg~%string model_year_code~%uint32 model_year~%uint32 serial~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VinRpt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'mfg_code))
     4 (cl:length (cl:slot-value msg 'mfg))
     4 (cl:length (cl:slot-value msg 'model_year_code))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VinRpt>))
  "Converts a ROS message object to a list"
  (cl:list 'VinRpt
    (cl:cons ':header (header msg))
    (cl:cons ':mfg_code (mfg_code msg))
    (cl:cons ':mfg (mfg msg))
    (cl:cons ':model_year_code (model_year_code msg))
    (cl:cons ':model_year (model_year msg))
    (cl:cons ':serial (serial msg))
))
