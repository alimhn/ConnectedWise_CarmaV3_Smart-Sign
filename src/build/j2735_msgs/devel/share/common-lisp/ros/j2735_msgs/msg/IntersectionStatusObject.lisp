; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude IntersectionStatusObject.msg.html

(cl:defclass <IntersectionStatusObject> (roslisp-msg-protocol:ros-message)
  ((intersection_status_object
    :reader intersection_status_object
    :initarg :intersection_status_object
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IntersectionStatusObject (<IntersectionStatusObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionStatusObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionStatusObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<IntersectionStatusObject> is deprecated: use j2735_msgs-msg:IntersectionStatusObject instead.")))

(cl:ensure-generic-function 'intersection_status_object-val :lambda-list '(m))
(cl:defmethod intersection_status_object-val ((m <IntersectionStatusObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:intersection_status_object-val is deprecated.  Use j2735_msgs-msg:intersection_status_object instead.")
  (intersection_status_object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionStatusObject>) ostream)
  "Serializes a message object of type '<IntersectionStatusObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intersection_status_object)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'intersection_status_object)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionStatusObject>) istream)
  "Deserializes a message object of type '<IntersectionStatusObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intersection_status_object)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'intersection_status_object)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionStatusObject>)))
  "Returns string type for a message object of type '<IntersectionStatusObject>"
  "j2735_msgs/IntersectionStatusObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionStatusObject)))
  "Returns string type for a message object of type 'IntersectionStatusObject"
  "j2735_msgs/IntersectionStatusObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionStatusObject>)))
  "Returns md5sum for a message object of type '<IntersectionStatusObject>"
  "189e3f94ed4f7d42fc526476bb41da86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionStatusObject)))
  "Returns md5sum for a message object of type 'IntersectionStatusObject"
  "189e3f94ed4f7d42fc526476bb41da86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionStatusObject>)))
  "Returns full string definition for message of type '<IntersectionStatusObject>"
  (cl:format cl:nil "#~%# IntersectionStatusObject.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Intersection Status Object contains Advanced Traffic Controller (ATC) status information that may be sent to~%# local OBUs as part of the SPAT process.~%~%# IntersectionStatusObject ::= BIT STRING {~%# manualControlIsEnabled (0),~%# -- Timing reported is per programmed values, etc. but person~%# -- at cabinet can manually request that certain intervals are~%# -- terminated early (e.g. green).~%# stopTimeIsActivated (1),~%# -- And all counting/timing has stopped.~%# failureFlash (2),~%# -- Above to be used for any detected hardware failures,~%# -- e.g. conflict monitor as well as for police flash~%# preemptIsActive (3),~%# signalPriorityIsActive (4),~%# -- Additional states~%# fixedTimeOperation (5),~%# -- Schedule of signals is based on time only~%# -- (i.e. the state can be calculated)~%# trafficDependentOperation (6),~%# -- Operation is based on different levels of traffic parameters~%# -- (requests, duration of gaps or more complex parameters)~%# standbyOperation (7),~%# -- Controller: partially switched off or partially amber flashing~%# failureMode (8),~%# -- Controller has a problem or failure in operation~%# off (9),~%# -- Controller is switched off~%# -- Related to MAP and SPAT bindings~%# recentMAPmessageUpdate (10),~%# -- Map revision with content changes~%# recentChangeInMAPassignedLanesIDsUsed (11),~%# -- Change in MAP's assigned lanes used (lane changes)~%# -- Changes in the active lane list description~%# noValidMAPisAvailableAtThisTime (12),~%# -- MAP (and various lanes indexes) not available~%# noValidSPATisAvailableAtThisTime (13)~%# -- SPAT system is not working at this time~%# -- Bits 14,15 reserved at this time and shall be zero~%# } (SIZE(16))~%~%uint16 intersection_status_object~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionStatusObject)))
  "Returns full string definition for message of type 'IntersectionStatusObject"
  (cl:format cl:nil "#~%# IntersectionStatusObject.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# The Intersection Status Object contains Advanced Traffic Controller (ATC) status information that may be sent to~%# local OBUs as part of the SPAT process.~%~%# IntersectionStatusObject ::= BIT STRING {~%# manualControlIsEnabled (0),~%# -- Timing reported is per programmed values, etc. but person~%# -- at cabinet can manually request that certain intervals are~%# -- terminated early (e.g. green).~%# stopTimeIsActivated (1),~%# -- And all counting/timing has stopped.~%# failureFlash (2),~%# -- Above to be used for any detected hardware failures,~%# -- e.g. conflict monitor as well as for police flash~%# preemptIsActive (3),~%# signalPriorityIsActive (4),~%# -- Additional states~%# fixedTimeOperation (5),~%# -- Schedule of signals is based on time only~%# -- (i.e. the state can be calculated)~%# trafficDependentOperation (6),~%# -- Operation is based on different levels of traffic parameters~%# -- (requests, duration of gaps or more complex parameters)~%# standbyOperation (7),~%# -- Controller: partially switched off or partially amber flashing~%# failureMode (8),~%# -- Controller has a problem or failure in operation~%# off (9),~%# -- Controller is switched off~%# -- Related to MAP and SPAT bindings~%# recentMAPmessageUpdate (10),~%# -- Map revision with content changes~%# recentChangeInMAPassignedLanesIDsUsed (11),~%# -- Change in MAP's assigned lanes used (lane changes)~%# -- Changes in the active lane list description~%# noValidMAPisAvailableAtThisTime (12),~%# -- MAP (and various lanes indexes) not available~%# noValidSPATisAvailableAtThisTime (13)~%# -- SPAT system is not working at this time~%# -- Bits 14,15 reserved at this time and shall be zero~%# } (SIZE(16))~%~%uint16 intersection_status_object~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionStatusObject>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionStatusObject>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionStatusObject
    (cl:cons ':intersection_status_object (intersection_status_object msg))
))
