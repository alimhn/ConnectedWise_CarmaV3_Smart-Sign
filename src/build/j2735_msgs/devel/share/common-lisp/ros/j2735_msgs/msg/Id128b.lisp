; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude Id128b.msg.html

(cl:defclass <Id128b> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Id128b (<Id128b>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Id128b>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Id128b)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<Id128b> is deprecated: use j2735_msgs-msg:Id128b instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Id128b>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Id128b>) ostream)
  "Serializes a message object of type '<Id128b>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Id128b>) istream)
  "Deserializes a message object of type '<Id128b>"
  (cl:setf (cl:slot-value msg 'id) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Id128b>)))
  "Returns string type for a message object of type '<Id128b>"
  "j2735_msgs/Id128b")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Id128b)))
  "Returns string type for a message object of type 'Id128b"
  "j2735_msgs/Id128b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Id128b>)))
  "Returns md5sum for a message object of type '<Id128b>"
  "7fe329a75c903e74f51ef1477e8e6b44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Id128b)))
  "Returns md5sum for a message object of type 'Id128b"
  "7fe329a75c903e74f51ef1477e8e6b44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Id128b>)))
  "Returns full string definition for message of type '<Id128b>"
  (cl:format cl:nil "#~%# Id128b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids~%~%uint8[16] id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Id128b)))
  "Returns full string definition for message of type 'Id128b"
  (cl:format cl:nil "#~%# Id128b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids~%~%uint8[16] id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Id128b>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Id128b>))
  "Converts a ROS message object to a list"
  (cl:list 'Id128b
    (cl:cons ':id (id msg))
))
