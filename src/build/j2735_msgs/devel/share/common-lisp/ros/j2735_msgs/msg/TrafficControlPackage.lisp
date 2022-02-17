; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlPackage.msg.html

(cl:defclass <TrafficControlPackage> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (label_exists
    :reader label_exists
    :initarg :label_exists
    :type cl:boolean
    :initform cl:nil)
   (tcids
    :reader tcids
    :initarg :tcids
    :type (cl:vector j2735_msgs-msg:Id128b)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:Id128b :initial-element (cl:make-instance 'j2735_msgs-msg:Id128b))))
)

(cl:defclass TrafficControlPackage (<TrafficControlPackage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlPackage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlPackage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlPackage> is deprecated: use j2735_msgs-msg:TrafficControlPackage instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <TrafficControlPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:label-val is deprecated.  Use j2735_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'label_exists-val :lambda-list '(m))
(cl:defmethod label_exists-val ((m <TrafficControlPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:label_exists-val is deprecated.  Use j2735_msgs-msg:label_exists instead.")
  (label_exists m))

(cl:ensure-generic-function 'tcids-val :lambda-list '(m))
(cl:defmethod tcids-val ((m <TrafficControlPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:tcids-val is deprecated.  Use j2735_msgs-msg:tcids instead.")
  (tcids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlPackage>) ostream)
  "Serializes a message object of type '<TrafficControlPackage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'label_exists) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tcids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tcids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlPackage>) istream)
  "Deserializes a message object of type '<TrafficControlPackage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'label_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tcids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tcids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:Id128b))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlPackage>)))
  "Returns string type for a message object of type '<TrafficControlPackage>"
  "j2735_msgs/TrafficControlPackage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlPackage)))
  "Returns string type for a message object of type 'TrafficControlPackage"
  "j2735_msgs/TrafficControlPackage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlPackage>)))
  "Returns md5sum for a message object of type '<TrafficControlPackage>"
  "dd983631799aa912d10b4a250bae5780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlPackage)))
  "Returns md5sum for a message object of type 'TrafficControlPackage"
  "dd983631799aa912d10b4a250bae5780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlPackage>)))
  "Returns full string definition for message of type '<TrafficControlPackage>"
  (cl:format cl:nil "#~%# TrafficControlPackage.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlPackage ::= SEQUENCE~%# {~%# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%# }~%~%# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%string label~%~%bool label_exists~%~%# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%j2735_msgs/Id128b[] tcids~%~%================================================================================~%MSG: j2735_msgs/Id128b~%#~%# Id128b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids~%~%uint8[16] id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlPackage)))
  "Returns full string definition for message of type 'TrafficControlPackage"
  (cl:format cl:nil "#~%# TrafficControlPackage.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# TrafficControlPackage ::= SEQUENCE~%# {~%# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%# }~%~%# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.~%string label~%~%bool label_exists~%~%# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids~%j2735_msgs/Id128b[] tcids~%~%================================================================================~%MSG: j2735_msgs/Id128b~%#~%# Id128b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids~%~%uint8[16] id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlPackage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tcids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlPackage>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlPackage
    (cl:cons ':label (label msg))
    (cl:cons ':label_exists (label_exists msg))
    (cl:cons ':tcids (tcids msg))
))
