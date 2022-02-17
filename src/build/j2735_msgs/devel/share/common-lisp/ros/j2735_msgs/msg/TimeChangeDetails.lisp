; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TimeChangeDetails.msg.html

(cl:defclass <TimeChangeDetails> (roslisp-msg-protocol:ros-message)
  ((start_time
    :reader start_time
    :initarg :start_time
    :type cl:fixnum
    :initform 0)
   (start_time_exists
    :reader start_time_exists
    :initarg :start_time_exists
    :type cl:boolean
    :initform cl:nil)
   (min_end_time
    :reader min_end_time
    :initarg :min_end_time
    :type cl:fixnum
    :initform 0)
   (max_end_time
    :reader max_end_time
    :initarg :max_end_time
    :type cl:fixnum
    :initform 0)
   (max_end_time_exists
    :reader max_end_time_exists
    :initarg :max_end_time_exists
    :type cl:boolean
    :initform cl:nil)
   (likely_time
    :reader likely_time
    :initarg :likely_time
    :type cl:fixnum
    :initform 0)
   (likely_time_exists
    :reader likely_time_exists
    :initarg :likely_time_exists
    :type cl:boolean
    :initform cl:nil)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:fixnum
    :initform 0)
   (confidence_exists
    :reader confidence_exists
    :initarg :confidence_exists
    :type cl:boolean
    :initform cl:nil)
   (next_time
    :reader next_time
    :initarg :next_time
    :type cl:fixnum
    :initform 0)
   (next_time_exists
    :reader next_time_exists
    :initarg :next_time_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TimeChangeDetails (<TimeChangeDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeChangeDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeChangeDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TimeChangeDetails> is deprecated: use j2735_msgs-msg:TimeChangeDetails instead.")))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:start_time-val is deprecated.  Use j2735_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'start_time_exists-val :lambda-list '(m))
(cl:defmethod start_time_exists-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:start_time_exists-val is deprecated.  Use j2735_msgs-msg:start_time_exists instead.")
  (start_time_exists m))

(cl:ensure-generic-function 'min_end_time-val :lambda-list '(m))
(cl:defmethod min_end_time-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:min_end_time-val is deprecated.  Use j2735_msgs-msg:min_end_time instead.")
  (min_end_time m))

(cl:ensure-generic-function 'max_end_time-val :lambda-list '(m))
(cl:defmethod max_end_time-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:max_end_time-val is deprecated.  Use j2735_msgs-msg:max_end_time instead.")
  (max_end_time m))

(cl:ensure-generic-function 'max_end_time_exists-val :lambda-list '(m))
(cl:defmethod max_end_time_exists-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:max_end_time_exists-val is deprecated.  Use j2735_msgs-msg:max_end_time_exists instead.")
  (max_end_time_exists m))

(cl:ensure-generic-function 'likely_time-val :lambda-list '(m))
(cl:defmethod likely_time-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:likely_time-val is deprecated.  Use j2735_msgs-msg:likely_time instead.")
  (likely_time m))

(cl:ensure-generic-function 'likely_time_exists-val :lambda-list '(m))
(cl:defmethod likely_time_exists-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:likely_time_exists-val is deprecated.  Use j2735_msgs-msg:likely_time_exists instead.")
  (likely_time_exists m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:confidence-val is deprecated.  Use j2735_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'confidence_exists-val :lambda-list '(m))
(cl:defmethod confidence_exists-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:confidence_exists-val is deprecated.  Use j2735_msgs-msg:confidence_exists instead.")
  (confidence_exists m))

(cl:ensure-generic-function 'next_time-val :lambda-list '(m))
(cl:defmethod next_time-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:next_time-val is deprecated.  Use j2735_msgs-msg:next_time instead.")
  (next_time m))

(cl:ensure-generic-function 'next_time_exists-val :lambda-list '(m))
(cl:defmethod next_time_exists-val ((m <TimeChangeDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:next_time_exists-val is deprecated.  Use j2735_msgs-msg:next_time_exists instead.")
  (next_time_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeChangeDetails>) ostream)
  "Serializes a message object of type '<TimeChangeDetails>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_time_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'max_end_time_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'likely_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'likely_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'likely_time_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confidence_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'next_time_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeChangeDetails>) istream)
  "Deserializes a message object of type '<TimeChangeDetails>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_time_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_end_time)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_end_time_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'likely_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'likely_time)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'likely_time_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_time)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'next_time_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeChangeDetails>)))
  "Returns string type for a message object of type '<TimeChangeDetails>"
  "j2735_msgs/TimeChangeDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeChangeDetails)))
  "Returns string type for a message object of type 'TimeChangeDetails"
  "j2735_msgs/TimeChangeDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeChangeDetails>)))
  "Returns md5sum for a message object of type '<TimeChangeDetails>"
  "48110a8000070c77171eb1bdfafa99fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeChangeDetails)))
  "Returns md5sum for a message object of type 'TimeChangeDetails"
  "48110a8000070c77171eb1bdfafa99fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeChangeDetails>)))
  "Returns full string definition for message of type '<TimeChangeDetails>"
  (cl:format cl:nil "#~%# TimeChangeDetails.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core~%# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is~%# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive~%# timing is employed.~%#~%#~%# TimeChangeDetails ::= SEQUENCE {~%# startTime TimeMark OPTIONAL,~%# -- When this phase 1st started~%# minEndTime TimeMark,~%# -- Expected shortest end time~%# maxEndTime TimeMark OPTIONAL,~%# -- Expected longest end time~%# likelyTime TimeMark OPTIONAL,~%# -- Best predicted value based on other data~%# confidence TimeIntervalConfidence OPTIONAL,~%# -- Applies to above time element only~%# nextTime TimeMark OPTIONAL~%# -- A rough estimate of time when~%# -- this phase may next occur again~%# -- used to support various ECO driving power~%# -- management needs.~%# }~%~%# TimeMark ::= INTEGER (0..36001)~%# -- Tenths of a second in the current or next hour~%# -- In units of 1/10th second from UTC time~%# -- A range of 0~~36000 covers one hour~%# -- The values 35991..35999 are used when a leap second occurs~%# -- The value 36000 is used to indicate time >3600 seconds~%# -- 36001 is to be used when value undefined or unknown~%# -- Note that this is NOT expressed in GPS time~%# -- or in local time~%uint16 start_time~%bool start_time_exists~%~%uint16 min_end_time~%~%uint16 max_end_time~%bool max_end_time_exists~%~%uint16 likely_time~%bool likely_time_exists~%~%#TimeIntervalConfidence ::= INTEGER (0..15)~%uint8 confidence~%bool confidence_exists~%~%# TimeMark ::= INTEGER (0..36001)~%uint16 next_time~%bool next_time_exists~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeChangeDetails)))
  "Returns full string definition for message of type 'TimeChangeDetails"
  (cl:format cl:nil "#~%# TimeChangeDetails.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core~%# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is~%# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive~%# timing is employed.~%#~%#~%# TimeChangeDetails ::= SEQUENCE {~%# startTime TimeMark OPTIONAL,~%# -- When this phase 1st started~%# minEndTime TimeMark,~%# -- Expected shortest end time~%# maxEndTime TimeMark OPTIONAL,~%# -- Expected longest end time~%# likelyTime TimeMark OPTIONAL,~%# -- Best predicted value based on other data~%# confidence TimeIntervalConfidence OPTIONAL,~%# -- Applies to above time element only~%# nextTime TimeMark OPTIONAL~%# -- A rough estimate of time when~%# -- this phase may next occur again~%# -- used to support various ECO driving power~%# -- management needs.~%# }~%~%# TimeMark ::= INTEGER (0..36001)~%# -- Tenths of a second in the current or next hour~%# -- In units of 1/10th second from UTC time~%# -- A range of 0~~36000 covers one hour~%# -- The values 35991..35999 are used when a leap second occurs~%# -- The value 36000 is used to indicate time >3600 seconds~%# -- 36001 is to be used when value undefined or unknown~%# -- Note that this is NOT expressed in GPS time~%# -- or in local time~%uint16 start_time~%bool start_time_exists~%~%uint16 min_end_time~%~%uint16 max_end_time~%bool max_end_time_exists~%~%uint16 likely_time~%bool likely_time_exists~%~%#TimeIntervalConfidence ::= INTEGER (0..15)~%uint8 confidence~%bool confidence_exists~%~%# TimeMark ::= INTEGER (0..36001)~%uint16 next_time~%bool next_time_exists~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeChangeDetails>))
  (cl:+ 0
     2
     1
     2
     2
     1
     2
     1
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeChangeDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeChangeDetails
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':start_time_exists (start_time_exists msg))
    (cl:cons ':min_end_time (min_end_time msg))
    (cl:cons ':max_end_time (max_end_time msg))
    (cl:cons ':max_end_time_exists (max_end_time_exists msg))
    (cl:cons ':likely_time (likely_time msg))
    (cl:cons ':likely_time_exists (likely_time_exists msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':confidence_exists (confidence_exists msg))
    (cl:cons ':next_time (next_time msg))
    (cl:cons ':next_time_exists (next_time_exists msg))
))
