; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude PreemptPriorityList.msg.html

(cl:defclass <PreemptPriorityList> (roslisp-msg-protocol:ros-message)
  ((preempt_priority_list
    :reader preempt_priority_list
    :initarg :preempt_priority_list
    :type (cl:vector j2735_msgs-msg:SignalControlZone)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:SignalControlZone :initial-element (cl:make-instance 'j2735_msgs-msg:SignalControlZone))))
)

(cl:defclass PreemptPriorityList (<PreemptPriorityList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PreemptPriorityList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PreemptPriorityList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<PreemptPriorityList> is deprecated: use j2735_msgs-msg:PreemptPriorityList instead.")))

(cl:ensure-generic-function 'preempt_priority_list-val :lambda-list '(m))
(cl:defmethod preempt_priority_list-val ((m <PreemptPriorityList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:preempt_priority_list-val is deprecated.  Use j2735_msgs-msg:preempt_priority_list instead.")
  (preempt_priority_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PreemptPriorityList>) ostream)
  "Serializes a message object of type '<PreemptPriorityList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'preempt_priority_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'preempt_priority_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PreemptPriorityList>) istream)
  "Deserializes a message object of type '<PreemptPriorityList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'preempt_priority_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'preempt_priority_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:SignalControlZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PreemptPriorityList>)))
  "Returns string type for a message object of type '<PreemptPriorityList>"
  "j2735_msgs/PreemptPriorityList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PreemptPriorityList)))
  "Returns string type for a message object of type 'PreemptPriorityList"
  "j2735_msgs/PreemptPriorityList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PreemptPriorityList>)))
  "Returns md5sum for a message object of type '<PreemptPriorityList>"
  "540868150c1511ed84c0943e75886b4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PreemptPriorityList)))
  "Returns md5sum for a message object of type 'PreemptPriorityList"
  "540868150c1511ed84c0943e75886b4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PreemptPriorityList>)))
  "Returns full string definition for message of type '<PreemptPriorityList>"
  (cl:format cl:nil "#~%# PreemptPriorityList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_PreemptPriorityList data frame consists of a list of RegionalSignalControlZone entries.~%#~%# PreemptPriorityList ::= SEQUENCE (SIZE(1..32)) OF SignalControlZone~%#~%#~%~%j2735_msgs/SignalControlZone[] preempt_priority_list~%~%~%================================================================================~%MSG: j2735_msgs/SignalControlZone~%#~%# SignalControlZone.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SignalControlZone ::= SEQUENCE {~%# zone RegionalExtension {{REGION.Reg-SignalControlZone}},~%# ...~%# }~%#~%# regional_extension  #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PreemptPriorityList)))
  "Returns full string definition for message of type 'PreemptPriorityList"
  (cl:format cl:nil "#~%# PreemptPriorityList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_PreemptPriorityList data frame consists of a list of RegionalSignalControlZone entries.~%#~%# PreemptPriorityList ::= SEQUENCE (SIZE(1..32)) OF SignalControlZone~%#~%#~%~%j2735_msgs/SignalControlZone[] preempt_priority_list~%~%~%================================================================================~%MSG: j2735_msgs/SignalControlZone~%#~%# SignalControlZone.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SignalControlZone ::= SEQUENCE {~%# zone RegionalExtension {{REGION.Reg-SignalControlZone}},~%# ...~%# }~%#~%# regional_extension  #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PreemptPriorityList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'preempt_priority_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PreemptPriorityList>))
  "Converts a ROS message object to a list"
  (cl:list 'PreemptPriorityList
    (cl:cons ':preempt_priority_list (preempt_priority_list msg))
))
