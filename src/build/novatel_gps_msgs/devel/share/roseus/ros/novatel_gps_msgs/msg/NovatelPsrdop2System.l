;; Auto-generated. Do not edit!


(when (boundp 'novatel_gps_msgs::NovatelPsrdop2System)
  (if (not (find-package "NOVATEL_GPS_MSGS"))
    (make-package "NOVATEL_GPS_MSGS"))
  (shadow 'NovatelPsrdop2System (find-package "NOVATEL_GPS_MSGS")))
(unless (find-package "NOVATEL_GPS_MSGS::NOVATELPSRDOP2SYSTEM")
  (make-package "NOVATEL_GPS_MSGS::NOVATELPSRDOP2SYSTEM"))

(in-package "ROS")
;;//! \htmlinclude NovatelPsrdop2System.msg.html


(defclass novatel_gps_msgs::NovatelPsrdop2System
  :super ros::object
  :slots (_system _tdop ))

(defmethod novatel_gps_msgs::NovatelPsrdop2System
  (:init
   (&key
    ((:system __system) "")
    ((:tdop __tdop) 0.0)
    )
   (send-super :init)
   (setq _system (string __system))
   (setq _tdop (float __tdop))
   self)
  (:system
   (&optional __system)
   (if __system (setq _system __system)) _system)
  (:tdop
   (&optional __tdop)
   (if __tdop (setq _tdop __tdop)) _tdop)
  (:serialization-length
   ()
   (+
    ;; string _system
    4 (length _system)
    ;; float32 _tdop
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _system
       (write-long (length _system) s) (princ _system s)
     ;; float32 _tdop
       (sys::poke _tdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _system
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _tdop
     (setq _tdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get novatel_gps_msgs::NovatelPsrdop2System :md5sum-) "59dbc686e7d2261c67fc353e8280db4b")
(setf (get novatel_gps_msgs::NovatelPsrdop2System :datatype-) "novatel_gps_msgs/NovatelPsrdop2System")
(setf (get novatel_gps_msgs::NovatelPsrdop2System :definition-)
      "# GNSS System information provided by PSRDOP2 logs
string system
float32 tdop

")



(provide :novatel_gps_msgs/NovatelPsrdop2System "59dbc686e7d2261c67fc353e8280db4b")


