; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude EnabledLaneList.msg.html

(cl:defclass <EnabledLaneList> (roslisp-msg-protocol:ros-message)
  ((lane_id_list
    :reader lane_id_list
    :initarg :lane_id_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass EnabledLaneList (<EnabledLaneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnabledLaneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnabledLaneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<EnabledLaneList> is deprecated: use j2735_msgs-msg:EnabledLaneList instead.")))

(cl:ensure-generic-function 'lane_id_list-val :lambda-list '(m))
(cl:defmethod lane_id_list-val ((m <EnabledLaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_id_list-val is deprecated.  Use j2735_msgs-msg:lane_id_list instead.")
  (lane_id_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnabledLaneList>) ostream)
  "Serializes a message object of type '<EnabledLaneList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_id_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'lane_id_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnabledLaneList>) istream)
  "Deserializes a message object of type '<EnabledLaneList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_id_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_id_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnabledLaneList>)))
  "Returns string type for a message object of type '<EnabledLaneList>"
  "j2735_msgs/EnabledLaneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnabledLaneList)))
  "Returns string type for a message object of type 'EnabledLaneList"
  "j2735_msgs/EnabledLaneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnabledLaneList>)))
  "Returns md5sum for a message object of type '<EnabledLaneList>"
  "bac2474615e566c4122e6a3675ef4441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnabledLaneList)))
  "Returns md5sum for a message object of type 'EnabledLaneList"
  "bac2474615e566c4122e6a3675ef4441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnabledLaneList>)))
  "Returns full string definition for message of type '<EnabledLaneList>"
  (cl:format cl:nil "#~%# EnabledLaneList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Enabled Lane List data frame is a sequence of lane IDs for lane objects that are activated in the current map~%# configuration. These lanes, unlike most lanes, have their RevocableLane bit set to one (asserted). Such lanes are not~%# considered to be part of the current map unless they are in the Enabled Lane List. This concept is used to describe all the~%# possible regulatory states for a given physical lane.~%#~%# EnabledLaneList ::= SEQUENCE (SIZE(1..16)) OF LaneID~%#-- The unique ID numbers for each~%#-- lane object which is 'active'~%#-- as part of the dynamic map contents.~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is not available or not known~%# -- the value 255 is reserved for future use~%uint16[] lane_id_list~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnabledLaneList)))
  "Returns full string definition for message of type 'EnabledLaneList"
  (cl:format cl:nil "#~%# EnabledLaneList.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Enabled Lane List data frame is a sequence of lane IDs for lane objects that are activated in the current map~%# configuration. These lanes, unlike most lanes, have their RevocableLane bit set to one (asserted). Such lanes are not~%# considered to be part of the current map unless they are in the Enabled Lane List. This concept is used to describe all the~%# possible regulatory states for a given physical lane.~%#~%# EnabledLaneList ::= SEQUENCE (SIZE(1..16)) OF LaneID~%#-- The unique ID numbers for each~%#-- lane object which is 'active'~%#-- as part of the dynamic map contents.~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is not available or not known~%# -- the value 255 is reserved for future use~%uint16[] lane_id_list~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnabledLaneList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnabledLaneList>))
  "Converts a ROS message object to a list"
  (cl:list 'EnabledLaneList
    (cl:cons ':lane_id_list (lane_id_list msg))
))
