; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude DayOfWeek.msg.html

(cl:defclass <DayOfWeek> (roslisp-msg-protocol:ros-message)
  ((dow
    :reader dow
    :initarg :dow
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 7 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass DayOfWeek (<DayOfWeek>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DayOfWeek>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DayOfWeek)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<DayOfWeek> is deprecated: use j2735_msgs-msg:DayOfWeek instead.")))

(cl:ensure-generic-function 'dow-val :lambda-list '(m))
(cl:defmethod dow-val ((m <DayOfWeek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:dow-val is deprecated.  Use j2735_msgs-msg:dow instead.")
  (dow m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DayOfWeek>)))
    "Constants for message type '<DayOfWeek>"
  '((:SUN . 6)
    (:MON . 5)
    (:TUE . 4)
    (:WED . 3)
    (:THU . 2)
    (:FRI . 1)
    (:SAT . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DayOfWeek)))
    "Constants for message type 'DayOfWeek"
  '((:SUN . 6)
    (:MON . 5)
    (:TUE . 4)
    (:WED . 3)
    (:THU . 2)
    (:FRI . 1)
    (:SAT . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DayOfWeek>) ostream)
  "Serializes a message object of type '<DayOfWeek>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'dow))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DayOfWeek>) istream)
  "Deserializes a message object of type '<DayOfWeek>"
  (cl:setf (cl:slot-value msg 'dow) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'dow)))
    (cl:dotimes (i 7)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DayOfWeek>)))
  "Returns string type for a message object of type '<DayOfWeek>"
  "j2735_msgs/DayOfWeek")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DayOfWeek)))
  "Returns string type for a message object of type 'DayOfWeek"
  "j2735_msgs/DayOfWeek")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DayOfWeek>)))
  "Returns md5sum for a message object of type '<DayOfWeek>"
  "f02f8ee3b681fb434a4b191ed968fae8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DayOfWeek)))
  "Returns md5sum for a message object of type 'DayOfWeek"
  "f02f8ee3b681fb434a4b191ed968fae8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DayOfWeek>)))
  "Returns full string definition for message of type '<DayOfWeek>"
  (cl:format cl:nil "#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DayOfWeek)))
  "Returns full string definition for message of type 'DayOfWeek"
  (cl:format cl:nil "#~%# DayOfWeek.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# DayOfWeek ::= BIT STRING //only J~%# {~%# 	sun (6), ~%# 	mon (5), ~%# 	tue (4), ~%# 	wed (3), ~%# 	thu (2), ~%# 	fri (1), ~%# 	sat (0)~%# }~%~%uint8[7] dow~%~%# enumeration values for day of week~%uint8 SUN = 6  ~%uint8 MON = 5~%uint8 TUE = 4  ~%uint8 WED = 3  ~%uint8 THU = 2  ~%uint8 FRI = 1  ~%uint8 SAT = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DayOfWeek>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dow) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DayOfWeek>))
  "Converts a ROS message object to a list"
  (cl:list 'DayOfWeek
    (cl:cons ':dow (dow msg))
))
