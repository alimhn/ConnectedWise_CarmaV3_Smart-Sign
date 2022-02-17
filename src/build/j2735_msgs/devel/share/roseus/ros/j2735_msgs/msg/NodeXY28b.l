;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::NodeXY28b)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'NodeXY28b (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::NODEXY28B")
  (make-package "J2735_MSGS::NODEXY28B"))

(in-package "ROS")
;;//! \htmlinclude NodeXY28b.msg.html


(defclass j2735_msgs::NodeXY28b
  :super ros::object
  :slots (_x _y ))

(defmethod j2735_msgs::NodeXY28b
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get j2735_msgs::NodeXY28b :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get j2735_msgs::NodeXY28b :datatype-) "j2735_msgs/NodeXY28b")
(setf (get j2735_msgs::NodeXY28b :definition-)
      "#
# NodeXY28b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 28-bit node type with offset values from the last point in X and Y.

# Node-XY-28b ::= SEQUENCE {
# x Offset-B14,
# y Offset-B14
# }

# A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions.
# Offset-B14 ::= INTEGER (-8192..8191)
# -- a range of +- 81.91 meters

float32 x
float32 y

")



(provide :j2735_msgs/NodeXY28b "ff8d7d66dd3e4b731ef14a45d38888b6")


