;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::Id64b)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'Id64b (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ID64B")
  (make-package "J2735_MSGS::ID64B"))

(in-package "ROS")
;;//! \htmlinclude Id64b.msg.html


(defclass j2735_msgs::Id64b
  :super ros::object
  :slots (_id ))

(defmethod j2735_msgs::Id64b
  (:init
   (&key
    ((:id __id) (make-array 8 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id __id)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8[8] _id
    (* 1    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[8] _id
     (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[8] _id
   (setq _id (make-array 8 :element-type :char))
   (replace _id buf :start2 ptr-) (incf ptr- 8)
   ;;
   self)
  )

(setf (get j2735_msgs::Id64b :md5sum-) "f930fa161339760af1ea9b5fe1cfec73")
(setf (get j2735_msgs::Id64b :datatype-) "j2735_msgs/Id64b")
(setf (get j2735_msgs::Id64b :definition-)
      "#
# Id64b.msg
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

# Id64b ::= OCTET STRING (SIZE(8)) -- 8-byte binary value that can be used for shorter unique ids

uint8[8] id
")



(provide :j2735_msgs/Id64b "f930fa161339760af1ea9b5fe1cfec73")


