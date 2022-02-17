; Auto-generated. Do not edit!


(cl:in-package novatel_gps_msgs-msg)


;//! \htmlinclude NovatelPsrdop2System.msg.html

(cl:defclass <NovatelPsrdop2System> (roslisp-msg-protocol:ros-message)
  ((system
    :reader system
    :initarg :system
    :type cl:string
    :initform "")
   (tdop
    :reader tdop
    :initarg :tdop
    :type cl:float
    :initform 0.0))
)

(cl:defclass NovatelPsrdop2System (<NovatelPsrdop2System>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NovatelPsrdop2System>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NovatelPsrdop2System)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_gps_msgs-msg:<NovatelPsrdop2System> is deprecated: use novatel_gps_msgs-msg:NovatelPsrdop2System instead.")))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <NovatelPsrdop2System>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:system-val is deprecated.  Use novatel_gps_msgs-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'tdop-val :lambda-list '(m))
(cl:defmethod tdop-val ((m <NovatelPsrdop2System>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_gps_msgs-msg:tdop-val is deprecated.  Use novatel_gps_msgs-msg:tdop instead.")
  (tdop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NovatelPsrdop2System>) ostream)
  "Serializes a message object of type '<NovatelPsrdop2System>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NovatelPsrdop2System>) istream)
  "Deserializes a message object of type '<NovatelPsrdop2System>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tdop) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NovatelPsrdop2System>)))
  "Returns string type for a message object of type '<NovatelPsrdop2System>"
  "novatel_gps_msgs/NovatelPsrdop2System")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NovatelPsrdop2System)))
  "Returns string type for a message object of type 'NovatelPsrdop2System"
  "novatel_gps_msgs/NovatelPsrdop2System")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NovatelPsrdop2System>)))
  "Returns md5sum for a message object of type '<NovatelPsrdop2System>"
  "59dbc686e7d2261c67fc353e8280db4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NovatelPsrdop2System)))
  "Returns md5sum for a message object of type 'NovatelPsrdop2System"
  "59dbc686e7d2261c67fc353e8280db4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NovatelPsrdop2System>)))
  "Returns full string definition for message of type '<NovatelPsrdop2System>"
  (cl:format cl:nil "# GNSS System information provided by PSRDOP2 logs~%string system~%float32 tdop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NovatelPsrdop2System)))
  "Returns full string definition for message of type 'NovatelPsrdop2System"
  (cl:format cl:nil "# GNSS System information provided by PSRDOP2 logs~%string system~%float32 tdop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NovatelPsrdop2System>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'system))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NovatelPsrdop2System>))
  "Converts a ROS message object to a list"
  (cl:list 'NovatelPsrdop2System
    (cl:cons ':system (system msg))
    (cl:cons ':tdop (tdop msg))
))
