;; Auto-generated. Do not edit!


(when (boundp 'j2735_msgs::OffsetXaxis)
  (if (not (find-package "J2735_MSGS"))
    (make-package "J2735_MSGS"))
  (shadow 'OffsetXaxis (find-package "J2735_MSGS")))
(unless (find-package "J2735_MSGS::OFFSETXAXIS")
  (make-package "J2735_MSGS::OFFSETXAXIS"))

(in-package "ROS")
;;//! \htmlinclude OffsetXaxis.msg.html


(intern "*SMALL*" (find-package "J2735_MSGS::OFFSETXAXIS"))
(shadow '*SMALL* (find-package "J2735_MSGS::OFFSETXAXIS"))
(defconstant j2735_msgs::OffsetXaxis::*SMALL* 0)
(intern "*LARGE*" (find-package "J2735_MSGS::OFFSETXAXIS"))
(shadow '*LARGE* (find-package "J2735_MSGS::OFFSETXAXIS"))
(defconstant j2735_msgs::OffsetXaxis::*LARGE* 1)

(defun j2735_msgs::OffsetXaxis-to-symbol (const)
  (cond
        ((= const 0) 'j2735_msgs::OffsetXaxis::*SMALL*)
        ((= const 1) 'j2735_msgs::OffsetXaxis::*LARGE*)
        (t nil)))

(defclass j2735_msgs::OffsetXaxis
  :super ros::object
  :slots (_choice _small _large ))

(defmethod j2735_msgs::OffsetXaxis
  (:init
   (&key
    ((:choice __choice) 0)
    ((:small __small) 0)
    ((:large __large) 0)
    )
   (send-super :init)
   (setq _choice (round __choice))
   (setq _small (round __small))
   (setq _large (round __large))
   self)
  (:choice
   (&optional __choice)
   (if __choice (setq _choice __choice)) _choice)
  (:small
   (&optional __small)
   (if __small (setq _small __small)) _small)
  (:large
   (&optional __large)
   (if __large (setq _large __large)) _large)
  (:serialization-length
   ()
   (+
    ;; uint8 _choice
    1
    ;; int16 _small
    2
    ;; int16 _large
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _choice
       (write-byte _choice s)
     ;; int16 _small
       (write-word _small s)
     ;; int16 _large
       (write-word _large s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _choice
     (setq _choice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _small
     (setq _small (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _large
     (setq _large (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get j2735_msgs::OffsetXaxis :md5sum-) "7c890b94cd43f65cd23f448bf170a405")
(setf (get j2735_msgs::OffsetXaxis :datatype-) "j2735_msgs/OffsetXaxis")
(setf (get j2735_msgs::OffsetXaxis :definition-)
      "#
# OffsetXaxis.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# 	-- A path X offset value for translations of the
# 	-- path's points when creating translated lanes.
# 	-- The values found in the reference lane are
# 	-- all offset based on the X and Y values from
# 	-- the coordinates of the reference lane's
# 	-- initial path point.
# offsetXaxis CHOICE {
# 		small DrivenLineOffsetSm,
# 		large DrivenLineOffsetLg
# 		},


uint8 choice
uint8 SMALL=0
uint8 LARGE=1

# The DrivenLineOffsetSmall data element is an integer value expressing the offset in a defined axis from a reference
# lane number from which a computed lane is offset.
# DrivenLineOffsetSm ::= INTEGER (-2047..2047)
# -- LSB units are 1 cm.
int16 small


# The DE_DrivenLineOffsetLarge data element is an integer value expressing the offset in a defined axis from a
# reference lane number from which a computed lane is offset.
# DrivenLineOffsetLg ::= INTEGER (-32767..32767)
# -- LSB units are 1 cm.
int16 large
")



(provide :j2735_msgs/OffsetXaxis "7c890b94cd43f65cd23f448bf170a405")


