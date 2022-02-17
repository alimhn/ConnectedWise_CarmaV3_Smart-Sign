; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude DataParameters.msg.html

(cl:defclass <DataParameters> (roslisp-msg-protocol:ros-message)
  ((process_method
    :reader process_method
    :initarg :process_method
    :type cl:string
    :initform "")
   (process_agency
    :reader process_agency
    :initarg :process_agency
    :type cl:string
    :initform "")
   (last_checked_date
    :reader last_checked_date
    :initarg :last_checked_date
    :type cl:string
    :initform "")
   (geoid_used
    :reader geoid_used
    :initarg :geoid_used
    :type cl:string
    :initform ""))
)

(cl:defclass DataParameters (<DataParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<DataParameters> is deprecated: use j2735_msgs-msg:DataParameters instead.")))

(cl:ensure-generic-function 'process_method-val :lambda-list '(m))
(cl:defmethod process_method-val ((m <DataParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:process_method-val is deprecated.  Use j2735_msgs-msg:process_method instead.")
  (process_method m))

(cl:ensure-generic-function 'process_agency-val :lambda-list '(m))
(cl:defmethod process_agency-val ((m <DataParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:process_agency-val is deprecated.  Use j2735_msgs-msg:process_agency instead.")
  (process_agency m))

(cl:ensure-generic-function 'last_checked_date-val :lambda-list '(m))
(cl:defmethod last_checked_date-val ((m <DataParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:last_checked_date-val is deprecated.  Use j2735_msgs-msg:last_checked_date instead.")
  (last_checked_date m))

(cl:ensure-generic-function 'geoid_used-val :lambda-list '(m))
(cl:defmethod geoid_used-val ((m <DataParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:geoid_used-val is deprecated.  Use j2735_msgs-msg:geoid_used instead.")
  (geoid_used m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataParameters>) ostream)
  "Serializes a message object of type '<DataParameters>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'process_method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'process_method))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'process_agency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'process_agency))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_checked_date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_checked_date))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'geoid_used))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'geoid_used))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataParameters>) istream)
  "Deserializes a message object of type '<DataParameters>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process_method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'process_method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process_agency) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'process_agency) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_checked_date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_checked_date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'geoid_used) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'geoid_used) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataParameters>)))
  "Returns string type for a message object of type '<DataParameters>"
  "j2735_msgs/DataParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataParameters)))
  "Returns string type for a message object of type 'DataParameters"
  "j2735_msgs/DataParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataParameters>)))
  "Returns md5sum for a message object of type '<DataParameters>"
  "f63a06440ac4fde99ebe6427b9e011e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataParameters)))
  "Returns md5sum for a message object of type 'DataParameters"
  "f63a06440ac4fde99ebe6427b9e011e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataParameters>)))
  "Returns full string definition for message of type '<DataParameters>"
  (cl:format cl:nil "#~%# MapData.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DataParameters data frame is used to provide basic (static) information~%# on how a map fragment was processed or determined.~%#~%# DataParameters ::= SEQUENCE {~%# processMethod IA5String(SIZE(1..255))~%# processAgency IA5String(SIZE(1..255))~%# lastCheckedDate IA5String(SIZE(1..255))~%# geoidUsed IA5String(SIZE(1..255))~%# ...~%# }~%#~%~%string process_method~%string process_agency~%string last_checked_date~%string geoid_used~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataParameters)))
  "Returns full string definition for message of type 'DataParameters"
  (cl:format cl:nil "#~%# MapData.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DataParameters data frame is used to provide basic (static) information~%# on how a map fragment was processed or determined.~%#~%# DataParameters ::= SEQUENCE {~%# processMethod IA5String(SIZE(1..255))~%# processAgency IA5String(SIZE(1..255))~%# lastCheckedDate IA5String(SIZE(1..255))~%# geoidUsed IA5String(SIZE(1..255))~%# ...~%# }~%#~%~%string process_method~%string process_agency~%string last_checked_date~%string geoid_used~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataParameters>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'process_method))
     4 (cl:length (cl:slot-value msg 'process_agency))
     4 (cl:length (cl:slot-value msg 'last_checked_date))
     4 (cl:length (cl:slot-value msg 'geoid_used))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'DataParameters
    (cl:cons ':process_method (process_method msg))
    (cl:cons ':process_agency (process_agency msg))
    (cl:cons ':last_checked_date (last_checked_date msg))
    (cl:cons ':geoid_used (geoid_used msg))
))
