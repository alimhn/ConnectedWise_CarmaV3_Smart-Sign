; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude AccelerationSet4Way.msg.html

(cl:defclass <AccelerationSet4Way> (roslisp-msg-protocol:ros-message)
  ((longitudinal
    :reader longitudinal
    :initarg :longitudinal
    :type cl:fixnum
    :initform 0)
   (lateral
    :reader lateral
    :initarg :lateral
    :type cl:fixnum
    :initform 0)
   (vert
    :reader vert
    :initarg :vert
    :type cl:fixnum
    :initform 0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AccelerationSet4Way (<AccelerationSet4Way>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccelerationSet4Way>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccelerationSet4Way)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<AccelerationSet4Way> is deprecated: use j2735_msgs-msg:AccelerationSet4Way instead.")))

(cl:ensure-generic-function 'longitudinal-val :lambda-list '(m))
(cl:defmethod longitudinal-val ((m <AccelerationSet4Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:longitudinal-val is deprecated.  Use j2735_msgs-msg:longitudinal instead.")
  (longitudinal m))

(cl:ensure-generic-function 'lateral-val :lambda-list '(m))
(cl:defmethod lateral-val ((m <AccelerationSet4Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lateral-val is deprecated.  Use j2735_msgs-msg:lateral instead.")
  (lateral m))

(cl:ensure-generic-function 'vert-val :lambda-list '(m))
(cl:defmethod vert-val ((m <AccelerationSet4Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:vert-val is deprecated.  Use j2735_msgs-msg:vert instead.")
  (vert m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <AccelerationSet4Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:yaw_rate-val is deprecated.  Use j2735_msgs-msg:yaw_rate instead.")
  (yaw_rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AccelerationSet4Way>)))
    "Constants for message type '<AccelerationSet4Way>"
  '((:ACCELERATION_UNAVAILABLE . 2001)
    (:ACCELERATION_MAX . 2000)
    (:ACCELERATION_MIN . -2000)
    (:ACCELERATION_VERTICAL_UNAVAILABLE . -127)
    (:ACCELERATION_VERTICAL_MAX . 127)
    (:ACCELERATION_VERTICAL_MIN . -126)
    (:YAWRATE_UNAVAILABLE . 0)
    (:YAWRATE_MAX . 32767)
    (:YAWRATE_MIN . -32767))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AccelerationSet4Way)))
    "Constants for message type 'AccelerationSet4Way"
  '((:ACCELERATION_UNAVAILABLE . 2001)
    (:ACCELERATION_MAX . 2000)
    (:ACCELERATION_MIN . -2000)
    (:ACCELERATION_VERTICAL_UNAVAILABLE . -127)
    (:ACCELERATION_VERTICAL_MAX . 127)
    (:ACCELERATION_VERTICAL_MIN . -126)
    (:YAWRATE_UNAVAILABLE . 0)
    (:YAWRATE_MAX . 32767)
    (:YAWRATE_MIN . -32767))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccelerationSet4Way>) ostream)
  "Serializes a message object of type '<AccelerationSet4Way>"
  (cl:let* ((signed (cl:slot-value msg 'longitudinal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lateral)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vert)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccelerationSet4Way>) istream)
  "Deserializes a message object of type '<AccelerationSet4Way>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitudinal) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lateral) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vert) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_rate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccelerationSet4Way>)))
  "Returns string type for a message object of type '<AccelerationSet4Way>"
  "j2735_msgs/AccelerationSet4Way")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccelerationSet4Way)))
  "Returns string type for a message object of type 'AccelerationSet4Way"
  "j2735_msgs/AccelerationSet4Way")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccelerationSet4Way>)))
  "Returns md5sum for a message object of type '<AccelerationSet4Way>"
  "a04db6910213061e094b67068abaf00f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccelerationSet4Way)))
  "Returns md5sum for a message object of type 'AccelerationSet4Way"
  "a04db6910213061e094b67068abaf00f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccelerationSet4Way>)))
  "Returns full string definition for message of type '<AccelerationSet4Way>"
  (cl:format cl:nil "#~%# AccelerationSet4Way.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. ~%# The positive longitudinal axis is to the front of the vehicle. ~%# The positive lateral axis is to the right side of the vehicle (facing forward)~%# Positive yaw is to the right (clockwise)~%# The positive vertical \"z\" axis is downward with the zero point at the bottom of the vehicle's tires. ~%~%#AccelerationSet4Way ::= SEQUENCE {~%#   long Acceleration,          -- Along the Vehicle Longitudinal axis~%#   lat  Acceleration,          -- Along the Vehicle Lateral axis~%#   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis~%#   yaw  YawRate~%#}~%~%#Acceleration ::= INTEGER (-2000..2001) ~%#   -- LSB units are 0.01 m/s^2~%#   -- the value 2000 shall be used for values greater than 2000     ~%#   -- the value -2000 shall be used for values less than -2000  ~%#   -- a value of 2001 shall be used for Unavailable~%#   -- Convert to m/s^2 with factor 0.01 when this field is used~%int16 longitudinal~%int16 lateral~%~%int16 ACCELERATION_UNAVAILABLE = 2001~%int16 ACCELERATION_MAX = 2000~%int16 ACCELERATION_MIN = -2000~%~%#VerticalAcceleration ::= INTEGER (-127..127) ~%#   -- LSB units of 0.02 G steps over -2.52 to +2.54 G~%#   -- The value +127 shall be used for ranges >= 2.54 G~%#   -- The value -126 shall be used for ranges <= 2.52 G~%#   -- The value -127 shall be used for unavailable~%#   -- Convert to m/s^2 with factor 0.196 when this field is used~%int8 vert~%~%int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127~%int8 ACCELERATION_VERTICAL_MAX = 127~%int8 ACCELERATION_VERTICAL_MIN = -126~%~%#YawRate ::= INTEGER (-32767..32767)~%#   -- LSB units of 0.01 degrees per second (signed)~%#   -- Convert to degree with factor 0.01 when this field is used~%int16 yaw_rate~%~%int16 YAWRATE_UNAVAILABLE = 0~%int16 YAWRATE_MAX = 32767~%int16 YAWRATE_MIN = -32767~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccelerationSet4Way)))
  "Returns full string definition for message of type 'AccelerationSet4Way"
  (cl:format cl:nil "#~%# AccelerationSet4Way.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. ~%# The positive longitudinal axis is to the front of the vehicle. ~%# The positive lateral axis is to the right side of the vehicle (facing forward)~%# Positive yaw is to the right (clockwise)~%# The positive vertical \"z\" axis is downward with the zero point at the bottom of the vehicle's tires. ~%~%#AccelerationSet4Way ::= SEQUENCE {~%#   long Acceleration,          -- Along the Vehicle Longitudinal axis~%#   lat  Acceleration,          -- Along the Vehicle Lateral axis~%#   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis~%#   yaw  YawRate~%#}~%~%#Acceleration ::= INTEGER (-2000..2001) ~%#   -- LSB units are 0.01 m/s^2~%#   -- the value 2000 shall be used for values greater than 2000     ~%#   -- the value -2000 shall be used for values less than -2000  ~%#   -- a value of 2001 shall be used for Unavailable~%#   -- Convert to m/s^2 with factor 0.01 when this field is used~%int16 longitudinal~%int16 lateral~%~%int16 ACCELERATION_UNAVAILABLE = 2001~%int16 ACCELERATION_MAX = 2000~%int16 ACCELERATION_MIN = -2000~%~%#VerticalAcceleration ::= INTEGER (-127..127) ~%#   -- LSB units of 0.02 G steps over -2.52 to +2.54 G~%#   -- The value +127 shall be used for ranges >= 2.54 G~%#   -- The value -126 shall be used for ranges <= 2.52 G~%#   -- The value -127 shall be used for unavailable~%#   -- Convert to m/s^2 with factor 0.196 when this field is used~%int8 vert~%~%int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127~%int8 ACCELERATION_VERTICAL_MAX = 127~%int8 ACCELERATION_VERTICAL_MIN = -126~%~%#YawRate ::= INTEGER (-32767..32767)~%#   -- LSB units of 0.01 degrees per second (signed)~%#   -- Convert to degree with factor 0.01 when this field is used~%int16 yaw_rate~%~%int16 YAWRATE_UNAVAILABLE = 0~%int16 YAWRATE_MAX = 32767~%int16 YAWRATE_MIN = -32767~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccelerationSet4Way>))
  (cl:+ 0
     2
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccelerationSet4Way>))
  "Converts a ROS message object to a list"
  (cl:list 'AccelerationSet4Way
    (cl:cons ':longitudinal (longitudinal msg))
    (cl:cons ':lateral (lateral msg))
    (cl:cons ':vert (vert msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
))
