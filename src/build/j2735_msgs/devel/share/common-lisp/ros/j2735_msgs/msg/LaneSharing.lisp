; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude LaneSharing.msg.html

(cl:defclass <LaneSharing> (roslisp-msg-protocol:ros-message)
  ((lane_sharing
    :reader lane_sharing
    :initarg :lane_sharing
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneSharing (<LaneSharing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneSharing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneSharing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<LaneSharing> is deprecated: use j2735_msgs-msg:LaneSharing instead.")))

(cl:ensure-generic-function 'lane_sharing-val :lambda-list '(m))
(cl:defmethod lane_sharing-val ((m <LaneSharing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lane_sharing-val is deprecated.  Use j2735_msgs-msg:lane_sharing instead.")
  (lane_sharing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneSharing>) ostream)
  "Serializes a message object of type '<LaneSharing>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_sharing)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_sharing)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneSharing>) istream)
  "Deserializes a message object of type '<LaneSharing>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_sharing)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_sharing)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneSharing>)))
  "Returns string type for a message object of type '<LaneSharing>"
  "j2735_msgs/LaneSharing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneSharing)))
  "Returns string type for a message object of type 'LaneSharing"
  "j2735_msgs/LaneSharing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneSharing>)))
  "Returns md5sum for a message object of type '<LaneSharing>"
  "a5b20babfaf86f7076116f556cbdd772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneSharing)))
  "Returns md5sum for a message object of type 'LaneSharing"
  "a5b20babfaf86f7076116f556cbdd772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneSharing>)))
  "Returns full string definition for message of type '<LaneSharing>"
  (cl:format cl:nil "#~%# LaneSharing.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%#~%# LaneSharing ::= BIT STRING {~%# -- With bits as defined:~%# overlappingLaneDescriptionProvided (0),~%# -- Assert when another lane object is present to describe the~%# -- path of the overlapping shared lane~%# -- this construct is not used for lane objects which simply cross~%# multipleLanesTreatedAsOneLane(1),~%# -- Assert if the lane object path and width details represents~%# -- multiple lanes within it that are not further described~%# -- Various modes and type of traffic that may share this lane:~%# otherNonMotorizedTrafficTypes (2), -- horse drawn etc.~%# individualMotorizedVehicleTraffic (3),~%# busVehicleTraffic (4),~%# taxiVehicleTraffic (5),~%# pedestriansTraffic (6),~%# cyclistVehicleTraffic (7),~%# trackedVehicleTraffic (8),~%# pedestrianTraffic (9)~%# } (SIZE (10))~%# -- All zeros would indicate 'not shared' and 'not overlapping'~%~%uint16 lane_sharing~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneSharing)))
  "Returns full string definition for message of type 'LaneSharing"
  (cl:format cl:nil "#~%# LaneSharing.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%#~%# LaneSharing ::= BIT STRING {~%# -- With bits as defined:~%# overlappingLaneDescriptionProvided (0),~%# -- Assert when another lane object is present to describe the~%# -- path of the overlapping shared lane~%# -- this construct is not used for lane objects which simply cross~%# multipleLanesTreatedAsOneLane(1),~%# -- Assert if the lane object path and width details represents~%# -- multiple lanes within it that are not further described~%# -- Various modes and type of traffic that may share this lane:~%# otherNonMotorizedTrafficTypes (2), -- horse drawn etc.~%# individualMotorizedVehicleTraffic (3),~%# busVehicleTraffic (4),~%# taxiVehicleTraffic (5),~%# pedestriansTraffic (6),~%# cyclistVehicleTraffic (7),~%# trackedVehicleTraffic (8),~%# pedestrianTraffic (9)~%# } (SIZE (10))~%# -- All zeros would indicate 'not shared' and 'not overlapping'~%~%uint16 lane_sharing~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneSharing>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneSharing>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneSharing
    (cl:cons ':lane_sharing (lane_sharing msg))
))
