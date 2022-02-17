; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude IntersectionReferenceID.msg.html

(cl:defclass <IntersectionReferenceID> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass IntersectionReferenceID (<IntersectionReferenceID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionReferenceID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionReferenceID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<IntersectionReferenceID> is deprecated: use j2735_msgs-msg:IntersectionReferenceID instead.")))

(cl:ensure-generic-function 'region-val :lambda-list '(m))
(cl:defmethod region-val ((m <IntersectionReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:region-val is deprecated.  Use j2735_msgs-msg:region instead.")
  (region m))

(cl:ensure-generic-function 'region_exists-val :lambda-list '(m))
(cl:defmethod region_exists-val ((m <IntersectionReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:region_exists-val is deprecated.  Use j2735_msgs-msg:region_exists instead.")
  (region_exists m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IntersectionReferenceID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:id-val is deprecated.  Use j2735_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IntersectionReferenceID>)))
    "Constants for message type '<IntersectionReferenceID>"
  '((:REGION_UNAVAILABLE . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IntersectionReferenceID)))
    "Constants for message type 'IntersectionReferenceID"
  '((:REGION_UNAVAILABLE . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionReferenceID>) ostream)
  "Serializes a message object of type '<IntersectionReferenceID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'region_exists) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionReferenceID>) istream)
  "Deserializes a message object of type '<IntersectionReferenceID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'region_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionReferenceID>)))
  "Returns string type for a message object of type '<IntersectionReferenceID>"
  "j2735_msgs/IntersectionReferenceID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionReferenceID)))
  "Returns string type for a message object of type 'IntersectionReferenceID"
  "j2735_msgs/IntersectionReferenceID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionReferenceID>)))
  "Returns md5sum for a message object of type '<IntersectionReferenceID>"
  "ab9a4df76e7acc4e7573572145314417")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionReferenceID)))
  "Returns md5sum for a message object of type 'IntersectionReferenceID"
  "ab9a4df76e7acc4e7573572145314417")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionReferenceID>)))
  "Returns full string definition for message of type '<IntersectionReferenceID>"
  (cl:format cl:nil "#~%# IntersectionReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an~%# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is~%# guaranteed to be globally unique.~%~%# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)~%# -- a globally unique regional assignment value~%# -- typical assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.~%uint16 region~%uint16 REGION_UNAVAILABLE=0~%bool region_exists~%~%# id IntersectionID ::= INTEGER (0..65535)~%# -- a unique mapping to the intersection~%# -- in question within the above region of use~%uint16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionReferenceID)))
  "Returns full string definition for message of type 'IntersectionReferenceID"
  (cl:format cl:nil "#~%# IntersectionReferenceID.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an~%# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is~%# guaranteed to be globally unique.~%~%# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)~%# -- a globally unique regional assignment value~%# -- typical assigned to a regional DOT authority~%# -- the value zero shall be used for testing needs~%# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.~%uint16 region~%uint16 REGION_UNAVAILABLE=0~%bool region_exists~%~%# id IntersectionID ::= INTEGER (0..65535)~%# -- a unique mapping to the intersection~%# -- in question within the above region of use~%uint16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionReferenceID>))
  (cl:+ 0
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionReferenceID>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionReferenceID
    (cl:cons ':region (region msg))
    (cl:cons ':region_exists (region_exists msg))
    (cl:cons ':id (id msg))
))
