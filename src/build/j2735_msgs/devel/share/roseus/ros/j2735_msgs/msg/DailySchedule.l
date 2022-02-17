;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::DailySchedule)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'DailySchedule (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::DAILYSCHEDULE")
  (make-package "J2735_MSGS::DAILYSCHEDULE"))

(in-package "ROS")
;;//! \htmlinclude DailySchedule.msg.html


(defclass j2735_msgs::DailySchedule
  :super ros::object
  :slots (_begin _duration ))

(defmethod j2735_msgs::DailySchedule
  (:init
   (&key
    ((:begin __begin) 0)
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _begin (round __begin))
   (setq _duration (round __duration))
   self)
  (:begin
   (&optional __begin)
   (if __begin (setq _begin __begin)) _begin)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint16 _begin
    2
    ;; uint16 _duration
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _begin
       (write-word _begin s)
     ;; uint16 _duration
       (write-word _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _begin
     (setq _begin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _duration
     (setq _duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::DailySchedule :md5sum-) "37a52901ec18d4d604c666475255ca60")
(setf (get j2735_msgs::DailySchedule :datatype-) "j2735_msgs/DailySchedule")
(setf (get j2735_msgs::DailySchedule :definition-)
      "#
# DailySchedule.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# The schedule bounds of a geofence within a specific day of the week

# DailySchedule ::= SEQUENCE
# {
# 	begin INTEGER (0..1439), -- minutes relative to midnight local time
# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day
# }

# begin INTEGER (0..1439), -- minutes relative to midnight local time
uint16 begin

# duration INTEGER (0..1439) -- the number of active minutes, up to one day
uint16 duration
")



(provide :j2735_msgs/DailySchedule "37a52901ec18d4d604c666475255ca60")


