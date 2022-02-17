;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::Id128b)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'Id128b (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::ID128B")
  (make-package "J2735_MSGS::ID128B"))

(in-package "ROS")
;;//! \htmlinclude Id128b.msg.html


(defclass j2735_msgs::Id128b
  :super ros::object
  :slots (_id ))

(defmethod j2735_msgs::Id128b
  (:init
   (&key
    ((:id __id) (make-array 16 :initial-element 0 :element-type :char))
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
    ;; uint8[16] _id
    (* 1    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[16] _id
     (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[16] _id
   (setq _id (make-array 16 :element-type :char))
   (replace _id buf :start2 ptr-) (incf ptr- 16)
   ;;
   self)
  )

(setf (get j2735_msgs::Id128b :md5sum-) "7fe329a75c903e74f51ef1477e8e6b44")
(setf (get j2735_msgs::Id128b :datatype-) "j2735_msgs/Id128b")
(setf (get j2735_msgs::Id128b :definition-)
      "#
# Id128b.msg
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

# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids

uint8[16] id
")



(provide :j2735_msgs/Id128b "7fe329a75c903e74f51ef1477e8e6b44")


