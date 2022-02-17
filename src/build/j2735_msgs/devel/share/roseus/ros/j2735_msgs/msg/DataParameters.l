;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::DataParameters)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'DataParameters (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::DATAPARAMETERS")
  (make-package "J2735_MSGS::DATAPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude DataParameters.msg.html


(defclass j2735_msgs::DataParameters
  :super ros::object
  :slots (_process_method _process_agency _last_checked_date _geoid_used ))

(defmethod j2735_msgs::DataParameters
  (:init
   (&key
    ((:process_method __process_method) "")
    ((:process_agency __process_agency) "")
    ((:last_checked_date __last_checked_date) "")
    ((:geoid_used __geoid_used) "")
    )
   (send-super :init)
   (setq _process_method (string __process_method))
   (setq _process_agency (string __process_agency))
   (setq _last_checked_date (string __last_checked_date))
   (setq _geoid_used (string __geoid_used))
   self)
  (:process_method
   (&optional __process_method)
   (if __process_method (setq _process_method __process_method)) _process_method)
  (:process_agency
   (&optional __process_agency)
   (if __process_agency (setq _process_agency __process_agency)) _process_agency)
  (:last_checked_date
   (&optional __last_checked_date)
   (if __last_checked_date (setq _last_checked_date __last_checked_date)) _last_checked_date)
  (:geoid_used
   (&optional __geoid_used)
   (if __geoid_used (setq _geoid_used __geoid_used)) _geoid_used)
  (:serialization-length
   ()
   (+
    ;; string _process_method
    4 (length _process_method)
    ;; string _process_agency
    4 (length _process_agency)
    ;; string _last_checked_date
    4 (length _last_checked_date)
    ;; string _geoid_used
    4 (length _geoid_used)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _process_method
       (write-long (length _process_method) s) (princ _process_method s)
     ;; string _process_agency
       (write-long (length _process_agency) s) (princ _process_agency s)
     ;; string _last_checked_date
       (write-long (length _last_checked_date) s) (princ _last_checked_date s)
     ;; string _geoid_used
       (write-long (length _geoid_used) s) (princ _geoid_used s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _process_method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _process_agency
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_agency (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _last_checked_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_checked_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _geoid_used
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _geoid_used (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get j2735_msgs::DataParameters :md5sum-) "f63a06440ac4fde99ebe6427b9e011e6")
(setf (get j2735_msgs::DataParameters :datatype-) "j2735_msgs/DataParameters")
(setf (get j2735_msgs::DataParameters :definition-)
      "#
# MapData.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DataParameters data frame is used to provide basic (static) information
# on how a map fragment was processed or determined.
#
# DataParameters ::= SEQUENCE {
# processMethod IA5String(SIZE(1..255))
# processAgency IA5String(SIZE(1..255))
# lastCheckedDate IA5String(SIZE(1..255))
# geoidUsed IA5String(SIZE(1..255))
# ...
# }
#

string process_method
string process_agency
string last_checked_date
string geoid_used
")



(provide :j2735_msgs/DataParameters "f63a06440ac4fde99ebe6427b9e011e6")


