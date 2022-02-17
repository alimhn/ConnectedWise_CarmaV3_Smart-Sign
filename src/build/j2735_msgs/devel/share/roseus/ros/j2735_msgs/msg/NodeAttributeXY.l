;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::NodeAttributeXY)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'NodeAttributeXY (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::NODEATTRIBUTEXY")
  (make-package "J2735_MSGS::NODEATTRIBUTEXY"))

(in-package "ROS")
;;//! \htmlinclude NodeAttributeXY.msg.html


(intern "*RESERVED*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*RESERVED* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*RESERVED* 0)
(intern "*STOPLINE*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*STOPLINE* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*STOPLINE* 1)
(intern "*ROUNDEDCAPSTYLEA*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*ROUNDEDCAPSTYLEA* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*ROUNDEDCAPSTYLEA* 2)
(intern "*ROUNDEDCAPSTYLEB*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*ROUNDEDCAPSTYLEB* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*ROUNDEDCAPSTYLEB* 3)
(intern "*MERGEPOINT*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*MERGEPOINT* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*MERGEPOINT* 4)
(intern "*DIVERGEPOINT*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*DIVERGEPOINT* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*DIVERGEPOINT* 5)
(intern "*DOWNSTREAMSTOPLINE*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*DOWNSTREAMSTOPLINE* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*DOWNSTREAMSTOPLINE* 6)
(intern "*DOWNSTREAMSTARTNODE*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*DOWNSTREAMSTARTNODE* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*DOWNSTREAMSTARTNODE* 7)
(intern "*CLOSEDTOTRAFFIC*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*CLOSEDTOTRAFFIC* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*CLOSEDTOTRAFFIC* 8)
(intern "*SAFEISLAND*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*SAFEISLAND* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*SAFEISLAND* 9)
(intern "*CURBPRESENTATSTEPOFF*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*CURBPRESENTATSTEPOFF* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*CURBPRESENTATSTEPOFF* 10)
(intern "*HYDRANTPRESENT*" (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(shadow '*HYDRANTPRESENT* (find-package "J2735_MSGS::NODEATTRIBUTEXY"))
(defconstant j2735_msgs::NodeAttributeXY::*HYDRANTPRESENT* 11)

(defun j2735_msgs::NodeAttributeXY-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::NodeAttributeXY::*RESERVED*)
        ((= const 1) 'j2735_msgs::NodeAttributeXY::*STOPLINE*)
        ((= const 2) 'j2735_msgs::NodeAttributeXY::*ROUNDEDCAPSTYLEA*)
        ((= const 3) 'j2735_msgs::NodeAttributeXY::*ROUNDEDCAPSTYLEB*)
        ((= const 4) 'j2735_msgs::NodeAttributeXY::*MERGEPOINT*)
        ((= const 5) 'j2735_msgs::NodeAttributeXY::*DIVERGEPOINT*)
        ((= const 6) 'j2735_msgs::NodeAttributeXY::*DOWNSTREAMSTOPLINE*)
        ((= const 7) 'j2735_msgs::NodeAttributeXY::*DOWNSTREAMSTARTNODE*)
        ((= const 8) 'j2735_msgs::NodeAttributeXY::*CLOSEDTOTRAFFIC*)
        ((= const 9) 'j2735_msgs::NodeAttributeXY::*SAFEISLAND*)
        ((= const 10) 'j2735_msgs::NodeAttributeXY::*CURBPRESENTATSTEPOFF*)
        ((= const 11) 'j2735_msgs::NodeAttributeXY::*HYDRANTPRESENT*)
        (t nil)))

(defclass j2735_msgs::NodeAttributeXY
  :super ros::object
  :slots (_node_attribute_xy ))

(defmethod j2735_msgs::NodeAttributeXY
  (:init
   (&key
    ((:node_attribute_xy __node_attribute_xy) 0)
    )
   (send-super :init)
   (setq _node_attribute_xy (round __node_attribute_xy))
   self)
  (:node_attribute_xy
   (&optional __node_attribute_xy)
   (if __node_attribute_xy (setq _node_attribute_xy __node_attribute_xy)) _node_attribute_xy)
  (:serialization-length
   ()
   (+
    ;; uint8 _node_attribute_xy
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _node_attribute_xy
       (write-byte _node_attribute_xy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _node_attribute_xy
     (setq _node_attribute_xy (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::NodeAttributeXY :md5sum-) "eb1d91b90863669c710a6dc0c23fb07d")
(setf (get j2735_msgs::NodeAttributeXY :datatype-) "j2735_msgs/NodeAttributeXY")
(setf (get j2735_msgs::NodeAttributeXY :definition-)
      "#
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



(provide :j2735_msgs/NodeAttributeXY "eb1d91b90863669c710a6dc0c23fb07d")


