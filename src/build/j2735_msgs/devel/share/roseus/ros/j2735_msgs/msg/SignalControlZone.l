;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::SignalControlZone)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'SignalControlZone (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::SIGNALCONTROLZONE")
  (make-package "J2735_MSGS::SIGNALCONTROLZONE"))

(in-package "ROS")
;;//! \htmlinclude SignalControlZone.msg.html


(defclass j2735_msgs::SignalControlZone
  :super ros::object
  :slots ())

(defmethod j2735_msgs::SignalControlZone
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get j2735_msgs::SignalControlZone :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get j2735_msgs::SignalControlZone :datatype-) "j2735_msgs/SignalControlZone")
(setf (get j2735_msgs::SignalControlZone :definition-)
      "#
# SignalControlZone.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# SignalControlZone ::= SEQUENCE {
# zone RegionalExtension {{REGION.Reg-SignalControlZone}},
# ...
# }
#
# regional_extension  #TODO: RegionalExtensions are not yet implemented in asn1c
")



(provide :j2735_msgs/SignalControlZone "d41d8cd98f00b204e9800998ecf8427e")


