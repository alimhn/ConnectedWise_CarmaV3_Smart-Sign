;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::OccupancyRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'OccupancyRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::OCCUPANCYRPT")
  (make-package "PACMOD_MSGS::OCCUPANCYRPT"))

(in-package "ROS")
;;//! \htmlinclude OccupancyRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::OccupancyRpt
  :super ros::object
  :slots (_header _driver_seat_occupied _driver_seat_occupied_is_valid _passenger_seat_occupied _passenger_seat_occupied_is_valid _rear_seat_occupied _rear_seat_occupied_is_valid _driver_seatbelt_buckled _driver_seatbelt_buckled_is_valid _passenger_seatbelt_buckled _passenger_seatbelt_buckled_is_valid _rear_seatbelt_buckled _rear_seatbelt_buckled_is_valid ))

(defmethod pacmod_msgs::OccupancyRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driver_seat_occupied __driver_seat_occupied) nil)
    ((:driver_seat_occupied_is_valid __driver_seat_occupied_is_valid) nil)
    ((:passenger_seat_occupied __passenger_seat_occupied) nil)
    ((:passenger_seat_occupied_is_valid __passenger_seat_occupied_is_valid) nil)
    ((:rear_seat_occupied __rear_seat_occupied) nil)
    ((:rear_seat_occupied_is_valid __rear_seat_occupied_is_valid) nil)
    ((:driver_seatbelt_buckled __driver_seatbelt_buckled) nil)
    ((:driver_seatbelt_buckled_is_valid __driver_seatbelt_buckled_is_valid) nil)
    ((:passenger_seatbelt_buckled __passenger_seatbelt_buckled) nil)
    ((:passenger_seatbelt_buckled_is_valid __passenger_seatbelt_buckled_is_valid) nil)
    ((:rear_seatbelt_buckled __rear_seatbelt_buckled) nil)
    ((:rear_seatbelt_buckled_is_valid __rear_seatbelt_buckled_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _driver_seat_occupied __driver_seat_occupied)
   (setq _driver_seat_occupied_is_valid __driver_seat_occupied_is_valid)
   (setq _passenger_seat_occupied __passenger_seat_occupied)
   (setq _passenger_seat_occupied_is_valid __passenger_seat_occupied_is_valid)
   (setq _rear_seat_occupied __rear_seat_occupied)
   (setq _rear_seat_occupied_is_valid __rear_seat_occupied_is_valid)
   (setq _driver_seatbelt_buckled __driver_seatbelt_buckled)
   (setq _driver_seatbelt_buckled_is_valid __driver_seatbelt_buckled_is_valid)
   (setq _passenger_seatbelt_buckled __passenger_seatbelt_buckled)
   (setq _passenger_seatbelt_buckled_is_valid __passenger_seatbelt_buckled_is_valid)
   (setq _rear_seatbelt_buckled __rear_seatbelt_buckled)
   (setq _rear_seatbelt_buckled_is_valid __rear_seatbelt_buckled_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:driver_seat_occupied
   (&optional (__driver_seat_occupied :null))
   (if (not (eq __driver_seat_occupied :null)) (setq _driver_seat_occupied __driver_seat_occupied)) _driver_seat_occupied)
  (:driver_seat_occupied_is_valid
   (&optional (__driver_seat_occupied_is_valid :null))
   (if (not (eq __driver_seat_occupied_is_valid :null)) (setq _driver_seat_occupied_is_valid __driver_seat_occupied_is_valid)) _driver_seat_occupied_is_valid)
  (:passenger_seat_occupied
   (&optional (__passenger_seat_occupied :null))
   (if (not (eq __passenger_seat_occupied :null)) (setq _passenger_seat_occupied __passenger_seat_occupied)) _passenger_seat_occupied)
  (:passenger_seat_occupied_is_valid
   (&optional (__passenger_seat_occupied_is_valid :null))
   (if (not (eq __passenger_seat_occupied_is_valid :null)) (setq _passenger_seat_occupied_is_valid __passenger_seat_occupied_is_valid)) _passenger_seat_occupied_is_valid)
  (:rear_seat_occupied
   (&optional (__rear_seat_occupied :null))
   (if (not (eq __rear_seat_occupied :null)) (setq _rear_seat_occupied __rear_seat_occupied)) _rear_seat_occupied)
  (:rear_seat_occupied_is_valid
   (&optional (__rear_seat_occupied_is_valid :null))
   (if (not (eq __rear_seat_occupied_is_valid :null)) (setq _rear_seat_occupied_is_valid __rear_seat_occupied_is_valid)) _rear_seat_occupied_is_valid)
  (:driver_seatbelt_buckled
   (&optional (__driver_seatbelt_buckled :null))
   (if (not (eq __driver_seatbelt_buckled :null)) (setq _driver_seatbelt_buckled __driver_seatbelt_buckled)) _driver_seatbelt_buckled)
  (:driver_seatbelt_buckled_is_valid
   (&optional (__driver_seatbelt_buckled_is_valid :null))
   (if (not (eq __driver_seatbelt_buckled_is_valid :null)) (setq _driver_seatbelt_buckled_is_valid __driver_seatbelt_buckled_is_valid)) _driver_seatbelt_buckled_is_valid)
  (:passenger_seatbelt_buckled
   (&optional (__passenger_seatbelt_buckled :null))
   (if (not (eq __passenger_seatbelt_buckled :null)) (setq _passenger_seatbelt_buckled __passenger_seatbelt_buckled)) _passenger_seatbelt_buckled)
  (:passenger_seatbelt_buckled_is_valid
   (&optional (__passenger_seatbelt_buckled_is_valid :null))
   (if (not (eq __passenger_seatbelt_buckled_is_valid :null)) (setq _passenger_seatbelt_buckled_is_valid __passenger_seatbelt_buckled_is_valid)) _passenger_seatbelt_buckled_is_valid)
  (:rear_seatbelt_buckled
   (&optional (__rear_seatbelt_buckled :null))
   (if (not (eq __rear_seatbelt_buckled :null)) (setq _rear_seatbelt_buckled __rear_seatbelt_buckled)) _rear_seatbelt_buckled)
  (:rear_seatbelt_buckled_is_valid
   (&optional (__rear_seatbelt_buckled_is_valid :null))
   (if (not (eq __rear_seatbelt_buckled_is_valid :null)) (setq _rear_seatbelt_buckled_is_valid __rear_seatbelt_buckled_is_valid)) _rear_seatbelt_buckled_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _driver_seat_occupied
    1
    ;; bool _driver_seat_occupied_is_valid
    1
    ;; bool _passenger_seat_occupied
    1
    ;; bool _passenger_seat_occupied_is_valid
    1
    ;; bool _rear_seat_occupied
    1
    ;; bool _rear_seat_occupied_is_valid
    1
    ;; bool _driver_seatbelt_buckled
    1
    ;; bool _driver_seatbelt_buckled_is_valid
    1
    ;; bool _passenger_seatbelt_buckled
    1
    ;; bool _passenger_seatbelt_buckled_is_valid
    1
    ;; bool _rear_seatbelt_buckled
    1
    ;; bool _rear_seatbelt_buckled_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _driver_seat_occupied
       (if _driver_seat_occupied (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_seat_occupied_is_valid
       (if _driver_seat_occupied_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_seat_occupied
       (if _passenger_seat_occupied (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_seat_occupied_is_valid
       (if _passenger_seat_occupied_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_seat_occupied
       (if _rear_seat_occupied (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_seat_occupied_is_valid
       (if _rear_seat_occupied_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_seatbelt_buckled
       (if _driver_seatbelt_buckled (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_seatbelt_buckled_is_valid
       (if _driver_seatbelt_buckled_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_seatbelt_buckled
       (if _passenger_seatbelt_buckled (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_seatbelt_buckled_is_valid
       (if _passenger_seatbelt_buckled_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_seatbelt_buckled
       (if _rear_seatbelt_buckled (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_seatbelt_buckled_is_valid
       (if _rear_seatbelt_buckled_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _driver_seat_occupied
     (setq _driver_seat_occupied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_seat_occupied_is_valid
     (setq _driver_seat_occupied_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_seat_occupied
     (setq _passenger_seat_occupied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_seat_occupied_is_valid
     (setq _passenger_seat_occupied_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_seat_occupied
     (setq _rear_seat_occupied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_seat_occupied_is_valid
     (setq _rear_seat_occupied_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_seatbelt_buckled
     (setq _driver_seatbelt_buckled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_seatbelt_buckled_is_valid
     (setq _driver_seatbelt_buckled_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_seatbelt_buckled
     (setq _passenger_seatbelt_buckled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_seatbelt_buckled_is_valid
     (setq _passenger_seatbelt_buckled_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_seatbelt_buckled
     (setq _rear_seatbelt_buckled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_seatbelt_buckled_is_valid
     (setq _rear_seatbelt_buckled_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::OccupancyRpt :md5sum-) "0721e1bb580b55ac7fd96411e39adf3e")
(setf (get pacmod_msgs::OccupancyRpt :datatype-) "pacmod_msgs/OccupancyRpt")
(setf (get pacmod_msgs::OccupancyRpt :definition-)
      "std_msgs/Header header

bool driver_seat_occupied
bool driver_seat_occupied_is_valid
bool passenger_seat_occupied
bool passenger_seat_occupied_is_valid
bool rear_seat_occupied
bool rear_seat_occupied_is_valid
bool driver_seatbelt_buckled
bool driver_seatbelt_buckled_is_valid
bool passenger_seatbelt_buckled
bool passenger_seatbelt_buckled_is_valid
bool rear_seatbelt_buckled
bool rear_seatbelt_buckled_is_valid

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



(provide :pacmod_msgs/OccupancyRpt "0721e1bb580b55ac7fd96411e39adf3e")


