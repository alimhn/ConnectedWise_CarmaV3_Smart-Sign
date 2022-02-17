;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RepeatParams)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RepeatParams (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::REPEATPARAMS")
  (make-package "J2735_MSGS::REPEATPARAMS"))

(in-package "ROS")
;;//! \htmlinclude RepeatParams.msg.html


(defclass j2735_msgs::RepeatParams
  :super ros::object
  :slots (_offset _period _span ))

(defmethod j2735_msgs::RepeatParams
  (:init
   (&key
    ((:offset __offset) 0)
    ((:period __period) 0)
    ((:span __span) 0)
    )
   (send-super :init)
   (setq _offset (round __offset))
   (setq _period (round __period))
   (setq _span (round __span))
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:span
   (&optional __span)
   (if __span (setq _span __span)) _span)
  (:serialization-length
   ()
   (+
    ;; uint16 _offset
    2
    ;; uint16 _period
    2
    ;; uint16 _span
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _offset
       (write-word _offset s)
     ;; uint16 _period
       (write-word _period s)
     ;; uint16 _span
       (write-word _span s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _offset
     (setq _offset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _period
     (setq _period (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _span
     (setq _span (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::RepeatParams :md5sum-) "29a9572bae20d351bcfc7c7e1ca19e93")
(setf (get j2735_msgs::RepeatParams :datatype-) "j2735_msgs/RepeatParams")
(setf (get j2735_msgs::RepeatParams :definition-)
      "#
# RepeatParams.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# ...

# RepeatParams ::= SEQUENCE
# {
# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time
# 	period INTEGER (0..1439), -- minutes between successive time spans
# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period
# }

# Offset 
# shift repetition start relative to midnight local time
uint16 offset

# Period
# minutes between successive time spans
uint16 period

# Span
# number of minutes schedule is active, must be less than the period
uint16 span

")



(provide :j2735_msgs/RepeatParams "29a9572bae20d351bcfc7c7e1ca19e93")


