;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::VinRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'VinRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::VINRPT")
  (make-package "PACMOD_MSGS::VINRPT"))

(in-package "ROS")
;;//! \htmlinclude VinRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::VinRpt
  :super ros::object
  :slots (_header _mfg_code _mfg _model_year_code _model_year _serial ))

(defmethod pacmod_msgs::VinRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mfg_code __mfg_code) "")
    ((:mfg __mfg) "")
    ((:model_year_code __model_year_code) "")
    ((:model_year __model_year) 0)
    ((:serial __serial) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mfg_code (string __mfg_code))
   (setq _mfg (string __mfg))
   (setq _model_year_code (string __model_year_code))
   (setq _model_year (round __model_year))
   (setq _serial (round __serial))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mfg_code
   (&optional __mfg_code)
   (if __mfg_code (setq _mfg_code __mfg_code)) _mfg_code)
  (:mfg
   (&optional __mfg)
   (if __mfg (setq _mfg __mfg)) _mfg)
  (:model_year_code
   (&optional __model_year_code)
   (if __model_year_code (setq _model_year_code __model_year_code)) _model_year_code)
  (:model_year
   (&optional __model_year)
   (if __model_year (setq _model_year __model_year)) _model_year)
  (:serial
   (&optional __serial)
   (if __serial (setq _serial __serial)) _serial)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _mfg_code
    4 (length _mfg_code)
    ;; string _mfg
    4 (length _mfg)
    ;; string _model_year_code
    4 (length _model_year_code)
    ;; uint32 _model_year
    4
    ;; uint32 _serial
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _mfg_code
       (write-long (length _mfg_code) s) (princ _mfg_code s)
     ;; string _mfg
       (write-long (length _mfg) s) (princ _mfg s)
     ;; string _model_year_code
       (write-long (length _model_year_code) s) (princ _model_year_code s)
     ;; uint32 _model_year
       (write-long _model_year s)
     ;; uint32 _serial
       (write-long _serial s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _mfg_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mfg_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mfg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mfg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_year_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_year_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _model_year
     (setq _model_year (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _serial
     (setq _serial (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pacmod_msgs::VinRpt :md5sum-) "9adca84caaa097b32fc7b71a0ca8da36")
(setf (get pacmod_msgs::VinRpt :datatype-) "pacmod_msgs/VinRpt")
(setf (get pacmod_msgs::VinRpt :definition-)
      "std_msgs/Header header

string mfg_code
string mfg
string model_year_code
uint32 model_year
uint32 serial

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :pacmod_msgs/VinRpt "9adca84caaa097b32fc7b71a0ca8da36")


