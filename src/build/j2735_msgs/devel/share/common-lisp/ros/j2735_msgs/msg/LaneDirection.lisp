; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneDirection.msg.html

(cl:defclass <LaneDirection> (roslisp-msg-protocol:ros-message)
  ((lane_direction
    :reader lane_direction
    :initarg :lane_direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneDirection (<LaneDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneDirection> is deprecated: use j2735_msgs-msg:LaneDirection instead.")))

(cl:ensure-generic-function 'lane_direction-val :lambda-list '(m))
(cl:defmethod lane_direction-val ((m <LaneDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_direction-val is deprecated.  Use j2735_msgs-msg:lane_direction instead.")
  (lane_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneDirection>) ostream)
  "Serializes a message object of type '<LaneDirection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneDirection>) istream)
  "Deserializes a message object of type '<LaneDirection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneDirection>)))
  "Returns string type for a message object of type '<LaneDirection>"
  "j2735_msgs/LaneDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneDirection)))
  "Returns string type for a message object of type 'LaneDirection"
  "j2735_msgs/LaneDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneDirection>)))
  "Returns md5sum for a message object of type '<LaneDirection>"
  "e54bbf0b78a512c3a5e1e30ccec9630b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneDirection)))
  "Returns md5sum for a message object of type 'LaneDirection"
  "e54bbf0b78a512c3a5e1e30ccec9630b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneDirection>)))
  "Returns full string definition for message of type '<LaneDirection>"
  (cl:format cl:nil "#~%# LaneDirection.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneDirection data element is used to denote the allowed direction of travel over a lane object. By convention,~%# the lane object is always described from the stop line outwards away from the intersection. Therefore, the ingress~%# direction is from the end of the path to the stop line and the egress direction is from the stop line outwards. It should be~%# noted that some lane objects are not used for travel and that some lane objects allow bi-directional travel.~%#~%# LaneDirection ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed directions of travel in the lane object~%# -- All lanes are described from the stop line outwards~%# ingressPath (0),~%# -- travel from rear of path to front is allowed~%# egressPath (1)~%# -- travel from front of path to rear is allowed~%# -- Notes: No Travel, i.e. the lane object type does not support travel (medians, curbs, etc.)~%# is indicated by not asserting any bit value~%# - Bi-Directional Travel (such as a ped crosswalk) is indicated by asserting both of the bits~%# } (SIZE (2))~%~%uint8 lane_direction~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneDirection)))
  "Returns full string definition for message of type 'LaneDirection"
  (cl:format cl:nil "#~%# LaneDirection.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The LaneDirection data element is used to denote the allowed direction of travel over a lane object. By convention,~%# the lane object is always described from the stop line outwards away from the intersection. Therefore, the ingress~%# direction is from the end of the path to the stop line and the egress direction is from the stop line outwards. It should be~%# noted that some lane objects are not used for travel and that some lane objects allow bi-directional travel.~%#~%# LaneDirection ::= BIT STRING {~%# -- With bits as defined:~%# -- Allowed directions of travel in the lane object~%# -- All lanes are described from the stop line outwards~%# ingressPath (0),~%# -- travel from rear of path to front is allowed~%# egressPath (1)~%# -- travel from front of path to rear is allowed~%# -- Notes: No Travel, i.e. the lane object type does not support travel (medians, curbs, etc.)~%# is indicated by not asserting any bit value~%# - Bi-Directional Travel (such as a ped crosswalk) is indicated by asserting both of the bits~%# } (SIZE (2))~%~%uint8 lane_direction~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneDirection>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneDirection
    (cl:cons ':lane_direction (lane_direction msg))
))
