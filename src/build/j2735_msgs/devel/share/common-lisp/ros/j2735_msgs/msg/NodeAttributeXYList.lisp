; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude NodeAttributeXYList.msg.html

(cl:defclass <NodeAttributeXYList> (roslisp-msg-protocol:ros-message)
  ((node_attribute_xy_List
    :reader node_attribute_xy_List
    :initarg :node_attribute_xy_List
    :type (cl:vector j2735_msgs-msg:NodeAttributeXY)
   :initform (cl:make-array 0 :element-type 'j2735_msgs-msg:NodeAttributeXY :initial-element (cl:make-instance 'j2735_msgs-msg:NodeAttributeXY))))
)

(cl:defclass NodeAttributeXYList (<NodeAttributeXYList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeAttributeXYList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeAttributeXYList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<NodeAttributeXYList> is deprecated: use j2735_msgs-msg:NodeAttributeXYList instead.")))

(cl:ensure-generic-function 'node_attribute_xy_List-val :lambda-list '(m))
(cl:defmethod node_attribute_xy_List-val ((m <NodeAttributeXYList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_attribute_xy_List-val is deprecated.  Use j2735_msgs-msg:node_attribute_xy_List instead.")
  (node_attribute_xy_List m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeAttributeXYList>) ostream)
  "Serializes a message object of type '<NodeAttributeXYList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_attribute_xy_List))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_attribute_xy_List))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeAttributeXYList>) istream)
  "Deserializes a message object of type '<NodeAttributeXYList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_attribute_xy_List) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_attribute_xy_List)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'j2735_msgs-msg:NodeAttributeXY))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeAttributeXYList>)))
  "Returns string type for a message object of type '<NodeAttributeXYList>"
  "j2735_msgs/NodeAttributeXYList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeAttributeXYList)))
  "Returns string type for a message object of type 'NodeAttributeXYList"
  "j2735_msgs/NodeAttributeXYList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeAttributeXYList>)))
  "Returns md5sum for a message object of type '<NodeAttributeXYList>"
  "ba1a3b7f9b24a9840d91ad1b406c78fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeAttributeXYList)))
  "Returns md5sum for a message object of type 'NodeAttributeXYList"
  "ba1a3b7f9b24a9840d91ad1b406c78fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeAttributeXYList>)))
  "Returns full string definition for message of type '<NodeAttributeXYList>"
  (cl:format cl:nil "#~%# NodeAttributeXYList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The NodeAttributeXYList data frame consists of a list of NodeAttributeXY entries.~%#~%# NodeAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF NodeAttributeXY~%~%j2735_msgs/NodeAttributeXY[] node_attribute_xy_List~%~%================================================================================~%MSG: j2735_msgs/NodeAttributeXY~%#~%# NodeAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node~%# point.~%#~%# NodeAttributeXY ::= ENUMERATED {~%# -- Various values which pertain only to the current node point~%#~%# -- General Items~%# reserved,~%# stopLine,		-- point where a mid-path stop line exists~%# 			-- See also 'do not block' for segments~%# -- Path finish details~%# roundedCapStyleA, 	-- Used to control final path rounded end shape~%# 		   	-- with edge of curve at final point in a circle~%# roundedCapStyleB,	-- Used to control final path rounded end shape~%# 			-- with edge of curve extending 50% of width past~%# 			-- final point in a circle~%#~%# -- Topography Points (items with no concept of a distance along the path)~%# mergePoint,		-- Japan merge with 1 or more lanes~%# divergePoint,		-- Japan diverge with 1 or more lanes~%# downstreamStopLine,	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) stop line~%# downstreamStartNode, 	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) start node~%#~%# -- Pedestrian Support Attributes~%# closedToTraffic,	-- where a pedestrian may NOT go~%# 			-- to be used during construction events~%# safeIsland,		-- a pedestrian safe stopping point~%# 			-- also called a traffic island~%# 			-- This usage described a point feature on a path,~%# 			-- other entries can describe a path~%# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT~%# 			-- angled where it meets the edge of the~%# 			-- roadway (user must step up/down)~%# -- Lane geometry details (see standard for defined shapes)~%# hydrantPresent,		-- Or other services access~%# ...~%# }~%~%~%uint8  node_attribute_xy~%~%# enumeration values for status:~%uint8 RESERVED=0~%uint8 STOPLINE=1~%uint8 ROUNDEDCAPSTYLEA=2~%uint8 ROUNDEDCAPSTYLEB=3~%uint8 MERGEPOINT=4~%uint8 DIVERGEPOINT=5~%uint8 DOWNSTREAMSTOPLINE=6~%uint8 DOWNSTREAMSTARTNODE=7~%uint8 CLOSEDTOTRAFFIC=8~%uint8 SAFEISLAND=9~%uint8 CURBPRESENTATSTEPOFF=10~%uint8 HYDRANTPRESENT=11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeAttributeXYList)))
  "Returns full string definition for message of type 'NodeAttributeXYList"
  (cl:format cl:nil "#~%# NodeAttributeXYList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The NodeAttributeXYList data frame consists of a list of NodeAttributeXY entries.~%#~%# NodeAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF NodeAttributeXY~%~%j2735_msgs/NodeAttributeXY[] node_attribute_xy_List~%~%================================================================================~%MSG: j2735_msgs/NodeAttributeXY~%#~%# NodeAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node~%# point.~%#~%# NodeAttributeXY ::= ENUMERATED {~%# -- Various values which pertain only to the current node point~%#~%# -- General Items~%# reserved,~%# stopLine,		-- point where a mid-path stop line exists~%# 			-- See also 'do not block' for segments~%# -- Path finish details~%# roundedCapStyleA, 	-- Used to control final path rounded end shape~%# 		   	-- with edge of curve at final point in a circle~%# roundedCapStyleB,	-- Used to control final path rounded end shape~%# 			-- with edge of curve extending 50% of width past~%# 			-- final point in a circle~%#~%# -- Topography Points (items with no concept of a distance along the path)~%# mergePoint,		-- Japan merge with 1 or more lanes~%# divergePoint,		-- Japan diverge with 1 or more lanes~%# downstreamStopLine,	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) stop line~%# downstreamStartNode, 	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) start node~%#~%# -- Pedestrian Support Attributes~%# closedToTraffic,	-- where a pedestrian may NOT go~%# 			-- to be used during construction events~%# safeIsland,		-- a pedestrian safe stopping point~%# 			-- also called a traffic island~%# 			-- This usage described a point feature on a path,~%# 			-- other entries can describe a path~%# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT~%# 			-- angled where it meets the edge of the~%# 			-- roadway (user must step up/down)~%# -- Lane geometry details (see standard for defined shapes)~%# hydrantPresent,		-- Or other services access~%# ...~%# }~%~%~%uint8  node_attribute_xy~%~%# enumeration values for status:~%uint8 RESERVED=0~%uint8 STOPLINE=1~%uint8 ROUNDEDCAPSTYLEA=2~%uint8 ROUNDEDCAPSTYLEB=3~%uint8 MERGEPOINT=4~%uint8 DIVERGEPOINT=5~%uint8 DOWNSTREAMSTOPLINE=6~%uint8 DOWNSTREAMSTARTNODE=7~%uint8 CLOSEDTOTRAFFIC=8~%uint8 SAFEISLAND=9~%uint8 CURBPRESENTATSTEPOFF=10~%uint8 HYDRANTPRESENT=11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeAttributeXYList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_attribute_xy_List) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeAttributeXYList>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeAttributeXYList
    (cl:cons ':node_attribute_xy_List (node_attribute_xy_List msg))
))
