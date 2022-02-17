; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude NodeOffsetPointXY.msg.html

(cl:defclass <NodeOffsetPointXY> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (node_xy1
    :reader node_xy1
    :initarg :node_xy1
    :type j2735_msgs-msg:NodeXY20b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeXY20b))
   (node_xy2
    :reader node_xy2
    :initarg :node_xy2
    :type j2735_msgs-msg:NodeXY22b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeXY22b))
   (node_xy3
    :reader node_xy3
    :initarg :node_xy3
    :type j2735_msgs-msg:NodeXY24b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeXY24b))
   (node_xy4
    :reader node_xy4
    :initarg :node_xy4
    :type j2735_msgs-msg:NodeXY26b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeXY26b))
   (node_xy5
    :reader node_xy5
    :initarg :node_xy5
    :type j2735_msgs-msg:NodeXY28b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeXY28b))
   (node_xy6
    :reader node_xy6
    :initarg :node_xy6
    :type j2735_msgs-msg:NodeXY32b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeXY32b))
   (node_latlon
    :reader node_latlon
    :initarg :node_latlon
    :type j2735_msgs-msg:NodeLLmD64b
    :initform (cl:make-instance 'j2735_msgs-msg:NodeLLmD64b)))
)

(cl:defclass NodeOffsetPointXY (<NodeOffsetPointXY>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeOffsetPointXY>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeOffsetPointXY)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<NodeOffsetPointXY> is deprecated: use j2735_msgs-msg:NodeOffsetPointXY instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'node_xy1-val :lambda-list '(m))
(cl:defmethod node_xy1-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_xy1-val is deprecated.  Use j2735_msgs-msg:node_xy1 instead.")
  (node_xy1 m))

(cl:ensure-generic-function 'node_xy2-val :lambda-list '(m))
(cl:defmethod node_xy2-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_xy2-val is deprecated.  Use j2735_msgs-msg:node_xy2 instead.")
  (node_xy2 m))

(cl:ensure-generic-function 'node_xy3-val :lambda-list '(m))
(cl:defmethod node_xy3-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_xy3-val is deprecated.  Use j2735_msgs-msg:node_xy3 instead.")
  (node_xy3 m))

(cl:ensure-generic-function 'node_xy4-val :lambda-list '(m))
(cl:defmethod node_xy4-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_xy4-val is deprecated.  Use j2735_msgs-msg:node_xy4 instead.")
  (node_xy4 m))

(cl:ensure-generic-function 'node_xy5-val :lambda-list '(m))
(cl:defmethod node_xy5-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_xy5-val is deprecated.  Use j2735_msgs-msg:node_xy5 instead.")
  (node_xy5 m))

(cl:ensure-generic-function 'node_xy6-val :lambda-list '(m))
(cl:defmethod node_xy6-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_xy6-val is deprecated.  Use j2735_msgs-msg:node_xy6 instead.")
  (node_xy6 m))

(cl:ensure-generic-function 'node_latlon-val :lambda-list '(m))
(cl:defmethod node_latlon-val ((m <NodeOffsetPointXY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:node_latlon-val is deprecated.  Use j2735_msgs-msg:node_latlon instead.")
  (node_latlon m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NodeOffsetPointXY>)))
    "Constants for message type '<NodeOffsetPointXY>"
  '((:NODE_XY1 . 0)
    (:NODE_XY2 . 1)
    (:NODE_XY3 . 2)
    (:NODE_XY4 . 3)
    (:NODE_XY5 . 4)
    (:NODE_XY6 . 5)
    (:NODE_LATLON . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NodeOffsetPointXY)))
    "Constants for message type 'NodeOffsetPointXY"
  '((:NODE_XY1 . 0)
    (:NODE_XY2 . 1)
    (:NODE_XY3 . 2)
    (:NODE_XY4 . 3)
    (:NODE_XY5 . 4)
    (:NODE_XY6 . 5)
    (:NODE_LATLON . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeOffsetPointXY>) ostream)
  "Serializes a message object of type '<NodeOffsetPointXY>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_xy1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_xy2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_xy3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_xy4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_xy5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_xy6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_latlon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeOffsetPointXY>) istream)
  "Deserializes a message object of type '<NodeOffsetPointXY>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_xy1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_xy2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_xy3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_xy4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_xy5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_xy6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_latlon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeOffsetPointXY>)))
  "Returns string type for a message object of type '<NodeOffsetPointXY>"
  "j2735_msgs/NodeOffsetPointXY")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeOffsetPointXY)))
  "Returns string type for a message object of type 'NodeOffsetPointXY"
  "j2735_msgs/NodeOffsetPointXY")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeOffsetPointXY>)))
  "Returns md5sum for a message object of type '<NodeOffsetPointXY>"
  "ec16b09fe0e361cc7f02f06980d20de3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeOffsetPointXY)))
  "Returns md5sum for a message object of type 'NodeOffsetPointXY"
  "ec16b09fe0e361cc7f02f06980d20de3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeOffsetPointXY>)))
  "Returns full string definition for message of type '<NodeOffsetPointXY>"
  (cl:format cl:nil "#~%# NodeOffsetPointXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_NodeOffsetPointXY data frame presents a structure to hold different sized data frames for a single node~%# point in a lane. Nodes are described in terms of X and Y offsets in units of 1 centimeter (when zoom is 1:1).~%#~%# NodeOffsetPointXY ::= CHOICE {~%# -- Nodes with X,Y content~%# node-XY1 Node-XY-20b, -- node is within 5.11m of last node~%# node-XY2 Node-XY-22b, -- node is within 10.23m of last node~%# node-XY3 Node-XY-24b, -- node is within 20.47m of last node~%# node-XY4 Node-XY-26b, -- node is within 40.96m of last node~%# node-XY5 Node-XY-28b, -- node is within 81.91m of last node~%# node-XY6 Node-XY-32b, -- node is within 327.67m of last node~%# node-LatLon Node-LLmD-64b, -- node is a full 32b Lat/Lon range~%# regional RegionalExtension {{REGION.Reg-NodeOffsetPointXY}}~%# 	-- node which follows is of a~%# 	-- regional definition type~%# }~%#~%~%uint8 choice~%uint8 NODE_XY1=0~%uint8 NODE_XY2=1~%uint8 NODE_XY3=2~%uint8 NODE_XY4=3~%uint8 NODE_XY5=4~%uint8 NODE_XY6=5~%uint8 NODE_LATLON=6~%~%j2735_msgs/NodeXY20b node_xy1~%j2735_msgs/NodeXY22b node_xy2~%j2735_msgs/NodeXY24b node_xy3~%j2735_msgs/NodeXY26b node_xy4~%j2735_msgs/NodeXY28b node_xy5~%j2735_msgs/NodeXY32b node_xy6~%j2735_msgs/NodeLLmD64b node_latlon~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%================================================================================~%MSG: j2735_msgs/NodeXY20b~%#~%# NodeXY20b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 20-bit node type with offset values from the last point in X and Y.~%#~%# Node-XY-20b ::= SEQUENCE {~%# x Offset-B10,~%# y Offset-B10~%# }~%~%# Offset-B10 ::= INTEGER (-512..511)~%# -- a range of +- 5.11 meters~%# A 10-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY22b~%#~%# NodeXY22b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 22-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-22b ::= SEQUENCE {~%# x Offset-B11,~%# y Offset-B11~%# }~%~%# Offset-B11 ::= INTEGER (-1024..1023)~%# -- a range of +- 10.23 meters~%# An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY24b~%#~%# NodeXY24b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 24-bit node type with offset values from the last point in X and Y.~%#~%# Node-XY-24b ::= SEQUENCE {~%# x Offset-B12,~%# y Offset-B12~%# }~%~%~%# Offset-B12 ::= INTEGER (-2048..2047)~%# -- a range of +- 20.47 meters~%# A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)~%# directions. The most negative value shall be used to indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY26b~%#~%# NodeXY26b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 26-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-26b ::= SEQUENCE {~%# x Offset-B13,~%# y Offset-B13~%# }~%~%# Offset-B13 ::= INTEGER (-4096..4095)~%# -- a range of +- 40.95 meters~%# A 13-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY28b~%#~%# NodeXY28b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 28-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-28b ::= SEQUENCE {~%# x Offset-B14,~%# y Offset-B14~%# }~%~%# A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions.~%# Offset-B14 ::= INTEGER (-8192..8191)~%# -- a range of +- 81.91 meters~%~%float32 x~%float32 y~%~%================================================================================~%MSG: j2735_msgs/NodeXY32b~%#~%# NodeXY32b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 32-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-32b ::= SEQUENCE {~%# x Offset-B16,~%# y Offset-B16~%# }~%~%# A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%# Offset-B16 ::= INTEGER (-32768..32767)~%# -- a range of +- 327.68 meters~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeLLmD64b~%#~%# NodeLLmD64b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.~%~%# Node-LLmD-64b ::= SEQUENCE {~%# lon Longitude,~%# lat Latitude~%# }~%~%#Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 longitude~%~%int32 LONGITUDE_UNAVAILABLE = 1800000001~%int32 LONGITUDE_MAX = 1800000000~%int32 LONGITUDE_MIN = -1799999999~%~%#Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 latitude~%~%int32 LATITUDE_UNAVAILABLE = 900000001~%int32 LATITUDE_MAX = 900000000~%int32 LATITUDE_MIN = -900000000~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeOffsetPointXY)))
  "Returns full string definition for message of type 'NodeOffsetPointXY"
  (cl:format cl:nil "#~%# NodeOffsetPointXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_NodeOffsetPointXY data frame presents a structure to hold different sized data frames for a single node~%# point in a lane. Nodes are described in terms of X and Y offsets in units of 1 centimeter (when zoom is 1:1).~%#~%# NodeOffsetPointXY ::= CHOICE {~%# -- Nodes with X,Y content~%# node-XY1 Node-XY-20b, -- node is within 5.11m of last node~%# node-XY2 Node-XY-22b, -- node is within 10.23m of last node~%# node-XY3 Node-XY-24b, -- node is within 20.47m of last node~%# node-XY4 Node-XY-26b, -- node is within 40.96m of last node~%# node-XY5 Node-XY-28b, -- node is within 81.91m of last node~%# node-XY6 Node-XY-32b, -- node is within 327.67m of last node~%# node-LatLon Node-LLmD-64b, -- node is a full 32b Lat/Lon range~%# regional RegionalExtension {{REGION.Reg-NodeOffsetPointXY}}~%# 	-- node which follows is of a~%# 	-- regional definition type~%# }~%#~%~%uint8 choice~%uint8 NODE_XY1=0~%uint8 NODE_XY2=1~%uint8 NODE_XY3=2~%uint8 NODE_XY4=3~%uint8 NODE_XY5=4~%uint8 NODE_XY6=5~%uint8 NODE_LATLON=6~%~%j2735_msgs/NodeXY20b node_xy1~%j2735_msgs/NodeXY22b node_xy2~%j2735_msgs/NodeXY24b node_xy3~%j2735_msgs/NodeXY26b node_xy4~%j2735_msgs/NodeXY28b node_xy5~%j2735_msgs/NodeXY32b node_xy6~%j2735_msgs/NodeLLmD64b node_latlon~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%================================================================================~%MSG: j2735_msgs/NodeXY20b~%#~%# NodeXY20b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 20-bit node type with offset values from the last point in X and Y.~%#~%# Node-XY-20b ::= SEQUENCE {~%# x Offset-B10,~%# y Offset-B10~%# }~%~%# Offset-B10 ::= INTEGER (-512..511)~%# -- a range of +- 5.11 meters~%# A 10-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY22b~%#~%# NodeXY22b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 22-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-22b ::= SEQUENCE {~%# x Offset-B11,~%# y Offset-B11~%# }~%~%# Offset-B11 ::= INTEGER (-1024..1023)~%# -- a range of +- 10.23 meters~%# An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY24b~%#~%# NodeXY24b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 24-bit node type with offset values from the last point in X and Y.~%#~%# Node-XY-24b ::= SEQUENCE {~%# x Offset-B12,~%# y Offset-B12~%# }~%~%~%# Offset-B12 ::= INTEGER (-2048..2047)~%# -- a range of +- 20.47 meters~%# A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)~%# directions. The most negative value shall be used to indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY26b~%#~%# NodeXY26b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 26-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-26b ::= SEQUENCE {~%# x Offset-B13,~%# y Offset-B13~%# }~%~%# Offset-B13 ::= INTEGER (-4096..4095)~%# -- a range of +- 40.95 meters~%# A 13-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeXY28b~%#~%# NodeXY28b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 28-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-28b ::= SEQUENCE {~%# x Offset-B14,~%# y Offset-B14~%# }~%~%# A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions.~%# Offset-B14 ::= INTEGER (-8192..8191)~%# -- a range of +- 81.91 meters~%~%float32 x~%float32 y~%~%================================================================================~%MSG: j2735_msgs/NodeXY32b~%#~%# NodeXY32b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 32-bit node type with offset values from the last point in X and Y.~%~%# Node-XY-32b ::= SEQUENCE {~%# x Offset-B16,~%# y Offset-B16~%# }~%~%# A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of~%# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to~%# indicate an unknown value.~%# Offset-B16 ::= INTEGER (-32768..32767)~%# -- a range of +- 327.68 meters~%~%float32 x~%float32 y~%================================================================================~%MSG: j2735_msgs/NodeLLmD64b~%#~%# NodeLLmD64b.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.~%~%# Node-LLmD-64b ::= SEQUENCE {~%# lon Longitude,~%# lat Latitude~%# }~%~%#Longitude ::= INTEGER (-1799999999..1800000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 180 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 longitude~%~%int32 LONGITUDE_UNAVAILABLE = 1800000001~%int32 LONGITUDE_MAX = 1800000000~%int32 LONGITUDE_MIN = -1799999999~%~%#Latitude ::= INTEGER (-900000000..900000001)~%#  -- LSB = 1/10 micro degree~%#  -- Providing a range of plus-minus 90 degrees~%#  -- Convert to degree with factor 0.0000001 when field is used~%int32 latitude~%~%int32 LATITUDE_UNAVAILABLE = 900000001~%int32 LATITUDE_MAX = 900000000~%int32 LATITUDE_MIN = -900000000~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeOffsetPointXY>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_xy1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_xy2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_xy3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_xy4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_xy5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_xy6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_latlon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeOffsetPointXY>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeOffsetPointXY
    (cl:cons ':choice (choice msg))
    (cl:cons ':node_xy1 (node_xy1 msg))
    (cl:cons ':node_xy2 (node_xy2 msg))
    (cl:cons ':node_xy3 (node_xy3 msg))
    (cl:cons ':node_xy4 (node_xy4 msg))
    (cl:cons ':node_xy5 (node_xy5 msg))
    (cl:cons ':node_xy6 (node_xy6 msg))
    (cl:cons ':node_latlon (node_latlon msg))
))
