; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude DailySchedule.msg.html

(cl:defclass <DailySchedule> (roslisp-msg-protocol:ros-message)
  ((begin
    :reader begin
    :initarg :begin
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DailySchedule (<DailySchedule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DailySchedule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DailySchedule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<DailySchedule> is deprecated: use j2735_msgs-msg:DailySchedule instead.")))

(cl:ensure-generic-function 'begin-val :lambda-list '(m))
(cl:defmethod begin-val ((m <DailySchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:begin-val is deprecated.  Use j2735_msgs-msg:begin instead.")
  (begin m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <DailySchedule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:duration-val is deprecated.  Use j2735_msgs-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DailySchedule>) ostream)
  "Serializes a message object of type '<DailySchedule>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'begin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'begin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DailySchedule>) istream)
  "Deserializes a message object of type '<DailySchedule>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'begin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'begin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DailySchedule>)))
  "Returns string type for a message object of type '<DailySchedule>"
  "j2735_msgs/DailySchedule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DailySchedule)))
  "Returns string type for a message object of type 'DailySchedule"
  "j2735_msgs/DailySchedule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DailySchedule>)))
  "Returns md5sum for a message object of type '<DailySchedule>"
  "37a52901ec18d4d604c666475255ca60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DailySchedule)))
  "Returns md5sum for a message object of type 'DailySchedule"
  "37a52901ec18d4d604c666475255ca60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DailySchedule>)))
  "Returns full string definition for message of type '<DailySchedule>"
  (cl:format cl:nil "#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DailySchedule)))
  "Returns full string definition for message of type 'DailySchedule"
  (cl:format cl:nil "#~%# DailySchedule.msg~%#~%# Part of the CARMA Cloud geo-fence specification for vehicle internal use.~%#~%# @author Misheel Bayartsengel ~%# @version 0.1~%#~%# Description~%# The schedule bounds of a geofence within a specific day of the week~%~%# DailySchedule ::= SEQUENCE~%# {~%# 	begin INTEGER (0..1439), -- minutes relative to midnight local time~%# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day~%# }~%~%# begin INTEGER (0..1439), -- minutes relative to midnight local time~%uint16 begin~%~%# duration INTEGER (0..1439) -- the number of active minutes, up to one day~%uint16 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DailySchedule>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DailySchedule>))
  "Converts a ROS message object to a list"
  (cl:list 'DailySchedule
    (cl:cons ':begin (begin msg))
    (cl:cons ':duration (duration msg))
))
