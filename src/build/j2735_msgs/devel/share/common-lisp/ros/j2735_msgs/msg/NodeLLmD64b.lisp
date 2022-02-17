; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude NodeLLmD64b.msg.html

(cl:defclass <NodeLLmD64b> (roslisp-msg-protocol:ros-message)
  ((longitude
    :reader longitude
    :initarg :longitude
    :type cl:integer
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:integer
    :initform 0))
)

(cl:defclass NodeLLmD64b (<NodeLLmD64b>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeLLmD64b>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeLLmD64b)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<NodeLLmD64b> is deprecated: use j2735_msgs-msg:NodeLLmD64b instead.")))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <NodeLLmD64b>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:longitude-val is deprecated.  Use j2735_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <NodeLLmD64b>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:latitude-val is deprecated.  Use j2735_msgs-msg:latitude instead.")
  (latitude m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NodeLLmD64b>)))
    "Constants for message type '<NodeLLmD64b>"
  '((:LONGITUDE_UNAVAILABLE . 1800000001)
    (:LONGITUDE_MAX . 1800000000)
    (:LONGITUDE_MIN . -1799999999)
    (:LATITUDE_UNAVAILABLE . 900000001)
    (:LATITUDE_MAX . 900000000)
    (:LATITUDE_MIN . -900000000))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NodeLLmD64b)))
    "Constants for message type 'NodeLLmD64b"
  '((:LONGITUDE_UNAVAILABLE . 1800000001)
    (:LONGITUDE_MAX . 1800000000)
    (:LONGITUDE_MIN . -1799999999)
    (:LATITUDE_UNAVAILABLE . 900000001)
    (:LATITUDE_MAX . 900000000)
    (:LATITUDE_MIN . -900000000))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeLLmD64b>) ostream)
  "Serializes a message object of type '<NodeLLmD64b>"
  (cl:let* ((signed (cl:slot-value msg 'longitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'latitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeLLmD64b>) istream)
  "Deserializes a message object of type '<NodeLLmD64b>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeLLmD64b>)))
  "Returns string type for a message object of type '<NodeLLmD64b>"
  "j2735_msgs/NodeLLmD64b")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeLLmD64b)))
  "Returns string type for a message object of type 'NodeLLmD64b"
  "j2735_msgs/NodeLLmD64b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeLLmD64b>)))
  "Returns md5sum for a message object of type '<NodeLLmD64b>"
  "efa0e1c69ee465f94ef0c4372e50ef36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeLLmD64b)))
  "Returns md5sum for a message object of type 'NodeLLmD64b"
  "efa0e1c69ee465f94ef0c4372e50ef36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeLLmD64b>)))
  "Returns full string definition for message of type '<NodeLLmD64b>"
  (cl:format cl:nil "#~%# NodeLLmD64b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.~%~%# Node-LLmD-64b ::= SEQUENCE {~%# lon Longitude,~%# lat Latitude~%# }~%~%#Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 longitude~%~%int32 LONGITUDE_UNAVAILABLE = 1800000001~%int32 LONGITUDE_MAX = 1800000000~%int32 LONGITUDE_MIN = -1799999999~%~%#Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 latitude~%~%int32 LATITUDE_UNAVAILABLE = 900000001~%int32 LATITUDE_MAX = 900000000~%int32 LATITUDE_MIN = -900000000~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeLLmD64b)))
  "Returns full string definition for message of type 'NodeLLmD64b"
  (cl:format cl:nil "#~%# NodeLLmD64b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.~%~%# Node-LLmD-64b ::= SEQUENCE {~%# lon Longitude,~%# lat Latitude~%# }~%~%#Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 longitude~%~%int32 LONGITUDE_UNAVAILABLE = 1800000001~%int32 LONGITUDE_MAX = 1800000000~%int32 LONGITUDE_MIN = -1799999999~%~%#Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 latitude~%~%int32 LATITUDE_UNAVAILABLE = 900000001~%int32 LATITUDE_MAX = 900000000~%int32 LATITUDE_MIN = -900000000~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeLLmD64b>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeLLmD64b>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeLLmD64b
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
))
