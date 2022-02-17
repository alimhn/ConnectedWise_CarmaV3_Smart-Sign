; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude BSMCoreData.msg.html

(cl:defclass <BSMCoreData> (roslisp-msg-protocol:ros-message)
  ((msg_count
    :reader msg_count
    :initarg :msg_count
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (sec_mark
    :reader sec_mark
    :initarg :sec_mark
    :type cl:fixnum
    :initform 0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:integer
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:integer
    :initform 0)
   (elev
    :reader elev
    :initarg :elev
    :type cl:integer
    :initform 0)
   (accuracy
    :reader accuracy
    :initarg :accuracy
    :type j2735_msgs-msg:PositionalAccuracy
    :initform (cl:make-instance 'j2735_msgs-msg:PositionalAccuracy))
   (transmission
    :reader transmission
    :initarg :transmission
    :type j2735_msgs-msg:TransmissionState
    :initform (cl:make-instance 'j2735_msgs-msg:TransmissionState))
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:fixnum
    :initform 0)
   (accelSet
    :reader accelSet
    :initarg :accelSet
    :type j2735_msgs-msg:AccelerationSet4Way
    :initform (cl:make-instance 'j2735_msgs-msg:AccelerationSet4Way))
   (brakes
    :reader brakes
    :initarg :brakes
    :type j2735_msgs-msg:BrakeSystemStatus
    :initform (cl:make-instance 'j2735_msgs-msg:BrakeSystemStatus))
   (size
    :reader size
    :initarg :size
    :type j2735_msgs-msg:VehicleSize
    :initform (cl:make-instance 'j2735_msgs-msg:VehicleSize)))
)

(cl:defclass BSMCoreData (<BSMCoreData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BSMCoreData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BSMCoreData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<BSMCoreData> is deprecated: use j2735_msgs-msg:BSMCoreData instead.")))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:msg_count-val is deprecated.  Use j2735_msgs-msg:msg_count instead.")
  (msg_count m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'sec_mark-val :lambda-list '(m))
(cl:defmethod sec_mark-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:sec_mark-val is deprecated.  Use j2735_msgs-msg:sec_mark instead.")
  (sec_mark m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:longitude-val is deprecated.  Use j2735_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:latitude-val is deprecated.  Use j2735_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'elev-val :lambda-list '(m))
(cl:defmethod elev-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:elev-val is deprecated.  Use j2735_msgs-msg:elev instead.")
  (elev m))

(cl:ensure-generic-function 'accuracy-val :lambda-list '(m))
(cl:defmethod accuracy-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:accuracy-val is deprecated.  Use j2735_msgs-msg:accuracy instead.")
  (accuracy m))

(cl:ensure-generic-function 'transmission-val :lambda-list '(m))
(cl:defmethod transmission-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:transmission-val is deprecated.  Use j2735_msgs-msg:transmission instead.")
  (transmission m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:speed-val is deprecated.  Use j2735_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:heading-val is deprecated.  Use j2735_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:angle-val is deprecated.  Use j2735_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'accelSet-val :lambda-list '(m))
(cl:defmethod accelSet-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:accelSet-val is deprecated.  Use j2735_msgs-msg:accelSet instead.")
  (accelSet m))

(cl:ensure-generic-function 'brakes-val :lambda-list '(m))
(cl:defmethod brakes-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:brakes-val is deprecated.  Use j2735_msgs-msg:brakes instead.")
  (brakes m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <BSMCoreData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:size-val is deprecated.  Use j2735_msgs-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BSMCoreData>)))
    "Constants for message type '<BSMCoreData>"
  '((:MSG_COUNT_MAX . 127)
    (:ID_TIME_MAX . 3000)
    (:SEC_MARK_MOD . 60000)
    (:SEC_MARK_UNAVAILABLE . 65535)
    (:LONGITUDE_UNAVAILABLE . 1800000001)
    (:LONGITUDE_MAX . 1800000000)
    (:LONGITUDE_MIN . -1799999999)
    (:LATITUDE_UNAVAILABLE . 900000001)
    (:LATITUDE_MAX . 900000000)
    (:LATITUDE_MIN . -900000000)
    (:ELEVATION_UNAVAILABLE . -4096)
    (:ELEVATION_MAX . 61439)
    (:ELEVATION_MIN . -4095)
    (:SPEED_UNAVAILABLE . 8191)
    (:SPEED_MAX . 8190)
    (:SPEED_MIN . 0)
    (:HEADING_UNAVAILABLE . 28800)
    (:HEADING_MAX . 28798)
    (:HEADING_MIN . 0)
    (:STEER_WHEEL_ANGLE_UNAVAILABLE . 127)
    (:STEER_WHEEL_ANGLE_MAX . 126)
    (:STEER_WHEEL_ANGLE_MIN . -126))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BSMCoreData)))
    "Constants for message type 'BSMCoreData"
  '((:MSG_COUNT_MAX . 127)
    (:ID_TIME_MAX . 3000)
    (:SEC_MARK_MOD . 60000)
    (:SEC_MARK_UNAVAILABLE . 65535)
    (:LONGITUDE_UNAVAILABLE . 1800000001)
    (:LONGITUDE_MAX . 1800000000)
    (:LONGITUDE_MIN . -1799999999)
    (:LATITUDE_UNAVAILABLE . 900000001)
    (:LATITUDE_MAX . 900000000)
    (:LATITUDE_MIN . -900000000)
    (:ELEVATION_UNAVAILABLE . -4096)
    (:ELEVATION_MAX . 61439)
    (:ELEVATION_MIN . -4095)
    (:SPEED_UNAVAILABLE . 8191)
    (:SPEED_MAX . 8190)
    (:SPEED_MIN . 0)
    (:HEADING_UNAVAILABLE . 28800)
    (:HEADING_MAX . 28798)
    (:HEADING_MIN . 0)
    (:STEER_WHEEL_ANGLE_UNAVAILABLE . 127)
    (:STEER_WHEEL_ANGLE_MAX . 126)
    (:STEER_WHEEL_ANGLE_MIN . -126))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BSMCoreData>) ostream)
  "Serializes a message object of type '<BSMCoreData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec_mark)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sec_mark)) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'elev)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accuracy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transmission) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heading)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accelSet) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brakes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BSMCoreData>) istream)
  "Deserializes a message object of type '<BSMCoreData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec_mark)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sec_mark)) (cl:read-byte istream))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elev) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accuracy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transmission) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heading)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accelSet) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brakes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BSMCoreData>)))
  "Returns string type for a message object of type '<BSMCoreData>"
  "j2735_msgs/BSMCoreData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BSMCoreData)))
  "Returns string type for a message object of type 'BSMCoreData"
  "j2735_msgs/BSMCoreData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BSMCoreData>)))
  "Returns md5sum for a message object of type '<BSMCoreData>"
  "928bbaf7f9f36ba15c6dd3bc7224d8a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BSMCoreData)))
  "Returns md5sum for a message object of type 'BSMCoreData"
  "928bbaf7f9f36ba15c6dd3bc7224d8a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BSMCoreData>)))
  "Returns full string definition for message of type '<BSMCoreData>"
  (cl:format cl:nil "#~%# BSMCoreData.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Contains critical core elements deemed to be needed with every BSM issued.  ~%# ~%# NOTE: Initial version only considers Part I. Part II will be defined for later use. ~%~%#MsgCount ::= INTEGER (0..127)~%uint8 msg_count~%~%uint8 MSG_COUNT_MAX = 127~%~%#TemporaryID ::= OCTET STRING (SIZE(4))~%uint8[] id~%~%#TemporaryID will change every 3000 seconds.~%uint16 ID_TIME_MAX = 3000~%~%#DSecond ::= INTEGER (0..65535)~%#  -- Integer values from 0 to 59999 represent the milliseconds within a minute~%#  -- A leap second is represented by the value range 60000 to 60999~%#  -- The values from 61000 to 65534 are reserved~%#  -- The value of 65535 shall represent an unavailable value in the range of the minute~%#  -- Unit is milliseconds~%uint16 sec_mark~%~%uint16 SEC_MARK_MOD = 60000~%uint16 SEC_MARK_UNAVAILABLE = 65535~%~%#Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 longitude~%~%int32 LONGITUDE_UNAVAILABLE = 1800000001~%int32 LONGITUDE_MAX = 1800000000~%int32 LONGITUDE_MIN = -1799999999~%~%#Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 latitude~%~%int32 LATITUDE_UNAVAILABLE = 900000001~%int32 LATITUDE_MAX = 900000000~%int32 LATITUDE_MIN = -900000000~%~%#Elevation ::= INTEGER (-4096..61439)~%#  -- In units of 10 cm steps above or below the reference ellipsoid~%#  -- Providing a range of -409.5 to + 6143.9 meters~%#  -- The value -4096 shall be used when Unknown is to be sent~%#  -- Convert to meter with factor 0.1 when field is used~%int32 elev~%~%int32 ELEVATION_UNAVAILABLE = -4096~%int32 ELEVATION_MAX = 61439~%int32 ELEVATION_MIN = -4095~%~%# Used to model the accuracy of the positional determination with respect to each given axis.~%j2735_msgs/PositionalAccuracy accuracy~%~%# Provide the current state of the vehicle transmission~%j2735_msgs/TransmissionState transmission~%~%#Speed ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#  -- The value 8191 indicates that speed is unavailable~%#  -- Convert to m/s with factor 0.02 when field is used~%uint16 speed~%~%uint16 SPEED_UNAVAILABLE = 8191~%uint16 SPEED_MAX = 8190~%uint16 SPEED_MIN = 0~%~%#Heading ::= INTEGER (0..28800)~%#  -- LSB of 0.0125 degrees~%#  -- A range of 0 to 359.9875 degrees~%#  -- Convert to degree with factor 0.0125 when field is used~%uint16 heading~%uint16 HEADING_UNAVAILABLE = 28800~%uint16 HEADING_MAX = 28798~%uint16 HEADING_MIN = 0~%~%#SteeringWheelAngle ::= INTEGER (-126..127)~%#  -- LSB units of 1.5 degrees, a range of -189 to +189 degrees~%#  -- +001 = +1.5 deg~%#  -- -126 = -189 deg and beyond~%#  -- +126 = +189 deg and beyond~%#  -- +127 to be used for unavailable~%#  -- Convert to degree with factor 1.5 when this field is used~%int8 angle~%int8 STEER_WHEEL_ANGLE_UNAVAILABLE = 127~%int8 STEER_WHEEL_ANGLE_MAX = 126~%int8 STEER_WHEEL_ANGLE_MIN = -126~%~%# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure.~%j2735_msgs/AccelerationSet4Way accelSet~%~%# Conveys a variety of information about the current brake and system control activity of the vehicle.~%j2735_msgs/BrakeSystemStatus brakes~%~%# The vehicle length and width~%j2735_msgs/VehicleSize size~%~%================================================================================~%MSG: j2735_msgs/PositionalAccuracy~%#~%# PositionalAccuracy.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Used to model the accuracy of the positional determination with respect to each given axis.~%~%#PositionalAccuracy ::= SEQUENCE {~%#   -- NMEA-183 values expressed in strict ASN form~%#   semiMajor     SemiMajorAxisAccuracy,~%#   semiMinor     SemiMinorAxisAccuracy,~%#   orientation   SemiMajorAxisOrientation~%#   }~%~%#SemiMajorAxisAccuracy ::= INTEGER (0..255)~%#   -- semi-major/semi-minor axis accuracy at one standard dev~%#   -- range 0-12.7 meter, LSB = .05m~%#   -- 254 = any value equal or greater than 12.70 meter~%#   -- 255 = unavailable semi-major axis value~%#   -- Convert to meter with factor 0.05 when this field is used~%uint8 semiMajor~%uint8 semiMinor~%~%uint8 ACCURACY_UNAVAILABLE = 255~%uint8 ACCURACY_MAX = 254~%uint8 ACCURACY_MIN = 0~%~%#SemiMajorAxisOrientation ::= INTEGER (0..65535)~%#   -- orientation of semi-major axis~%#   -- relative to true north (0~~359.9945078786 degrees)~%#   -- LSB units of 360/65535 deg  = 0.0054932479~%#   -- a value of 0 shall be 0 degrees~%#   -- a value of 1 shall be 0.0054932479 degrees~%#   -- a value of 65534 shall be 359.9945078786 deg~%#   -- a value of 65535 shall be used for orientation unavailable~%#   -- Convert to degree with factor 0.0054932479 when this field is used~%uint16 orientation~%~%uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535~%uint16 ACCURACY_ORIENTATION_MAX = 65534~%uint16 ACCURACY_ORIENTATION_MIN = 0~%~%================================================================================~%MSG: j2735_msgs/TransmissionState~%#~%# TransmissionState.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Provide the current state of the vehicle transmission.~%~%#TransmissionState ::= ENUMERATED {~%#   neutral      (0), -- Neutral~%#   park         (1), -- Park ~%#   forwardGears (2), -- Forward gears~%#   reverseGears (3), -- Reverse gears ~%#   reserved1    (4),      ~%#   reserved2    (5),      ~%#   reserved3    (6),      ~%#   unavailable  (7)  -- not-equipped or unavailable value,~%#   -- Any related speed is relative to the vehicle reference frame used~%#   }~%~%uint8  transmission_state~%~%# enumeration values for status:~%uint8 NEUTRAL=0~%uint8 PARK=1~%uint8 FORWARDGEARS=2~%uint8 REVERSEGEARS=3~%uint8 RESERVED1=4~%uint8 RESERVED2=5~%uint8 RESERVED3=6~%uint8 UNAVAILABLE=7~%================================================================================~%MSG: j2735_msgs/AccelerationSet4Way~%#~%# AccelerationSet4Way.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. ~%# The positive longitudinal axis is to the front of the vehicle. ~%# The positive lateral axis is to the right side of the vehicle (facing forward)~%# Positive yaw is to the right (clockwise)~%# The positive vertical \"z\" axis is downward with the zero point at the bottom of the vehicle's tires. ~%~%#AccelerationSet4Way ::= SEQUENCE {~%#   long Acceleration,          -- Along the Vehicle Longitudinal axis~%#   lat  Acceleration,          -- Along the Vehicle Lateral axis~%#   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis~%#   yaw  YawRate~%#}~%~%#Acceleration ::= INTEGER (-2000..2001) ~%#   -- LSB units are 0.01 m/s^2~%#   -- the value 2000 shall be used for values greater than 2000     ~%#   -- the value -2000 shall be used for values less than -2000  ~%#   -- a value of 2001 shall be used for Unavailable~%#   -- Convert to m/s^2 with factor 0.01 when this field is used~%int16 longitudinal~%int16 lateral~%~%int16 ACCELERATION_UNAVAILABLE = 2001~%int16 ACCELERATION_MAX = 2000~%int16 ACCELERATION_MIN = -2000~%~%#VerticalAcceleration ::= INTEGER (-127..127) ~%#   -- LSB units of 0.02 G steps over -2.52 to +2.54 G~%#   -- The value +127 shall be used for ranges >= 2.54 G~%#   -- The value -126 shall be used for ranges <= 2.52 G~%#   -- The value -127 shall be used for unavailable~%#   -- Convert to m/s^2 with factor 0.196 when this field is used~%int8 vert~%~%int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127~%int8 ACCELERATION_VERTICAL_MAX = 127~%int8 ACCELERATION_VERTICAL_MIN = -126~%~%#YawRate ::= INTEGER (-32767..32767)~%#   -- LSB units of 0.01 degrees per second (signed)~%#   -- Convert to degree with factor 0.01 when this field is used~%int16 yaw_rate~%~%int16 YAWRATE_UNAVAILABLE = 0~%int16 YAWRATE_MAX = 32767~%int16 YAWRATE_MIN = -32767~%~%================================================================================~%MSG: j2735_msgs/BrakeSystemStatus~%#~%# BrakeSystemStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Conveys a variety of information about the current brake and system control activity of the vehicle.~%~%#BrakeSystemStatus ::= SEQUENCE { ~%#   wheelBrakes        BrakeAppliedStatus,~%#   traction           TractionControlStatus,~%#   abs                AntiLockBrakeStatus, ~%#   scs                StabilityControlStatus,~%#   brakeBoost         BrakeBoostApplied, ~%#   auxBrakes          AuxiliaryBrakeStatus~%#   }~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%j2735_msgs/BrakeAppliedStatus wheelBrakes~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%j2735_msgs/TractionControlStatus traction~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%j2735_msgs/AntiLockBrakeStatus abs~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%j2735_msgs/StabilityControlStatus scs~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%j2735_msgs/BrakeBoostApplied brakeBoost~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%j2735_msgs/AuxiliaryBrakeStatus auxBrakes~%================================================================================~%MSG: j2735_msgs/BrakeAppliedStatus~%#~%# BrakeAppliedStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# ~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%~%uint8  brake_applied_status~%~%uint8 UNAVAILABLE=0~%uint8 LEFT_FRONT=1~%uint8 LEFT_REAR=2~%uint8 RIGHT_FRONT=3~%uint8 RIGHT_REAR=4~%~%~%================================================================================~%MSG: j2735_msgs/TractionControlStatus~%#~%# TractionControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%~%uint8  traction_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%~%================================================================================~%MSG: j2735_msgs/AntiLockBrakeStatus~%#~%# AntiLockBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%~%uint8  anti_lock_brake_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/StabilityControlStatus~%#~%# StabilityControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%~%uint8  stability_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/BrakeBoostApplied~%#~%# BrakeBoostApplied.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%~%uint8  brake_boost_applied~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%~%================================================================================~%MSG: j2735_msgs/AuxiliaryBrakeStatus~%#~%# AuxiliaryBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%uint8  auxiliary_brake_status~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  RESERVED=3~%~%================================================================================~%MSG: j2735_msgs/VehicleSize~%#~%# VehicleSize.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The vehicle length and width ~%~%#VehicleSize ::= SEQUENCE {~%#   width     VehicleWidth,~%#   length    VehicleLength~%#   }~%#~%~%#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_width~%~%uint16 VEHICLE_WIDTH_UNAVAILABLE = 0~%uint16 VEHICLE_WIDTH_MAX = 1023~%uint16 VEHICLE_WIDTH_MIN = 1~%~%#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_length~%~%uint16 VEHICLE_LENGTH_UNAVAILABLE = 0~%uint16 VEHICLE_LENGTH_MAX = 4095~%uint16 VEHICLE_LENGTH_MIN = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BSMCoreData)))
  "Returns full string definition for message of type 'BSMCoreData"
  (cl:format cl:nil "#~%# BSMCoreData.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Contains critical core elements deemed to be needed with every BSM issued.  ~%# ~%# NOTE: Initial version only considers Part I. Part II will be defined for later use. ~%~%#MsgCount ::= INTEGER (0..127)~%uint8 msg_count~%~%uint8 MSG_COUNT_MAX = 127~%~%#TemporaryID ::= OCTET STRING (SIZE(4))~%uint8[] id~%~%#TemporaryID will change every 3000 seconds.~%uint16 ID_TIME_MAX = 3000~%~%#DSecond ::= INTEGER (0..65535)~%#  -- Integer values from 0 to 59999 represent the milliseconds within a minute~%#  -- A leap second is represented by the value range 60000 to 60999~%#  -- The values from 61000 to 65534 are reserved~%#  -- The value of 65535 shall represent an unavailable value in the range of the minute~%#  -- Unit is milliseconds~%uint16 sec_mark~%~%uint16 SEC_MARK_MOD = 60000~%uint16 SEC_MARK_UNAVAILABLE = 65535~%~%#Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 longitude~%~%int32 LONGITUDE_UNAVAILABLE = 1800000001~%int32 LONGITUDE_MAX = 1800000000~%int32 LONGITUDE_MIN = -1799999999~%~%#Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 latitude~%~%int32 LATITUDE_UNAVAILABLE = 900000001~%int32 LATITUDE_MAX = 900000000~%int32 LATITUDE_MIN = -900000000~%~%#Elevation ::= INTEGER (-4096..61439)~%#  -- In units of 10 cm steps above or below the reference ellipsoid~%#  -- Providing a range of -409.5 to + 6143.9 meters~%#  -- The value -4096 shall be used when Unknown is to be sent~%#  -- Convert to meter with factor 0.1 when field is used~%int32 elev~%~%int32 ELEVATION_UNAVAILABLE = -4096~%int32 ELEVATION_MAX = 61439~%int32 ELEVATION_MIN = -4095~%~%# Used to model the accuracy of the positional determination with respect to each given axis.~%j2735_msgs/PositionalAccuracy accuracy~%~%# Provide the current state of the vehicle transmission~%j2735_msgs/TransmissionState transmission~%~%#Speed ::= INTEGER (0..8191) -- Units of 0.02 m/s~%#  -- The value 8191 indicates that speed is unavailable~%#  -- Convert to m/s with factor 0.02 when field is used~%uint16 speed~%~%uint16 SPEED_UNAVAILABLE = 8191~%uint16 SPEED_MAX = 8190~%uint16 SPEED_MIN = 0~%~%#Heading ::= INTEGER (0..28800)~%#  -- LSB of 0.0125 degrees~%#  -- A range of 0 to 359.9875 degrees~%#  -- Convert to degree with factor 0.0125 when field is used~%uint16 heading~%uint16 HEADING_UNAVAILABLE = 28800~%uint16 HEADING_MAX = 28798~%uint16 HEADING_MIN = 0~%~%#SteeringWheelAngle ::= INTEGER (-126..127)~%#  -- LSB units of 1.5 degrees, a range of -189 to +189 degrees~%#  -- +001 = +1.5 deg~%#  -- -126 = -189 deg and beyond~%#  -- +126 = +189 deg and beyond~%#  -- +127 to be used for unavailable~%#  -- Convert to degree with factor 1.5 when this field is used~%int8 angle~%int8 STEER_WHEEL_ANGLE_UNAVAILABLE = 127~%int8 STEER_WHEEL_ANGLE_MAX = 126~%int8 STEER_WHEEL_ANGLE_MIN = -126~%~%# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure.~%j2735_msgs/AccelerationSet4Way accelSet~%~%# Conveys a variety of information about the current brake and system control activity of the vehicle.~%j2735_msgs/BrakeSystemStatus brakes~%~%# The vehicle length and width~%j2735_msgs/VehicleSize size~%~%================================================================================~%MSG: j2735_msgs/PositionalAccuracy~%#~%# PositionalAccuracy.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Used to model the accuracy of the positional determination with respect to each given axis.~%~%#PositionalAccuracy ::= SEQUENCE {~%#   -- NMEA-183 values expressed in strict ASN form~%#   semiMajor     SemiMajorAxisAccuracy,~%#   semiMinor     SemiMinorAxisAccuracy,~%#   orientation   SemiMajorAxisOrientation~%#   }~%~%#SemiMajorAxisAccuracy ::= INTEGER (0..255)~%#   -- semi-major/semi-minor axis accuracy at one standard dev~%#   -- range 0-12.7 meter, LSB = .05m~%#   -- 254 = any value equal or greater than 12.70 meter~%#   -- 255 = unavailable semi-major axis value~%#   -- Convert to meter with factor 0.05 when this field is used~%uint8 semiMajor~%uint8 semiMinor~%~%uint8 ACCURACY_UNAVAILABLE = 255~%uint8 ACCURACY_MAX = 254~%uint8 ACCURACY_MIN = 0~%~%#SemiMajorAxisOrientation ::= INTEGER (0..65535)~%#   -- orientation of semi-major axis~%#   -- relative to true north (0~~359.9945078786 degrees)~%#   -- LSB units of 360/65535 deg  = 0.0054932479~%#   -- a value of 0 shall be 0 degrees~%#   -- a value of 1 shall be 0.0054932479 degrees~%#   -- a value of 65534 shall be 359.9945078786 deg~%#   -- a value of 65535 shall be used for orientation unavailable~%#   -- Convert to degree with factor 0.0054932479 when this field is used~%uint16 orientation~%~%uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535~%uint16 ACCURACY_ORIENTATION_MAX = 65534~%uint16 ACCURACY_ORIENTATION_MIN = 0~%~%================================================================================~%MSG: j2735_msgs/TransmissionState~%#~%# TransmissionState.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Provide the current state of the vehicle transmission.~%~%#TransmissionState ::= ENUMERATED {~%#   neutral      (0), -- Neutral~%#   park         (1), -- Park ~%#   forwardGears (2), -- Forward gears~%#   reverseGears (3), -- Reverse gears ~%#   reserved1    (4),      ~%#   reserved2    (5),      ~%#   reserved3    (6),      ~%#   unavailable  (7)  -- not-equipped or unavailable value,~%#   -- Any related speed is relative to the vehicle reference frame used~%#   }~%~%uint8  transmission_state~%~%# enumeration values for status:~%uint8 NEUTRAL=0~%uint8 PARK=1~%uint8 FORWARDGEARS=2~%uint8 REVERSEGEARS=3~%uint8 RESERVED1=4~%uint8 RESERVED2=5~%uint8 RESERVED3=6~%uint8 UNAVAILABLE=7~%================================================================================~%MSG: j2735_msgs/AccelerationSet4Way~%#~%# AccelerationSet4Way.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. ~%# The positive longitudinal axis is to the front of the vehicle. ~%# The positive lateral axis is to the right side of the vehicle (facing forward)~%# Positive yaw is to the right (clockwise)~%# The positive vertical \"z\" axis is downward with the zero point at the bottom of the vehicle's tires. ~%~%#AccelerationSet4Way ::= SEQUENCE {~%#   long Acceleration,          -- Along the Vehicle Longitudinal axis~%#   lat  Acceleration,          -- Along the Vehicle Lateral axis~%#   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis~%#   yaw  YawRate~%#}~%~%#Acceleration ::= INTEGER (-2000..2001) ~%#   -- LSB units are 0.01 m/s^2~%#   -- the value 2000 shall be used for values greater than 2000     ~%#   -- the value -2000 shall be used for values less than -2000  ~%#   -- a value of 2001 shall be used for Unavailable~%#   -- Convert to m/s^2 with factor 0.01 when this field is used~%int16 longitudinal~%int16 lateral~%~%int16 ACCELERATION_UNAVAILABLE = 2001~%int16 ACCELERATION_MAX = 2000~%int16 ACCELERATION_MIN = -2000~%~%#VerticalAcceleration ::= INTEGER (-127..127) ~%#   -- LSB units of 0.02 G steps over -2.52 to +2.54 G~%#   -- The value +127 shall be used for ranges >= 2.54 G~%#   -- The value -126 shall be used for ranges <= 2.52 G~%#   -- The value -127 shall be used for unavailable~%#   -- Convert to m/s^2 with factor 0.196 when this field is used~%int8 vert~%~%int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127~%int8 ACCELERATION_VERTICAL_MAX = 127~%int8 ACCELERATION_VERTICAL_MIN = -126~%~%#YawRate ::= INTEGER (-32767..32767)~%#   -- LSB units of 0.01 degrees per second (signed)~%#   -- Convert to degree with factor 0.01 when this field is used~%int16 yaw_rate~%~%int16 YAWRATE_UNAVAILABLE = 0~%int16 YAWRATE_MAX = 32767~%int16 YAWRATE_MIN = -32767~%~%================================================================================~%MSG: j2735_msgs/BrakeSystemStatus~%#~%# BrakeSystemStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Conveys a variety of information about the current brake and system control activity of the vehicle.~%~%#BrakeSystemStatus ::= SEQUENCE { ~%#   wheelBrakes        BrakeAppliedStatus,~%#   traction           TractionControlStatus,~%#   abs                AntiLockBrakeStatus, ~%#   scs                StabilityControlStatus,~%#   brakeBoost         BrakeBoostApplied, ~%#   auxBrakes          AuxiliaryBrakeStatus~%#   }~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%j2735_msgs/BrakeAppliedStatus wheelBrakes~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%j2735_msgs/TractionControlStatus traction~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%j2735_msgs/AntiLockBrakeStatus abs~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%j2735_msgs/StabilityControlStatus scs~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%j2735_msgs/BrakeBoostApplied brakeBoost~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%j2735_msgs/AuxiliaryBrakeStatus auxBrakes~%================================================================================~%MSG: j2735_msgs/BrakeAppliedStatus~%#~%# BrakeAppliedStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%# ~%~%#BrakeAppliedStatus ::= BIT STRING {~%#   unavailable (0),  -- When set, the brake applied status is unavailable~%#   leftFront   (1),  -- Left Front Active~%#   leftRear    (2),  -- Left Rear Active~%#   rightFront  (3),  -- Right Front Active~%#   rightRear   (4)   -- Right Rear Active~%#   } (SIZE (5))~%#   ~%~%uint8  brake_applied_status~%~%uint8 UNAVAILABLE=0~%uint8 LEFT_FRONT=1~%uint8 LEFT_REAR=2~%uint8 RIGHT_FRONT=3~%uint8 RIGHT_REAR=4~%~%~%================================================================================~%MSG: j2735_msgs/TractionControlStatus~%#~%# TractionControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#TractionControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with traction control ~%#                    --       or traction control status is unavailable~%#   off         (1), -- B'01  traction control is Off~%#   on          (2), -- B'10  traction control is On (but not Engaged)~%#   engaged     (3)  -- B'11  traction control is Engaged~%#   }~%#~%~%uint8  traction_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%~%~%================================================================================~%MSG: j2735_msgs/AntiLockBrakeStatus~%#~%# AntiLockBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AntiLockBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes ~%#                    --       or ABS Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's ABS are Off~%#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )~%#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel~%#   }~%#~%~%uint8  anti_lock_brake_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/StabilityControlStatus~%#~%# StabilityControlStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#StabilityControlStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Not Equipped with SC~%#                    --       or SC status is unavailable~%#   off         (1), -- B'01  Off~%#   on          (2), -- B'10  On or active (but not engaged)~%#   engaged     (3)  -- B'11  stability control is Engaged ~%#   }~%#   ~%~%uint8  stability_control_status ~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  ENGAGED=3~%~%================================================================================~%MSG: j2735_msgs/BrakeBoostApplied~%#~%# BrakeBoostApplied.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#BrakeBoostApplied ::= ENUMERATED {~%#   unavailable   (0), -- Vehicle not equipped with brake boost~%#                      -- or brake boost data is unavailable~%#   off           (1), -- Vehicle's brake boost is off~%#   on            (2)  -- Vehicle's brake boost is on (applied)~%#   }~%#   ~%~%uint8  brake_boost_applied~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%~%================================================================================~%MSG: j2735_msgs/AuxiliaryBrakeStatus~%#~%# AuxiliaryBrakeStatus.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%~%#AuxiliaryBrakeStatus ::= ENUMERATED {~%#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes ~%#                    --       or Aux Brakes status is unavailable~%#   off         (1), -- B'01  Vehicle's Aux Brakes are Off~%#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )~%#   reserved    (3)  -- B'11 ~%#   }   ~%~%uint8  auxiliary_brake_status~%~%# enumeration values for status:~%uint8  UNAVAILABLE=0~%uint8  OFF=1~%uint8  ON=2~%uint8  RESERVED=3~%~%================================================================================~%MSG: j2735_msgs/VehicleSize~%#~%# VehicleSize.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The vehicle length and width ~%~%#VehicleSize ::= SEQUENCE {~%#   width     VehicleWidth,~%#   length    VehicleLength~%#   }~%#~%~%#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_width~%~%uint16 VEHICLE_WIDTH_UNAVAILABLE = 0~%uint16 VEHICLE_WIDTH_MAX = 1023~%uint16 VEHICLE_WIDTH_MIN = 1~%~%#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters~%#  -- Convert to meter with factor 0.01 when this field is used~%uint16 vehicle_length~%~%uint16 VEHICLE_LENGTH_UNAVAILABLE = 0~%uint16 VEHICLE_LENGTH_MAX = 4095~%uint16 VEHICLE_LENGTH_MIN = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BSMCoreData>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accuracy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transmission))
     2
     2
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accelSet))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brakes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BSMCoreData>))
  "Converts a ROS message object to a list"
  (cl:list 'BSMCoreData
    (cl:cons ':msg_count (msg_count msg))
    (cl:cons ':id (id msg))
    (cl:cons ':sec_mark (sec_mark msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':elev (elev msg))
    (cl:cons ':accuracy (accuracy msg))
    (cl:cons ':transmission (transmission msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':accelSet (accelSet msg))
    (cl:cons ':brakes (brakes msg))
    (cl:cons ':size (size msg))
))
