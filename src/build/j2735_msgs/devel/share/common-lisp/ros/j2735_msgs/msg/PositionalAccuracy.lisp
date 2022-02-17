; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude PositionalAccuracy.msg.html

(cl:defclass <PositionalAccuracy> (roslisp-msg-protocol:ros-message)
  ((semiMajor
    :reader semiMajor
    :initarg :semiMajor
    :type cl:fixnum
    :initform 0)
   (semiMinor
    :reader semiMinor
    :initarg :semiMinor
    :type cl:fixnum
    :initform 0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PositionalAccuracy (<PositionalAccuracy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionalAccuracy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionalAccuracy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<PositionalAccuracy> is deprecated: use j2735_msgs-msg:PositionalAccuracy instead.")))

(cl:ensure-generic-function 'semiMajor-val :lambda-list '(m))
(cl:defmethod semiMajor-val ((m <PositionalAccuracy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:semiMajor-val is deprecated.  Use j2735_msgs-msg:semiMajor instead.")
  (semiMajor m))

(cl:ensure-generic-function 'semiMinor-val :lambda-list '(m))
(cl:defmethod semiMinor-val ((m <PositionalAccuracy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:semiMinor-val is deprecated.  Use j2735_msgs-msg:semiMinor instead.")
  (semiMinor m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <PositionalAccuracy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:orientation-val is deprecated.  Use j2735_msgs-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionalAccuracy>)))
    "Constants for message type '<PositionalAccuracy>"
  '((:ACCURACY_UNAVAILABLE . 255)
    (:ACCURACY_MAX . 254)
    (:ACCURACY_MIN . 0)
    (:ACCURACY_ORIENTATION_UNAVAILABLE . 65535)
    (:ACCURACY_ORIENTATION_MAX . 65534)
    (:ACCURACY_ORIENTATION_MIN . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionalAccuracy)))
    "Constants for message type 'PositionalAccuracy"
  '((:ACCURACY_UNAVAILABLE . 255)
    (:ACCURACY_MAX . 254)
    (:ACCURACY_MIN . 0)
    (:ACCURACY_ORIENTATION_UNAVAILABLE . 65535)
    (:ACCURACY_ORIENTATION_MAX . 65534)
    (:ACCURACY_ORIENTATION_MIN . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionalAccuracy>) ostream)
  "Serializes a message object of type '<PositionalAccuracy>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semiMajor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semiMinor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'orientation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionalAccuracy>) istream)
  "Deserializes a message object of type '<PositionalAccuracy>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semiMajor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'semiMinor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'orientation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionalAccuracy>)))
  "Returns string type for a message object of type '<PositionalAccuracy>"
  "j2735_msgs/PositionalAccuracy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionalAccuracy)))
  "Returns string type for a message object of type 'PositionalAccuracy"
  "j2735_msgs/PositionalAccuracy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionalAccuracy>)))
  "Returns md5sum for a message object of type '<PositionalAccuracy>"
  "993c06d8702326587d0e9f49bc843cde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionalAccuracy)))
  "Returns md5sum for a message object of type 'PositionalAccuracy"
  "993c06d8702326587d0e9f49bc843cde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionalAccuracy>)))
  "Returns full string definition for message of type '<PositionalAccuracy>"
  (cl:format cl:nil "#~%# PositionalAccuracy.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Used to model the accuracy of the positional determination with respect to each given axis.~%~%#PositionalAccuracy ::= SEQUENCE {~%#   -- NMEA-183 values expressed in strict ASN form~%#   semiMajor     SemiMajorAxisAccuracy,~%#   semiMinor     SemiMinorAxisAccuracy,~%#   orientation   SemiMajorAxisOrientation~%#   }~%~%#SemiMajorAxisAccuracy ::= INTEGER (0..255)~%#   -- semi-major/semi-minor axis accuracy at one standard dev~%#   -- range 0-12.7 meter, LSB = .05m~%#   -- 254 = any value equal or greater than 12.70 meter~%#   -- 255 = unavailable semi-major axis value~%#   -- Convert to meter with factor 0.05 when this field is used~%uint8 semiMajor~%uint8 semiMinor~%~%uint8 ACCURACY_UNAVAILABLE = 255~%uint8 ACCURACY_MAX = 254~%uint8 ACCURACY_MIN = 0~%~%#SemiMajorAxisOrientation ::= INTEGER (0..65535)~%#   -- orientation of semi-major axis~%#   -- relative to true north (0~~359.9945078786 degrees)~%#   -- LSB units of 360/65535 deg  = 0.0054932479~%#   -- a value of 0 shall be 0 degrees~%#   -- a value of 1 shall be 0.0054932479 degrees~%#   -- a value of 65534 shall be 359.9945078786 deg~%#   -- a value of 65535 shall be used for orientation unavailable~%#   -- Convert to degree with factor 0.0054932479 when this field is used~%uint16 orientation~%~%uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535~%uint16 ACCURACY_ORIENTATION_MAX = 65534~%uint16 ACCURACY_ORIENTATION_MIN = 0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionalAccuracy)))
  "Returns full string definition for message of type 'PositionalAccuracy"
  (cl:format cl:nil "#~%# PositionalAccuracy.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Used to model the accuracy of the positional determination with respect to each given axis.~%~%#PositionalAccuracy ::= SEQUENCE {~%#   -- NMEA-183 values expressed in strict ASN form~%#   semiMajor     SemiMajorAxisAccuracy,~%#   semiMinor     SemiMinorAxisAccuracy,~%#   orientation   SemiMajorAxisOrientation~%#   }~%~%#SemiMajorAxisAccuracy ::= INTEGER (0..255)~%#   -- semi-major/semi-minor axis accuracy at one standard dev~%#   -- range 0-12.7 meter, LSB = .05m~%#   -- 254 = any value equal or greater than 12.70 meter~%#   -- 255 = unavailable semi-major axis value~%#   -- Convert to meter with factor 0.05 when this field is used~%uint8 semiMajor~%uint8 semiMinor~%~%uint8 ACCURACY_UNAVAILABLE = 255~%uint8 ACCURACY_MAX = 254~%uint8 ACCURACY_MIN = 0~%~%#SemiMajorAxisOrientation ::= INTEGER (0..65535)~%#   -- orientation of semi-major axis~%#   -- relative to true north (0~~359.9945078786 degrees)~%#   -- LSB units of 360/65535 deg  = 0.0054932479~%#   -- a value of 0 shall be 0 degrees~%#   -- a value of 1 shall be 0.0054932479 degrees~%#   -- a value of 65534 shall be 359.9945078786 deg~%#   -- a value of 65535 shall be used for orientation unavailable~%#   -- Convert to degree with factor 0.0054932479 when this field is used~%uint16 orientation~%~%uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535~%uint16 ACCURACY_ORIENTATION_MAX = 65534~%uint16 ACCURACY_ORIENTATION_MIN = 0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionalAccuracy>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionalAccuracy>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionalAccuracy
    (cl:cons ':semiMajor (semiMajor msg))
    (cl:cons ':semiMinor (semiMinor msg))
    (cl:cons ':orientation (orientation msg))
))
