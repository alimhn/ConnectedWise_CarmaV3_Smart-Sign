; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude RoadSegmentReferenceID.msg.html

(cl:defclass <RoadSegmentReferenceID> (roslisp-msg-protocol:ros-message)
  ((region
    :reader region
    :initarg :region
    :type cl:fixnum
    :initform 0)
   (region_exists
    :reader region_exists
    :initarg :region_exists
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (id_exists
    :reader id_exists
    :initarg :id_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RoadSegmentReferenceID (<RoadSegmentReferenceID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadSegmentReferenceID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadSegmentReferenceID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<RoadSegmentReferenceID> is deprecated: use j2735_msgs-msg:RoadSegmentReferenceID instead.")))

(cl:ensure-generic-function 'region-val :lambda-list '(m))
(cl:defmethod region-val ((m <RoadSegmentReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:region-val is deprecated.  Use j2735_msgs-msg:region instead.")
  (region m))

(cl:ensure-generic-function 'region_exists-val :lambda-list '(m))
(cl:defmethod region_exists-val ((m <RoadSegmentReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:region_exists-val is deprecated.  Use j2735_msgs-msg:region_exists instead.")
  (region_exists m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RoadSegmentReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'id_exists-val :lambda-list '(m))
(cl:defmethod id_exists-val ((m <RoadSegmentReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id_exists-val is deprecated.  Use j2735_msgs-msg:id_exists instead.")
  (id_exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadSegmentReferenceID>) ostream)
  "Serializes a message object of type '<RoadSegmentReferenceID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'region_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'id_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadSegmentReferenceID>) istream)
  "Deserializes a message object of type '<RoadSegmentReferenceID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'region_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'id_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadSegmentReferenceID>)))
  "Returns string type for a message object of type '<RoadSegmentReferenceID>"
  "j2735_msgs/RoadSegmentReferenceID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadSegmentReferenceID)))
  "Returns string type for a message object of type 'RoadSegmentReferenceID"
  "j2735_msgs/RoadSegmentReferenceID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadSegmentReferenceID>)))
  "Returns md5sum for a message object of type '<RoadSegmentReferenceID>"
  "4bf4691f490fdc19634fca26ef0c582f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadSegmentReferenceID)))
  "Returns md5sum for a message object of type 'RoadSegmentReferenceID"
  "4bf4691f490fdc19634fca26ef0c582f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadSegmentReferenceID>)))
  "Returns full string definition for message of type '<RoadSegmentReferenceID>"
  (cl:format cl:nil "#~%# RoadSegmentReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RoadSegmentReferenceID data frame is used to convey theRoadSegmentID which is unique to a given~%# road segment of interest, and also the RoadRegulatorID assigned to the region in which it is operating (when required).~%~%# RoadSegmentReferenceID ::= SEQUENCE {~%# region RoadRegulatorID OPTIONAL,~%# -- a globally unique regional assignment value~%# -- typically assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# id RoadSegmentID~%# -- a unique mapping to the road segment~%# -- in question within the above region of use~%# -- during its period of assignment and use~%# -- note that unlike intersectionID values,~%# -- this value can be reused by the region~%# }~%~%# RoadRegulatorID ::= INTEGER (0..65535)~%uint16 region~%bool region_exists~%~%# RoadSegmentID ::= INTEGER (0..65535)~%# -- The values zero to 255 shall be used for testing only~%# -- Note that the value assigned to an RoadSegment will be~%# -- unique within a given regional ID only during its use~%uint16 id~%bool id_exists~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadSegmentReferenceID)))
  "Returns full string definition for message of type 'RoadSegmentReferenceID"
  (cl:format cl:nil "#~%# RoadSegmentReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The DF_RoadSegmentReferenceID data frame is used to convey theRoadSegmentID which is unique to a given~%# road segment of interest, and also the RoadRegulatorID assigned to the region in which it is operating (when required).~%~%# RoadSegmentReferenceID ::= SEQUENCE {~%# region RoadRegulatorID OPTIONAL,~%# -- a globally unique regional assignment value~%# -- typically assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# id RoadSegmentID~%# -- a unique mapping to the road segment~%# -- in question within the above region of use~%# -- during its period of assignment and use~%# -- note that unlike intersectionID values,~%# -- this value can be reused by the region~%# }~%~%# RoadRegulatorID ::= INTEGER (0..65535)~%uint16 region~%bool region_exists~%~%# RoadSegmentID ::= INTEGER (0..65535)~%# -- The values zero to 255 shall be used for testing only~%# -- Note that the value assigned to an RoadSegment will be~%# -- unique within a given regional ID only during its use~%uint16 id~%bool id_exists~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadSegmentReferenceID>))
  (cl:+ 0
     2
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadSegmentReferenceID>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadSegmentReferenceID
    (cl:cons ':region (region msg))
    (cl:cons ':region_exists (region_exists msg))
    (cl:cons ':id (id msg))
    (cl:cons ':id_exists (id_exists msg))
))
