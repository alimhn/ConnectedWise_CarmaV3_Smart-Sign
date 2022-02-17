; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude OverlayLaneList.msg.html

(cl:defclass <OverlayLaneList> (roslisp-msg-protocol:ros-message)
  ((overlay_lane_list
    :reader overlay_lane_list
    :initarg :overlay_lane_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass OverlayLaneList (<OverlayLaneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OverlayLaneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OverlayLaneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<OverlayLaneList> is deprecated: use j2735_msgs-msg:OverlayLaneList instead.")))

(cl:ensure-generic-function 'overlay_lane_list-val :lambda-list '(m))
(cl:defmethod overlay_lane_list-val ((m <OverlayLaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:overlay_lane_list-val is deprecated.  Use j2735_msgs-msg:overlay_lane_list instead.")
  (overlay_lane_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OverlayLaneList>) ostream)
  "Serializes a message object of type '<OverlayLaneList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'overlay_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'overlay_lane_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OverlayLaneList>) istream)
  "Deserializes a message object of type '<OverlayLaneList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'overlay_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'overlay_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OverlayLaneList>)))
  "Returns string type for a message object of type '<OverlayLaneList>"
  "j2735_msgs/OverlayLaneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OverlayLaneList)))
  "Returns string type for a message object of type 'OverlayLaneList"
  "j2735_msgs/OverlayLaneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OverlayLaneList>)))
  "Returns md5sum for a message object of type '<OverlayLaneList>"
  "b6336706d1d1df05ba24af7224350228")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OverlayLaneList)))
  "Returns md5sum for a message object of type 'OverlayLaneList"
  "b6336706d1d1df05ba24af7224350228")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OverlayLaneList>)))
  "Returns full string definition for message of type '<OverlayLaneList>"
  (cl:format cl:nil "#~%# OverlayLaneList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Overlay Lane List data frame is a sequence of lane IDs which refers to lane objects that overlap or overlay the~%# current lane's spatial path.~%#  OverlayLaneList ::= SEQUENCE (SIZE(1..5)) OF LaneID~%# -- The unique ID numbers for any lane object which have~%# -- spatial paths that overlay (run on top of, and not~%# -- simply cross with) the current lane.~%# -- Such as a train path that overlays a motor vehicle~%# -- lane object for a roadway segment.~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16[] overlay_lane_list~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OverlayLaneList)))
  "Returns full string definition for message of type 'OverlayLaneList"
  (cl:format cl:nil "#~%# OverlayLaneList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Overlay Lane List data frame is a sequence of lane IDs which refers to lane objects that overlap or overlay the~%# current lane's spatial path.~%#  OverlayLaneList ::= SEQUENCE (SIZE(1..5)) OF LaneID~%# -- The unique ID numbers for any lane object which have~%# -- spatial paths that overlay (run on top of, and not~%# -- simply cross with) the current lane.~%# -- Such as a train path that overlays a motor vehicle~%# -- lane object for a roadway segment.~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16[] overlay_lane_list~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OverlayLaneList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'overlay_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OverlayLaneList>))
  "Converts a ROS message object to a list"
  (cl:list 'OverlayLaneList
    (cl:cons ':overlay_lane_list (overlay_lane_list msg))
))
