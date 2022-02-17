; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude Position3D.msg.html

(cl:defclass <Position3D> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0)
   (elevation_exists
    :reader elevation_exists
    :initarg :elevation_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Position3D (<Position3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<Position3D> is deprecated: use j2735_msgs-msg:Position3D instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Position3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:latitude-val is deprecated.  Use j2735_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Position3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:longitude-val is deprecated.  Use j2735_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <Position3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:elevation-val is deprecated.  Use j2735_msgs-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'elevation_exists-val :lambda-list '(m))
(cl:defmethod elevation_exists-val ((m <Position3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:elevation_exists-val is deprecated.  Use j2735_msgs-msg:elevation_exists instead.")
  (elevation_exists m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Position3D>)))
    "Constants for message type '<Position3D>"
  '((:LATITUDE_UNAVAILABLE . 90.0000001)
    (:LATITUDE_MAX . 90.0)
    (:LATITUDE_MIN . -90.0)
    (:LONGITUDE_UNAVAILABLE . 180.0000001)
    (:LONGITUDE_MAX . 180.0)
    (:LONGITUDE_MIN . -179.9999999)
    (:ELEVATION_UNAVAILABLE . -409.6)
    (:ELEVATION_MAX . 6143.9)
    (:ELEVATION_MIN . -409.5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Position3D)))
    "Constants for message type 'Position3D"
  '((:LATITUDE_UNAVAILABLE . 90.0000001)
    (:LATITUDE_MAX . 90.0)
    (:LATITUDE_MIN . -90.0)
    (:LONGITUDE_UNAVAILABLE . 180.0000001)
    (:LONGITUDE_MAX . 180.0)
    (:LONGITUDE_MIN . -179.9999999)
    (:ELEVATION_UNAVAILABLE . -409.6)
    (:ELEVATION_MAX . 6143.9)
    (:ELEVATION_MIN . -409.5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position3D>) ostream)
  "Serializes a message object of type '<Position3D>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'elevation_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position3D>) istream)
  "Deserializes a message object of type '<Position3D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'elevation_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position3D>)))
  "Returns string type for a message object of type '<Position3D>"
  "j2735_msgs/Position3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position3D)))
  "Returns string type for a message object of type 'Position3D"
  "j2735_msgs/Position3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position3D>)))
  "Returns md5sum for a message object of type '<Position3D>"
  "0e694623847c02ec14299578943eeb2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position3D)))
  "Returns md5sum for a message object of type 'Position3D"
  "0e694623847c02ec14299578943eeb2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position3D>)))
  "Returns full string definition for message of type '<Position3D>"
  (cl:format cl:nil "#~%# Position3D.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Provides a precise location in the WGS-84 coordinate system, from which short offsets may be used~%# to create additional data using a flat earth projection centered on this location.~%~%# Position3D ::= SEQUENCE {~%~%# lat Latitude, -- in 1/10th micro degrees~%# Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%float64 latitude~%~%float64 LATITUDE_UNAVAILABLE = 90.0000001~%float64 LATITUDE_MAX = 90.0~%float64 LATITUDE_MIN = -90.0~%~%# long Longitude, -- in 1/10th micro degrees~%# Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%float64 longitude~%~%float64 LONGITUDE_UNAVAILABLE = 180.0000001~%float64 LONGITUDE_MAX = 180.0~%float64 LONGITUDE_MIN = -179.9999999~%~%# elevation Elevation OPTIONAL, -- in 10 cm units~%# Elevation ::= INTEGER (-4096..61439)~%#  -- In units of 10 cm steps above or below the reference ellipsoid~%#  -- Providing a range of -409.5 to + 6143.9 meters~%#  -- The value -4096 shall be used when Unknown is to be sent~%#  -- Convert to meter with factor 0.1 when field is used~%float32 elevation~%bool elevation_exists~%~%float32 ELEVATION_UNAVAILABLE = -409.6~%float32 ELEVATION_MAX = 6143.9~%float32 ELEVATION_MIN = -409.5~%~%#TODO: RegionalExtensions are not yet implemented in asn1c~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-Position3D}} OPTIONAL,~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position3D)))
  "Returns full string definition for message of type 'Position3D"
  (cl:format cl:nil "#~%# Position3D.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# Provides a precise location in the WGS-84 coordinate system, from which short offsets may be used~%# to create additional data using a flat earth projection centered on this location.~%~%# Position3D ::= SEQUENCE {~%~%# lat Latitude, -- in 1/10th micro degrees~%# Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%float64 latitude~%~%float64 LATITUDE_UNAVAILABLE = 90.0000001~%float64 LATITUDE_MAX = 90.0~%float64 LATITUDE_MIN = -90.0~%~%# long Longitude, -- in 1/10th micro degrees~%# Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%float64 longitude~%~%float64 LONGITUDE_UNAVAILABLE = 180.0000001~%float64 LONGITUDE_MAX = 180.0~%float64 LONGITUDE_MIN = -179.9999999~%~%# elevation Elevation OPTIONAL, -- in 10 cm units~%# Elevation ::= INTEGER (-4096..61439)~%#  -- In units of 10 cm steps above or below the reference ellipsoid~%#  -- Providing a range of -409.5 to + 6143.9 meters~%#  -- The value -4096 shall be used when Unknown is to be sent~%#  -- Convert to meter with factor 0.1 when field is used~%float32 elevation~%bool elevation_exists~%~%float32 ELEVATION_UNAVAILABLE = -409.6~%float32 ELEVATION_MAX = 6143.9~%float32 ELEVATION_MIN = -409.5~%~%#TODO: RegionalExtensions are not yet implemented in asn1c~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-Position3D}} OPTIONAL,~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position3D>))
  (cl:+ 0
     8
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Position3D
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':elevation_exists (elevation_exists msg))
))
