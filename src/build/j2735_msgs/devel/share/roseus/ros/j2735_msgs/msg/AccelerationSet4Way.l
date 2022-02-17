;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::AccelerationSet4Way)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'AccelerationSet4Way (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ACCELERATIONSET4WAY")
  (make-package "J2735_MSGS::ACCELERATIONSET4WAY"))

(in-package "ROS")
;;//! \htmlinclude AccelerationSet4Way.msg.html


(intern "*ACCELERATION_UNAVAILABLE*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*ACCELERATION_UNAVAILABLE* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*ACCELERATION_UNAVAILABLE* 2001)
(intern "*ACCELERATION_MAX*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*ACCELERATION_MAX* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*ACCELERATION_MAX* 2000)
(intern "*ACCELERATION_MIN*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*ACCELERATION_MIN* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*ACCELERATION_MIN* -2000)
(intern "*ACCELERATION_VERTICAL_UNAVAILABLE*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*ACCELERATION_VERTICAL_UNAVAILABLE* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*ACCELERATION_VERTICAL_UNAVAILABLE* -127)
(intern "*ACCELERATION_VERTICAL_MAX*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*ACCELERATION_VERTICAL_MAX* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*ACCELERATION_VERTICAL_MAX* 127)
(intern "*ACCELERATION_VERTICAL_MIN*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*ACCELERATION_VERTICAL_MIN* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*ACCELERATION_VERTICAL_MIN* -126)
(intern "*YAWRATE_UNAVAILABLE*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*YAWRATE_UNAVAILABLE* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*YAWRATE_UNAVAILABLE* 0)
(intern "*YAWRATE_MAX*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*YAWRATE_MAX* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*YAWRATE_MAX* 32767)
(intern "*YAWRATE_MIN*" (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(shadow '*YAWRATE_MIN* (find-package "J2735_MSGS::ACCELERATIONSET4WAY"))
(defconstant j2735_msgs::AccelerationSet4Way::*YAWRATE_MIN* -32767)

(defun j2735_msgs::AccelerationSet4Way-to-symbol (const)
  (cond
        ((= const 2001) 'j2735_msgs::AccelerationSet4Way::*ACCELERATION_UNAVAILABLE*)
        ((= const 2000) 'j2735_msgs::AccelerationSet4Way::*ACCELERATION_MAX*)
        ((= const -2000) 'j2735_msgs::AccelerationSet4Way::*ACCELERATION_MIN*)
        ((= const -127) 'j2735_msgs::AccelerationSet4Way::*ACCELERATION_VERTICAL_UNAVAILABLE*)
        ((= const 127) 'j2735_msgs::AccelerationSet4Way::*ACCELERATION_VERTICAL_MAX*)
        ((= const -126) 'j2735_msgs::AccelerationSet4Way::*ACCELERATION_VERTICAL_MIN*)
        ((= const 0) 'j2735_msgs::AccelerationSet4Way::*YAWRATE_UNAVAILABLE*)
        ((= const 32767) 'j2735_msgs::AccelerationSet4Way::*YAWRATE_MAX*)
        ((= const -32767) 'j2735_msgs::AccelerationSet4Way::*YAWRATE_MIN*)
        (t nil)))

(defclass j2735_msgs::AccelerationSet4Way
  :super ros::object
  :slots (_longitudinal _lateral _vert _yaw_rate ))

(defmethod j2735_msgs::AccelerationSet4Way
  (:init
   (&key
    ((:longitudinal __longitudinal) 0)
    ((:lateral __lateral) 0)
    ((:vert __vert) 0)
    ((:yaw_rate __yaw_rate) 0)
    )
   (send-super :init)
   (setq _longitudinal (round __longitudinal))
   (setq _lateral (round __lateral))
   (setq _vert (round __vert))
   (setq _yaw_rate (round __yaw_rate))
   self)
  (:longitudinal
   (&optional __longitudinal)
   (if __longitudinal (setq _longitudinal __longitudinal)) _longitudinal)
  (:lateral
   (&optional __lateral)
   (if __lateral (setq _lateral __lateral)) _lateral)
  (:vert
   (&optional __vert)
   (if __vert (setq _vert __vert)) _vert)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; int16 _longitudinal
    2
    ;; int16 _lateral
    2
    ;; int8 _vert
    1
    ;; int16 _yaw_rate
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _longitudinal
       (write-word _longitudinal s)
     ;; int16 _lateral
       (write-word _lateral s)
     ;; int8 _vert
       (write-byte _vert s)
     ;; int16 _yaw_rate
       (write-word _yaw_rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _longitudinal
     (setq _longitudinal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _lateral
     (setq _lateral (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _vert
     (setq _vert (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _vert 127) (setq _vert (- _vert 256)))
   ;; int16 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::AccelerationSet4Way :md5sum-) "a04db6910213061e094b67068abaf00f")
(setf (get j2735_msgs::AccelerationSet4Way :datatype-) "j2735_msgs/AccelerationSet4Way")
(setf (get j2735_msgs::AccelerationSet4Way :definition-)
      "#
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

")



(provide :j2735_msgs/AccelerationSet4Way "a04db6910213061e094b67068abaf00f")


