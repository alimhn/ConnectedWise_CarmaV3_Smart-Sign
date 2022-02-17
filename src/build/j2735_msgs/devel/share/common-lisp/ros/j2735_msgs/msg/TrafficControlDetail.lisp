; Auto-generated. Do not edit!


(cl:in-package j2735_msgs-msg)


;//! \htmlinclude TrafficControlDetail.msg.html

(cl:defclass <TrafficControlDetail> (roslisp-msg-protocol:ros-message)
  ((choice
    :reader choice
    :initarg :choice
    :type cl:fixnum
    :initform 0)
   (signal
    :reader signal
    :initarg :signal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (closed
    :reader closed
    :initarg :closed
    :type cl:fixnum
    :initform 0)
   (chains
    :reader chains
    :initarg :chains
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (lataffinity
    :reader lataffinity
    :initarg :lataffinity
    :type cl:fixnum
    :initform 0)
   (latperm
    :reader latperm
    :initarg :latperm
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (parking
    :reader parking
    :initarg :parking
    :type cl:fixnum
    :initform 0)
   (minspeed
    :reader minspeed
    :initarg :minspeed
    :type cl:fixnum
    :initform 0)
   (maxspeed
    :reader maxspeed
    :initarg :maxspeed
    :type cl:fixnum
    :initform 0)
   (minhdwy
    :reader minhdwy
    :initarg :minhdwy
    :type cl:fixnum
    :initform 0)
   (maxvehmass
    :reader maxvehmass
    :initarg :maxvehmass
    :type cl:fixnum
    :initform 0)
   (maxvehheight
    :reader maxvehheight
    :initarg :maxvehheight
    :type cl:fixnum
    :initform 0)
   (maxvehwidth
    :reader maxvehwidth
    :initarg :maxvehwidth
    :type cl:fixnum
    :initform 0)
   (maxvehlength
    :reader maxvehlength
    :initarg :maxvehlength
    :type cl:fixnum
    :initform 0)
   (maxvehaxles
    :reader maxvehaxles
    :initarg :maxvehaxles
    :type cl:fixnum
    :initform 0)
   (minvehocc
    :reader minvehocc
    :initarg :minvehocc
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficControlDetail (<TrafficControlDetail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficControlDetail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficControlDetail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name j2735_msgs-msg:<TrafficControlDetail> is deprecated: use j2735_msgs-msg:TrafficControlDetail instead.")))

(cl:ensure-generic-function 'choice-val :lambda-list '(m))
(cl:defmethod choice-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:choice-val is deprecated.  Use j2735_msgs-msg:choice instead.")
  (choice m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:signal-val is deprecated.  Use j2735_msgs-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'closed-val :lambda-list '(m))
(cl:defmethod closed-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:closed-val is deprecated.  Use j2735_msgs-msg:closed instead.")
  (closed m))

(cl:ensure-generic-function 'chains-val :lambda-list '(m))
(cl:defmethod chains-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:chains-val is deprecated.  Use j2735_msgs-msg:chains instead.")
  (chains m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:direction-val is deprecated.  Use j2735_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'lataffinity-val :lambda-list '(m))
(cl:defmethod lataffinity-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:lataffinity-val is deprecated.  Use j2735_msgs-msg:lataffinity instead.")
  (lataffinity m))

(cl:ensure-generic-function 'latperm-val :lambda-list '(m))
(cl:defmethod latperm-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:latperm-val is deprecated.  Use j2735_msgs-msg:latperm instead.")
  (latperm m))

(cl:ensure-generic-function 'parking-val :lambda-list '(m))
(cl:defmethod parking-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:parking-val is deprecated.  Use j2735_msgs-msg:parking instead.")
  (parking m))

(cl:ensure-generic-function 'minspeed-val :lambda-list '(m))
(cl:defmethod minspeed-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:minspeed-val is deprecated.  Use j2735_msgs-msg:minspeed instead.")
  (minspeed m))

(cl:ensure-generic-function 'maxspeed-val :lambda-list '(m))
(cl:defmethod maxspeed-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maxspeed-val is deprecated.  Use j2735_msgs-msg:maxspeed instead.")
  (maxspeed m))

(cl:ensure-generic-function 'minhdwy-val :lambda-list '(m))
(cl:defmethod minhdwy-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:minhdwy-val is deprecated.  Use j2735_msgs-msg:minhdwy instead.")
  (minhdwy m))

(cl:ensure-generic-function 'maxvehmass-val :lambda-list '(m))
(cl:defmethod maxvehmass-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maxvehmass-val is deprecated.  Use j2735_msgs-msg:maxvehmass instead.")
  (maxvehmass m))

(cl:ensure-generic-function 'maxvehheight-val :lambda-list '(m))
(cl:defmethod maxvehheight-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maxvehheight-val is deprecated.  Use j2735_msgs-msg:maxvehheight instead.")
  (maxvehheight m))

(cl:ensure-generic-function 'maxvehwidth-val :lambda-list '(m))
(cl:defmethod maxvehwidth-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maxvehwidth-val is deprecated.  Use j2735_msgs-msg:maxvehwidth instead.")
  (maxvehwidth m))

(cl:ensure-generic-function 'maxvehlength-val :lambda-list '(m))
(cl:defmethod maxvehlength-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maxvehlength-val is deprecated.  Use j2735_msgs-msg:maxvehlength instead.")
  (maxvehlength m))

(cl:ensure-generic-function 'maxvehaxles-val :lambda-list '(m))
(cl:defmethod maxvehaxles-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:maxvehaxles-val is deprecated.  Use j2735_msgs-msg:maxvehaxles instead.")
  (maxvehaxles m))

(cl:ensure-generic-function 'minvehocc-val :lambda-list '(m))
(cl:defmethod minvehocc-val ((m <TrafficControlDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader j2735_msgs-msg:minvehocc-val is deprecated.  Use j2735_msgs-msg:minvehocc instead.")
  (minvehocc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficControlDetail>)))
    "Constants for message type '<TrafficControlDetail>"
  '((:SIGNAL_CHOICE . 0)
    (:STOP_CHOICE . 1)
    (:YIELD_CHOICE . 2)
    (:NOTOWING_CHOICE . 3)
    (:RESTRICTED_CHOICE . 4)
    (:CLOSED_CHOICE . 5)
    (:CHAINS_CHOICE . 6)
    (:DIRECTION_CHOICE . 7)
    (:LATAFFINITY_CHOICE . 8)
    (:LATPERM_CHOICE . 9)
    (:PARKING_CHOICE . 10)
    (:MINSPEED_CHOICE . 11)
    (:MAXSPEED_CHOICE . 12)
    (:MINHDWY_CHOICE . 13)
    (:MAXVEHMASS_CHOICE . 14)
    (:MAXVEHHEIGHT_CHOICE . 15)
    (:MAXVEHWIDTH_CHOICE . 16)
    (:MAXVEHLENGTH_CHOICE . 17)
    (:MAXVEHAXLES_CHOICE . 18)
    (:MINVEHOCC_CHOICE . 19)
    (:OPEN . 0)
    (:CLOSED . 1)
    (:TAPERLEFT . 2)
    (:TAPERRIGHT . 3)
    (:OPENLEFT . 4)
    (:OPENRIGHT . 5)
    (:NO . 0)
    (:PERMITTED . 1)
    (:REQUIRED . 2)
    (:FORWARD . 0)
    (:REVERSE . 1)
    (:LEFT . 0)
    (:RIGHT . 1)
    (:NONE . 0)
    (:PASSINGONLY . 2)
    (:EMERGENCYONLY . 3)
    (:PARALLEL . 1)
    (:ANGLED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficControlDetail)))
    "Constants for message type 'TrafficControlDetail"
  '((:SIGNAL_CHOICE . 0)
    (:STOP_CHOICE . 1)
    (:YIELD_CHOICE . 2)
    (:NOTOWING_CHOICE . 3)
    (:RESTRICTED_CHOICE . 4)
    (:CLOSED_CHOICE . 5)
    (:CHAINS_CHOICE . 6)
    (:DIRECTION_CHOICE . 7)
    (:LATAFFINITY_CHOICE . 8)
    (:LATPERM_CHOICE . 9)
    (:PARKING_CHOICE . 10)
    (:MINSPEED_CHOICE . 11)
    (:MAXSPEED_CHOICE . 12)
    (:MINHDWY_CHOICE . 13)
    (:MAXVEHMASS_CHOICE . 14)
    (:MAXVEHHEIGHT_CHOICE . 15)
    (:MAXVEHWIDTH_CHOICE . 16)
    (:MAXVEHLENGTH_CHOICE . 17)
    (:MAXVEHAXLES_CHOICE . 18)
    (:MINVEHOCC_CHOICE . 19)
    (:OPEN . 0)
    (:CLOSED . 1)
    (:TAPERLEFT . 2)
    (:TAPERRIGHT . 3)
    (:OPENLEFT . 4)
    (:OPENRIGHT . 5)
    (:NO . 0)
    (:PERMITTED . 1)
    (:REQUIRED . 2)
    (:FORWARD . 0)
    (:REVERSE . 1)
    (:LEFT . 0)
    (:RIGHT . 1)
    (:NONE . 0)
    (:PASSINGONLY . 2)
    (:EMERGENCYONLY . 3)
    (:PARALLEL . 1)
    (:ANGLED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficControlDetail>) ostream)
  "Serializes a message object of type '<TrafficControlDetail>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'signal))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'closed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chains)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lataffinity)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'latperm))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minspeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'minspeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxspeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxspeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minhdwy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'minhdwy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehmass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxvehmass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehheight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehwidth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehlength)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxvehlength)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehaxles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minvehocc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficControlDetail>) istream)
  "Deserializes a message object of type '<TrafficControlDetail>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'choice)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'closed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chains)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lataffinity)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'latperm) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'latperm)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minspeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'minspeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxspeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxspeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minhdwy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'minhdwy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehmass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxvehmass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehheight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehwidth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehlength)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxvehlength)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxvehaxles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minvehocc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficControlDetail>)))
  "Returns string type for a message object of type '<TrafficControlDetail>"
  "j2735_msgs/TrafficControlDetail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficControlDetail)))
  "Returns string type for a message object of type 'TrafficControlDetail"
  "j2735_msgs/TrafficControlDetail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficControlDetail>)))
  "Returns md5sum for a message object of type '<TrafficControlDetail>"
  "1729e85f043b0bad7ed698acb5917bcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficControlDetail)))
  "Returns md5sum for a message object of type 'TrafficControlDetail"
  "1729e85f043b0bad7ed698acb5917bcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficControlDetail>)))
  "Returns full string definition for message of type '<TrafficControlDetail>"
  (cl:format cl:nil "#~%# TrafficControlDetail.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlDetail ::= CHOICE~%#{~%#	signal OCTET STRING SIZE(0..63),~%#	stop NULL,~%#	yield NULL,~%#	notowing NULL,~%#	restricted NULL,~%#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},~%#	chains ENUMERATED {no, permitted, required},~%#	direction ENUMERATED {forward, reverse},~%#	lataffinity ENUMERATED {left, right},~%#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},~%#	parking ENUMERATED {no, parallel, angled},~%#	minspeed INTEGER (0..1023), -- tenths of m/s~%#	maxspeed INTEGER (0..1023), -- tenths of m/s~%#	minhdwy INTEGER (0..2047), -- tenths of meters~%#	maxvehmass INTEGER (0..65535), -- kg~%#	maxvehheight INTEGER (0..127), -- tenths of meters~%#	maxvehwidth INTEGER (0..127), -- tenths of meters~%#	maxvehlength INTEGER (0..1023), -- tenths of meters~%#	maxvehaxles INTEGER (2..15),~%#	minvehocc INTEGER (1..15), ~%#	...~%#}~%~%~%uint8 choice~%~%# enumeration values for choice:~%~%uint8 SIGNAL_CHOICE =0~%uint8 STOP_CHOICE =1~%uint8 YIELD_CHOICE =2~%uint8 NOTOWING_CHOICE =3~%uint8 RESTRICTED_CHOICE =4~%uint8 CLOSED_CHOICE =5~%uint8 CHAINS_CHOICE =6~%uint8 DIRECTION_CHOICE =7~%uint8 LATAFFINITY_CHOICE =8~%uint8 LATPERM_CHOICE =9~%uint8 PARKING_CHOICE =10~%uint8 MINSPEED_CHOICE =11~%uint8 MAXSPEED_CHOICE =12~%uint8 MINHDWY_CHOICE =13~%uint8 MAXVEHMASS_CHOICE =14~%uint8 MAXVEHHEIGHT_CHOICE =15~%uint8 MAXVEHWIDTH_CHOICE =16~%uint8 MAXVEHLENGTH_CHOICE =17~%uint8 MAXVEHAXLES_CHOICE =18~%uint8 MINVEHOCC_CHOICE =19~%~%# signal ::= OCTET STRING SIZE(0..63)~%uint8[] signal~%~%#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}~%~%uint8 closed~%~%# enumeration values for closed:~%~%uint8 OPEN=0~%~%uint8 CLOSED=1~%~%uint8 TAPERLEFT=2~%~%uint8 TAPERRIGHT=3~%~%uint8 OPENLEFT=4~%~%uint8 OPENRIGHT=5~%~%#chains ENUMERATED {no, permitted, required}~%~%uint8 chains~%~%# enumeration values for chains:~%~%uint8 NO=0~%~%uint8 PERMITTED=1~%~%uint8 REQUIRED=2~%~%~%#direction ENUMERATED {forward, reverse}~%~%uint8 direction~%~%# enumeration values for direction:~%~%uint8 FORWARD=0~%~%uint8 REVERSE=1~%~%#lataffinity ENUMERATED {left, right}~%~%uint8 lataffinity~%~%# enumeration values for lataffinity:~%~%uint8 LEFT=0~%~%uint8 RIGHT=1~%~%#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}~%~%uint8[2] latperm~%~%# enumeration values for latperm:~%~%uint8 NONE=0~%~%# uint8 PERMITTED=1 redeclaration~%~%uint8 PASSINGONLY=2~%~%uint8 EMERGENCYONLY=3~%~%#parking ENUMERATED {no, parallel, angled}~%~%uint8 parking~%~%# enumeration values for parking:~%~%# uint8 NO=0 redeclaration~%~%uint8 PARALLEL=1~%~%uint8 ANGLED=2~%~%#minspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 minspeed~%~%#maxspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 maxspeed~%~%#minhdwy ::= INTEGER (0..2047), -- tenths of meters~%uint16 minhdwy~%~%#maxvehmass ::= INTEGER (0..65535), -- kg~%uint16 maxvehmass~%~%#maxvehheight ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehheight~%~%#maxvehwidth ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehwidth~%~%#maxvehlength ::= INTEGER (0..1023), -- tenths of meters~%uint16 maxvehlength~%~%#maxvehaxles ::= INTEGER (2..15)~%uint8 maxvehaxles~%~%#minvehocc ::= INTEGER (1..15)~%uint8 minvehocc~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficControlDetail)))
  "Returns full string definition for message of type 'TrafficControlDetail"
  (cl:format cl:nil "#~%# TrafficControlDetail.msg~%#~%# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard~%#~%# J2735 2016 message format.~%#~%# ~%# @version 0.1~%#~%# Description~%# ...~%~%#TrafficControlDetail ::= CHOICE~%#{~%#	signal OCTET STRING SIZE(0..63),~%#	stop NULL,~%#	yield NULL,~%#	notowing NULL,~%#	restricted NULL,~%#	closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright},~%#	chains ENUMERATED {no, permitted, required},~%#	direction ENUMERATED {forward, reverse},~%#	lataffinity ENUMERATED {left, right},~%#	latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only},~%#	parking ENUMERATED {no, parallel, angled},~%#	minspeed INTEGER (0..1023), -- tenths of m/s~%#	maxspeed INTEGER (0..1023), -- tenths of m/s~%#	minhdwy INTEGER (0..2047), -- tenths of meters~%#	maxvehmass INTEGER (0..65535), -- kg~%#	maxvehheight INTEGER (0..127), -- tenths of meters~%#	maxvehwidth INTEGER (0..127), -- tenths of meters~%#	maxvehlength INTEGER (0..1023), -- tenths of meters~%#	maxvehaxles INTEGER (2..15),~%#	minvehocc INTEGER (1..15), ~%#	...~%#}~%~%~%uint8 choice~%~%# enumeration values for choice:~%~%uint8 SIGNAL_CHOICE =0~%uint8 STOP_CHOICE =1~%uint8 YIELD_CHOICE =2~%uint8 NOTOWING_CHOICE =3~%uint8 RESTRICTED_CHOICE =4~%uint8 CLOSED_CHOICE =5~%uint8 CHAINS_CHOICE =6~%uint8 DIRECTION_CHOICE =7~%uint8 LATAFFINITY_CHOICE =8~%uint8 LATPERM_CHOICE =9~%uint8 PARKING_CHOICE =10~%uint8 MINSPEED_CHOICE =11~%uint8 MAXSPEED_CHOICE =12~%uint8 MINHDWY_CHOICE =13~%uint8 MAXVEHMASS_CHOICE =14~%uint8 MAXVEHHEIGHT_CHOICE =15~%uint8 MAXVEHWIDTH_CHOICE =16~%uint8 MAXVEHLENGTH_CHOICE =17~%uint8 MAXVEHAXLES_CHOICE =18~%uint8 MINVEHOCC_CHOICE =19~%~%# signal ::= OCTET STRING SIZE(0..63)~%uint8[] signal~%~%#closed ENUMERATED {open, closed, taperleft, taperright, openleft, openright}~%~%uint8 closed~%~%# enumeration values for closed:~%~%uint8 OPEN=0~%~%uint8 CLOSED=1~%~%uint8 TAPERLEFT=2~%~%uint8 TAPERRIGHT=3~%~%uint8 OPENLEFT=4~%~%uint8 OPENRIGHT=5~%~%#chains ENUMERATED {no, permitted, required}~%~%uint8 chains~%~%# enumeration values for chains:~%~%uint8 NO=0~%~%uint8 PERMITTED=1~%~%uint8 REQUIRED=2~%~%~%#direction ENUMERATED {forward, reverse}~%~%uint8 direction~%~%# enumeration values for direction:~%~%uint8 FORWARD=0~%~%uint8 REVERSE=1~%~%#lataffinity ENUMERATED {left, right}~%~%uint8 lataffinity~%~%# enumeration values for lataffinity:~%~%uint8 LEFT=0~%~%uint8 RIGHT=1~%~%#latperm SEQUENCE (SIZE(2)) OF ENUMERATED {none, permitted, passing-only, emergency-only}~%~%uint8[2] latperm~%~%# enumeration values for latperm:~%~%uint8 NONE=0~%~%# uint8 PERMITTED=1 redeclaration~%~%uint8 PASSINGONLY=2~%~%uint8 EMERGENCYONLY=3~%~%#parking ENUMERATED {no, parallel, angled}~%~%uint8 parking~%~%# enumeration values for parking:~%~%# uint8 NO=0 redeclaration~%~%uint8 PARALLEL=1~%~%uint8 ANGLED=2~%~%#minspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 minspeed~%~%#maxspeed ::= INTEGER (0..1023), -- tenths of m/s~%uint16 maxspeed~%~%#minhdwy ::= INTEGER (0..2047), -- tenths of meters~%uint16 minhdwy~%~%#maxvehmass ::= INTEGER (0..65535), -- kg~%uint16 maxvehmass~%~%#maxvehheight ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehheight~%~%#maxvehwidth ::= INTEGER (0..127), -- tenths of meters~%uint8 maxvehwidth~%~%#maxvehlength ::= INTEGER (0..1023), -- tenths of meters~%uint16 maxvehlength~%~%#maxvehaxles ::= INTEGER (2..15)~%uint8 maxvehaxles~%~%#minvehocc ::= INTEGER (1..15)~%uint8 minvehocc~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficControlDetail>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'latperm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     2
     2
     2
     2
     1
     1
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficControlDetail>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficControlDetail
    (cl:cons ':choice (choice msg))
    (cl:cons ':signal (signal msg))
    (cl:cons ':closed (closed msg))
    (cl:cons ':chains (chains msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':lataffinity (lataffinity msg))
    (cl:cons ':latperm (latperm msg))
    (cl:cons ':parking (parking msg))
    (cl:cons ':minspeed (minspeed msg))
    (cl:cons ':maxspeed (maxspeed msg))
    (cl:cons ':minhdwy (minhdwy msg))
    (cl:cons ':maxvehmass (maxvehmass msg))
    (cl:cons ':maxvehheight (maxvehheight msg))
    (cl:cons ':maxvehwidth (maxvehwidth msg))
    (cl:cons ':maxvehlength (maxvehlength msg))
    (cl:cons ':maxvehaxles (maxvehaxles msg))
    (cl:cons ':minvehocc (minvehocc msg))
))
