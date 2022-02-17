;; Auto-generated. Do not edit!


(when (boundp 'pacmod_msgs::AccelAuxRpt)
  (if (not (find-package "PACMOD_MSGS"))
    (make-package "PACMOD_MSGS"))
  (shadow 'AccelAuxRpt (find-package "PACMOD_MSGS")))
(unless (find-package "PACMOD_MSGS::ACCELAUXRPT")
  (make-package "PACMOD_MSGS::ACCELAUXRPT"))

(in-package "ROS")
;;//! \htmlinclude AccelAuxRpt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pacmod_msgs::AccelAuxRpt
  :super ros::object
  :slots (_header _raw_pedal_pos _raw_pedal_pos_is_valid _raw_pedal_force _raw_pedal_force_is_valid _user_interaction _user_interaction_is_valid _brake_interlock_active _brake_interlock_active_is_valid ))

(defmethod pacmod_msgs::AccelAuxRpt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:raw_pedal_pos __raw_pedal_pos) 0.0)
    ((:raw_pedal_pos_is_valid __raw_pedal_pos_is_valid) nil)
    ((:raw_pedal_force __raw_pedal_force) 0.0)
    ((:raw_pedal_force_is_valid __raw_pedal_force_is_valid) nil)
    ((:user_interaction __user_interaction) nil)
    ((:user_interaction_is_valid __user_interaction_is_valid) nil)
    ((:brake_interlock_active __brake_interlock_active) nil)
    ((:brake_interlock_active_is_valid __brake_interlock_active_is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _raw_pedal_pos (float __raw_pedal_pos))
   (setq _raw_pedal_pos_is_valid __raw_pedal_pos_is_valid)
   (setq _raw_pedal_force (float __raw_pedal_force))
   (setq _raw_pedal_force_is_valid __raw_pedal_force_is_valid)
   (setq _user_interaction __user_interaction)
   (setq _user_interaction_is_valid __user_interaction_is_valid)
   (setq _brake_interlock_active __brake_interlock_active)
   (setq _brake_interlock_active_is_valid __brake_interlock_active_is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:raw_pedal_pos
   (&optional __raw_pedal_pos)
   (if __raw_pedal_pos (setq _raw_pedal_pos __raw_pedal_pos)) _raw_pedal_pos)
  (:raw_pedal_pos_is_valid
   (&optional (__raw_pedal_pos_is_valid :null))
   (if (not (eq __raw_pedal_pos_is_valid :null)) (setq _raw_pedal_pos_is_valid __raw_pedal_pos_is_valid)) _raw_pedal_pos_is_valid)
  (:raw_pedal_force
   (&optional __raw_pedal_force)
   (if __raw_pedal_force (setq _raw_pedal_force __raw_pedal_force)) _raw_pedal_force)
  (:raw_pedal_force_is_valid
   (&optional (__raw_pedal_force_is_valid :null))
   (if (not (eq __raw_pedal_force_is_valid :null)) (setq _raw_pedal_force_is_valid __raw_pedal_force_is_valid)) _raw_pedal_force_is_valid)
  (:user_interaction
   (&optional (__user_interaction :null))
   (if (not (eq __user_interaction :null)) (setq _user_interaction __user_interaction)) _user_interaction)
  (:user_interaction_is_valid
   (&optional (__user_interaction_is_valid :null))
   (if (not (eq __user_interaction_is_valid :null)) (setq _user_interaction_is_valid __user_interaction_is_valid)) _user_interaction_is_valid)
  (:brake_interlock_active
   (&optional (__brake_interlock_active :null))
   (if (not (eq __brake_interlock_active :null)) (setq _brake_interlock_active __brake_interlock_active)) _brake_interlock_active)
  (:brake_interlock_active_is_valid
   (&optional (__brake_interlock_active_is_valid :null))
   (if (not (eq __brake_interlock_active_is_valid :null)) (setq _brake_interlock_active_is_valid __brake_interlock_active_is_valid)) _brake_interlock_active_is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _raw_pedal_pos
    8
    ;; bool _raw_pedal_pos_is_valid
    1
    ;; float64 _raw_pedal_force
    8
    ;; bool _raw_pedal_force_is_valid
    1
    ;; bool _user_interaction
    1
    ;; bool _user_interaction_is_valid
    1
    ;; bool _brake_interlock_active
    1
    ;; bool _brake_interlock_active_is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _raw_pedal_pos
       (sys::poke _raw_pedal_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _raw_pedal_pos_is_valid
       (if _raw_pedal_pos_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _raw_pedal_force
       (sys::poke _raw_pedal_force (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _raw_pedal_force_is_valid
       (if _raw_pedal_force_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_interaction
       (if _user_interaction (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_interaction_is_valid
       (if _user_interaction_is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_interlock_active
       (if _brake_interlock_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_interlock_active_is_valid
       (if _brake_interlock_active_is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _raw_pedal_pos
     (setq _raw_pedal_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _raw_pedal_pos_is_valid
     (setq _raw_pedal_pos_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _raw_pedal_force
     (setq _raw_pedal_force (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _raw_pedal_force_is_valid
     (setq _raw_pedal_force_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_interaction
     (setq _user_interaction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_interaction_is_valid
     (setq _user_interaction_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_interlock_active
     (setq _brake_interlock_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_interlock_active_is_valid
     (setq _brake_interlock_active_is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pacmod_msgs::AccelAuxRpt :md5sum-) "2f644f02020323fdb0afab1a11b54b70")
(setf (get pacmod_msgs::AccelAuxRpt :datatype-) "pacmod_msgs/AccelAuxRpt")
(setf (get pacmod_msgs::AccelAuxRpt :definition-)
      "std_msgs/Header header

float64 raw_pedal_pos
bool raw_pedal_pos_is_valid
float64 raw_pedal_force
bool raw_pedal_force_is_valid
bool user_interaction
bool user_interaction_is_valid
bool brake_interlock_active
bool brake_interlock_active_is_valid

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



(provide :pacmod_msgs/AccelAuxRpt "2f644f02020323fdb0afab1a11b54b70")


