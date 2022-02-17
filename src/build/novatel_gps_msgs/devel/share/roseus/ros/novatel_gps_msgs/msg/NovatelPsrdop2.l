;; Auto-generated. Do not edit!


(when (boundp 'novatel_gps_msgs::NovatelPsrdop2)
  (if (not (find-package "NOVATEL_GPS_MSGS"))
    (make-package "NOVATEL_GPS_MSGS"))
  (shadow 'NovatelPsrdop2 (find-package "NOVATEL_GPS_MSGS")))
(unless (find-package "NOVATEL_GPS_MSGS::NOVATELPSRDOP2")
  (make-package "NOVATEL_GPS_MSGS::NOVATELPSRDOP2"))

(in-package "ROS")
;;//! \htmlinclude NovatelPsrdop2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass novatel_gps_msgs::NovatelPsrdop2
  :super ros::object
  :slots (_header _novatel_msg_header _gdop _pdop _hdop _vdop _systems ))

(defmethod novatel_gps_msgs::NovatelPsrdop2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:novatel_msg_header __novatel_msg_header) (instance novatel_gps_msgs::NovatelMessageHeader :init))
    ((:gdop __gdop) 0.0)
    ((:pdop __pdop) 0.0)
    ((:hdop __hdop) 0.0)
    ((:vdop __vdop) 0.0)
    ((:systems __systems) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _novatel_msg_header __novatel_msg_header)
   (setq _gdop (float __gdop))
   (setq _pdop (float __pdop))
   (setq _hdop (float __hdop))
   (setq _vdop (float __vdop))
   (setq _systems __systems)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:novatel_msg_header
   (&rest __novatel_msg_header)
   (if (keywordp (car __novatel_msg_header))
       (send* _novatel_msg_header __novatel_msg_header)
     (progn
       (if __novatel_msg_header (setq _novatel_msg_header (car __novatel_msg_header)))
       _novatel_msg_header)))
  (:gdop
   (&optional __gdop)
   (if __gdop (setq _gdop __gdop)) _gdop)
  (:pdop
   (&optional __pdop)
   (if __pdop (setq _pdop __pdop)) _pdop)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:vdop
   (&optional __vdop)
   (if __vdop (setq _vdop __vdop)) _vdop)
  (:systems
   (&rest __systems)
   (if (keywordp (car __systems))
       (send* _systems __systems)
     (progn
       (if __systems (setq _systems (car __systems)))
       _systems)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; novatel_gps_msgs/NovatelMessageHeader _novatel_msg_header
    (send _novatel_msg_header :serialization-length)
    ;; float32 _gdop
    4
    ;; float32 _pdop
    4
    ;; float32 _hdop
    4
    ;; float32 _vdop
    4
    ;; novatel_gps_msgs/NovatelPsrdop2System[] _systems
    (apply #'+ (send-all _systems :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; novatel_gps_msgs/NovatelMessageHeader _novatel_msg_header
       (send _novatel_msg_header :serialize s)
     ;; float32 _gdop
       (sys::poke _gdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pdop
       (sys::poke _pdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vdop
       (sys::poke _vdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; novatel_gps_msgs/NovatelPsrdop2System[] _systems
     (write-long (length _systems) s)
     (dolist (elem _systems)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; novatel_gps_msgs/NovatelMessageHeader _novatel_msg_header
     (send _novatel_msg_header :deserialize buf ptr-) (incf ptr- (send _novatel_msg_header :serialization-length))
   ;; float32 _gdop
     (setq _gdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pdop
     (setq _pdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hdop
     (setq _hdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vdop
     (setq _vdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; novatel_gps_msgs/NovatelPsrdop2System[] _systems
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _systems (let (r) (dotimes (i n) (push (instance novatel_gps_msgs::NovatelPsrdop2System :init) r)) r))
     (dolist (elem- _systems)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get novatel_gps_msgs::NovatelPsrdop2 :md5sum-) "8ad7d9f99e8c840fb04e7cb161bcbb5b")
(setf (get novatel_gps_msgs::NovatelPsrdop2 :datatype-) "novatel_gps_msgs/NovatelPsrdop2")
(setf (get novatel_gps_msgs::NovatelPsrdop2 :definition-)
      "# PSR Dilution of Precision (DOP) values
std_msgs/Header header

NovatelMessageHeader novatel_msg_header

# Geometry dilution of precision
float32 gdop
# Position dilution of precision
float32 pdop
# Horizontal dilution of precision
float32 hdop
# Vertical dilution of precision
float32 vdop

# Time dilution of precision for each GNSS system
NovatelPsrdop2System[] systems

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: novatel_gps_msgs/NovatelMessageHeader
# Novatel Message Header

string message_name
string port
uint32 sequence_num
float32 percent_idle_time
string gps_time_status
uint32 gps_week_num
float64 gps_seconds

# Bit       Mask      Description
#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)
#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)
#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)
#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)
#  4     0x00000010   <Reserved>
#  5     0x00000020   Antenna open flag (0: OK, 1: Open)
#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)
#  7     0x00000080   CPU overload flag
#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)
#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)
#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)
#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)
#  12    0x00001000   <Reserved>
#  13    0x00002000   <Reserved>
#  14    0x00004000   <Reserved>
#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)
#  16    0x00010000   <Reserverd>
#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)
#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)
#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)
#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)
#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)
#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)
#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)
#  24    0x01000000   Software resource (0: OK, 1: Warning)
#  25    0x02000000   <Reserved>
#  26    0x04000000   <Reserved>
#  27    0x08000000   <Reserved>
#  28    0x10000000   <Reserved>
#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)
#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)
#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)
NovatelReceiverStatus receiver_status

# Receiver build number (0-65535)
uint32 receiver_software_version
================================================================================
MSG: novatel_gps_msgs/NovatelReceiverStatus
# From the original Novatel receiver status message bitfield
#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)
#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)
#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)
#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)
#  4     0x00000010   <Reserved>
#  5     0x00000020   Antenna open flag (0: OK, 1: Open)
#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)
#  7     0x00000080   CPU overload flag
#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)
#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)
#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)
#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)
#  12    0x00001000   <Reserved>
#  13    0x00002000   <Reserved>
#  14    0x00004000   <Reserved>
#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)
#  16    0x00010000   <Reserverd>
#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)
#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)
#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)
#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)
#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)
#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)
#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)
#  24    0x01000000   Software resource (0: OK, 1: Warning)
#  25    0x02000000   <Reserved>
#  26    0x04000000   <Reserved>
#  27    0x08000000   <Reserved>
#  28    0x10000000   <Reserved>
#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)
#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)
#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)
uint32 original_status_code
bool error_flag
bool temperature_flag
bool voltage_supply_flag
bool antenna_powered
bool antenna_is_open
bool antenna_is_shorted
bool cpu_overload_flag
bool com1_buffer_overrun
bool com2_buffer_overrun
bool com3_buffer_overrun
bool usb_buffer_overrun
bool rf1_agc_flag
bool rf2_agc_flag
bool almanac_flag
bool position_solution_flag
bool position_fixed_flag
bool clock_steering_status_enabled
bool clock_model_flag
bool oemv_external_oscillator_flag
bool software_resource_flag
bool aux1_status_event_flag
bool aux2_status_event_flag
bool aux3_status_event_flag


================================================================================
MSG: novatel_gps_msgs/NovatelPsrdop2System
# GNSS System information provided by PSRDOP2 logs
string system
float32 tdop

")



(provide :novatel_gps_msgs/NovatelPsrdop2 "8ad7d9f99e8c840fb04e7cb161bcbb5b")


