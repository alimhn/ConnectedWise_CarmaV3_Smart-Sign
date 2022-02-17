; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude NodeAttributeXY.msg.html

(cl:defclass <NodeAttributeXY> (roslisp-msg-protocol:ros-message)
  ((node_attribute_xy
    :reader node_attribute_xy
    :initarg :node_attribute_xy
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NodeAttributeXY (<NodeAttributeXY>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeAttributeXY>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeAttributeXY)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<NodeAttributeXY> is deprecated: use j2735_msgs-msg:NodeAttributeXY instead.")))

(cl:ensure-generic-function 'node_attribute_xy-val :lambda-list '(m))
(cl:defmethod node_attribute_xy-val ((m <NodeAttributeXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_attribute_xy-val is deprecated.  Use j2735_msgs-msg:node_attribute_xy instead.")
  (node_attribute_xy m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NodeAttributeXY>)))
    "Constants for message type '<NodeAttributeXY>"
  '((:RESERVED . 0)
    (:STOPLINE . 1)
    (:ROUNDEDCAPSTYLEA . 2)
    (:ROUNDEDCAPSTYLEB . 3)
    (:MERGEPOINT . 4)
    (:DIVERGEPOINT . 5)
    (:DOWNSTREAMSTOPLINE . 6)
    (:DOWNSTREAMSTARTNODE . 7)
    (:CLOSEDTOTRAFFIC . 8)
    (:SAFEISLAND . 9)
    (:CURBPRESENTATSTEPOFF . 10)
    (:HYDRANTPRESENT . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NodeAttributeXY)))
    "Constants for message type 'NodeAttributeXY"
  '((:RESERVED . 0)
    (:STOPLINE . 1)
    (:ROUNDEDCAPSTYLEA . 2)
    (:ROUNDEDCAPSTYLEB . 3)
    (:MERGEPOINT . 4)
    (:DIVERGEPOINT . 5)
    (:DOWNSTREAMSTOPLINE . 6)
    (:DOWNSTREAMSTARTNODE . 7)
    (:CLOSEDTOTRAFFIC . 8)
    (:SAFEISLAND . 9)
    (:CURBPRESENTATSTEPOFF . 10)
    (:HYDRANTPRESENT . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeAttributeXY>) ostream)
  "Serializes a message object of type '<NodeAttributeXY>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_attribute_xy)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeAttributeXY>) istream)
  "Deserializes a message object of type '<NodeAttributeXY>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_attribute_xy)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeAttributeXY>)))
  "Returns string type for a message object of type '<NodeAttributeXY>"
  "j2735_msgs/NodeAttributeXY")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeAttributeXY)))
  "Returns string type for a message object of type 'NodeAttributeXY"
  "j2735_msgs/NodeAttributeXY")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeAttributeXY>)))
  "Returns md5sum for a message object of type '<NodeAttributeXY>"
  "eb1d91b90863669c710a6dc0c23fb07d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeAttributeXY)))
  "Returns md5sum for a message object of type 'NodeAttributeXY"
  "eb1d91b90863669c710a6dc0c23fb07d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeAttributeXY>)))
  "Returns full string definition for message of type '<NodeAttributeXY>"
  (cl:format cl:nil "#~%# NodeAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node~%# point.~%#~%# NodeAttributeXY ::= ENUMERATED {~%# -- Various values which pertain only to the current node point~%#~%# -- General Items~%# reserved,~%# stopLine,		-- point where a mid-path stop line exists~%# 			-- See also 'do not block' for segments~%# -- Path finish details~%# roundedCapStyleA, 	-- Used to control final path rounded end shape~%# 		   	-- with edge of curve at final point in a circle~%# roundedCapStyleB,	-- Used to control final path rounded end shape~%# 			-- with edge of curve extending 50% of width past~%# 			-- final point in a circle~%#~%# -- Topography Points (items with no concept of a distance along the path)~%# mergePoint,		-- Japan merge with 1 or more lanes~%# divergePoint,		-- Japan diverge with 1 or more lanes~%# downstreamStopLine,	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) stop line~%# downstreamStartNode, 	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) start node~%#~%# -- Pedestrian Support Attributes~%# closedToTraffic,	-- where a pedestrian may NOT go~%# 			-- to be used during construction events~%# safeIsland,		-- a pedestrian safe stopping point~%# 			-- also called a traffic island~%# 			-- This usage described a point feature on a path,~%# 			-- other entries can describe a path~%# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT~%# 			-- angled where it meets the edge of the~%# 			-- roadway (user must step up/down)~%# -- Lane geometry details (see standard for defined shapes)~%# hydrantPresent,		-- Or other services access~%# ...~%# }~%~%~%uint8  node_attribute_xy~%~%# enumeration values for status:~%uint8 RESERVED=0~%uint8 STOPLINE=1~%uint8 ROUNDEDCAPSTYLEA=2~%uint8 ROUNDEDCAPSTYLEB=3~%uint8 MERGEPOINT=4~%uint8 DIVERGEPOINT=5~%uint8 DOWNSTREAMSTOPLINE=6~%uint8 DOWNSTREAMSTARTNODE=7~%uint8 CLOSEDTOTRAFFIC=8~%uint8 SAFEISLAND=9~%uint8 CURBPRESENTATSTEPOFF=10~%uint8 HYDRANTPRESENT=11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeAttributeXY)))
  "Returns full string definition for message of type 'NodeAttributeXY"
  (cl:format cl:nil "#~%# NodeAttributeXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node~%# point.~%#~%# NodeAttributeXY ::= ENUMERATED {~%# -- Various values which pertain only to the current node point~%#~%# -- General Items~%# reserved,~%# stopLine,		-- point where a mid-path stop line exists~%# 			-- See also 'do not block' for segments~%# -- Path finish details~%# roundedCapStyleA, 	-- Used to control final path rounded end shape~%# 		   	-- with edge of curve at final point in a circle~%# roundedCapStyleB,	-- Used to control final path rounded end shape~%# 			-- with edge of curve extending 50% of width past~%# 			-- final point in a circle~%#~%# -- Topography Points (items with no concept of a distance along the path)~%# mergePoint,		-- Japan merge with 1 or more lanes~%# divergePoint,		-- Japan diverge with 1 or more lanes~%# downstreamStopLine,	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) stop line~%# downstreamStartNode, 	-- Japan style downstream intersection~%# 			-- (a 2nd intersection) start node~%#~%# -- Pedestrian Support Attributes~%# closedToTraffic,	-- where a pedestrian may NOT go~%# 			-- to be used during construction events~%# safeIsland,		-- a pedestrian safe stopping point~%# 			-- also called a traffic island~%# 			-- This usage described a point feature on a path,~%# 			-- other entries can describe a path~%# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT~%# 			-- angled where it meets the edge of the~%# 			-- roadway (user must step up/down)~%# -- Lane geometry details (see standard for defined shapes)~%# hydrantPresent,		-- Or other services access~%# ...~%# }~%~%~%uint8  node_attribute_xy~%~%# enumeration values for status:~%uint8 RESERVED=0~%uint8 STOPLINE=1~%uint8 ROUNDEDCAPSTYLEA=2~%uint8 ROUNDEDCAPSTYLEB=3~%uint8 MERGEPOINT=4~%uint8 DIVERGEPOINT=5~%uint8 DOWNSTREAMSTOPLINE=6~%uint8 DOWNSTREAMSTARTNODE=7~%uint8 CLOSEDTOTRAFFIC=8~%uint8 SAFEISLAND=9~%uint8 CURBPRESENTATSTEPOFF=10~%uint8 HYDRANTPRESENT=11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeAttributeXY>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeAttributeXY>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeAttributeXY
    (cl:cons ':node_attribute_xy (node_attribute_xy msg))
))
