;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::LaneAttributesVehicle)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'LaneAttributesVehicle (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE")
  (make-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributesVehicle.msg.html


(intern "*ISVEHICLEREVOCABLELANE*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*ISVEHICLEREVOCABLELANE* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*ISVEHICLEREVOCABLELANE* 0)
(intern "*ISVEHICLEFLYOVERLANE*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*ISVEHICLEFLYOVERLANE* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*ISVEHICLEFLYOVERLANE* 1)
(intern "*HOVLANEUSEONLY*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*HOVLANEUSEONLY* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*HOVLANEUSEONLY* 2)
(intern "*RESTRICTEDTOBUSUSE*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*RESTRICTEDTOBUSUSE* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*RESTRICTEDTOBUSUSE* 3)
(intern "*RESTRICTEDTOTAXIUSE*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*RESTRICTEDTOTAXIUSE* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*RESTRICTEDTOTAXIUSE* 4)
(intern "*RESTRICTEDFROMPUBLICUSE*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*RESTRICTEDFROMPUBLICUSE* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*RESTRICTEDFROMPUBLICUSE* 5)
(intern "*HASIRBEACONCOVERAGE*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*HASIRBEACONCOVERAGE* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*HASIRBEACONCOVERAGE* 6)
(intern "*PERMISSIONONREQUEST*" (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(shadow '*PERMISSIONONREQUEST* (find-package "J2735_MSGS::LANEATTRIBUTESVEHICLE"))
(defconstant j2735_msgs::LaneAttributesVehicle::*PERMISSIONONREQUEST* 7)

(defun j2735_msgs::LaneAttributesVehicle-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::LaneAttributesVehicle::*ISVEHICLEREVOCABLELANE*)
        ((= const 1) 'j2735_msgs::LaneAttributesVehicle::*ISVEHICLEFLYOVERLANE*)
        ((= const 2) 'j2735_msgs::LaneAttributesVehicle::*HOVLANEUSEONLY*)
        ((= const 3) 'j2735_msgs::LaneAttributesVehicle::*RESTRICTEDTOBUSUSE*)
        ((= const 4) 'j2735_msgs::LaneAttributesVehicle::*RESTRICTEDTOTAXIUSE*)
        ((= const 5) 'j2735_msgs::LaneAttributesVehicle::*RESTRICTEDFROMPUBLICUSE*)
        ((= const 6) 'j2735_msgs::LaneAttributesVehicle::*HASIRBEACONCOVERAGE*)
        ((= const 7) 'j2735_msgs::LaneAttributesVehicle::*PERMISSIONONREQUEST*)
        (t nil)))

(defclass j2735_msgs::LaneAttributesVehicle
  :super ros::object
  :slots (_lane_attributes_vehicle ))

(defmethod j2735_msgs::LaneAttributesVehicle
  (:init
   (&key
    ((:lane_attributes_vehicle __lane_attributes_vehicle) 0)
    )
   (send-super :init)
   (setq _lane_attributes_vehicle (round __lane_attributes_vehicle))
   self)
  (:lane_attributes_vehicle
   (&optional __lane_attributes_vehicle)
   (if __lane_attributes_vehicle (setq _lane_attributes_vehicle __lane_attributes_vehicle)) _lane_attributes_vehicle)
  (:serialization-length
   ()
   (+
    ;; uint8 _lane_attributes_vehicle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lane_attributes_vehicle
       (write-byte _lane_attributes_vehicle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lane_attributes_vehicle
     (setq _lane_attributes_vehicle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::LaneAttributesVehicle :md5sum-) "78cc6cbb02a8ffeee057c172dd545dbc")
(setf (get j2735_msgs::LaneAttributesVehicle :datatype-) "j2735_msgs/LaneAttributesVehicle")
(setf (get j2735_msgs::LaneAttributesVehicle :definition-)
      "#
# LaneAttributesVehicle.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# LaneAttributes-Vehicle ::= BIT STRING {
# -- With bits as defined:
# isVehicleRevocableLane (0),
#       -- this lane may be activated or not based
#       -- on the current SPAT message contents
#       -- if not asserted, the lane is ALWAYS present
# isVehicleFlyOverLane (1),
#       -- path of lane is not at grade
# hovLaneUseOnly (2),
# restrictedToBusUse (3),
# restrictedToTaxiUse(4),
# restrictedFromPublicUse (5),
# hasIRbeaconCoverage(6),
# permissionOnRequest(7)
#       -- e.g. to inform about a lane for e-cars
# } (SIZE (8,...))

uint8 lane_attributes_vehicle

uint8 ISVEHICLEREVOCABLELANE=0
uint8 ISVEHICLEFLYOVERLANE=1
uint8 HOVLANEUSEONLY=2
uint8 RESTRICTEDTOBUSUSE=3
uint8 RESTRICTEDTOTAXIUSE=4
uint8 RESTRICTEDFROMPUBLICUSE=5
uint8 HASIRBEACONCOVERAGE=6
uint8 PERMISSIONONREQUEST=7


")



(provide :j2735_msgs/LaneAttributesVehicle "78cc6cbb02a8ffeee057c172dd545dbc")


