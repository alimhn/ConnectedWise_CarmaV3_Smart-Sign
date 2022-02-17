;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::Position3D)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'Position3D (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::POSITION3D")
  (make-package "J2735_MSGS::POSITION3D"))

(in-package "ROS")
;;//! \htmlinclude Position3D.msg.html


(intern "*LATITUDE_UNAVAILABLE*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*LATITUDE_UNAVAILABLE* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*LATITUDE_UNAVAILABLE* 90.0000001)
(intern "*LATITUDE_MAX*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*LATITUDE_MAX* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*LATITUDE_MAX* 90.0)
(intern "*LATITUDE_MIN*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*LATITUDE_MIN* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*LATITUDE_MIN* -90.0)
(intern "*LONGITUDE_UNAVAILABLE*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*LONGITUDE_UNAVAILABLE* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*LONGITUDE_UNAVAILABLE* 180.0000001)
(intern "*LONGITUDE_MAX*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*LONGITUDE_MAX* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*LONGITUDE_MAX* 180.0)
(intern "*LONGITUDE_MIN*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*LONGITUDE_MIN* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*LONGITUDE_MIN* -179.9999999)
(intern "*ELEVATION_UNAVAILABLE*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*ELEVATION_UNAVAILABLE* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*ELEVATION_UNAVAILABLE* -409.6)
(intern "*ELEVATION_MAX*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*ELEVATION_MAX* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*ELEVATION_MAX* 6143.9)
(intern "*ELEVATION_MIN*" (find-package "J2735_MSGS::POSITION3D"))
(shadow '*ELEVATION_MIN* (find-package "J2735_MSGS::POSITION3D"))
(defconstant j2735_msgs::Position3D::*ELEVATION_MIN* -409.5)

(defun j2735_msgs::Position3D-to-symbol (const)
  (cond
        (t nil)))

(defclass j2735_msgs::Position3D
  :super ros::object
  :slots (_latitude _longitude _elevation _elevation_exists ))

(defmethod j2735_msgs::Position3D
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:elevation __elevation) 0.0)
    ((:elevation_exists __elevation_exists) nil)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _elevation (float __elevation))
   (setq _elevation_exists __elevation_exists)
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:elevation_exists
   (&optional (__elevation_exists :null))
   (if (not (eq __elevation_exists :null)) (setq _elevation_exists __elevation_exists)) _elevation_exists)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _elevation
    4
    ;; bool _elevation_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _elevation_exists
       (if _elevation_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _elevation_exists
     (setq _elevation_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::Position3D :md5sum-) "0e694623847c02ec14299578943eeb2e")
(setf (get j2735_msgs::Position3D :datatype-) "j2735_msgs/Position3D")
(setf (get j2735_msgs::Position3D :definition-)
      "#
# Position3D.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# Provides a precise location in the WGS-84 coordinate system, from which short offsets may be used
# to create additional data using a flat earth projection centered on this location.

# Position3D ::= SEQUENCE {

# lat Latitude, -- in 1/10th micro degrees
# Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
float64 latitude

float64 LATITUDE_UNAVAILABLE = 90.0000001
float64 LATITUDE_MAX = 90.0
float64 LATITUDE_MIN = -90.0

# long Longitude, -- in 1/10th micro degrees
# Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
float64 longitude

float64 LONGITUDE_UNAVAILABLE = 180.0000001
float64 LONGITUDE_MAX = 180.0
float64 LONGITUDE_MIN = -179.9999999

# elevation Elevation OPTIONAL, -- in 10 cm units
# Elevation ::= INTEGER (-4096..61439)
#  -- In units of 10 cm steps above or below the reference ellipsoid
#  -- Providing a range of -409.5 to + 6143.9 meters
#  -- The value -4096 shall be used when Unknown is to be sent
#  -- Convert to meter with factor 0.1 when field is used
float32 elevation
bool elevation_exists

float32 ELEVATION_UNAVAILABLE = -409.6
float32 ELEVATION_MAX = 6143.9
float32 ELEVATION_MIN = -409.5

#TODO: RegionalExtensions are not yet implemented in asn1c
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-Position3D}} OPTIONAL,

")



(provide :j2735_msgs/Position3D "0e694623847c02ec14299578943eeb2e")


