;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RestrictionClassList)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RestrictionClassList (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::RESTRICTIONCLASSLIST")
  (make-package "J2735_MSGS::RESTRICTIONCLASSLIST"))

(in-package "ROS")
;;//! \htmlinclude RestrictionClassList.msg.html


(defclass j2735_msgs::RestrictionClassList
  :super ros::object
  :slots (_restriction_class_list ))

(defmethod j2735_msgs::RestrictionClassList
  (:init
   (&key
    ((:restriction_class_list __restriction_class_list) ())
    )
   (send-super :init)
   (setq _restriction_class_list __restriction_class_list)
   self)
  (:restriction_class_list
   (&rest __restriction_class_list)
   (if (keywordp (car __restriction_class_list))
       (send* _restriction_class_list __restriction_class_list)
     (progn
       (if __restriction_class_list (setq _restriction_class_list (car __restriction_class_list)))
       _restriction_class_list)))
  (:serialization-length
   ()
   (+
    ;; j2735_msgs/RestrictionClassAssignment[] _restriction_class_list
    (apply #'+ (send-all _restriction_class_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; j2735_msgs/RestrictionClassAssignment[] _restriction_class_list
     (write-long (length _restriction_class_list) s)
     (dolist (elem _restriction_class_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; j2735_msgs/RestrictionClassAssignment[] _restriction_class_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _restriction_class_list (let (r) (dotimes (i n) (push (instance j2735_msgs::RestrictionClassAssignment :init) r)) r))
     (dolist (elem- _restriction_class_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::RestrictionClassList :md5sum-) "39c5820cd159fd97238dd797c4d5b5d8")
(setf (get j2735_msgs::RestrictionClassList :datatype-) "j2735_msgs/RestrictionClassList")
(setf (get j2735_msgs::RestrictionClassList :definition-)
      "#
# RestrictionClassList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RestrictionClassList data frame is used to enumerate a list of user classes which belong to a given
# assigned index. The resulting collection is treated as a group by the signal controller when it issues movement data
# (signal phase information) with the GroupID for this group. This data frame is typically static for long periods of time
# (months) and conveyed to the user by means of the MAP message.

# RestrictionClassList ::= SEQUENCE (SIZE(1..254)) OF RestrictionClassAssignment

j2735_msgs/RestrictionClassAssignment[] restriction_class_list
================================================================================
MSG: j2735_msgs/RestrictionClassAssignment
#
# RestrictionClassAssignment.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RestrictionClassAssignment data frame is used to assign (or bind) a single RestrictionClassID data
# element to a list of all user classes to which it applies. A collection of these bindings is conveyed in the
# RestrictionClassList data frame in the MAP message to travelers.
#
# RestrictionClassAssignment ::= SEQUENCE {
# id RestrictionClassID,
# -- the unique value (within an intersection or local region)
# -- that is assigned to this group of users
# users RestrictionUserTypeList
# -- The list of user types/classes
# -- to which this restriction ID applies
# }

# RestrictionClassID ::= INTEGER (0..255)
uint8 id



")



(provide :j2735_msgs/RestrictionClassList "39c5820cd159fd97238dd797c4d5b5d8")


