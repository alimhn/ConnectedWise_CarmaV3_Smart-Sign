; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlGeometry.msg.html

(cl:defclass <TrafficControlGeometry> (roslisp-msg-protocol:ros-message)
  ((proj
    :reader proj
    :initarg :proj
    :type cl:string
    :initform "")
   (datum
    :reader datum
    :initarg :datum
    :type cl:string
    :initform "")
   (reftime
    :reader reftime
    :initarg :reftime
    :type cl:integer
    :initform 0)
   (reflon
    :reader reflon
    :initarg :reflon
    :type cl:integer
    :initform 0)
   (reflat
    :reader reflat
    :initarg :reflat
    :type cl:integer
    :initform 0)
   (refelv
    :reader refelv
    :initarg :refelv
    :type cl:integer
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:fixnum
    :initform 0)
   (nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector j2735_msgs-msg:PathNode)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:PathNode :initial-element (cl:make-instance 'j2735_msgs-msg:PathNode))))
)

(cl:defclass TrafficControlGeometry (<TrafficControlGeometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlGeometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlGeometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlGeometry> is deprecated: use j2735_msgs-msg:TrafficControlGeometry instead.")))

(cl:ensure-generic-function 'proj-val :lambda-list '(m))
(cl:defmethod proj-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:proj-val is deprecated.  Use j2735_msgs-msg:proj instead.")
  (proj m))

(cl:ensure-generic-function 'datum-val :lambda-list '(m))
(cl:defmethod datum-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:datum-val is deprecated.  Use j2735_msgs-msg:datum instead.")
  (datum m))

(cl:ensure-generic-function 'reftime-val :lambda-list '(m))
(cl:defmethod reftime-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reftime-val is deprecated.  Use j2735_msgs-msg:reftime instead.")
  (reftime m))

(cl:ensure-generic-function 'reflon-val :lambda-list '(m))
(cl:defmethod reflon-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reflon-val is deprecated.  Use j2735_msgs-msg:reflon instead.")
  (reflon m))

(cl:ensure-generic-function 'reflat-val :lambda-list '(m))
(cl:defmethod reflat-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reflat-val is deprecated.  Use j2735_msgs-msg:reflat instead.")
  (reflat m))

(cl:ensure-generic-function 'refelv-val :lambda-list '(m))
(cl:defmethod refelv-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:refelv-val is deprecated.  Use j2735_msgs-msg:refelv instead.")
  (refelv m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:heading-val is deprecated.  Use j2735_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <TrafficControlGeometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:nodes-val is deprecated.  Use j2735_msgs-msg:nodes instead.")
  (nodes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficControlGeometry>)))
    "Constants for message type '<TrafficControlGeometry>"
  '((:REFLON_UNAVAILABLE . 1800000001)
    (:REFLON_MAX . 1800000000)
    (:REFLON_MIN . -1799999999)
    (:REFLAT_UNAVAILABLE . 900000001)
    (:REFLAT_MAX . 900000000)
    (:REFLAT_MIN . -900000000)
    (:REFELV_UNKNOWN . 0)
    (:REFELV_MAX . 65535)
    (:REFELV_MIN . 1)
    (:HEADING_MAX . 3599)
    (:HEADING_MIN . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficControlGeometry)))
    "Constants for message type 'TrafficControlGeometry"
  '((:REFLON_UNAVAILABLE . 1800000001)
    (:REFLON_MAX . 1800000000)
    (:REFLON_MIN . -1799999999)
    (:REFLAT_UNAVAILABLE . 900000001)
    (:REFLAT_MAX . 900000000)
    (:REFLAT_MIN . -900000000)
    (:REFELV_UNKNOWN . 0)
    (:REFELV_MAX . 65535)
    (:REFELV_MIN . 1)
    (:HEADING_MAX . 3599)
    (:HEADING_MIN . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlGeometry>) ostream)
  "Serializes a message object of type '<TrafficControlGeometry>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'proj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'proj))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'datum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'datum))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reftime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reftime)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reflon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reflat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'refelv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heading)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlGeometry>) istream)
  "Deserializes a message object of type '<TrafficControlGeometry>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'proj) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'proj) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'datum) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'datum) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reftime)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reflon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reflat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'refelv) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heading)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:PathNode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlGeometry>)))
  "Returns string type for a message object of type '<TrafficControlGeometry>"
  "j2735_msgs/TrafficControlGeometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlGeometry)))
  "Returns string type for a message object of type 'TrafficControlGeometry"
  "j2735_msgs/TrafficControlGeometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlGeometry>)))
  "Returns md5sum for a message object of type '<TrafficControlGeometry>"
  "8ffaf44999ab634ac9a3f1c4f537cc73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlGeometry)))
  "Returns md5sum for a message object of type 'TrafficControlGeometry"
  "8ffaf44999ab634ac9a3f1c4f537cc73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlGeometry>)))
  "Returns full string definition for message of type '<TrafficControlGeometry>"
  (cl:format cl:nil "#~%# TrafficControlGeometry.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlGeometry ::= SEQUENCE~%# {~%# 	proj IA5String (SIZE(0..63)),~%# 	datum IA5String (SIZE(0..63)),~%# 	reftime EpochMins,~%# 	reflon Longitude,~%# 	reflat Latitude,~%# 	refelv Elevation, -- decimeter offset -4096 from reference datum~%# 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees~%# 	nodes SEQUENCE (SIZE(1..255)) OF PathNode~%# }~%~%# proj IA5String (SIZE(0..63)),~%string proj~%~%# datum IA5String (SIZE(0..63)),~%string datum~%~%# reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC~%uint64 reftime~%~%# reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null~%int32 reflon~%~%int32 REFLON_UNAVAILABLE = 1800000001~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%~%# reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null~%int32 reflat~%~%int32 REFLAT_UNAVAILABLE = 900000001~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%~%# refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum~%int32 refelv~%~%int32 REFELV_UNKNOWN = 0~%int32 REFELV_MAX = 65535~%int32 REFELV_MIN = 1~%~%# heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees~%uint16 heading~%uint16 HEADING_MAX = 3599~%uint16 HEADING_MIN = 0~%~%# nodes SEQUENCE (SIZE(1..255)) OF PathNode~%j2735_msgs/PathNode[] nodes~%~%~%~%================================================================================~%MSG: j2735_msgs/PathNode~%#~%# PathNode.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# @author Misheel Bayartsengel~%# @version 0.1~%#~%# The positive x direction proceeds eastward, positive y proceeds~%# northward, and positive z proceeds away from the center of the Earth. ~%~%# X ::= INTEGER (-32768..32767)~%#   -- units are in cm~%int16 x~%int16 y~%int16 z~%~%bool z_exists~%~%# Width ::= INTEGER (-128..127)~%#   -- units are in cm~%int8 width~%bool width_exists~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlGeometry)))
  "Returns full string definition for message of type 'TrafficControlGeometry"
  (cl:format cl:nil "#~%# TrafficControlGeometry.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlGeometry ::= SEQUENCE~%# {~%# 	proj IA5String (SIZE(0..63)),~%# 	datum IA5String (SIZE(0..63)),~%# 	reftime EpochMins,~%# 	reflon Longitude,~%# 	reflat Latitude,~%# 	refelv Elevation, -- decimeter offset -4096 from reference datum~%# 	heading INTEGER (0..3599), -- initial path heading clockwise from north in tenths of degrees~%# 	nodes SEQUENCE (SIZE(1..255)) OF PathNode~%# }~%~%# proj IA5String (SIZE(0..63)),~%string proj~%~%# datum IA5String (SIZE(0..63)),~%string datum~%~%# reftime EpochMins INTEGER (0..153722867280912) -- minutes since epoch January 1, 1970 00:00 UTC~%uint64 reftime~%~%# reflon Longitude ::= INTEGER (-1799999999..1800000001)-- geographic longitude expressed in 1/10th microdegrees, 1800000001 represents null~%int32 reflon~%~%int32 REFLON_UNAVAILABLE = 1800000001~%int32 REFLON_MAX = 1800000000~%int32 REFLON_MIN = -1799999999~%~%# reflat Latitude ::= INTEGER (-900000000..900000001) -- geographic latitude expressed in 1/10th microdegrees, 900000001 represents null~%int32 reflat~%~%int32 REFLAT_UNAVAILABLE = 900000001~%int32 REFLAT_MAX = 900000000~%int32 REFLAT_MIN = -900000000~%~%# refelv Elevation ::= INTEGER (0..65535) -- offset by 4096, -4096 represents unknown, -409.5 to 6143.9 meters relative to referemce datum~%int32 refelv~%~%int32 REFELV_UNKNOWN = 0~%int32 REFELV_MAX = 65535~%int32 REFELV_MIN = 1~%~%# heading INTEGER (0..3599) -- initial path heading clockwise from north in tenths of degrees~%uint16 heading~%uint16 HEADING_MAX = 3599~%uint16 HEADING_MIN = 0~%~%# nodes SEQUENCE (SIZE(1..255)) OF PathNode~%j2735_msgs/PathNode[] nodes~%~%~%~%================================================================================~%MSG: j2735_msgs/PathNode~%#~%# PathNode.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# @author Misheel Bayartsengel~%# @version 0.1~%#~%# The positive x direction proceeds eastward, positive y proceeds~%# northward, and positive z proceeds away from the center of the Earth. ~%~%# X ::= INTEGER (-32768..32767)~%#   -- units are in cm~%int16 x~%int16 y~%int16 z~%~%bool z_exists~%~%# Width ::= INTEGER (-128..127)~%#   -- units are in cm~%int8 width~%bool width_exists~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlGeometry>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'proj))
     4 (cl:length (cl:slot-value msg 'datum))
     8
     4
     4
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlGeometry>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlGeometry
    (cl:cons ':proj (proj msg))
    (cl:cons ':datum (datum msg))
    (cl:cons ':reftime (reftime msg))
    (cl:cons ':reflon (reflon msg))
    (cl:cons ':reflat (reflat msg))
    (cl:cons ':refelv (refelv msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':nodes (nodes msg))
))
