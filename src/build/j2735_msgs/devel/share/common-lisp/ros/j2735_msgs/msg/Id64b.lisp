; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude Id64b.msg.html

(cl:defclass <Id64b> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Id64b (<Id64b>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Id64b>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Id64b)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<Id64b> is deprecated: use j2735_msgs-msg:Id64b instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Id64b>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Id64b>) ostream)
  "Serializes a message object of type '<Id64b>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Id64b>) istream)
  "Deserializes a message object of type '<Id64b>"
  (cl:setf (cl:slot-value msg 'id) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Id64b>)))
  "Returns string type for a message object of type '<Id64b>"
  "j2735_msgs/Id64b")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Id64b)))
  "Returns string type for a message object of type 'Id64b"
  "j2735_msgs/Id64b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Id64b>)))
  "Returns md5sum for a message object of type '<Id64b>"
  "f930fa161339760af1ea9b5fe1cfec73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Id64b)))
  "Returns md5sum for a message object of type 'Id64b"
  "f930fa161339760af1ea9b5fe1cfec73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Id64b>)))
  "Returns full string definition for message of type '<Id64b>"
  (cl:format cl:nil "#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Id64b)))
  "Returns full string definition for message of type 'Id64b"
  (cl:format cl:nil "#~%# Id64b.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids~%~%uint8[8] id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Id64b>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Id64b>))
  "Converts a ROS message object to a list"
  (cl:list 'Id64b
    (cl:cons ':id (id msg))
))
