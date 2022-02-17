; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlSchedule.msg.html

(cl:defclass <TrafficControlSchedule> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:integer
    :initform 0)
   (end
    :reader end
    :initarg :end
    :type cl:integer
    :initform 0)
   (end_exists
    :reader end_exists
    :initarg :end_exists
    :type cl:boolean
    :initform cl:nil)
   (dow
    :reader dow
    :initarg :dow
    :type j2735_msgs-msg:DayOfWeek
    :initform (cl:make-instance 'j2735_msgs-msg:DayOfWeek))
   (dow_exists
    :reader dow_exists
    :initarg :dow_exists
    :type cl:boolean
    :initform cl:nil)
   (between
    :reader between
    :initarg :between
    :type (cl:vector j2735_msgs-msg:DailySchedule)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:DailySchedule :initial-element (cl:make-instance 'j2735_msgs-msg:DailySchedule)))
   (between_exists
    :reader between_exists
    :initarg :between_exists
    :type cl:boolean
    :initform cl:nil)
   (repeat
    :reader repeat
    :initarg :repeat
    :type j2735_msgs-msg:RepeatParams
    :initform (cl:make-instance 'j2735_msgs-msg:RepeatParams))
   (repeat_exists
    :reader repeat_exists
    :initarg :repeat_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficControlSchedule (<TrafficControlSchedule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlSchedule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlSchedule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlSchedule> is deprecated: use j2735_msgs-msg:TrafficControlSchedule instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:start-val is deprecated.  Use j2735_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:end-val is deprecated.  Use j2735_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'end_exists-val :lambda-list '(m))
(cl:defmethod end_exists-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:end_exists-val is deprecated.  Use j2735_msgs-msg:end_exists instead.")
  (end_exists m))

(cl:ensure-generic-function 'dow-val :lambda-list '(m))
(cl:defmethod dow-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:dow-val is deprecated.  Use j2735_msgs-msg:dow instead.")
  (dow m))

(cl:ensure-generic-function 'dow_exists-val :lambda-list '(m))
(cl:defmethod dow_exists-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:dow_exists-val is deprecated.  Use j2735_msgs-msg:dow_exists instead.")
  (dow_exists m))

(cl:ensure-generic-function 'between-val :lambda-list '(m))
(cl:defmethod between-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:between-val is deprecated.  Use j2735_msgs-msg:between instead.")
  (between m))

(cl:ensure-generic-function 'between_exists-val :lambda-list '(m))
(cl:defmethod between_exists-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:between_exists-val is deprecated.  Use j2735_msgs-msg:between_exists instead.")
  (between_exists m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:repeat-val is deprecated.  Use j2735_msgs-msg:repeat instead.")
  (repeat m))

(cl:ensure-generic-function 'repeat_exists-val :lambda-list '(m))
(cl:defmethod repeat_exists-val ((m <TrafficControlSchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:repeat_exists-val is deprecated.  Use j2735_msgs-msg:repeat_exists instead.")
  (repeat_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlSchedule>) ostream)
  "Serializes a message object of type '<TrafficControlSchedule>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'end_exists) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dow) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dow_exists) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'between))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'between))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'between_exists) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'repeat) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'repeat_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlSchedule>) istream)
  "Deserializes a message object of type '<TrafficControlSchedule>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dow) istream)
    (cl:setf (cl:slot-value msg 'dow_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'between) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'between)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:DailySchedule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'between_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'repeat) istream)
    (cl:setf (cl:slot-value msg 'repeat_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlSchedule>)))
  "Returns string type for a message object of type '<TrafficControlSchedule>"
  "j2735_msgs/TrafficControlSchedule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlSchedule)))
  "Returns string type for a message object of type 'TrafficControlSchedule"
  "j2735_msgs/TrafficControlSchedule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlSchedule>)))
  "Returns md5sum for a message object of type '<TrafficControlSchedule>"
  "d17eb8005cfede95b7226b8161cb7840")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlSchedule)))
  "Returns md5sum for a message object of type 'TrafficControlSchedule"
  "d17eb8005cfede95b7226b8161cb7840")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlSchedule>)))
  "Returns full string definition for message of type '<TrafficControlSchedule>"
  (cl:format cl:nil "#~%# TrafficControlSchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlSchedule ::= SEQUENCE~%# {~%# 	start EpochMins, -- start time required, even if it's the epoch value zero~%# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%# 	dow [1] DayOfWeek OPTIONAL, ~%# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%# 	repeat [3] RepeatParams OPTIONAL~%# }~%~%# start EpochMins, -- start time required, even if it's the epoch value zero~%uint64 start~%~%# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%uint64 end~%bool end_exists~%~%# dow [1] DayOfWeek OPTIONAL, ~%j2735_msgs/DayOfWeek dow~%bool dow_exists~%~%# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%j2735_msgs/DailySchedule[] between~%bool between_exists~%~%# repeat [3] RepeatParams OPTIONAL~%j2735_msgs/RepeatParams repeat~%bool repeat_exists~%~%================================================================================~%MSG: j2735_msgs/DayOfWeek~%#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%================================================================================~%MSG: j2735_msgs/DailySchedule~%#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%================================================================================~%MSG: j2735_msgs/RepeatParams~%#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlSchedule)))
  "Returns full string definition for message of type 'TrafficControlSchedule"
  (cl:format cl:nil "#~%# TrafficControlSchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlSchedule ::= SEQUENCE~%# {~%# 	start EpochMins, -- start time required, even if it's the epoch value zero~%# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%# 	dow [1] DayOfWeek OPTIONAL, ~%# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%# 	repeat [3] RepeatParams OPTIONAL~%# }~%~%# start EpochMins, -- start time required, even if it's the epoch value zero~%uint64 start~%~%# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912~%uint64 end~%bool end_exists~%~%# dow [1] DayOfWeek OPTIONAL, ~%j2735_msgs/DayOfWeek dow~%bool dow_exists~%~%# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, ~%j2735_msgs/DailySchedule[] between~%bool between_exists~%~%# repeat [3] RepeatParams OPTIONAL~%j2735_msgs/RepeatParams repeat~%bool repeat_exists~%~%================================================================================~%MSG: j2735_msgs/DayOfWeek~%#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%================================================================================~%MSG: j2735_msgs/DailySchedule~%#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%================================================================================~%MSG: j2735_msgs/RepeatParams~%#~%# RepeatParams.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# ...~%~%# RepeatParams ::= SEQUENCE~%# {~%# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time~%# 	period INTEGER (0..1439), -- minutes between successive time spans~%# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period~%# }~%~%# Offset ~%# shift repetition start relative to midnight local time~%uint16 offset~%~%# Period~%# minutes between successive time spans~%uint16 period~%~%# Span~%# number of minutes schedule is active, must be less than the period~%uint16 span~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlSchedule>))
  (cl:+ 0
     8
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dow))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'between) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'repeat))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlSchedule>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlSchedule
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':end_exists (end_exists msg))
    (cl:cons ':dow (dow msg))
    (cl:cons ':dow_exists (dow_exists msg))
    (cl:cons ':between (between msg))
    (cl:cons ':between_exists (between_exists msg))
    (cl:cons ':repeat (repeat msg))
    (cl:cons ':repeat_exists (repeat_exists msg))
))
