;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::RegionalExtension)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'RegionalExtension (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::REGIONALEXTENSION")
  (make-package "J2735_MSGS::REGIONALEXTENSION"))

(in-package "ROS")
;;//! \htmlinclude RegionalExtension.msg.html


(defclass j2735_msgs::RegionalExtension
  :super ros::object
  :slots ())

(defmethod j2735_msgs::RegionalExtension
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

(setf (get j2735_msgs::RegionalExtension :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get j2735_msgs::RegionalExtension :datatype-) "j2735_msgs/RegionalExtension")
(setf (get j2735_msgs::RegionalExtension :definition-)
      "#
# RegionalExtension.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
#
# The formal definition used by each regional extension point follows the style of a unique indexing
# integer and a type definition bound into a set.

# RegionalExtension {REG-EXT-ID-AND-TYPE : Set} ::= SEQUENCE {
# regionId REG-EXT-ID-AND-TYPE.&id( {Set} ),
# regExtValue REG-EXT-ID-AND-TYPE.&Type( {Set} {@regionId} )
# }

# regional #TODO: RegionalExtensions are not yet implemented in asn1c

")



(provide :j2735_msgs/RegionalExtension "d41d8cd98f00b204e9800998ecf8427e")


