;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::PreemptPriorityList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'PreemptPriorityList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::PREEMPTPRIORITYLIST")
  (make-package "J2735_MSGS::PREEMPTPRIORITYLIST"))

(in-package "ROS")
;;//! \htmlinclude PreemptPriorityList.msg.html


(defclass j2735_msgs::PreemptPriorityList
  :super ros::object
  :slots (_preempt_priority_list ))

(defmethod j2735_msgs::PreemptPriorityList
  (:init
   (&key
    ((:preempt_priority_list __preempt_priority_list) ())
    )
   (send-super :init)
   (setq _preempt_priority_list __preempt_priority_list)
   self)
  (:preempt_priority_list
   (&rest __preempt_priority_list)
   (if (keywordp (car __preempt_priority_list))
       (send* _preempt_priority_list __preempt_priority_list)
     (progn
       (if __preempt_priority_list (setq _preempt_priority_list (car __preempt_priority_list)))
       _preempt_priority_list)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/SignalControlZone[] _preempt_priority_list
    (apply #'+ (send-all _preempt_priority_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/SignalControlZone[] _preempt_priority_list
     (write-long (length _preempt_priority_list) s)
     (dolist (elem _preempt_priority_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/SignalControlZone[] _preempt_priority_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _preempt_priority_list (let (r) (dotimes (i n) (push (instance j2735_msgs::SignalControlZone :init) r)) r))
     (dolist (elem- _preempt_priority_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::PreemptPriorityList :md5sum-) "540868150c1511ed84c0943e75886b4a")
(setf (get j2735_msgs::PreemptPriorityList :datatype-) "j2735_msgs/PreemptPriorityList")
(setf (get j2735_msgs::PreemptPriorityList :definition-)
      "#
# PreemptPriorityList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_PreemptPriorityList data frame consists of a list of RegionalSignalControlZone entries.
#
# PreemptPriorityList ::= SEQUENCE (SIZE(1..32)) OF SignalControlZone
#
#

j2735_msgs/SignalControlZone[] preempt_priority_list


================================================================================
MSG: j2735_msgs/SignalControlZone
#
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



(provide :j2735_msgs/PreemptPriorityList "540868150c1511ed84c0943e75886b4a")


