;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::PathNode)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'PathNode (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::PATHNODE")
  (make-package "J2735_MSGS::PATHNODE"))

(in-package "ROS")
;;//! \htmlinclude PathNode.msg.html


(defclass j2735_msgs::PathNode
  :super ros::object
  :slots (_x _y _z _z_exists _width _width_exists ))

(defmethod j2735_msgs::PathNode
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:z_exists __z_exists) nil)
    ((:width __width) 0)
    ((:width_exists __width_exists) nil)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _z_exists __z_exists)
   (setq _width (round __width))
   (setq _width_exists __width_exists)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:z_exists
   (&optional (__z_exists :null))
   (if (not (eq __z_exists :null)) (setq _z_exists __z_exists)) _z_exists)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:width_exists
   (&optional (__width_exists :null))
   (if (not (eq __width_exists :null)) (setq _width_exists __width_exists)) _width_exists)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _z
    2
    ;; bool _z_exists
    1
    ;; int8 _width
    1
    ;; bool _width_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int16 _z
       (write-word _z s)
     ;; bool _z_exists
       (if _z_exists (write-byte -1 s) (write-byte 0 s))
     ;; int8 _width
       (write-byte _width s)
     ;; bool _width_exists
       (if _width_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _z
     (setq _z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _z_exists
     (setq _z_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _width
     (setq _width (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _width 127) (setq _width (- _width 256)))
   ;; bool _width_exists
     (setq _width_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::PathNode :md5sum-) "1a67109c239b97f03cda3ba46da2c080")
(setf (get j2735_msgs::PathNode :datatype-) "j2735_msgs/PathNode")
(setf (get j2735_msgs::PathNode :definition-)
      "#
# PathNode.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The positive x direction proceeds eastward, positive y proceeds
# northward, and positive z proceeds away from the center of the Earth. 

# X ::= INTEGER (-32768..32767)
#   -- units are in cm
int16 x
int16 y
int16 z

bool z_exists

# Width ::= INTEGER (-128..127)
#   -- units are in cm
int8 width
bool width_exists
")



(provide :j2735_msgs/PathNode "1a67109c239b97f03cda3ba46da2c080")


