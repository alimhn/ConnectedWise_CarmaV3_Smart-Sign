;; Auto-generated. Do not edit!


(when (boundp 'autoware_lanelet2_msgs::MapBin)
  (if (not (find-package "AUTOWARE_LANELET2_MSGS"))
    (make-package "AUTOWARE_LANELET2_MSGS"))
  (shadow 'MapBin (find-package "AUTOWARE_LANELET2_MSGS")))
(unless (find-package "AUTOWARE_LANELET2_MSGS::MAPBIN")
  (make-package "AUTOWARE_LANELET2_MSGS::MAPBIN"))

(in-package "ROS")
;;//! \htmlinclude MapBin.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_lanelet2_msgs::MapBin
  :super ros::object
  :slots (_header _format_version _map_version _data _route_id _route_version _invalidates_route ))

(defmethod autoware_lanelet2_msgs::MapBin
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:format_version __format_version) "")
    ((:map_version __map_version) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:route_id __route_id) "")
    ((:route_version __route_version) 0)
    ((:invalidates_route __invalidates_route) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _format_version (string __format_version))
   (setq _map_version (round __map_version))
   (setq _data __data)
   (setq _route_id (string __route_id))
   (setq _route_version (round __route_version))
   (setq _invalidates_route __invalidates_route)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:format_version
   (&optional __format_version)
   (if __format_version (setq _format_version __format_version)) _format_version)
  (:map_version
   (&optional __map_version)
   (if __map_version (setq _map_version __map_version)) _map_version)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:route_id
   (&optional __route_id)
   (if __route_id (setq _route_id __route_id)) _route_id)
  (:route_version
   (&optional __route_version)
   (if __route_version (setq _route_version __route_version)) _route_version)
  (:invalidates_route
   (&optional (__invalidates_route :null))
   (if (not (eq __invalidates_route :null)) (setq _invalidates_route __invalidates_route)) _invalidates_route)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _format_version
    4 (length _format_version)
    ;; uint32 _map_version
    4
    ;; int8[] _data
    (* 1    (length _data)) 4
    ;; string _route_id
    4 (length _route_id)
    ;; uint32 _route_version
    4
    ;; bool _invalidates_route
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _format_version
       (write-long (length _format_version) s) (princ _format_version s)
     ;; uint32 _map_version
       (write-long _map_version s)
     ;; int8[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;; string _route_id
       (write-long (length _route_id) s) (princ _route_id s)
     ;; uint32 _route_version
       (write-long _route_version s)
     ;; bool _invalidates_route
       (if _invalidates_route (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _format_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _map_version
     (setq _map_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;; string _route_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _route_version
     (setq _route_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _invalidates_route
     (setq _invalidates_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get autoware_lanelet2_msgs::MapBin :md5sum-) "813b1a5423e38dc653e27643849dfed8")
(setf (get autoware_lanelet2_msgs::MapBin :datatype-) "autoware_lanelet2_msgs/MapBin")
(setf (get autoware_lanelet2_msgs::MapBin :definition-)
      "# This contains the lanelet map in binary format.

# Timestamp and frame_id of the map
Header header

# version of map format. keep this as empty string if unnecessary
string format_version

# version of map version. monotonically increasing integer starting at 1
uint32 map_version

# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
int8[] data

# The route filename
string route_id

# The version of current route, monotonically increasing integer starting at 1
uint32 route_version

# route flag to set the route invalidation status
bool invalidates_route

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



(provide :autoware_lanelet2_msgs/MapBin "813b1a5423e38dc653e27643849dfed8")


