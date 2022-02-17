; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RestrictionClassList.msg.html

(cl:defclass <RestrictionClassList> (roslisp-msg-protocol:ros-message)
  ((restriction_class_list
    :reader restriction_class_list
    :initarg :restriction_class_list
    :type (cl:vector j2735_msgs-msg:RestrictionClassAssignment)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:RestrictionClassAssignment :initial-element (cl:make-instance 'j2735_msgs-msg:RestrictionClassAssignment))))
)

(cl:defclass RestrictionClassList (<RestrictionClassList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestrictionClassList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestrictionClassList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RestrictionClassList> is deprecated: use j2735_msgs-msg:RestrictionClassList instead.")))

(cl:ensure-generic-function 'restriction_class_list-val :lambda-list '(m))
(cl:defmethod restriction_class_list-val ((m <RestrictionClassList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:restriction_class_list-val is deprecated.  Use j2735_msgs-msg:restriction_class_list instead.")
  (restriction_class_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestrictionClassList>) ostream)
  "Serializes a message object of type '<RestrictionClassList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'restriction_class_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'restriction_class_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestrictionClassList>) istream)
  "Deserializes a message object of type '<RestrictionClassList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'restriction_class_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'restriction_class_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:RestrictionClassAssignment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestrictionClassList>)))
  "Returns string type for a message object of type '<RestrictionClassList>"
  "j2735_msgs/RestrictionClassList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestrictionClassList)))
  "Returns string type for a message object of type 'RestrictionClassList"
  "j2735_msgs/RestrictionClassList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestrictionClassList>)))
  "Returns md5sum for a message object of type '<RestrictionClassList>"
  "39c5820cd159fd97238dd797c4d5b5d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestrictionClassList)))
  "Returns md5sum for a message object of type 'RestrictionClassList"
  "39c5820cd159fd97238dd797c4d5b5d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestrictionClassList>)))
  "Returns full string definition for message of type '<RestrictionClassList>"
  (cl:format cl:nil "#~%# RestrictionClassList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionClassList data frame is used to enumerate a list of user classes which belong to a given~%# assigned index. The resulting collection is treated as a group by the signal controller when it issues movement data~%# (signal phase information) with the GroupID for this group. This data frame is typically static for long periods of time~%# (months) and conveyed to the user by means of the MAP message.~%~%# RestrictionClassList ::= SEQUENCE (SIZE(1..254)) OF RestrictionClassAssignment~%~%j2735_msgs/RestrictionClassAssignment[] restriction_class_list~%================================================================================~%MSG: j2735_msgs/RestrictionClassAssignment~%#~%# RestrictionClassAssignment.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionClassAssignment data frame is used to assign (or bind) a single RestrictionClassID data~%# element to a list of all user classes to which it applies. A collection of these bindings is conveyed in the~%# RestrictionClassList data frame in the MAP message to travelers.~%#~%# RestrictionClassAssignment ::= SEQUENCE {~%# id RestrictionClassID,~%# -- the unique value (within an intersection or local region)~%# -- that is assigned to this group of users~%# users RestrictionUserTypeList~%# -- The list of user types/classes~%# -- to which this restriction ID applies~%# }~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 id~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestrictionClassList)))
  "Returns full string definition for message of type 'RestrictionClassList"
  (cl:format cl:nil "#~%# RestrictionClassList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionClassList data frame is used to enumerate a list of user classes which belong to a given~%# assigned index. The resulting collection is treated as a group by the signal controller when it issues movement data~%# (signal phase information) with the GroupID for this group. This data frame is typically static for long periods of time~%# (months) and conveyed to the user by means of the MAP message.~%~%# RestrictionClassList ::= SEQUENCE (SIZE(1..254)) OF RestrictionClassAssignment~%~%j2735_msgs/RestrictionClassAssignment[] restriction_class_list~%================================================================================~%MSG: j2735_msgs/RestrictionClassAssignment~%#~%# RestrictionClassAssignment.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RestrictionClassAssignment data frame is used to assign (or bind) a single RestrictionClassID data~%# element to a list of all user classes to which it applies. A collection of these bindings is conveyed in the~%# RestrictionClassList data frame in the MAP message to travelers.~%#~%# RestrictionClassAssignment ::= SEQUENCE {~%# id RestrictionClassID,~%# -- the unique value (within an intersection or local region)~%# -- that is assigned to this group of users~%# users RestrictionUserTypeList~%# -- The list of user types/classes~%# -- to which this restriction ID applies~%# }~%~%# RestrictionClassID ::= INTEGER (0..255)~%uint8 id~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestrictionClassList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'restriction_class_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestrictionClassList>))
  "Converts a ROS message object to a list"
  (cl:list 'RestrictionClassList
    (cl:cons ':restriction_class_list (restriction_class_list msg))
))
