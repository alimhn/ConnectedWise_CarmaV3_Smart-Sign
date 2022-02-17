;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::DayOfWeek)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'DayOfWeek (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::DAYOFWEEK")
  (make-package "J2735_MSGS::DAYOFWEEK"))

(in-package "ROS")
;;//! \htmlinclude DayOfWeek.msg.html


(intern "*SUN*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*SUN* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*SUN* 6)
(intern "*MON*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*MON* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*MON* 5)
(intern "*TUE*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*TUE* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*TUE* 4)
(intern "*WED*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*WED* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*WED* 3)
(intern "*THU*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*THU* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*THU* 2)
(intern "*FRI*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*FRI* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*FRI* 1)
(intern "*SAT*" (find-package "J2735_MSGS::DAYOFWEEK"))
(shadow '*SAT* (find-package "J2735_MSGS::DAYOFWEEK"))
(defconstant j2735_msgs::DayOfWeek::*SAT* 0)

(defun j2735_msgs::DayOfWeek-to-symbol (const)
  (cond
        ((= const 6) 'j2735_msgs::DayOfWeek::*SUN*)
        ((= const 5) 'j2735_msgs::DayOfWeek::*MON*)
        ((= const 4) 'j2735_msgs::DayOfWeek::*TUE*)
        ((= const 3) 'j2735_msgs::DayOfWeek::*WED*)
        ((= const 2) 'j2735_msgs::DayOfWeek::*THU*)
        ((= const 1) 'j2735_msgs::DayOfWeek::*FRI*)
        ((= const 0) 'j2735_msgs::DayOfWeek::*SAT*)
        (t nil)))

(defclass j2735_msgs::DayOfWeek
  :super ros::object
  :slots (_dow ))

(defmethod j2735_msgs::DayOfWeek
  (:init
   (&key
    ((:dow __dow) (make-array 7 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _dow __dow)
   self)
  (:dow
   (&optional __dow)
   (if __dow (setq _dow __dow)) _dow)
  (:serialization-length
   ()
   (+
    ;; uint8[7] _dow
    (* 1    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[7] _dow
     (princ _dow s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[7] _dow
   (setq _dow (make-array 7 :element-type :char))
   (replace _dow buf :start2 ptr-) (incf ptr- 7)
   ;;
   self)
  )

(setf (get j2735_msgs::DayOfWeek :md5sum-) "f02f8ee3b681fb434a4b191ed968fae8")
(setf (get j2735_msgs::DayOfWeek :datatype-) "j2735_msgs/DayOfWeek")
(setf (get j2735_msgs::DayOfWeek :definition-)
      "#
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
")



(provide :j2735_msgs/DayOfWeek "f02f8ee3b681fb434a4b191ed968fae8")


