;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::ComputedLane)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'ComputedLane (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::COMPUTEDLANE")
  (make-package "J2735_MSGS::COMPUTEDLANE"))

(in-package "ROS")
;;//! \htmlinclude ComputedLane.msg.html


(intern "*ROTATEXY_INVALID*" (find-package "J2735_MSGS::COMPUTEDLANE"))
(shadow '*ROTATEXY_INVALID* (find-package "J2735_MSGS::COMPUTEDLANE"))
(defconstant j2735_msgs::ComputedLane::*ROTATEXY_INVALID* 255)

(defun j2735_msgs::ComputedLane-to-symbol (const)
  (cond
        ((= const 255) 'j2735_msgs::ComputedLane::*ROTATEXY_INVALID*)
        (t nil)))

(defclass j2735_msgs::ComputedLane
  :super ros::object
  :slots (_reference_lane_id _offset_x_axis _offset_y_axis _rotateXY _rotatexy_exists _scale_x_axis _scale_x_axis_exists _scale_y_axis _scale_y_axis_exists ))

(defmethod j2735_msgs::ComputedLane
  (:init
   (&key
    ((:reference_lane_id __reference_lane_id) 0)
    ((:offset_x_axis __offset_x_axis) (instance j2735_msgs::OffsetXaxis :init))
    ((:offset_y_axis __offset_y_axis) (instance j2735_msgs::OffsetYaxis :init))
    ((:rotateXY __rotateXY) 0)
    ((:rotatexy_exists __rotatexy_exists) nil)
    ((:scale_x_axis __scale_x_axis) 0)
    ((:scale_x_axis_exists __scale_x_axis_exists) nil)
    ((:scale_y_axis __scale_y_axis) 0)
    ((:scale_y_axis_exists __scale_y_axis_exists) nil)
    )
   (send-super :init)
   (setq _reference_lane_id (round __reference_lane_id))
   (setq _offset_x_axis __offset_x_axis)
   (setq _offset_y_axis __offset_y_axis)
   (setq _rotateXY (round __rotateXY))
   (setq _rotatexy_exists __rotatexy_exists)
   (setq _scale_x_axis (round __scale_x_axis))
   (setq _scale_x_axis_exists __scale_x_axis_exists)
   (setq _scale_y_axis (round __scale_y_axis))
   (setq _scale_y_axis_exists __scale_y_axis_exists)
   self)
  (:reference_lane_id
   (&optional __reference_lane_id)
   (if __reference_lane_id (setq _reference_lane_id __reference_lane_id)) _reference_lane_id)
  (:offset_x_axis
   (&rest __offset_x_axis)
   (if (keywordp (car __offset_x_axis))
       (send* _offset_x_axis __offset_x_axis)
     (progn
       (if __offset_x_axis (setq _offset_x_axis (car __offset_x_axis)))
       _offset_x_axis)))
  (:offset_y_axis
   (&rest __offset_y_axis)
   (if (keywordp (car __offset_y_axis))
       (send* _offset_y_axis __offset_y_axis)
     (progn
       (if __offset_y_axis (setq _offset_y_axis (car __offset_y_axis)))
       _offset_y_axis)))
  (:rotateXY
   (&optional __rotateXY)
   (if __rotateXY (setq _rotateXY __rotateXY)) _rotateXY)
  (:rotatexy_exists
   (&optional (__rotatexy_exists :null))
   (if (not (eq __rotatexy_exists :null)) (setq _rotatexy_exists __rotatexy_exists)) _rotatexy_exists)
  (:scale_x_axis
   (&optional __scale_x_axis)
   (if __scale_x_axis (setq _scale_x_axis __scale_x_axis)) _scale_x_axis)
  (:scale_x_axis_exists
   (&optional (__scale_x_axis_exists :null))
   (if (not (eq __scale_x_axis_exists :null)) (setq _scale_x_axis_exists __scale_x_axis_exists)) _scale_x_axis_exists)
  (:scale_y_axis
   (&optional __scale_y_axis)
   (if __scale_y_axis (setq _scale_y_axis __scale_y_axis)) _scale_y_axis)
  (:scale_y_axis_exists
   (&optional (__scale_y_axis_exists :null))
   (if (not (eq __scale_y_axis_exists :null)) (setq _scale_y_axis_exists __scale_y_axis_exists)) _scale_y_axis_exists)
  (:serialization-length
   ()
   (+
    ;; uint16 _reference_lane_id
    2
    ;; j2735_msgs/OffsetXaxis _offset_x_axis
    (send _offset_x_axis :serialization-length)
    ;; j2735_msgs/OffsetYaxis _offset_y_axis
    (send _offset_y_axis :serialization-length)
    ;; uint16 _rotateXY
    2
    ;; bool _rotatexy_exists
    1
    ;; int16 _scale_x_axis
    2
    ;; bool _scale_x_axis_exists
    1
    ;; int16 _scale_y_axis
    2
    ;; bool _scale_y_axis_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _reference_lane_id
       (write-word _reference_lane_id s)
     ;; j2735_msgs/OffsetXaxis _offset_x_axis
       (send _offset_x_axis :serialize s)
     ;; j2735_msgs/OffsetYaxis _offset_y_axis
       (send _offset_y_axis :serialize s)
     ;; uint16 _rotateXY
       (write-word _rotateXY s)
     ;; bool _rotatexy_exists
       (if _rotatexy_exists (write-byte -1 s) (write-byte 0 s))
     ;; int16 _scale_x_axis
       (write-word _scale_x_axis s)
     ;; bool _scale_x_axis_exists
       (if _scale_x_axis_exists (write-byte -1 s) (write-byte 0 s))
     ;; int16 _scale_y_axis
       (write-word _scale_y_axis s)
     ;; bool _scale_y_axis_exists
       (if _scale_y_axis_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _reference_lane_id
     (setq _reference_lane_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; j2735_msgs/OffsetXaxis _offset_x_axis
     (send _offset_x_axis :deserialize buf ptr-) (incf ptr- (send _offset_x_axis :serialization-length))
   ;; j2735_msgs/OffsetYaxis _offset_y_axis
     (send _offset_y_axis :deserialize buf ptr-) (incf ptr- (send _offset_y_axis :serialization-length))
   ;; uint16 _rotateXY
     (setq _rotateXY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _rotatexy_exists
     (setq _rotatexy_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _scale_x_axis
     (setq _scale_x_axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _scale_x_axis_exists
     (setq _scale_x_axis_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _scale_y_axis
     (setq _scale_y_axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _scale_y_axis_exists
     (setq _scale_y_axis_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::ComputedLane :md5sum-) "8e35ff00529bfc2e7f719199f8b58201")
(setf (get j2735_msgs::ComputedLane :datatype-) "j2735_msgs/ComputedLane")
(setf (get j2735_msgs::ComputedLane :definition-)
      "#
# NodeListXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# ComputedLane ::= SEQUENCE {
# -- Data needed to created a computed lane
# referenceLaneId LaneID,
# 	-- the lane ID upon which this
# 	-- computed lane will be based
# 	-- Lane Offset in X and Y direction
# offsetXaxis CHOICE {
# 		small DrivenLineOffsetSm,
# 		large DrivenLineOffsetLg
# 		},
# offsetYaxis CHOICE {
# 		small DrivenLineOffsetSm,
# 		large DrivenLineOffsetLg
# 		},
# 	-- A path X offset value for translations of the
# 	-- path's points when creating translated lanes.
# 	-- The values found in the reference lane are
# 	-- all offset based on the X and Y values from
# 	-- the coordinates of the reference lane's
# 	-- initial path point.
#
# -- Lane Rotation
# rotateXY Angle OPTIONAL,
# 	-- A path rotation value for the entire lane
# 	-- Observe that this rotates the existing orientation
# 	-- of the referenced lane, it does not replace it.
# 	-- Rotation occurs about the initial path point.
# -- Lane Path Scale (zooming)
# scaleXaxis Scale-B12 OPTIONAL,
# scaleYaxis Scale-B12 OPTIONAL,
# 	-- value for translations or zooming of the path's
# 	-- points. The values found in the reference lane
# 	-- are all expanded or contracted based on the X
# 	-- and Y and width values from the coordinates of
# 	-- the reference lane's initial path point.
# 	-- The Z axis remains untouched.
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-ComputedLane}} OPTIONAL,
# ...
# }

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is
# -- not available or not known
# -- the value 255 is reserved for future use
uint16 reference_lane_id

# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
# lane number from which a computed lane is offset.
# DrivenLineOffsetSm ::= INTEGER (-2047..2047)
# -- LSB units are 1 cm.
# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
# reference lane number from which a computed lane is offset.
# DrivenLineOffsetLg ::= INTEGER (-32767..32767)
# -- LSB units are 1 cm.

j2735_msgs/OffsetXaxis offset_x_axis

j2735_msgs/OffsetYaxis offset_y_axis

# Angle ::= INTEGER (0..239)
#  -- Unsigned units of 1.5 degree, in 1 octet
#  -- the true north is 0, positive is clockwise
#  -- the values 240 to 254 shall not be sent
#  -- the value 255 (0xFF) indicates an invalid value
# NOTE: use invalid value to indicate unavailability as well.
uint16 rotateXY
uint16 ROTATEXY_INVALID=255
bool rotatexy_exists

# Scale-B12 ::= INTEGER (-2048..2047)
# A 12-bit signed scaling factor supporting scales from zero (which is not used) to >200%.
# In this data element, the value zero is taken to represent a value of one (scale 1:1).
int16 scale_x_axis
bool scale_x_axis_exists

int16 scale_y_axis
bool scale_y_axis_exists

# regional #TODO: RegionalExtensions are not yet implemented in asn1c

================================================================================
MSG: j2735_msgs/OffsetXaxis
#
# OffsetXaxis.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# 	-- A path X offset value for translations of the
# 	-- path's points when creating translated lanes.
# 	-- The values found in the reference lane are
# 	-- all offset based on the X and Y values from
# 	-- the coordinates of the reference lane's
# 	-- initial path point.
# offsetXaxis CHOICE {
# 		small DrivenLineOffsetSm,
# 		large DrivenLineOffsetLg
# 		},


uint8 choice
uint8 SMALL=0
uint8 LARGE=1

# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
# lane number from which a computed lane is offset.
# DrivenLineOffsetSm ::= INTEGER (-2047..2047)
# -- LSB units are 1 cm.
int16 small


# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
# reference lane number from which a computed lane is offset.
# DrivenLineOffsetLg ::= INTEGER (-32767..32767)
# -- LSB units are 1 cm.
int16 large
================================================================================
MSG: j2735_msgs/OffsetYaxis
#
# OffsetYaxis.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# 	-- A path X offset value for translations of the
# 	-- path's points when creating translated lanes.
# 	-- The values found in the reference lane are
# 	-- all offset based on the X and Y values from
# 	-- the coordinates of the reference lane's
# 	-- initial path point.
# offsetYaxis CHOICE {
# 		small DrivenLineOffsetSm,
# 		large DrivenLineOffsetLg
# 		},

uint8 choice
uint8 SMALL=0
uint8 LARGE=1

# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
# lane number from which a computed lane is offset.
# DrivenLineOffsetSm ::= INTEGER (-2047..2047)
# -- LSB units are 1 cm.
int16 small


# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
# reference lane number from which a computed lane is offset.
# DrivenLineOffsetLg ::= INTEGER (-32767..32767)
# -- LSB units are 1 cm.
int16 large
")



(provide :j2735_msgs/ComputedLane "8e35ff00529bfc2e7f719199f8b58201")


