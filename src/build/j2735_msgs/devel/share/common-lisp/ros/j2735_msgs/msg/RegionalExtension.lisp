; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RegionalExtension.msg.html

(cl:defclass <RegionalExtension> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RegionalExtension (<RegionalExtension>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegionalExtension>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegionalExtension)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RegionalExtension> is deprecated: use j2735_msgs-msg:RegionalExtension instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegionalExtension>) ostream)
  "Serializes a message object of type '<RegionalExtension>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegionalExtension>) istream)
  "Deserializes a message object of type '<RegionalExtension>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegionalExtension>)))
  "Returns string type for a message object of type '<RegionalExtension>"
  "j2735_msgs/RegionalExtension")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegionalExtension)))
  "Returns string type for a message object of type 'RegionalExtension"
  "j2735_msgs/RegionalExtension")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegionalExtension>)))
  "Returns md5sum for a message object of type '<RegionalExtension>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegionalExtension)))
  "Returns md5sum for a message object of type 'RegionalExtension"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegionalExtension>)))
  "Returns full string definition for message of type '<RegionalExtension>"
  (cl:format cl:nil "#~%# RegionalExtension.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%#~%# The formal definition used by each regional extension point follows the style of a unique indexing~%# integer and a type definition bound into a set.~%~%# RegionalExtension {REG-EXT-ID-AND-TYPE : Set} ::= SEQUENCE {~%# regionId REG-EXT-ID-AND-TYPE.&id( {Set} ),~%# regExtValue REG-EXT-ID-AND-TYPE.&Type( {Set} {@regionId} )~%# }~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegionalExtension)))
  "Returns full string definition for message of type 'RegionalExtension"
  (cl:format cl:nil "#~%# RegionalExtension.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%#~%# The formal definition used by each regional extension point follows the style of a unique indexing~%# integer and a type definition bound into a set.~%~%# RegionalExtension {REG-EXT-ID-AND-TYPE : Set} ::= SEQUENCE {~%# regionId REG-EXT-ID-AND-TYPE.&id( {Set} ),~%# regExtValue REG-EXT-ID-AND-TYPE.&Type( {Set} {@regionId} )~%# }~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegionalExtension>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegionalExtension>))
  "Converts a ROS message object to a list"
  (cl:list 'RegionalExtension
))
