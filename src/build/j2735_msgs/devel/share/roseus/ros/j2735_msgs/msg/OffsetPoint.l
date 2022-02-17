;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::OffsetPoint)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'OffsetPoint (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::OFFSETPOINT")
  (make-package "J2735_MSGS::OFFSETPOINT"))

(in-package "ROS")
;;//! \htmlinclude OffsetPoint.msg.html


(defclass j2735_msgs::OffsetPoint
  :super ros::object
  :slots (_deltax _deltay ))

(defmethod j2735_msgs::OffsetPoint
  (:init
   (&key
    ((:deltax __deltax) 0)
    ((:deltay __deltay) 0)
    )
   (send-super :init)
   (setq _deltax (round __deltax))
   (setq _deltay (round __deltay))
   self)
  (:deltax
   (&optional __deltax)
   (if __deltax (setq _deltax __deltax)) _deltax)
  (:deltay
   (&optional __deltay)
   (if __deltay (setq _deltay __deltay)) _deltay)
  (:serialization-length
   ()
   (+
    ;; int16 _deltax
    2
    ;; int16 _deltay
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _deltax
       (write-word _deltax s)
     ;; int16 _deltay
       (write-word _deltay s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _deltax
     (setq _deltax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _deltay
     (setq _deltay (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::OffsetPoint :md5sum-) "2766869f53581899f2c4aaa8009bd340")
(setf (get j2735_msgs::OffsetPoint :datatype-) "j2735_msgs/OffsetPoint")
(setf (get j2735_msgs::OffsetPoint :definition-)
      "#
# OffsetPoint.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# 
# @version 0.1
#
# Description
# ...

#OffsetPoint ::= SEQUENCE
#{
#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters
#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters
#}

#deltax ::= INTEGER (-32768..32767)
int16 deltax

#deltay ::= INTEGER (-32768..32767)
int16 deltay



")



(provide :j2735_msgs/OffsetPoint "2766869f53581899f2c4aaa8009bd340")


