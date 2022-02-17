;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::BSMCoreData)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'BSMCoreData (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::BSMCOREDATA")
  (make-package "J2735_MSGS::BSMCOREDATA"))

(in-package "ROS")
;;//! \htmlinclude BSMCoreData.msg.html


(intern "*MSG_COUNT_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*MSG_COUNT_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*MSG_COUNT_MAX* 127)
(intern "*ID_TIME_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*ID_TIME_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*ID_TIME_MAX* 3000)
(intern "*SEC_MARK_MOD*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*SEC_MARK_MOD* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*SEC_MARK_MOD* 60000)
(intern "*SEC_MARK_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*SEC_MARK_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*SEC_MARK_UNAVAILABLE* 65535)
(intern "*LONGITUDE_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*LONGITUDE_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*LONGITUDE_UNAVAILABLE* 1800000001)
(intern "*LONGITUDE_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*LONGITUDE_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*LONGITUDE_MAX* 1800000000)
(intern "*LONGITUDE_MIN*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*LONGITUDE_MIN* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*LONGITUDE_MIN* -1799999999)
(intern "*LATITUDE_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*LATITUDE_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*LATITUDE_UNAVAILABLE* 900000001)
(intern "*LATITUDE_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*LATITUDE_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*LATITUDE_MAX* 900000000)
(intern "*LATITUDE_MIN*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*LATITUDE_MIN* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*LATITUDE_MIN* -900000000)
(intern "*ELEVATION_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*ELEVATION_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*ELEVATION_UNAVAILABLE* -4096)
(intern "*ELEVATION_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*ELEVATION_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*ELEVATION_MAX* 61439)
(intern "*ELEVATION_MIN*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*ELEVATION_MIN* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*ELEVATION_MIN* -4095)
(intern "*SPEED_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*SPEED_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*SPEED_UNAVAILABLE* 8191)
(intern "*SPEED_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*SPEED_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*SPEED_MAX* 8190)
(intern "*SPEED_MIN*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*SPEED_MIN* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*SPEED_MIN* 0)
(intern "*HEADING_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*HEADING_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*HEADING_UNAVAILABLE* 28800)
(intern "*HEADING_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*HEADING_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*HEADING_MAX* 28798)
(intern "*HEADING_MIN*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*HEADING_MIN* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*HEADING_MIN* 0)
(intern "*STEER_WHEEL_ANGLE_UNAVAILABLE*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*STEER_WHEEL_ANGLE_UNAVAILABLE* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*STEER_WHEEL_ANGLE_UNAVAILABLE* 127)
(intern "*STEER_WHEEL_ANGLE_MAX*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*STEER_WHEEL_ANGLE_MAX* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*STEER_WHEEL_ANGLE_MAX* 126)
(intern "*STEER_WHEEL_ANGLE_MIN*" (find-package "J2735_MSGS::BSMCOREDATA"))
(shadow '*STEER_WHEEL_ANGLE_MIN* (find-package "J2735_MSGS::BSMCOREDATA"))
(defconstant j2735_msgs::BSMCoreData::*STEER_WHEEL_ANGLE_MIN* -126)

(defun j2735_msgs::BSMCoreData-to-symbol (const)
  (cond
        ((= const 127) 'j2735_msgs::BSMCoreData::*MSG_COUNT_MAX*)
        ((= const 3000) 'j2735_msgs::BSMCoreData::*ID_TIME_MAX*)
        ((= const 60000) 'j2735_msgs::BSMCoreData::*SEC_MARK_MOD*)
        ((= const 65535) 'j2735_msgs::BSMCoreData::*SEC_MARK_UNAVAILABLE*)
        ((= const 1800000001) 'j2735_msgs::BSMCoreData::*LONGITUDE_UNAVAILABLE*)
        ((= const 1800000000) 'j2735_msgs::BSMCoreData::*LONGITUDE_MAX*)
        ((= const -1799999999) 'j2735_msgs::BSMCoreData::*LONGITUDE_MIN*)
        ((= const 900000001) 'j2735_msgs::BSMCoreData::*LATITUDE_UNAVAILABLE*)
        ((= const 900000000) 'j2735_msgs::BSMCoreData::*LATITUDE_MAX*)
        ((= const -900000000) 'j2735_msgs::BSMCoreData::*LATITUDE_MIN*)
        ((= const -4096) 'j2735_msgs::BSMCoreData::*ELEVATION_UNAVAILABLE*)
        ((= const 61439) 'j2735_msgs::BSMCoreData::*ELEVATION_MAX*)
        ((= const -4095) 'j2735_msgs::BSMCoreData::*ELEVATION_MIN*)
        ((= const 8191) 'j2735_msgs::BSMCoreData::*SPEED_UNAVAILABLE*)
        ((= const 8190) 'j2735_msgs::BSMCoreData::*SPEED_MAX*)
        ((= const 0) 'j2735_msgs::BSMCoreData::*SPEED_MIN*)
        ((= const 28800) 'j2735_msgs::BSMCoreData::*HEADING_UNAVAILABLE*)
        ((= const 28798) 'j2735_msgs::BSMCoreData::*HEADING_MAX*)
        ((= const 0) 'j2735_msgs::BSMCoreData::*HEADING_MIN*)
        ((= const 127) 'j2735_msgs::BSMCoreData::*STEER_WHEEL_ANGLE_UNAVAILABLE*)
        ((= const 126) 'j2735_msgs::BSMCoreData::*STEER_WHEEL_ANGLE_MAX*)
        ((= const -126) 'j2735_msgs::BSMCoreData::*STEER_WHEEL_ANGLE_MIN*)
        (t nil)))

(defclass j2735_msgs::BSMCoreData
  :super ros::object
  :slots (_msg_count _id _sec_mark _longitude _latitude _elev _accuracy _transmission _speed _heading _angle _accelSet _brakes _size ))

(defmethod j2735_msgs::BSMCoreData
  (:init
   (&key
    ((:msg_count __msg_count) 0)
    ((:id __id) (make-array 0 :initial-element 0 :element-type :char))
    ((:sec_mark __sec_mark) 0)
    ((:longitude __longitude) 0)
    ((:latitude __latitude) 0)
    ((:elev __elev) 0)
    ((:accuracy __accuracy) (instance j2735_msgs::PositionalAccuracy :init))
    ((:transmission __transmission) (instance j2735_msgs::TransmissionState :init))
    ((:speed __speed) 0)
    ((:heading __heading) 0)
    ((:angle __angle) 0)
    ((:accelSet __accelSet) (instance j2735_msgs::AccelerationSet4Way :init))
    ((:brakes __brakes) (instance j2735_msgs::BrakeSystemStatus :init))
    ((:size __size) (instance j2735_msgs::VehicleSize :init))
    )
   (send-super :init)
   (setq _msg_count (round __msg_count))
   (setq _id __id)
   (setq _sec_mark (round __sec_mark))
   (setq _longitude (round __longitude))
   (setq _latitude (round __latitude))
   (setq _elev (round __elev))
   (setq _accuracy __accuracy)
   (setq _transmission __transmission)
   (setq _speed (round __speed))
   (setq _heading (round __heading))
   (setq _angle (round __angle))
   (setq _accelSet __accelSet)
   (setq _brakes __brakes)
   (setq _size __size)
   self)
  (:msg_count
   (&optional __msg_count)
   (if __msg_count (setq _msg_count __msg_count)) _msg_count)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:sec_mark
   (&optional __sec_mark)
   (if __sec_mark (setq _sec_mark __sec_mark)) _sec_mark)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:elev
   (&optional __elev)
   (if __elev (setq _elev __elev)) _elev)
  (:accuracy
   (&rest __accuracy)
   (if (keywordp (car __accuracy))
       (send* _accuracy __accuracy)
     (progn
       (if __accuracy (setq _accuracy (car __accuracy)))
       _accuracy)))
  (:transmission
   (&rest __transmission)
   (if (keywordp (car __transmission))
       (send* _transmission __transmission)
     (progn
       (if __transmission (setq _transmission (car __transmission)))
       _transmission)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:accelSet
   (&rest __accelSet)
   (if (keywordp (car __accelSet))
       (send* _accelSet __accelSet)
     (progn
       (if __accelSet (setq _accelSet (car __accelSet)))
       _accelSet)))
  (:brakes
   (&rest __brakes)
   (if (keywordp (car __brakes))
       (send* _brakes __brakes)
     (progn
       (if __brakes (setq _brakes (car __brakes)))
       _brakes)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:serialization-length
   ()
   (+
    ;; uint8 _msg_count
    1
    ;; uint8[] _id
    (* 1    (length _id)) 4
    ;; uint16 _sec_mark
    2
    ;; int32 _longitude
    4
    ;; int32 _latitude
    4
    ;; int32 _elev
    4
    ;; j2735_msgs/PositionalAccuracy _accuracy
    (send _accuracy :serialization-length)
    ;; j2735_msgs/TransmissionState _transmission
    (send _transmission :serialization-length)
    ;; uint16 _speed
    2
    ;; uint16 _heading
    2
    ;; int8 _angle
    1
    ;; j2735_msgs/AccelerationSet4Way _accelSet
    (send _accelSet :serialization-length)
    ;; j2735_msgs/BrakeSystemStatus _brakes
    (send _brakes :serialization-length)
    ;; j2735_msgs/VehicleSize _size
    (send _size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _msg_count
       (write-byte _msg_count s)
     ;; uint8[] _id
     (write-long (length _id) s)
     (princ _id s)
     ;; uint16 _sec_mark
       (write-word _sec_mark s)
     ;; int32 _longitude
       (write-long _longitude s)
     ;; int32 _latitude
       (write-long _latitude s)
     ;; int32 _elev
       (write-long _elev s)
     ;; j2735_msgs/PositionalAccuracy _accuracy
       (send _accuracy :serialize s)
     ;; j2735_msgs/TransmissionState _transmission
       (send _transmission :serialize s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; uint16 _heading
       (write-word _heading s)
     ;; int8 _angle
       (write-byte _angle s)
     ;; j2735_msgs/AccelerationSet4Way _accelSet
       (send _accelSet :serialize s)
     ;; j2735_msgs/BrakeSystemStatus _brakes
       (send _brakes :serialize s)
     ;; j2735_msgs/VehicleSize _size
       (send _size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _id (make-array n :element-type :char))
     (replace _id buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _sec_mark
     (setq _sec_mark (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _longitude
     (setq _longitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _latitude
     (setq _latitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _elev
     (setq _elev (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; j2735_msgs/PositionalAccuracy _accuracy
     (send _accuracy :deserialize buf ptr-) (incf ptr- (send _accuracy :serialization-length))
   ;; j2735_msgs/TransmissionState _transmission
     (send _transmission :deserialize buf ptr-) (incf ptr- (send _transmission :serialization-length))
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _heading
     (setq _heading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _angle
     (setq _angle (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _angle 127) (setq _angle (- _angle 256)))
   ;; j2735_msgs/AccelerationSet4Way _accelSet
     (send _accelSet :deserialize buf ptr-) (incf ptr- (send _accelSet :serialization-length))
   ;; j2735_msgs/BrakeSystemStatus _brakes
     (send _brakes :deserialize buf ptr-) (incf ptr- (send _brakes :serialization-length))
   ;; j2735_msgs/VehicleSize _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::BSMCoreData :md5sum-) "928bbaf7f9f36ba15c6dd3bc7224d8a5")
(setf (get j2735_msgs::BSMCoreData :datatype-) "j2735_msgs/BSMCoreData")
(setf (get j2735_msgs::BSMCoreData :definition-)
      "#
# BSMCoreData.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Contains critical core elements deemed to be needed with every BSM issued.  
# 
# NOTE: Initial version only considers Part I. Part II will be defined for later use. 

#MsgCount ::= INTEGER (0..127)
uint8 msg_count

uint8 MSG_COUNT_MAX = 127

#TemporaryID ::= OCTET STRING (SIZE(4))
uint8[] id

#TemporaryID will change every 3000 seconds.
uint16 ID_TIME_MAX = 3000

#DSecond ::= INTEGER (0..65535)
#  -- Integer values from 0 to 59999 represent the milliseconds within a minute
#  -- A leap second is represented by the value range 60000 to 60999
#  -- The values from 61000 to 65534 are reserved
#  -- The value of 65535 shall represent an unavailable value in the range of the minute
#  -- Unit is milliseconds
uint16 sec_mark

uint16 SEC_MARK_MOD = 60000
uint16 SEC_MARK_UNAVAILABLE = 65535

#Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_UNAVAILABLE = 1800000001
int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999

#Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_UNAVAILABLE = 900000001
int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000

#Elevation ::= INTEGER (-4096..61439)
#  -- In units of 10 cm steps above or below the reference ellipsoid
#  -- Providing a range of -409.5 to + 6143.9 meters
#  -- The value -4096 shall be used when Unknown is to be sent
#  -- Convert to meter with factor 0.1 when field is used
int32 elev

int32 ELEVATION_UNAVAILABLE = -4096
int32 ELEVATION_MAX = 61439
int32 ELEVATION_MIN = -4095

# Used to model the accuracy of the positional determination with respect to each given axis.
j2735_msgs/PositionalAccuracy accuracy

# Provide the current state of the vehicle transmission
j2735_msgs/TransmissionState transmission

#Speed ::= INTEGER (0..8191) -- Units of 0.02 m/s
#  -- The value 8191 indicates that speed is unavailable
#  -- Convert to m/s with factor 0.02 when field is used
uint16 speed

uint16 SPEED_UNAVAILABLE = 8191
uint16 SPEED_MAX = 8190
uint16 SPEED_MIN = 0

#Heading ::= INTEGER (0..28800)
#  -- LSB of 0.0125 degrees
#  -- A range of 0 to 359.9875 degrees
#  -- Convert to degree with factor 0.0125 when field is used
uint16 heading
uint16 HEADING_UNAVAILABLE = 28800
uint16 HEADING_MAX = 28798
uint16 HEADING_MIN = 0

#SteeringWheelAngle ::= INTEGER (-126..127)
#  -- LSB units of 1.5 degrees, a range of -189 to +189 degrees
#  -- +001 = +1.5 deg
#  -- -126 = -189 deg and beyond
#  -- +126 = +189 deg and beyond
#  -- +127 to be used for unavailable
#  -- Convert to degree with factor 1.5 when this field is used
int8 angle
int8 STEER_WHEEL_ANGLE_UNAVAILABLE = 127
int8 STEER_WHEEL_ANGLE_MAX = 126
int8 STEER_WHEEL_ANGLE_MIN = -126

# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure.
j2735_msgs/AccelerationSet4Way accelSet

# Conveys a variety of information about the current brake and system control activity of the vehicle.
j2735_msgs/BrakeSystemStatus brakes

# The vehicle length and width
j2735_msgs/VehicleSize size

================================================================================
MSG: j2735_msgs/PositionalAccuracy
#
# PositionalAccuracy.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Used to model the accuracy of the positional determination with respect to each given axis.

#PositionalAccuracy ::= SEQUENCE {
#   -- NMEA-183 values expressed in strict ASN form
#   semiMajor     SemiMajorAxisAccuracy,
#   semiMinor     SemiMinorAxisAccuracy,
#   orientation   SemiMajorAxisOrientation
#   }

#SemiMajorAxisAccuracy ::= INTEGER (0..255)
#   -- semi-major/semi-minor axis accuracy at one standard dev
#   -- range 0-12.7 meter, LSB = .05m
#   -- 254 = any value equal or greater than 12.70 meter
#   -- 255 = unavailable semi-major axis value
#   -- Convert to meter with factor 0.05 when this field is used
uint8 semiMajor
uint8 semiMinor

uint8 ACCURACY_UNAVAILABLE = 255
uint8 ACCURACY_MAX = 254
uint8 ACCURACY_MIN = 0

#SemiMajorAxisOrientation ::= INTEGER (0..65535)
#   -- orientation of semi-major axis
#   -- relative to true north (0~359.9945078786 degrees)
#   -- LSB units of 360/65535 deg  = 0.0054932479
#   -- a value of 0 shall be 0 degrees
#   -- a value of 1 shall be 0.0054932479 degrees
#   -- a value of 65534 shall be 359.9945078786 deg
#   -- a value of 65535 shall be used for orientation unavailable
#   -- Convert to degree with factor 0.0054932479 when this field is used
uint16 orientation

uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535
uint16 ACCURACY_ORIENTATION_MAX = 65534
uint16 ACCURACY_ORIENTATION_MIN = 0

================================================================================
MSG: j2735_msgs/TransmissionState
#
# TransmissionState.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Provide the current state of the vehicle transmission.

#TransmissionState ::= ENUMERATED {
#   neutral      (0), -- Neutral
#   park         (1), -- Park 
#   forwardGears (2), -- Forward gears
#   reverseGears (3), -- Reverse gears 
#   reserved1    (4),      
#   reserved2    (5),      
#   reserved3    (6),      
#   unavailable  (7)  -- not-equipped or unavailable value,
#   -- Any related speed is relative to the vehicle reference frame used
#   }

uint8  transmission_state

# enumeration values for status:
uint8 NEUTRAL=0
uint8 PARK=1
uint8 FORWARDGEARS=2
uint8 REVERSEGEARS=3
uint8 RESERVED1=4
uint8 RESERVED2=5
uint8 RESERVED3=6
uint8 UNAVAILABLE=7
================================================================================
MSG: j2735_msgs/AccelerationSet4Way
#
# AccelerationSet4Way.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. 
# The positive longitudinal axis is to the front of the vehicle. 
# The positive lateral axis is to the right side of the vehicle (facing forward)
# Positive yaw is to the right (clockwise)
# The positive vertical \"z\" axis is downward with the zero point at the bottom of the vehicle's tires. 

#AccelerationSet4Way ::= SEQUENCE {
#   long Acceleration,          -- Along the Vehicle Longitudinal axis
#   lat  Acceleration,          -- Along the Vehicle Lateral axis
#   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis
#   yaw  YawRate
#}

#Acceleration ::= INTEGER (-2000..2001) 
#   -- LSB units are 0.01 m/s^2
#   -- the value 2000 shall be used for values greater than 2000     
#   -- the value -2000 shall be used for values less than -2000  
#   -- a value of 2001 shall be used for Unavailable
#   -- Convert to m/s^2 with factor 0.01 when this field is used
int16 longitudinal
int16 lateral

int16 ACCELERATION_UNAVAILABLE = 2001
int16 ACCELERATION_MAX = 2000
int16 ACCELERATION_MIN = -2000

#VerticalAcceleration ::= INTEGER (-127..127) 
#   -- LSB units of 0.02 G steps over -2.52 to +2.54 G
#   -- The value +127 shall be used for ranges >= 2.54 G
#   -- The value -126 shall be used for ranges <= 2.52 G
#   -- The value -127 shall be used for unavailable
#   -- Convert to m/s^2 with factor 0.196 when this field is used
int8 vert

int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127
int8 ACCELERATION_VERTICAL_MAX = 127
int8 ACCELERATION_VERTICAL_MIN = -126

#YawRate ::= INTEGER (-32767..32767)
#   -- LSB units of 0.01 degrees per second (signed)
#   -- Convert to degree with factor 0.01 when this field is used
int16 yaw_rate

int16 YAWRATE_UNAVAILABLE = 0
int16 YAWRATE_MAX = 32767
int16 YAWRATE_MIN = -32767

================================================================================
MSG: j2735_msgs/BrakeSystemStatus
#
# BrakeSystemStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# Conveys a variety of information about the current brake and system control activity of the vehicle.

#BrakeSystemStatus ::= SEQUENCE { 
#   wheelBrakes        BrakeAppliedStatus,
#   traction           TractionControlStatus,
#   abs                AntiLockBrakeStatus, 
#   scs                StabilityControlStatus,
#   brakeBoost         BrakeBoostApplied, 
#   auxBrakes          AuxiliaryBrakeStatus
#   }

#BrakeAppliedStatus ::= BIT STRING {
#   unavailable (0),  -- When set, the brake applied status is unavailable
#   leftFront   (1),  -- Left Front Active
#   leftRear    (2),  -- Left Rear Active
#   rightFront  (3),  -- Right Front Active
#   rightRear   (4)   -- Right Rear Active
#   } (SIZE (5))
#   
j2735_msgs/BrakeAppliedStatus wheelBrakes

#TractionControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with traction control 
#                    --       or traction control status is unavailable
#   off         (1), -- B'01  traction control is Off
#   on          (2), -- B'10  traction control is On (but not Engaged)
#   engaged     (3)  -- B'11  traction control is Engaged
#   }
#
j2735_msgs/TractionControlStatus traction

#AntiLockBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
#                    --       or ABS Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's ABS are Off
#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
#   }
#
j2735_msgs/AntiLockBrakeStatus abs

#StabilityControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with SC
#                    --       or SC status is unavailable
#   off         (1), -- B'01  Off
#   on          (2), -- B'10  On or active (but not engaged)
#   engaged     (3)  -- B'11  stability control is Engaged 
#   }
#   
j2735_msgs/StabilityControlStatus scs

#BrakeBoostApplied ::= ENUMERATED {
#   unavailable   (0), -- Vehicle not equipped with brake boost
#                      -- or brake boost data is unavailable
#   off           (1), -- Vehicle's brake boost is off
#   on            (2)  -- Vehicle's brake boost is on (applied)
#   }
#   
j2735_msgs/BrakeBoostApplied brakeBoost

#AuxiliaryBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
#                    --       or Aux Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's Aux Brakes are Off
#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
#   reserved    (3)  -- B'11 
#   }   

j2735_msgs/AuxiliaryBrakeStatus auxBrakes
================================================================================
MSG: j2735_msgs/BrakeAppliedStatus
#
# BrakeAppliedStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# 

#BrakeAppliedStatus ::= BIT STRING {
#   unavailable (0),  -- When set, the brake applied status is unavailable
#   leftFront   (1),  -- Left Front Active
#   leftRear    (2),  -- Left Rear Active
#   rightFront  (3),  -- Right Front Active
#   rightRear   (4)   -- Right Rear Active
#   } (SIZE (5))
#   

uint8  brake_applied_status

uint8 UNAVAILABLE=0
uint8 LEFT_FRONT=1
uint8 LEFT_REAR=2
uint8 RIGHT_FRONT=3
uint8 RIGHT_REAR=4


================================================================================
MSG: j2735_msgs/TractionControlStatus
#
# TractionControlStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#TractionControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with traction control 
#                    --       or traction control status is unavailable
#   off         (1), -- B'01  traction control is Off
#   on          (2), -- B'10  traction control is On (but not Engaged)
#   engaged     (3)  -- B'11  traction control is Engaged
#   }
#

uint8  traction_control_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3



================================================================================
MSG: j2735_msgs/AntiLockBrakeStatus
#
# AntiLockBrakeStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#AntiLockBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes 
#                    --       or ABS Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's ABS are Off
#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )
#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel
#   }
#

uint8  anti_lock_brake_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3

================================================================================
MSG: j2735_msgs/StabilityControlStatus
#
# StabilityControlStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#StabilityControlStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Not Equipped with SC
#                    --       or SC status is unavailable
#   off         (1), -- B'01  Off
#   on          (2), -- B'10  On or active (but not engaged)
#   engaged     (3)  -- B'11  stability control is Engaged 
#   }
#   

uint8  stability_control_status 

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  ENGAGED=3

================================================================================
MSG: j2735_msgs/BrakeBoostApplied
#
# BrakeBoostApplied.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#BrakeBoostApplied ::= ENUMERATED {
#   unavailable   (0), -- Vehicle not equipped with brake boost
#                      -- or brake boost data is unavailable
#   off           (1), -- Vehicle's brake boost is off
#   on            (2)  -- Vehicle's brake boost is on (applied)
#   }
#   

uint8  brake_boost_applied

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2

================================================================================
MSG: j2735_msgs/AuxiliaryBrakeStatus
#
# AuxiliaryBrakeStatus.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1

#AuxiliaryBrakeStatus ::= ENUMERATED {
#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes 
#                    --       or Aux Brakes status is unavailable
#   off         (1), -- B'01  Vehicle's Aux Brakes are Off
#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )
#   reserved    (3)  -- B'11 
#   }   

uint8  auxiliary_brake_status

# enumeration values for status:
uint8  UNAVAILABLE=0
uint8  OFF=1
uint8  ON=2
uint8  RESERVED=3

================================================================================
MSG: j2735_msgs/VehicleSize
#
# VehicleSize.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The vehicle length and width 

#VehicleSize ::= SEQUENCE {
#   width     VehicleWidth,
#   length    VehicleLength
#   }
#

#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters
#  -- Convert to meter with factor 0.01 when this field is used
uint16 vehicle_width

uint16 VEHICLE_WIDTH_UNAVAILABLE = 0
uint16 VEHICLE_WIDTH_MAX = 1023
uint16 VEHICLE_WIDTH_MIN = 1

#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters
#  -- Convert to meter with factor 0.01 when this field is used
uint16 vehicle_length

uint16 VEHICLE_LENGTH_UNAVAILABLE = 0
uint16 VEHICLE_LENGTH_MAX = 4095
uint16 VEHICLE_LENGTH_MIN = 1

")



(provide :j2735_msgs/BSMCoreData "928bbaf7f9f36ba15c6dd3bc7224d8a5")


