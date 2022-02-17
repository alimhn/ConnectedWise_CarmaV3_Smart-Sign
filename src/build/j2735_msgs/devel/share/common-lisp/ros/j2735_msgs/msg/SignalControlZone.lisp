; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude SignalControlZone.msg.html

(cl:defclass <SignalControlZone> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SignalControlZone (<SignalControlZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalControlZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalControlZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<SignalControlZone> is deprecated: use j2735_msgs-msg:SignalControlZone instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalControlZone>) ostream)
  "Serializes a message object of type '<SignalControlZone>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalControlZone>) istream)
  "Deserializes a message object of type '<SignalControlZone>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalControlZone>)))
  "Returns string type for a message object of type '<SignalControlZone>"
  "j2735_msgs/SignalControlZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalControlZone)))
  "Returns string type for a message object of type 'SignalControlZone"
  "j2735_msgs/SignalControlZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalControlZone>)))
  "Returns md5sum for a message object of type '<SignalControlZone>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalControlZone)))
  "Returns md5sum for a message object of type 'SignalControlZone"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalControlZone>)))
  "Returns full string definition for message of type '<SignalControlZone>"
  (cl:format cl:nil "#~%# SignalControlZone.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SignalControlZone ::= SEQUENCE {~%# zone RegionalExtension {{REGION.Reg-SignalControlZone}},~%# ...~%# }~%#~%# regional_extension  #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalControlZone)))
  "Returns full string definition for message of type 'SignalControlZone"
  (cl:format cl:nil "#~%# SignalControlZone.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# SignalControlZone ::= SEQUENCE {~%# zone RegionalExtension {{REGION.Reg-SignalControlZone}},~%# ...~%# }~%#~%# regional_extension  #TODO: RegionalExtensions are not yet implemented in asn1c~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalControlZone>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalControlZone>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalControlZone
))
