;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TimeChangeDetails)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TimeChangeDetails (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TIMECHANGEDETAILS")
  (make-package "J2735_MSGS::TIMECHANGEDETAILS"))

(in-package "ROS")
;;//! \htmlinclude TimeChangeDetails.msg.html


(defclass j2735_msgs::TimeChangeDetails
  :super ros::object
  :slots (_start_time _start_time_exists _min_end_time _max_end_time _max_end_time_exists _likely_time _likely_time_exists _confidence _confidence_exists _next_time _next_time_exists ))

(defmethod j2735_msgs::TimeChangeDetails
  (:init
   (&key
    ((:start_time __start_time) 0)
    ((:start_time_exists __start_time_exists) nil)
    ((:min_end_time __min_end_time) 0)
    ((:max_end_time __max_end_time) 0)
    ((:max_end_time_exists __max_end_time_exists) nil)
    ((:likely_time __likely_time) 0)
    ((:likely_time_exists __likely_time_exists) nil)
    ((:confidence __confidence) 0)
    ((:confidence_exists __confidence_exists) nil)
    ((:next_time __next_time) 0)
    ((:next_time_exists __next_time_exists) nil)
    )
   (send-super :init)
   (setq _start_time (round __start_time))
   (setq _start_time_exists __start_time_exists)
   (setq _min_end_time (round __min_end_time))
   (setq _max_end_time (round __max_end_time))
   (setq _max_end_time_exists __max_end_time_exists)
   (setq _likely_time (round __likely_time))
   (setq _likely_time_exists __likely_time_exists)
   (setq _confidence (round __confidence))
   (setq _confidence_exists __confidence_exists)
   (setq _next_time (round __next_time))
   (setq _next_time_exists __next_time_exists)
   self)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:start_time_exists
   (&optional (__start_time_exists :null))
   (if (not (eq __start_time_exists :null)) (setq _start_time_exists __start_time_exists)) _start_time_exists)
  (:min_end_time
   (&optional __min_end_time)
   (if __min_end_time (setq _min_end_time __min_end_time)) _min_end_time)
  (:max_end_time
   (&optional __max_end_time)
   (if __max_end_time (setq _max_end_time __max_end_time)) _max_end_time)
  (:max_end_time_exists
   (&optional (__max_end_time_exists :null))
   (if (not (eq __max_end_time_exists :null)) (setq _max_end_time_exists __max_end_time_exists)) _max_end_time_exists)
  (:likely_time
   (&optional __likely_time)
   (if __likely_time (setq _likely_time __likely_time)) _likely_time)
  (:likely_time_exists
   (&optional (__likely_time_exists :null))
   (if (not (eq __likely_time_exists :null)) (setq _likely_time_exists __likely_time_exists)) _likely_time_exists)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:confidence_exists
   (&optional (__confidence_exists :null))
   (if (not (eq __confidence_exists :null)) (setq _confidence_exists __confidence_exists)) _confidence_exists)
  (:next_time
   (&optional __next_time)
   (if __next_time (setq _next_time __next_time)) _next_time)
  (:next_time_exists
   (&optional (__next_time_exists :null))
   (if (not (eq __next_time_exists :null)) (setq _next_time_exists __next_time_exists)) _next_time_exists)
  (:serialization-length
   ()
   (+
    ;; uint16 _start_time
    2
    ;; bool _start_time_exists
    1
    ;; uint16 _min_end_time
    2
    ;; uint16 _max_end_time
    2
    ;; bool _max_end_time_exists
    1
    ;; uint16 _likely_time
    2
    ;; bool _likely_time_exists
    1
    ;; uint8 _confidence
    1
    ;; bool _confidence_exists
    1
    ;; uint16 _next_time
    2
    ;; bool _next_time_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _start_time
       (write-word _start_time s)
     ;; bool _start_time_exists
       (if _start_time_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _min_end_time
       (write-word _min_end_time s)
     ;; uint16 _max_end_time
       (write-word _max_end_time s)
     ;; bool _max_end_time_exists
       (if _max_end_time_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _likely_time
       (write-word _likely_time s)
     ;; bool _likely_time_exists
       (if _likely_time_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _confidence
       (write-byte _confidence s)
     ;; bool _confidence_exists
       (if _confidence_exists (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _next_time
       (write-word _next_time s)
     ;; bool _next_time_exists
       (if _next_time_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _start_time
     (setq _start_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _start_time_exists
     (setq _start_time_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _min_end_time
     (setq _min_end_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _max_end_time
     (setq _max_end_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _max_end_time_exists
     (setq _max_end_time_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _likely_time
     (setq _likely_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _likely_time_exists
     (setq _likely_time_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _confidence
     (setq _confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _confidence_exists
     (setq _confidence_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _next_time
     (setq _next_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _next_time_exists
     (setq _next_time_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TimeChangeDetails :md5sum-) "48110a8000070c77171eb1bdfafa99fe")
(setf (get j2735_msgs::TimeChangeDetails :datatype-) "j2735_msgs/TimeChangeDetails")
(setf (get j2735_msgs::TimeChangeDetails :definition-)
      "#
# TimeChangeDetails.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
# timing is employed.
#
#
# TimeChangeDetails ::= SEQUENCE {
# startTime TimeMark OPTIONAL,
# -- When this phase 1st started
# minEndTime TimeMark,
# -- Expected shortest end time
# maxEndTime TimeMark OPTIONAL,
# -- Expected longest end time
# likelyTime TimeMark OPTIONAL,
# -- Best predicted value based on other data
# confidence TimeIntervalConfidence OPTIONAL,
# -- Applies to above time element only
# nextTime TimeMark OPTIONAL
# -- A rough estimate of time when
# -- this phase may next occur again
# -- used to support various ECO driving power
# -- management needs.
# }

# TimeMark ::= INTEGER (0..36001)
# -- Tenths of a second in the current or next hour
# -- In units of 1/10th second from UTC time
# -- A range of 0~36000 covers one hour
# -- The values 35991..35999 are used when a leap second occurs
# -- The value 36000 is used to indicate time >3600 seconds
# -- 36001 is to be used when value undefined or unknown
# -- Note that this is NOT expressed in GPS time
# -- or in local time
uint16 start_time
bool start_time_exists

uint16 min_end_time

uint16 max_end_time
bool max_end_time_exists

uint16 likely_time
bool likely_time_exists

#TimeIntervalConfidence ::= INTEGER (0..15)
uint8 confidence
bool confidence_exists

# TimeMark ::= INTEGER (0..36001)
uint16 next_time
bool next_time_exists


")



(provide :j2735_msgs/TimeChangeDetails "48110a8000070c77171eb1bdfafa99fe")


