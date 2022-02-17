; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LayerType.msg.html

(cl:defclass <LayerType> (roslisp-msg-protocol:ros-message)
  ((layer_type
    :reader layer_type
    :initarg :layer_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LayerType (<LayerType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LayerType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LayerType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LayerType> is deprecated: use j2735_msgs-msg:LayerType instead.")))

(cl:ensure-generic-function 'layer_type-val :lambda-list '(m))
(cl:defmethod layer_type-val ((m <LayerType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:layer_type-val is deprecated.  Use j2735_msgs-msg:layer_type instead.")
  (layer_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LayerType>)))
    "Constants for message type '<LayerType>"
  '((:NONE . 0)
    (:MIXED_CONTENT . 1)
    (:GENERAL_MAP_DATA . 2)
    (:INTERSECTION_DATA . 3)
    (:CURVE_DATA . 4)
    (:ROADWAY_SECTION_DATA . 5)
    (:PARKING_AREA_DATA . 6)
    (:SHARED_LANE_DATA . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LayerType)))
    "Constants for message type 'LayerType"
  '((:NONE . 0)
    (:MIXED_CONTENT . 1)
    (:GENERAL_MAP_DATA . 2)
    (:INTERSECTION_DATA . 3)
    (:CURVE_DATA . 4)
    (:ROADWAY_SECTION_DATA . 5)
    (:PARKING_AREA_DATA . 6)
    (:SHARED_LANE_DATA . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LayerType>) ostream)
  "Serializes a message object of type '<LayerType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LayerType>) istream)
  "Deserializes a message object of type '<LayerType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LayerType>)))
  "Returns string type for a message object of type '<LayerType>"
  "j2735_msgs/LayerType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LayerType)))
  "Returns string type for a message object of type 'LayerType"
  "j2735_msgs/LayerType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LayerType>)))
  "Returns md5sum for a message object of type '<LayerType>"
  "225f090984ed5db591d792a4385a39de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LayerType)))
  "Returns md5sum for a message object of type 'LayerType"
  "225f090984ed5db591d792a4385a39de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LayerType>)))
  "Returns full string definition for message of type '<LayerType>"
  (cl:format cl:nil "# LayerType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Data element used to uniquely identify the type of information to be found in a layer of geographic map fragment~%# such as an intersection.~%#~%~%uint8 layer_type~%~%# LayerType ::= ENUMERATED {~%# none,~%# mixedContent, -- two or more of the below types~%# generalMapData,~%# intersectionData,~%# curveData,~%# roadwaySectionData,~%# parkingAreaData,~%# sharedLaneData,~%# ...~%# }~%~%# enumeration values for plan type:~%uint8       NONE = 0~%uint8       MIXED_CONTENT = 1~%uint8       GENERAL_MAP_DATA = 2~%uint8       INTERSECTION_DATA = 3~%uint8       CURVE_DATA = 4~%uint8       ROADWAY_SECTION_DATA = 5~%uint8       PARKING_AREA_DATA = 6~%uint8       SHARED_LANE_DATA = 7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LayerType)))
  "Returns full string definition for message of type 'LayerType"
  (cl:format cl:nil "# LayerType.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# Data element used to uniquely identify the type of information to be found in a layer of geographic map fragment~%# such as an intersection.~%#~%~%uint8 layer_type~%~%# LayerType ::= ENUMERATED {~%# none,~%# mixedContent, -- two or more of the below types~%# generalMapData,~%# intersectionData,~%# curveData,~%# roadwaySectionData,~%# parkingAreaData,~%# sharedLaneData,~%# ...~%# }~%~%# enumeration values for plan type:~%uint8       NONE = 0~%uint8       MIXED_CONTENT = 1~%uint8       GENERAL_MAP_DATA = 2~%uint8       INTERSECTION_DATA = 3~%uint8       CURVE_DATA = 4~%uint8       ROADWAY_SECTION_DATA = 5~%uint8       PARKING_AREA_DATA = 6~%uint8       SHARED_LANE_DATA = 7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LayerType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LayerType>))
  "Converts a ROS message object to a list"
  (cl:list 'LayerType
    (cl:cons ':layer_type (layer_type msg))
))
