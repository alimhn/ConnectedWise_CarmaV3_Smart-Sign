; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RestrictionClassAssignment.msg.html

(cl:defclass <RestrictionClassAssignment> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RestrictionClassAssignment (<RestrictionClassAssignment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestrictionClassAssignment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestrictionClassAssignment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RestrictionClassAssignment> is deprecated: use j2735_msgs-msg:RestrictionClassAssignment instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RestrictionClassAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestrictionClassAssignment>) ostream)
  "Serializes a message object of type '<RestrictionClassAssignment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestrictionClassAssignment>) istream)
  "Deserializes a message object of type '<RestrictionClassAssignment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestrictionClassAssignment>)))
  "Returns string type for a message object of type '<RestrictionClassAssignment>"
  "j2735_msgs/RestrictionClassAssignment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestrictionClassAssignment)))
  "Returns string type for a message object of type 'RestrictionClassAssignment"
  "j2735_msgs/RestrictionClassAssignment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestrictionClassAssignment>)))
  "Returns md5sum for a message object of type '<RestrictionClassAssignment>"
  "541b98e964705918fa8eb206b65347b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestrictionClassAssignment)))
  "Returns md5sum for a message object of type 'RestrictionClassAssignment"
  "541b98e964705918fa8eb206b65347b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestrictionClassAssignment>)))
  "Returns full string definition for message of type '<RestrictionClassAssignment>"
  (cl:format cl:nil "#~%# RestrictionClassAssignment.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionClassAssignment data frame is used to assign (or bind) a single RestrictionClassID data~%# element to a list of all user classes to which it applies. A collection of these bindings is conveyed in the~%# RestrictionClassList data frame in the MAP message to travelers.~%#~%# RestrictionClassAssignment ::= SEQUENCE {~%# id RestrictionClassID,~%# -- the unique value (within an intersection or local region)~%# -- that is assigned to this group of users~%# users RestrictionUserTypeList~%# -- The list of user types/classes~%# -- to which this restriction ID applies~%# }~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 id~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestrictionClassAssignment)))
  "Returns full string definition for message of type 'RestrictionClassAssignment"
  (cl:format cl:nil "#~%# RestrictionClassAssignment.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionClassAssignment data frame is used to assign (or bind) a single RestrictionClassID data~%# element to a list of all user classes to which it applies. A collection of these bindings is conveyed in the~%# RestrictionClassList data frame in the MAP message to travelers.~%#~%# RestrictionClassAssignment ::= SEQUENCE {~%# id RestrictionClassID,~%# -- the unique value (within an intersection or local region)~%# -- that is assigned to this group of users~%# users RestrictionUserTypeList~%# -- The list of user types/classes~%# -- to which this restriction ID applies~%# }~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 id~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestrictionClassAssignment>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestrictionClassAssignment>))
  "Converts a ROS message object to a list"
  (cl:list 'RestrictionClassAssignment
    (cl:cons ':id (id msg))
))
