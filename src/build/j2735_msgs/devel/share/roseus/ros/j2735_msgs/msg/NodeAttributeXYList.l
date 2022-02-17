;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::NodeAttributeXYList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'NodeAttributeXYList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::NODEATTRIBUTEXYLIST")
  (make-package "J2735_MSGS::NODEATTRIBUTEXYLIST"))

(in-package "ROS")
;;//! \htmlinclude NodeAttributeXYList.msg.html


(defclass j2735_msgs::NodeAttributeXYList
  :super ros::object
  :slots (_node_attribute_xy_List ))

(defmethod j2735_msgs::NodeAttributeXYList
  (:init
   (&key
    ((:node_attribute_xy_List __node_attribute_xy_List) ())
    )
   (send-super :init)
   (setq _node_attribute_xy_List __node_attribute_xy_List)
   self)
  (:node_attribute_xy_List
   (&rest __node_attribute_xy_List)
   (if (keywordp (car __node_attribute_xy_List))
       (send* _node_attribute_xy_List __node_attribute_xy_List)
     (progn
       (if __node_attribute_xy_List (setq _node_attribute_xy_List (car __node_attribute_xy_List)))
       _node_attribute_xy_List)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/NodeAttributeXY[] _node_attribute_xy_List
    (apply #'+ (send-all _node_attribute_xy_List :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/NodeAttributeXY[] _node_attribute_xy_List
     (write-long (length _node_attribute_xy_List) s)
     (dolist (elem _node_attribute_xy_List)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/NodeAttributeXY[] _node_attribute_xy_List
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_attribute_xy_List (let (r) (dotimes (i n) (push (instance j2735_msgs::NodeAttributeXY :init) r)) r))
     (dolist (elem- _node_attribute_xy_List)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::NodeAttributeXYList :md5sum-) "ba1a3b7f9b24a9840d91ad1b406c78fe")
(setf (get j2735_msgs::NodeAttributeXYList :datatype-) "j2735_msgs/NodeAttributeXYList")
(setf (get j2735_msgs::NodeAttributeXYList :definition-)
      "#
# NodeAttributeXYList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The NodeAttributeXYList data frame consists of a list of NodeAttributeXY entries.
#
# NodeAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF NodeAttributeXY

j2735_msgs/NodeAttributeXY[] node_attribute_xy_List

================================================================================
MSG: j2735_msgs/NodeAttributeXY
#
# NodeAttributeXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node
# point.
#
# NodeAttributeXY ::= ENUMERATED {
# -- Various values which pertain only to the current node point
#
# -- General Items
# reserved,
# stopLine,		-- point where a mid-path stop line exists
# 			-- See also 'do not block' for segments
# -- Path finish details
# roundedCapStyleA, 	-- Used to control final path rounded end shape
# 		   	-- with edge of curve at final point in a circle
# roundedCapStyleB,	-- Used to control final path rounded end shape
# 			-- with edge of curve extending 50% of width past
# 			-- final point in a circle
#
# -- Topography Points (items with no concept of a distance along the path)
# mergePoint,		-- Japan merge with 1 or more lanes
# divergePoint,		-- Japan diverge with 1 or more lanes
# downstreamStopLine,	-- Japan style downstream intersection
# 			-- (a 2nd intersection) stop line
# downstreamStartNode, 	-- Japan style downstream intersection
# 			-- (a 2nd intersection) start node
#
# -- Pedestrian Support Attributes
# closedToTraffic,	-- where a pedestrian may NOT go
# 			-- to be used during construction events
# safeIsland,		-- a pedestrian safe stopping point
# 			-- also called a traffic island
# 			-- This usage described a point feature on a path,
# 			-- other entries can describe a path
# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT
# 			-- angled where it meets the edge of the
# 			-- roadway (user must step up/down)
# -- Lane geometry details (see standard for defined shapes)
# hydrantPresent,		-- Or other services access
# ...
# }


uint8  node_attribute_xy

# enumeration values for status:
uint8 RESERVED=0
uint8 STOPLINE=1
uint8 ROUNDEDCAPSTYLEA=2
uint8 ROUNDEDCAPSTYLEB=3
uint8 MERGEPOINT=4
uint8 DIVERGEPOINT=5
uint8 DOWNSTREAMSTOPLINE=6
uint8 DOWNSTREAMSTARTNODE=7
uint8 CLOSEDTOTRAFFIC=8
uint8 SAFEISLAND=9
uint8 CURBPRESENTATSTEPOFF=10
uint8 HYDRANTPRESENT=11

")



(provide :j2735_msgs/NodeAttributeXYList "ba1a3b7f9b24a9840d91ad1b406c78fe")


