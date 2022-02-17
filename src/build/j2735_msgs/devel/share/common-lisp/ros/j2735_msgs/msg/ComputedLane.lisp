; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude ComputedLane.msg.html

(cl:defclass <ComputedLane> (roslisp-msg-protocol:ros-message)
  ((reference_lane_id
    :reader reference_lane_id
    :initarg :reference_lane_id
    :type cl:fixnum
    :initform 0)
   (offset_x_axis
    :reader offset_x_axis
    :initarg :offset_x_axis
    :type j2735_msgs-msg:OffsetXaxis
    :initform (cl:make-instance 'j2735_msgs-msg:OffsetXaxis))
   (offset_y_axis
    :reader offset_y_axis
    :initarg :offset_y_axis
    :type j2735_msgs-msg:OffsetYaxis
    :initform (cl:make-instance 'j2735_msgs-msg:OffsetYaxis))
   (rotateXY
    :reader rotateXY
    :initarg :rotateXY
    :type cl:fixnum
    :initform 0)
   (rotatexy_exists
    :reader rotatexy_exists
    :initarg :rotatexy_exists
    :type cl:boolean
    :initform cl:nil)
   (scale_x_axis
    :reader scale_x_axis
    :initarg :scale_x_axis
    :type cl:fixnum
    :initform 0)
   (scale_x_axis_exists
    :reader scale_x_axis_exists
    :initarg :scale_x_axis_exists
    :type cl:boolean
    :initform cl:nil)
   (scale_y_axis
    :reader scale_y_axis
    :initarg :scale_y_axis
    :type cl:fixnum
    :initform 0)
   (scale_y_axis_exists
    :reader scale_y_axis_exists
    :initarg :scale_y_axis_exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ComputedLane (<ComputedLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputedLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputedLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<ComputedLane> is deprecated: use j2735_msgs-msg:ComputedLane instead.")))

(cl:ensure-generic-function 'reference_lane_id-val :lambda-list '(m))
(cl:defmethod reference_lane_id-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:reference_lane_id-val is deprecated.  Use j2735_msgs-msg:reference_lane_id instead.")
  (reference_lane_id m))

(cl:ensure-generic-function 'offset_x_axis-val :lambda-list '(m))
(cl:defmethod offset_x_axis-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:offset_x_axis-val is deprecated.  Use j2735_msgs-msg:offset_x_axis instead.")
  (offset_x_axis m))

(cl:ensure-generic-function 'offset_y_axis-val :lambda-list '(m))
(cl:defmethod offset_y_axis-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:offset_y_axis-val is deprecated.  Use j2735_msgs-msg:offset_y_axis instead.")
  (offset_y_axis m))

(cl:ensure-generic-function 'rotateXY-val :lambda-list '(m))
(cl:defmethod rotateXY-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:rotateXY-val is deprecated.  Use j2735_msgs-msg:rotateXY instead.")
  (rotateXY m))

(cl:ensure-generic-function 'rotatexy_exists-val :lambda-list '(m))
(cl:defmethod rotatexy_exists-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:rotatexy_exists-val is deprecated.  Use j2735_msgs-msg:rotatexy_exists instead.")
  (rotatexy_exists m))

(cl:ensure-generic-function 'scale_x_axis-val :lambda-list '(m))
(cl:defmethod scale_x_axis-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:scale_x_axis-val is deprecated.  Use j2735_msgs-msg:scale_x_axis instead.")
  (scale_x_axis m))

(cl:ensure-generic-function 'scale_x_axis_exists-val :lambda-list '(m))
(cl:defmethod scale_x_axis_exists-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:scale_x_axis_exists-val is deprecated.  Use j2735_msgs-msg:scale_x_axis_exists instead.")
  (scale_x_axis_exists m))

(cl:ensure-generic-function 'scale_y_axis-val :lambda-list '(m))
(cl:defmethod scale_y_axis-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:scale_y_axis-val is deprecated.  Use j2735_msgs-msg:scale_y_axis instead.")
  (scale_y_axis m))

(cl:ensure-generic-function 'scale_y_axis_exists-val :lambda-list '(m))
(cl:defmethod scale_y_axis_exists-val ((m <ComputedLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:scale_y_axis_exists-val is deprecated.  Use j2735_msgs-msg:scale_y_axis_exists instead.")
  (scale_y_axis_exists m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ComputedLane>)))
    "Constants for message type '<ComputedLane>"
  '((:ROTATEXY_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ComputedLane)))
    "Constants for message type 'ComputedLane"
  '((:ROTATEXY_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputedLane>) ostream)
  "Serializes a message object of type '<ComputedLane>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_lane_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset_x_axis) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset_y_axis) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rotateXY)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rotateXY)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotatexy_exists) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'scale_x_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'scale_x_axis_exists) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'scale_y_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'scale_y_axis_exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputedLane>) istream)
  "Deserializes a message object of type '<ComputedLane>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_lane_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset_x_axis) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset_y_axis) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rotateXY)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rotateXY)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotatexy_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scale_x_axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'scale_x_axis_exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scale_y_axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'scale_y_axis_exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputedLane>)))
  "Returns string type for a message object of type '<ComputedLane>"
  "j2735_msgs/ComputedLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputedLane)))
  "Returns string type for a message object of type 'ComputedLane"
  "j2735_msgs/ComputedLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputedLane>)))
  "Returns md5sum for a message object of type '<ComputedLane>"
  "8e35ff00529bfc2e7f719199f8b58201")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputedLane)))
  "Returns md5sum for a message object of type 'ComputedLane"
  "8e35ff00529bfc2e7f719199f8b58201")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputedLane>)))
  "Returns full string definition for message of type '<ComputedLane>"
  (cl:format cl:nil "#~%# NodeListXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ComputedLane ::= SEQUENCE {~%# -- Data needed to created a computed lane~%# referenceLaneId LaneID,~%# 	-- the lane ID upon which this~%# 	-- computed lane will be based~%# 	-- Lane Offset in X and Y direction~%# offsetXaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%# offsetYaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%#~%# -- Lane Rotation~%# rotateXY Angle OPTIONAL,~%# 	-- A path rotation value for the entire lane~%# 	-- Observe that this rotates the existing orientation~%# 	-- of the referenced lane, it does not replace it.~%# 	-- Rotation occurs about the initial path point.~%# -- Lane Path Scale (zooming)~%# scaleXaxis Scale-B12 OPTIONAL,~%# scaleYaxis Scale-B12 OPTIONAL,~%# 	-- value for translations or zooming of the path's~%# 	-- points. The values found in the reference lane~%# 	-- are all expanded or contracted based on the X~%# 	-- and Y and width values from the coordinates of~%# 	-- the reference lane's initial path point.~%# 	-- The Z axis remains untouched.~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ComputedLane}} OPTIONAL,~%# ...~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 reference_lane_id~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%~%j2735_msgs/OffsetXaxis offset_x_axis~%~%j2735_msgs/OffsetYaxis offset_y_axis~%~%# Angle ::= INTEGER (0..239)~%#  -- Unsigned units of 1.5 degree, in 1 octet~%#  -- the true north is 0, positive is clockwise~%#  -- the values 240 to 254 shall not be sent~%#  -- the value 255 (0xFF) indicates an invalid value~%# NOTE: use invalid value to indicate unavailability as well.~%uint16 rotateXY~%uint16 ROTATEXY_INVALID=255~%bool rotatexy_exists~%~%# Scale-B12 ::= INTEGER (-2048..2047)~%# A 12-bit signed scaling factor supporting scales from zero (which is not used) to >200%.~%# In this data element, the value zero is taken to represent a value of one (scale 1:1).~%int16 scale_x_axis~%bool scale_x_axis_exists~%~%int16 scale_y_axis~%bool scale_y_axis_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/OffsetXaxis~%#~%# OffsetXaxis.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%# offsetXaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%~%~%uint8 choice~%uint8 SMALL=0~%uint8 LARGE=1~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%int16 small~%~%~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%int16 large~%================================================================================~%MSG: j2735_msgs/OffsetYaxis~%#~%# OffsetYaxis.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%# offsetYaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%~%uint8 choice~%uint8 SMALL=0~%uint8 LARGE=1~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%int16 small~%~%~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%int16 large~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputedLane)))
  "Returns full string definition for message of type 'ComputedLane"
  (cl:format cl:nil "#~%# NodeListXY.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# ComputedLane ::= SEQUENCE {~%# -- Data needed to created a computed lane~%# referenceLaneId LaneID,~%# 	-- the lane ID upon which this~%# 	-- computed lane will be based~%# 	-- Lane Offset in X and Y direction~%# offsetXaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%# offsetYaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%#~%# -- Lane Rotation~%# rotateXY Angle OPTIONAL,~%# 	-- A path rotation value for the entire lane~%# 	-- Observe that this rotates the existing orientation~%# 	-- of the referenced lane, it does not replace it.~%# 	-- Rotation occurs about the initial path point.~%# -- Lane Path Scale (zooming)~%# scaleXaxis Scale-B12 OPTIONAL,~%# scaleYaxis Scale-B12 OPTIONAL,~%# 	-- value for translations or zooming of the path's~%# 	-- points. The values found in the reference lane~%# 	-- are all expanded or contracted based on the X~%# 	-- and Y and width values from the coordinates of~%# 	-- the reference lane's initial path point.~%# 	-- The Z axis remains untouched.~%# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ComputedLane}} OPTIONAL,~%# ...~%# }~%~%# LaneID ::= INTEGER (0..255)~%# -- the value 0 shall be used when the lane ID is~%# -- not available or not known~%# -- the value 255 is reserved for future use~%uint16 reference_lane_id~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%~%j2735_msgs/OffsetXaxis offset_x_axis~%~%j2735_msgs/OffsetYaxis offset_y_axis~%~%# Angle ::= INTEGER (0..239)~%#  -- Unsigned units of 1.5 degree, in 1 octet~%#  -- the true north is 0, positive is clockwise~%#  -- the values 240 to 254 shall not be sent~%#  -- the value 255 (0xFF) indicates an invalid value~%# NOTE: use invalid value to indicate unavailability as well.~%uint16 rotateXY~%uint16 ROTATEXY_INVALID=255~%bool rotatexy_exists~%~%# Scale-B12 ::= INTEGER (-2048..2047)~%# A 12-bit signed scaling factor supporting scales from zero (which is not used) to >200%.~%# In this data element, the value zero is taken to represent a value of one (scale 1:1).~%int16 scale_x_axis~%bool scale_x_axis_exists~%~%int16 scale_y_axis~%bool scale_y_axis_exists~%~%# regional #TODO: RegionalExtensions are not yet implemented in asn1c~%~%================================================================================~%MSG: j2735_msgs/OffsetXaxis~%#~%# OffsetXaxis.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%# offsetXaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%~%~%uint8 choice~%uint8 SMALL=0~%uint8 LARGE=1~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%int16 small~%~%~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%int16 large~%================================================================================~%MSG: j2735_msgs/OffsetYaxis~%#~%# OffsetYaxis.msg~%#~%# J2735 2016 message format.~%#~%# @author Mae Fromm~%# @version 0.1~%#~%# 	-- A path X offset value for translations of the~%# 	-- path's points when creating translated lanes.~%# 	-- The values found in the reference lane are~%# 	-- all offset based on the X and Y values from~%# 	-- the coordinates of the reference lane's~%# 	-- initial path point.~%# offsetYaxis CHOICE {~%# 		small DrivenLineOffsetSm,~%# 		large DrivenLineOffsetLg~%# 		},~%~%uint8 choice~%uint8 SMALL=0~%uint8 LARGE=1~%~%# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference~%# lane number from which a computed lane is offset.~%# DrivenLineOffsetSm ::= INTEGER (-2047..2047)~%# -- LSB units are 1 cm.~%int16 small~%~%~%# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a~%# reference lane number from which a computed lane is offset.~%# DrivenLineOffsetLg ::= INTEGER (-32767..32767)~%# -- LSB units are 1 cm.~%int16 large~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputedLane>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset_x_axis))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset_y_axis))
     2
     1
     2
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputedLane>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputedLane
    (cl:cons ':reference_lane_id (reference_lane_id msg))
    (cl:cons ':offset_x_axis (offset_x_axis msg))
    (cl:cons ':offset_y_axis (offset_y_axis msg))
    (cl:cons ':rotateXY (rotateXY msg))
    (cl:cons ':rotatexy_exists (rotatexy_exists msg))
    (cl:cons ':scale_x_axis (scale_x_axis msg))
    (cl:cons ':scale_x_axis_exists (scale_x_axis_exists msg))
    (cl:cons ':scale_y_axis (scale_y_axis msg))
    (cl:cons ':scale_y_axis_exists (scale_y_axis_exists msg))
))
