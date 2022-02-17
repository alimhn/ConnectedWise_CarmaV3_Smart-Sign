;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::TrafficControlSchedule)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'TrafficControlSchedule (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::TRAFFICCONTROLSCHEDULE")
  (make-package "J2735_MSGS::TRAFFICCONTROLSCHEDULE"))

(in-package "ROS")
;;//! \htmlinclude TrafficControlSchedule.msg.html


(defclass j2735_msgs::TrafficControlSchedule
  :super ros::object
  :slots (_start _end _end_exists _dow _dow_exists _between _between_exists _repeat _repeat_exists ))

(defmethod j2735_msgs::TrafficControlSchedule
  (:init
   (&key
    ((:start __start) 0)
    ((:end __end) 0)
    ((:end_exists __end_exists) nil)
    ((:dow __dow) (instance j2735_msgs::DayOfWeek :init))
    ((:dow_exists __dow_exists) nil)
    ((:between __between) ())
    ((:between_exists __between_exists) nil)
    ((:repeat __repeat) (instance j2735_msgs::RepeatParams :init))
    ((:repeat_exists __repeat_exists) nil)
    )
   (send-super :init)
   (setq _start (round __start))
   (setq _end (round __end))
   (setq _end_exists __end_exists)
   (setq _dow __dow)
   (setq _dow_exists __dow_exists)
   (setq _between __between)
   (setq _between_exists __between_exists)
   (setq _repeat __repeat)
   (setq _repeat_exists __repeat_exists)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:end_exists
   (&optional (__end_exists :null))
   (if (not (eq __end_exists :null)) (setq _end_exists __end_exists)) _end_exists)
  (:dow
   (&rest __dow)
   (if (keywordp (car __dow))
       (send* _dow __dow)
     (progn
       (if __dow (setq _dow (car __dow)))
       _dow)))
  (:dow_exists
   (&optional (__dow_exists :null))
   (if (not (eq __dow_exists :null)) (setq _dow_exists __dow_exists)) _dow_exists)
  (:between
   (&rest __between)
   (if (keywordp (car __between))
       (send* _between __between)
     (progn
       (if __between (setq _between (car __between)))
       _between)))
  (:between_exists
   (&optional (__between_exists :null))
   (if (not (eq __between_exists :null)) (setq _between_exists __between_exists)) _between_exists)
  (:repeat
   (&rest __repeat)
   (if (keywordp (car __repeat))
       (send* _repeat __repeat)
     (progn
       (if __repeat (setq _repeat (car __repeat)))
       _repeat)))
  (:repeat_exists
   (&optional (__repeat_exists :null))
   (if (not (eq __repeat_exists :null)) (setq _repeat_exists __repeat_exists)) _repeat_exists)
  (:serialization-length
   ()
   (+
    ;; uint64 _start
    8
    ;; uint64 _end
    8
    ;; bool _end_exists
    1
    ;; j2735_msgs/DayOfWeek _dow
    (send _dow :serialization-length)
    ;; bool _dow_exists
    1
    ;; j2735_msgs/DailySchedule[] _between
    (apply #'+ (send-all _between :serialization-length)) 4
    ;; bool _between_exists
    1
    ;; j2735_msgs/RepeatParams _repeat
    (send _repeat :serialization-length)
    ;; bool _repeat_exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _start
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _start (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _start) (= (length (_start . bv)) 2)) ;; bignum
              (write-long (ash (elt (_start . bv) 0) 0) s)
              (write-long (ash (elt (_start . bv) 1) -1) s))
             ((and (class _start) (= (length (_start . bv)) 1)) ;; big1
              (write-long (elt (_start . bv) 0) s)
              (write-long (if (>= _start 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _start s)(write-long (if (>= _start 0) 0 #xffffffff) s)))
     ;; uint64 _end
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _end (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _end) (= (length (_end . bv)) 2)) ;; bignum
              (write-long (ash (elt (_end . bv) 0) 0) s)
              (write-long (ash (elt (_end . bv) 1) -1) s))
             ((and (class _end) (= (length (_end . bv)) 1)) ;; big1
              (write-long (elt (_end . bv) 0) s)
              (write-long (if (>= _end 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _end s)(write-long (if (>= _end 0) 0 #xffffffff) s)))
     ;; bool _end_exists
       (if _end_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/DayOfWeek _dow
       (send _dow :serialize s)
     ;; bool _dow_exists
       (if _dow_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/DailySchedule[] _between
     (write-long (length _between) s)
     (dolist (elem _between)
       (send elem :serialize s)
       )
     ;; bool _between_exists
       (if _between_exists (write-byte -1 s) (write-byte 0 s))
     ;; j2735_msgs/RepeatParams _repeat
       (send _repeat :serialize s)
     ;; bool _repeat_exists
       (if _repeat_exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _start
     
#+(or :alpha :irix6 :x86_64)
      (setf _start (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _start (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _end
     
#+(or :alpha :irix6 :x86_64)
      (setf _end (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _end (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _end_exists
     (setq _end_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/DayOfWeek _dow
     (send _dow :deserialize buf ptr-) (incf ptr- (send _dow :serialization-length))
   ;; bool _dow_exists
     (setq _dow_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/DailySchedule[] _between
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _between (let (r) (dotimes (i n) (push (instance j2735_msgs::DailySchedule :init) r)) r))
     (dolist (elem- _between)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _between_exists
     (setq _between_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; j2735_msgs/RepeatParams _repeat
     (send _repeat :deserialize buf ptr-) (incf ptr- (send _repeat :serialization-length))
   ;; bool _repeat_exists
     (setq _repeat_exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get j2735_msgs::TrafficControlSchedule :md5sum-) "d17eb8005cfede95b7226b8161cb7840")
(setf (get j2735_msgs::TrafficControlSchedule :datatype-) "j2735_msgs/TrafficControlSchedule")
(setf (get j2735_msgs::TrafficControlSchedule :definition-)
      "#
# TrafficControlSchedule.msg
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

# TrafficControlSchedule ::= SEQUENCE
# {
# 	start EpochMins, -- start time required, even if it's the epoch value zero
# 	end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
# 	dow [1] DayOfWeek OPTIONAL, 
# 	between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
# 	repeat [3] RepeatParams OPTIONAL
# }

# start EpochMins, -- start time required, even if it's the epoch value zero
uint64 start

# end [0] EpochMins OPTIONAL, -- default to max value 153722867280912
uint64 end
bool end_exists

# dow [1] DayOfWeek OPTIONAL, 
j2735_msgs/DayOfWeek dow
bool dow_exists

# between [2] SEQUENCE (SIZE(1..63)) OF DailySchedule OPTIONAL, 
j2735_msgs/DailySchedule[] between
bool between_exists

# repeat [3] RepeatParams OPTIONAL
j2735_msgs/RepeatParams repeat
bool repeat_exists

================================================================================
MSG: j2735_msgs/DayOfWeek
#
# DayOfWeek.msg
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

# DayOfWeek ::= BIT STRING //only J
# {
# 	sun (6), 
# 	mon (5), 
# 	tue (4), 
# 	wed (3), 
# 	thu (2), 
# 	fri (1), 
# 	sat (0)
# }

uint8[7] dow

# enumeration values for day of week
uint8 SUN = 6  
uint8 MON = 5
uint8 TUE = 4  
uint8 WED = 3  
uint8 THU = 2  
uint8 FRI = 1  
uint8 SAT = 0
================================================================================
MSG: j2735_msgs/DailySchedule
#
# DailySchedule.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# The schedule bounds of a geofence within a specific day of the week

# DailySchedule ::= SEQUENCE
# {
# 	begin INTEGER (0..1439), -- minutes relative to midnight local time
# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day
# }

# begin INTEGER (0..1439), -- minutes relative to midnight local time
uint16 begin

# duration INTEGER (0..1439) -- the number of active minutes, up to one day
uint16 duration
================================================================================
MSG: j2735_msgs/RepeatParams
#
# RepeatParams.msg
#
# Part of the CARMA Cloud geo-fence specification for vehicle internal use.
#
# @author Misheel Bayartsengel 
# @version 0.1
#
# Description
# ...

# RepeatParams ::= SEQUENCE
# {
# 	offset INTEGER (0..1439), -- shift repetition start relative to midnight local time
# 	period INTEGER (0..1439), -- minutes between successive time spans
# 	span INTEGER (0..1439) -- number of minutes schedule is active, must be less than the period
# }

# Offset 
# shift repetition start relative to midnight local time
uint16 offset

# Period
# minutes between successive time spans
uint16 period

# Span
# number of minutes schedule is active, must be less than the period
uint16 span

")



(provide :j2735_msgs/TrafficControlSchedule "d17eb8005cfede95b7226b8161cb7840")


