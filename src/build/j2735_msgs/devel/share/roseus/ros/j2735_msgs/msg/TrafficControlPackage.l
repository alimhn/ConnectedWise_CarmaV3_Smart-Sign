;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlPackage)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlPackage (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLPACKAGE")
  (make-package "J2735_MSGS::TRAFFICCONTROLPACKAGE"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlPackage.msg.html


(defclass j2735_msgs::TrafficControlPackage
  :super ros::object
  :slots (_label _label_exists _tcids ))

(defmethod j2735_msgs::TrafficControlPackage
  (:init
   (&key
    ((:label __label) "")
    ((:label_exists __label_exists) nil)
    ((:tcids __tcids) ())
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _label_exists __label_exists)
   (setq _tcids __tcids)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:label_exists
   (&optional (__label_exists :null))
   (if (not (eq __label_exists :null)) (setq _label_exists __label_exists)) _label_exists)
  (:tcids
   (&rest __tcids)
   (if (keywordp (car __tcids))
       (send* _tcids __tcids)
     (progn
       (if __tcids (setq _tcids (car __tcids)))
       _tcids)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; bool _label_exists
    1
    ;; j2735_msgs/Id128b[] _tcids
    (apply #'+ (send-all _tcids :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; bool _label_exists
       (if _label_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/Id128b[] _tcids
     (write-long (length _tcids) s)
     (dolist (elem _tcids)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _label_exists
     (setq _label_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/Id128b[] _tcids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tcids (let (r) (dotimes (i n) (push (instance j2735_msgs::Id128b :init) r)) r))
     (dolist (elem- _tcids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlPackage :md5sum-) "dd983631799aa912d10b4a250bae5780")
(setf (get j2735_msgs::TrafficControlPackage :datatype-) "j2735_msgs/TrafficControlPackage")
(setf (get j2735_msgs::TrafficControlPackage :definition-)
      "#
# TrafficControlPackage.msg
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

# TrafficControlPackage ::= SEQUENCE
# {
# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
# }

# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.
string label

bool label_exists

# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids
j2735_msgs/Id128b[] tcids

================================================================================
MSG: j2735_msgs/Id128b
#
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



(provide :j2735_msgs/TrafficControlPackage "dd983631799aa912d10b4a250bae5780")


