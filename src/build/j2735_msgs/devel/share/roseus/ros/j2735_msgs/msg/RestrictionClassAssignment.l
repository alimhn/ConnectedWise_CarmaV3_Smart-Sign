;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RestrictionClassAssignment)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RestrictionClassAssignment (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::RESTRICTIONCLASSASSIGNMENT")
  (make-package "J2735_MSGS::RESTRICTIONCLASSASSIGNMENT"))

(in-package "ROS")
;;//! \htmlinclude RestrictionClassAssignment.msg.html


(defclass j2735_msgs::RestrictionClassAssignment
  :super ros::object
  :slots (_id ))

(defmethod j2735_msgs::RestrictionClassAssignment
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::RestrictionClassAssignment :md5sum-) "541b98e964705918fa8eb206b65347b3")
(setf (get j2735_msgs::RestrictionClassAssignment :datatype-) "j2735_msgs/RestrictionClassAssignment")
(setf (get j2735_msgs::RestrictionClassAssignment :definition-)
      "#
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



(provide :j2735_msgs/RestrictionClassAssignment "541b98e964705918fa8eb206b65347b3")


