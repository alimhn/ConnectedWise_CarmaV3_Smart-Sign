;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::NodeOffsetPointXY)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'NodeOffsetPointXY (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::NODEOFFSETPOINTXY")
  (make-package "J2735_MSGS::NODEOFFSETPOINTXY"))

(in-package "ROS")
;;//! \htmlinclude NodeOffsetPointXY.msg.html


(intern "*NODE_XY1*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_XY1* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_XY1* 0)
(intern "*NODE_XY2*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_XY2* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_XY2* 1)
(intern "*NODE_XY3*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_XY3* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_XY3* 2)
(intern "*NODE_XY4*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_XY4* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_XY4* 3)
(intern "*NODE_XY5*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_XY5* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_XY5* 4)
(intern "*NODE_XY6*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_XY6* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_XY6* 5)
(intern "*NODE_LATLON*" (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(shadow '*NODE_LATLON* (find-package "J2735_MSGS::NODEOFFSETPOINTXY"))
(defconstant j2735_msgs::NodeOffsetPointXY::*NODE_LATLON* 6)

(defun j2735_msgs::NodeOffsetPointXY-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::NodeOffsetPointXY::*NODE_XY1*)
        ((= const 1) 'j2735_msgs::NodeOffsetPointXY::*NODE_XY2*)
        ((= const 2) 'j2735_msgs::NodeOffsetPointXY::*NODE_XY3*)
        ((= const 3) 'j2735_msgs::NodeOffsetPointXY::*NODE_XY4*)
        ((= const 4) 'j2735_msgs::NodeOffsetPointXY::*NODE_XY5*)
        ((= const 5) 'j2735_msgs::NodeOffsetPointXY::*NODE_XY6*)
        ((= const 6) 'j2735_msgs::NodeOffsetPointXY::*NODE_LATLON*)
        (t nil)))

(defclass j2735_msgs::NodeOffsetPointXY
  :super ros::object
  :slots (_choice _node_xy1 _node_xy2 _node_xy3 _node_xy4 _node_xy5 _node_xy6 _node_latlon ))

(defmethod j2735_msgs::NodeOffsetPointXY
  (:init
   (&key
    ((:choice __choice) 0)
    ((:node_xy1 __node_xy1) (instance j2735_msgs::NodeXY20b :init))
    ((:node_xy2 __node_xy2) (instance j2735_msgs::NodeXY22b :init))
    ((:node_xy3 __node_xy3) (instance j2735_msgs::NodeXY24b :init))
    ((:node_xy4 __node_xy4) (instance j2735_msgs::NodeXY26b :init))
    ((:node_xy5 __node_xy5) (instance j2735_msgs::NodeXY28b :init))
    ((:node_xy6 __node_xy6) (instance j2735_msgs::NodeXY32b :init))
    ((:node_latlon __node_latlon) (instance j2735_msgs::NodeLLmD64b :init))
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _node_xy1 __node_xy1)
   (setq _node_xy2 __node_xy2)
   (setq _node_xy3 __node_xy3)
   (setq _node_xy4 __node_xy4)
   (setq _node_xy5 __node_xy5)
   (setq _node_xy6 __node_xy6)
   (setq _node_latlon __node_latlon)
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:node_xy1
   (&rest __node_xy1)
   (if (keywordp (car __node_xy1))
       (send* _node_xy1 __node_xy1)
     (progn
       (if __node_xy1 (setq _node_xy1 (car __node_xy1)))
       _node_xy1)))
  (:node_xy2
   (&rest __node_xy2)
   (if (keywordp (car __node_xy2))
       (send* _node_xy2 __node_xy2)
     (progn
       (if __node_xy2 (setq _node_xy2 (car __node_xy2)))
       _node_xy2)))
  (:node_xy3
   (&rest __node_xy3)
   (if (keywordp (car __node_xy3))
       (send* _node_xy3 __node_xy3)
     (progn
       (if __node_xy3 (setq _node_xy3 (car __node_xy3)))
       _node_xy3)))
  (:node_xy4
   (&rest __node_xy4)
   (if (keywordp (car __node_xy4))
       (send* _node_xy4 __node_xy4)
     (progn
       (if __node_xy4 (setq _node_xy4 (car __node_xy4)))
       _node_xy4)))
  (:node_xy5
   (&rest __node_xy5)
   (if (keywordp (car __node_xy5))
       (send* _node_xy5 __node_xy5)
     (progn
       (if __node_xy5 (setq _node_xy5 (car __node_xy5)))
       _node_xy5)))
  (:node_xy6
   (&rest __node_xy6)
   (if (keywordp (car __node_xy6))
       (send* _node_xy6 __node_xy6)
     (progn
       (if __node_xy6 (setq _node_xy6 (car __node_xy6)))
       _node_xy6)))
  (:node_latlon
   (&rest __node_latlon)
   (if (keywordp (car __node_latlon))
       (send* _node_latlon __node_latlon)
     (progn
       (if __node_latlon (setq _node_latlon (car __node_latlon)))
       _node_latlon)))
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; j2735_msgs/NodeXY20b _node_xy1
    (send _node_xy1 :serialization-length)
    ;; j2735_msgs/NodeXY22b _node_xy2
    (send _node_xy2 :serialization-length)
    ;; j2735_msgs/NodeXY24b _node_xy3
    (send _node_xy3 :serialization-length)
    ;; j2735_msgs/NodeXY26b _node_xy4
    (send _node_xy4 :serialization-length)
    ;; j2735_msgs/NodeXY28b _node_xy5
    (send _node_xy5 :serialization-length)
    ;; j2735_msgs/NodeXY32b _node_xy6
    (send _node_xy6 :serialization-length)
    ;; j2735_msgs/NodeLLmD64b _node_latlon
    (send _node_latlon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; j2735_msgs/NodeXY20b _node_xy1
       (send _node_xy1 :serialize s)
     ;; j2735_msgs/NodeXY22b _node_xy2
       (send _node_xy2 :serialize s)
     ;; j2735_msgs/NodeXY24b _node_xy3
       (send _node_xy3 :serialize s)
     ;; j2735_msgs/NodeXY26b _node_xy4
       (send _node_xy4 :serialize s)
     ;; j2735_msgs/NodeXY28b _node_xy5
       (send _node_xy5 :serialize s)
     ;; j2735_msgs/NodeXY32b _node_xy6
       (send _node_xy6 :serialize s)
     ;; j2735_msgs/NodeLLmD64b _node_latlon
       (send _node_latlon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; j2735_msgs/NodeXY20b _node_xy1
     (send _node_xy1 :deserialize buf ptr-) (incf ptr- (send _node_xy1 :serialization-length))
   ;; j2735_msgs/NodeXY22b _node_xy2
     (send _node_xy2 :deserialize buf ptr-) (incf ptr- (send _node_xy2 :serialization-length))
   ;; j2735_msgs/NodeXY24b _node_xy3
     (send _node_xy3 :deserialize buf ptr-) (incf ptr- (send _node_xy3 :serialization-length))
   ;; j2735_msgs/NodeXY26b _node_xy4
     (send _node_xy4 :deserialize buf ptr-) (incf ptr- (send _node_xy4 :serialization-length))
   ;; j2735_msgs/NodeXY28b _node_xy5
     (send _node_xy5 :deserialize buf ptr-) (incf ptr- (send _node_xy5 :serialization-length))
   ;; j2735_msgs/NodeXY32b _node_xy6
     (send _node_xy6 :deserialize buf ptr-) (incf ptr- (send _node_xy6 :serialization-length))
   ;; j2735_msgs/NodeLLmD64b _node_latlon
     (send _node_latlon :deserialize buf ptr-) (incf ptr- (send _node_latlon :serialization-length))
   ;;
   self)
  )

(setf (get j2735_msgs::NodeOffsetPointXY :md5sum-) "ec16b09fe0e361cc7f02f06980d20de3")
(setf (get j2735_msgs::NodeOffsetPointXY :datatype-) "j2735_msgs/NodeOffsetPointXY")
(setf (get j2735_msgs::NodeOffsetPointXY :definition-)
      "#
# NodeOffsetPointXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_NodeOffsetPointXY data frame presents a structure to hold different sized data frames for a single node
# point in a lane. Nodes are described in terms of X and Y offsets in units of 1 centimeter (when zoom is 1:1).
#
# NodeOffsetPointXY ::= CHOICE {
# -- Nodes with X,Y content
# node-XY1 Node-XY-20b, -- node is within 5.11m of last node
# node-XY2 Node-XY-22b, -- node is within 10.23m of last node
# node-XY3 Node-XY-24b, -- node is within 20.47m of last node
# node-XY4 Node-XY-26b, -- node is within 40.96m of last node
# node-XY5 Node-XY-28b, -- node is within 81.91m of last node
# node-XY6 Node-XY-32b, -- node is within 327.67m of last node
# node-LatLon Node-LLmD-64b, -- node is a full 32b Lat/Lon range
# regional RegionalExtension {{REGION.Reg-NodeOffsetPointXY}}
# 	-- node which follows is of a
# 	-- regional definition type
# }
#

uint8 choice
uint8 NODE_XY1=0
uint8 NODE_XY2=1
uint8 NODE_XY3=2
uint8 NODE_XY4=3
uint8 NODE_XY5=4
uint8 NODE_XY6=5
uint8 NODE_LATLON=6

j2735_msgs/NodeXY20b node_xy1
j2735_msgs/NodeXY22b node_xy2
j2735_msgs/NodeXY24b node_xy3
j2735_msgs/NodeXY26b node_xy4
j2735_msgs/NodeXY28b node_xy5
j2735_msgs/NodeXY32b node_xy6
j2735_msgs/NodeLLmD64b node_latlon
# regional #TODO: RegionalExtensions are not yet implemented in asn1c
================================================================================
MSG: j2735_msgs/NodeXY20b
#
# NodeXY20b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 20-bit node type with offset values from the last point in X and Y.
#
# Node-XY-20b ::= SEQUENCE {
# x Offset-B10,
# y Offset-B10
# }

# Offset-B10 ::= INTEGER (-512..511)
# -- a range of +- 5.11 meters
# A 10-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY22b
#
# NodeXY22b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 22-bit node type with offset values from the last point in X and Y.

# Node-XY-22b ::= SEQUENCE {
# x Offset-B11,
# y Offset-B11
# }

# Offset-B11 ::= INTEGER (-1024..1023)
# -- a range of +- 10.23 meters
# An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY24b
#
# NodeXY24b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 24-bit node type with offset values from the last point in X and Y.
#
# Node-XY-24b ::= SEQUENCE {
# x Offset-B12,
# y Offset-B12
# }


# Offset-B12 ::= INTEGER (-2048..2047)
# -- a range of +- 20.47 meters
# A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)
# directions. The most negative value shall be used to indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY26b
#
# NodeXY26b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 26-bit node type with offset values from the last point in X and Y.

# Node-XY-26b ::= SEQUENCE {
# x Offset-B13,
# y Offset-B13
# }

# Offset-B13 ::= INTEGER (-4096..4095)
# -- a range of +- 40.95 meters
# A 13-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY28b
#
# NodeXY28b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 28-bit node type with offset values from the last point in X and Y.

# Node-XY-28b ::= SEQUENCE {
# x Offset-B14,
# y Offset-B14
# }

# A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions.
# Offset-B14 ::= INTEGER (-8192..8191)
# -- a range of +- 81.91 meters

float32 x
float32 y

================================================================================
MSG: j2735_msgs/NodeXY32b
#
# NodeXY32b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 32-bit node type with offset values from the last point in X and Y.

# Node-XY-32b ::= SEQUENCE {
# x Offset-B16,
# y Offset-B16
# }

# A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.
# Offset-B16 ::= INTEGER (-32768..32767)
# -- a range of +- 327.68 meters

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeLLmD64b
#
# NodeLLmD64b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.

# Node-LLmD-64b ::= SEQUENCE {
# lon Longitude,
# lat Latitude
# }

#Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_UNAVAILABLE = 1800000001
int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999

#Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_UNAVAILABLE = 900000001
int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000





")



(provide :j2735_msgs/NodeOffsetPointXY "ec16b09fe0e361cc7f02f06980d20de3")


