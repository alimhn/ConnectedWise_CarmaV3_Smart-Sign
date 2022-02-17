; Auto-generated. Do not edit!


(cl:in-package novatel_gps_msgs-msg)


;//! \htmlinclude NovatelPsrdop2.msg.html

(cl:defclass <NovatelPsrdop2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (novatel_msg_header
    :reader novatel_msg_header
    :initarg :novatel_msg_header
    :type novatel_gps_msgs-msg:NovatelMessageHeader
    :initform (cl:make-instance 'novatel_gps_msgs-msg:NovatelMessageHeader))
   (gdop
    :reader gdop
    :initarg :gdop
    :type cl:float
    :initform 0.0)
   (pdop
    :reader pdop
    :initarg :pdop
    :type cl:float
    :initform 0.0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (vdop
    :reader vdop
    :initarg :vdop
    :type cl:float
    :initform 0.0)
   (systems
    :reader systems
    :initarg :systems
    :type (cl:vector novatel_gps_msgs-msg:NovatelPsrdop2System)
   :initform (cl:make-array 0 :element-type 'novatel_gps_msgs-msg:NovatelPsrdop2System :initial-element (cl:make-instance 'novatel_gps_msgs-msg:NovatelPsrdop2System))))
)

(cl:defclass NovatelPsrdop2 (<NovatelPsrdop2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NovatelPsrdop2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NovatelPsrdop2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_gps_msgs-msg:<NovatelPsrdop2> is deprecated: use novatel_gps_msgs-msg:NovatelPsrdop2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:header-val is deprecated.  Use novatel_gps_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'novatel_msg_header-val :lambda-list '(m))
(cl:defmethod novatel_msg_header-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:novatel_msg_header-val is deprecated.  Use novatel_gps_msgs-msg:novatel_msg_header instead.")
  (novatel_msg_header m))

(cl:ensure-generic-function 'gdop-val :lambda-list '(m))
(cl:defmethod gdop-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:gdop-val is deprecated.  Use novatel_gps_msgs-msg:gdop instead.")
  (gdop m))

(cl:ensure-generic-function 'pdop-val :lambda-list '(m))
(cl:defmethod pdop-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:pdop-val is deprecated.  Use novatel_gps_msgs-msg:pdop instead.")
  (pdop m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:hdop-val is deprecated.  Use novatel_gps_msgs-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'vdop-val :lambda-list '(m))
(cl:defmethod vdop-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:vdop-val is deprecated.  Use novatel_gps_msgs-msg:vdop instead.")
  (vdop m))

(cl:ensure-generic-function 'systems-val :lambda-list '(m))
(cl:defmethod systems-val ((m <NovatelPsrdop2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:systems-val is deprecated.  Use novatel_gps_msgs-msg:systems instead.")
  (systems m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NovatelPsrdop2>) ostream)
  "Serializes a message object of type '<NovatelPsrdop2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'novatel_msg_header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'systems))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'systems))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NovatelPsrdop2>) istream)
  "Deserializes a message object of type '<NovatelPsrdop2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'novatel_msg_header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vdop) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'systems) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'systems)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'novatel_gps_msgs-msg:NovatelPsrdop2System))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NovatelPsrdop2>)))
  "Returns string type for a message object of type '<NovatelPsrdop2>"
  "novatel_gps_msgs/NovatelPsrdop2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NovatelPsrdop2)))
  "Returns string type for a message object of type 'NovatelPsrdop2"
  "novatel_gps_msgs/NovatelPsrdop2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NovatelPsrdop2>)))
  "Returns md5sum for a message object of type '<NovatelPsrdop2>"
  "8ad7d9f99e8c840fb04e7cb161bcbb5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NovatelPsrdop2)))
  "Returns md5sum for a message object of type 'NovatelPsrdop2"
  "8ad7d9f99e8c840fb04e7cb161bcbb5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NovatelPsrdop2>)))
  "Returns full string definition for message of type '<NovatelPsrdop2>"
  (cl:format cl:nil "# PSR Dilution of Precision (DOP) values~%std_msgs/Header header~%~%NovatelMessageHeader novatel_msg_header~%~%# Geometry dilution of precision~%float32 gdop~%# Position dilution of precision~%float32 pdop~%# Horizontal dilution of precision~%float32 hdop~%# Vertical dilution of precision~%float32 vdop~%~%# Time dilution of precision for each GNSS system~%NovatelPsrdop2System[] systems~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: novatel_gps_msgs/NovatelMessageHeader~%# Novatel Message Header~%~%string message_name~%string port~%uint32 sequence_num~%float32 percent_idle_time~%string gps_time_status~%uint32 gps_week_num~%float64 gps_seconds~%~%# Bit       Mask      Description~%#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)~%#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)~%#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)~%#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)~%#  4     0x00000010   <Reserved>~%#  5     0x00000020   Antenna open flag (0: OK, 1: Open)~%#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)~%#  7     0x00000080   CPU overload flag~%#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)~%#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)~%#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)~%#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)~%#  12    0x00001000   <Reserved>~%#  13    0x00002000   <Reserved>~%#  14    0x00004000   <Reserved>~%#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)~%#  16    0x00010000   <Reserverd>~%#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)~%#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)~%#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)~%#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)~%#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)~%#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)~%#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)~%#  24    0x01000000   Software resource (0: OK, 1: Warning)~%#  25    0x02000000   <Reserved>~%#  26    0x04000000   <Reserved>~%#  27    0x08000000   <Reserved>~%#  28    0x10000000   <Reserved>~%#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)~%#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)~%#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)~%NovatelReceiverStatus receiver_status~%~%# Receiver build number (0-65535)~%uint32 receiver_software_version~%================================================================================~%MSG: novatel_gps_msgs/NovatelReceiverStatus~%# From the original Novatel receiver status message bitfield~%#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)~%#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)~%#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)~%#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)~%#  4     0x00000010   <Reserved>~%#  5     0x00000020   Antenna open flag (0: OK, 1: Open)~%#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)~%#  7     0x00000080   CPU overload flag~%#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)~%#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)~%#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)~%#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)~%#  12    0x00001000   <Reserved>~%#  13    0x00002000   <Reserved>~%#  14    0x00004000   <Reserved>~%#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)~%#  16    0x00010000   <Reserverd>~%#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)~%#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)~%#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)~%#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)~%#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)~%#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)~%#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)~%#  24    0x01000000   Software resource (0: OK, 1: Warning)~%#  25    0x02000000   <Reserved>~%#  26    0x04000000   <Reserved>~%#  27    0x08000000   <Reserved>~%#  28    0x10000000   <Reserved>~%#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)~%#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)~%#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)~%uint32 original_status_code~%bool error_flag~%bool temperature_flag~%bool voltage_supply_flag~%bool antenna_powered~%bool antenna_is_open~%bool antenna_is_shorted~%bool cpu_overload_flag~%bool com1_buffer_overrun~%bool com2_buffer_overrun~%bool com3_buffer_overrun~%bool usb_buffer_overrun~%bool rf1_agc_flag~%bool rf2_agc_flag~%bool almanac_flag~%bool position_solution_flag~%bool position_fixed_flag~%bool clock_steering_status_enabled~%bool clock_model_flag~%bool oemv_external_oscillator_flag~%bool software_resource_flag~%bool aux1_status_event_flag~%bool aux2_status_event_flag~%bool aux3_status_event_flag~%~%~%================================================================================~%MSG: novatel_gps_msgs/NovatelPsrdop2System~%# GNSS System information provided by PSRDOP2 logs~%string system~%float32 tdop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NovatelPsrdop2)))
  "Returns full string definition for message of type 'NovatelPsrdop2"
  (cl:format cl:nil "# PSR Dilution of Precision (DOP) values~%std_msgs/Header header~%~%NovatelMessageHeader novatel_msg_header~%~%# Geometry dilution of precision~%float32 gdop~%# Position dilution of precision~%float32 pdop~%# Horizontal dilution of precision~%float32 hdop~%# Vertical dilution of precision~%float32 vdop~%~%# Time dilution of precision for each GNSS system~%NovatelPsrdop2System[] systems~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: novatel_gps_msgs/NovatelMessageHeader~%# Novatel Message Header~%~%string message_name~%string port~%uint32 sequence_num~%float32 percent_idle_time~%string gps_time_status~%uint32 gps_week_num~%float64 gps_seconds~%~%# Bit       Mask      Description~%#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)~%#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)~%#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)~%#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)~%#  4     0x00000010   <Reserved>~%#  5     0x00000020   Antenna open flag (0: OK, 1: Open)~%#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)~%#  7     0x00000080   CPU overload flag~%#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)~%#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)~%#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)~%#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)~%#  12    0x00001000   <Reserved>~%#  13    0x00002000   <Reserved>~%#  14    0x00004000   <Reserved>~%#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)~%#  16    0x00010000   <Reserverd>~%#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)~%#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)~%#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)~%#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)~%#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)~%#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)~%#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)~%#  24    0x01000000   Software resource (0: OK, 1: Warning)~%#  25    0x02000000   <Reserved>~%#  26    0x04000000   <Reserved>~%#  27    0x08000000   <Reserved>~%#  28    0x10000000   <Reserved>~%#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)~%#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)~%#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)~%NovatelReceiverStatus receiver_status~%~%# Receiver build number (0-65535)~%uint32 receiver_software_version~%================================================================================~%MSG: novatel_gps_msgs/NovatelReceiverStatus~%# From the original Novatel receiver status message bitfield~%#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)~%#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)~%#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)~%#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)~%#  4     0x00000010   <Reserved>~%#  5     0x00000020   Antenna open flag (0: OK, 1: Open)~%#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)~%#  7     0x00000080   CPU overload flag~%#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)~%#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)~%#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)~%#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)~%#  12    0x00001000   <Reserved>~%#  13    0x00002000   <Reserved>~%#  14    0x00004000   <Reserved>~%#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)~%#  16    0x00010000   <Reserverd>~%#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)~%#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)~%#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)~%#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)~%#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)~%#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)~%#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)~%#  24    0x01000000   Software resource (0: OK, 1: Warning)~%#  25    0x02000000   <Reserved>~%#  26    0x04000000   <Reserved>~%#  27    0x08000000   <Reserved>~%#  28    0x10000000   <Reserved>~%#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)~%#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)~%#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)~%uint32 original_status_code~%bool error_flag~%bool temperature_flag~%bool voltage_supply_flag~%bool antenna_powered~%bool antenna_is_open~%bool antenna_is_shorted~%bool cpu_overload_flag~%bool com1_buffer_overrun~%bool com2_buffer_overrun~%bool com3_buffer_overrun~%bool usb_buffer_overrun~%bool rf1_agc_flag~%bool rf2_agc_flag~%bool almanac_flag~%bool position_solution_flag~%bool position_fixed_flag~%bool clock_steering_status_enabled~%bool clock_model_flag~%bool oemv_external_oscillator_flag~%bool software_resource_flag~%bool aux1_status_event_flag~%bool aux2_status_event_flag~%bool aux3_status_event_flag~%~%~%================================================================================~%MSG: novatel_gps_msgs/NovatelPsrdop2System~%# GNSS System information provided by PSRDOP2 logs~%string system~%float32 tdop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NovatelPsrdop2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'novatel_msg_header))
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'systems) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NovatelPsrdop2>))
  "Converts a ROS message object to a list"
  (cl:list 'NovatelPsrdop2
    (cl:cons ':header (header msg))
    (cl:cons ':novatel_msg_header (novatel_msg_header msg))
    (cl:cons ':gdop (gdop msg))
    (cl:cons ':pdop (pdop msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':vdop (vdop msg))
    (cl:cons ':systems (systems msg))
))
