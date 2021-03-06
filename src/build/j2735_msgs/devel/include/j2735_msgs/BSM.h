// Generated by gencpp from file j2735_msgs/BSM.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_BSM_H
#define J2735_MSGS_MESSAGE_BSM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <j2735_msgs/BSMCoreData.h>

namespace j2735_msgs
{
template <class ContainerAllocator>
struct BSM_
{
  typedef BSM_<ContainerAllocator> Type;

  BSM_()
    : header()
    , core_data()  {
    }
  BSM_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , core_data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::j2735_msgs::BSMCoreData_<ContainerAllocator>  _core_data_type;
  _core_data_type core_data;





  typedef boost::shared_ptr< ::j2735_msgs::BSM_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::BSM_<ContainerAllocator> const> ConstPtr;

}; // struct BSM_

typedef ::j2735_msgs::BSM_<std::allocator<void> > BSM;

typedef boost::shared_ptr< ::j2735_msgs::BSM > BSMPtr;
typedef boost::shared_ptr< ::j2735_msgs::BSM const> BSMConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::BSM_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::BSM_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::BSM_<ContainerAllocator1> & lhs, const ::j2735_msgs::BSM_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.core_data == rhs.core_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::BSM_<ContainerAllocator1> & lhs, const ::j2735_msgs::BSM_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::BSM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::BSM_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::BSM_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::BSM_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::BSM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::BSM_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::BSM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91f6b5a5946e974179c8051acdadabd1";
  }

  static const char* value(const ::j2735_msgs::BSM_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91f6b5a5946e9741ULL;
  static const uint64_t static_value2 = 0x79c8051acdadabd1ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::BSM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/BSM";
  }

  static const char* value(const ::j2735_msgs::BSM_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::BSM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# BSM.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# This is the parsed version of BSMRaw that will be passed around between Guidance, Negotiator, Message and other nodes. \n"
"# \n"
"# NOTE: Initial version only considers Part I. Part II will be defined for later use. \n"
"\n"
"std_msgs/Header header\n"
"\n"
"j2735_msgs/BSMCoreData core_data\n"
"\n"
"# -- Part II Content is for future use. \n"
"\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/BSMCoreData\n"
"#\n"
"# BSMCoreData.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# Contains critical core elements deemed to be needed with every BSM issued.  \n"
"# \n"
"# NOTE: Initial version only considers Part I. Part II will be defined for later use. \n"
"\n"
"#MsgCount ::= INTEGER (0..127)\n"
"uint8 msg_count\n"
"\n"
"uint8 MSG_COUNT_MAX = 127\n"
"\n"
"#TemporaryID ::= OCTET STRING (SIZE(4))\n"
"uint8[] id\n"
"\n"
"#TemporaryID will change every 3000 seconds.\n"
"uint16 ID_TIME_MAX = 3000\n"
"\n"
"#DSecond ::= INTEGER (0..65535)\n"
"#  -- Integer values from 0 to 59999 represent the milliseconds within a minute\n"
"#  -- A leap second is represented by the value range 60000 to 60999\n"
"#  -- The values from 61000 to 65534 are reserved\n"
"#  -- The value of 65535 shall represent an unavailable value in the range of the minute\n"
"#  -- Unit is milliseconds\n"
"uint16 sec_mark\n"
"\n"
"uint16 SEC_MARK_MOD = 60000\n"
"uint16 SEC_MARK_UNAVAILABLE = 65535\n"
"\n"
"#Longitude ::= INTEGER (-1799999999..1800000001)\n"
"#  -- LSB = 1/10 micro degree\n"
"#  -- Providing a range of plus-minus 180 degrees\n"
"#  -- Convert to degree with factor 0.0000001 when field is used\n"
"int32 longitude\n"
"\n"
"int32 LONGITUDE_UNAVAILABLE = 1800000001\n"
"int32 LONGITUDE_MAX = 1800000000\n"
"int32 LONGITUDE_MIN = -1799999999\n"
"\n"
"#Latitude ::= INTEGER (-900000000..900000001)\n"
"#  -- LSB = 1/10 micro degree\n"
"#  -- Providing a range of plus-minus 90 degrees\n"
"#  -- Convert to degree with factor 0.0000001 when field is used\n"
"int32 latitude\n"
"\n"
"int32 LATITUDE_UNAVAILABLE = 900000001\n"
"int32 LATITUDE_MAX = 900000000\n"
"int32 LATITUDE_MIN = -900000000\n"
"\n"
"#Elevation ::= INTEGER (-4096..61439)\n"
"#  -- In units of 10 cm steps above or below the reference ellipsoid\n"
"#  -- Providing a range of -409.5 to + 6143.9 meters\n"
"#  -- The value -4096 shall be used when Unknown is to be sent\n"
"#  -- Convert to meter with factor 0.1 when field is used\n"
"int32 elev\n"
"\n"
"int32 ELEVATION_UNAVAILABLE = -4096\n"
"int32 ELEVATION_MAX = 61439\n"
"int32 ELEVATION_MIN = -4095\n"
"\n"
"# Used to model the accuracy of the positional determination with respect to each given axis.\n"
"j2735_msgs/PositionalAccuracy accuracy\n"
"\n"
"# Provide the current state of the vehicle transmission\n"
"j2735_msgs/TransmissionState transmission\n"
"\n"
"#Speed ::= INTEGER (0..8191) -- Units of 0.02 m/s\n"
"#  -- The value 8191 indicates that speed is unavailable\n"
"#  -- Convert to m/s with factor 0.02 when field is used\n"
"uint16 speed\n"
"\n"
"uint16 SPEED_UNAVAILABLE = 8191\n"
"uint16 SPEED_MAX = 8190\n"
"uint16 SPEED_MIN = 0\n"
"\n"
"#Heading ::= INTEGER (0..28800)\n"
"#  -- LSB of 0.0125 degrees\n"
"#  -- A range of 0 to 359.9875 degrees\n"
"#  -- Convert to degree with factor 0.0125 when field is used\n"
"uint16 heading\n"
"uint16 HEADING_UNAVAILABLE = 28800\n"
"uint16 HEADING_MAX = 28798\n"
"uint16 HEADING_MIN = 0\n"
"\n"
"#SteeringWheelAngle ::= INTEGER (-126..127)\n"
"#  -- LSB units of 1.5 degrees, a range of -189 to +189 degrees\n"
"#  -- +001 = +1.5 deg\n"
"#  -- -126 = -189 deg and beyond\n"
"#  -- +126 = +189 deg and beyond\n"
"#  -- +127 to be used for unavailable\n"
"#  -- Convert to degree with factor 1.5 when this field is used\n"
"int8 angle\n"
"int8 STEER_WHEEL_ANGLE_UNAVAILABLE = 127\n"
"int8 STEER_WHEEL_ANGLE_MAX = 126\n"
"int8 STEER_WHEEL_ANGLE_MIN = -126\n"
"\n"
"# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure.\n"
"j2735_msgs/AccelerationSet4Way accelSet\n"
"\n"
"# Conveys a variety of information about the current brake and system control activity of the vehicle.\n"
"j2735_msgs/BrakeSystemStatus brakes\n"
"\n"
"# The vehicle length and width\n"
"j2735_msgs/VehicleSize size\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/PositionalAccuracy\n"
"#\n"
"# PositionalAccuracy.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# Used to model the accuracy of the positional determination with respect to each given axis.\n"
"\n"
"#PositionalAccuracy ::= SEQUENCE {\n"
"#   -- NMEA-183 values expressed in strict ASN form\n"
"#   semiMajor     SemiMajorAxisAccuracy,\n"
"#   semiMinor     SemiMinorAxisAccuracy,\n"
"#   orientation   SemiMajorAxisOrientation\n"
"#   }\n"
"\n"
"#SemiMajorAxisAccuracy ::= INTEGER (0..255)\n"
"#   -- semi-major/semi-minor axis accuracy at one standard dev\n"
"#   -- range 0-12.7 meter, LSB = .05m\n"
"#   -- 254 = any value equal or greater than 12.70 meter\n"
"#   -- 255 = unavailable semi-major axis value\n"
"#   -- Convert to meter with factor 0.05 when this field is used\n"
"uint8 semiMajor\n"
"uint8 semiMinor\n"
"\n"
"uint8 ACCURACY_UNAVAILABLE = 255\n"
"uint8 ACCURACY_MAX = 254\n"
"uint8 ACCURACY_MIN = 0\n"
"\n"
"#SemiMajorAxisOrientation ::= INTEGER (0..65535)\n"
"#   -- orientation of semi-major axis\n"
"#   -- relative to true north (0~359.9945078786 degrees)\n"
"#   -- LSB units of 360/65535 deg  = 0.0054932479\n"
"#   -- a value of 0 shall be 0 degrees\n"
"#   -- a value of 1 shall be 0.0054932479 degrees\n"
"#   -- a value of 65534 shall be 359.9945078786 deg\n"
"#   -- a value of 65535 shall be used for orientation unavailable\n"
"#   -- Convert to degree with factor 0.0054932479 when this field is used\n"
"uint16 orientation\n"
"\n"
"uint16 ACCURACY_ORIENTATION_UNAVAILABLE = 65535\n"
"uint16 ACCURACY_ORIENTATION_MAX = 65534\n"
"uint16 ACCURACY_ORIENTATION_MIN = 0\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/TransmissionState\n"
"#\n"
"# TransmissionState.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# Provide the current state of the vehicle transmission.\n"
"\n"
"#TransmissionState ::= ENUMERATED {\n"
"#   neutral      (0), -- Neutral\n"
"#   park         (1), -- Park \n"
"#   forwardGears (2), -- Forward gears\n"
"#   reverseGears (3), -- Reverse gears \n"
"#   reserved1    (4),      \n"
"#   reserved2    (5),      \n"
"#   reserved3    (6),      \n"
"#   unavailable  (7)  -- not-equipped or unavailable value,\n"
"#   -- Any related speed is relative to the vehicle reference frame used\n"
"#   }\n"
"\n"
"uint8  transmission_state\n"
"\n"
"# enumeration values for status:\n"
"uint8 NEUTRAL=0\n"
"uint8 PARK=1\n"
"uint8 FORWARDGEARS=2\n"
"uint8 REVERSEGEARS=3\n"
"uint8 RESERVED1=4\n"
"uint8 RESERVED2=5\n"
"uint8 RESERVED3=6\n"
"uint8 UNAVAILABLE=7\n"
"================================================================================\n"
"MSG: j2735_msgs/AccelerationSet4Way\n"
"#\n"
"# AccelerationSet4Way.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# Set of acceleration values in 3 orthogonal directions of the vehicle and with yaw rotation rates expressed as a structure. \n"
"# The positive longitudinal axis is to the front of the vehicle. \n"
"# The positive lateral axis is to the right side of the vehicle (facing forward)\n"
"# Positive yaw is to the right (clockwise)\n"
"# The positive vertical \"z\" axis is downward with the zero point at the bottom of the vehicle's tires. \n"
"\n"
"#AccelerationSet4Way ::= SEQUENCE {\n"
"#   long Acceleration,          -- Along the Vehicle Longitudinal axis\n"
"#   lat  Acceleration,          -- Along the Vehicle Lateral axis\n"
"#   vert VerticalAcceleration,  -- Along the Vehicle Vertical axis\n"
"#   yaw  YawRate\n"
"#}\n"
"\n"
"#Acceleration ::= INTEGER (-2000..2001) \n"
"#   -- LSB units are 0.01 m/s^2\n"
"#   -- the value 2000 shall be used for values greater than 2000     \n"
"#   -- the value -2000 shall be used for values less than -2000  \n"
"#   -- a value of 2001 shall be used for Unavailable\n"
"#   -- Convert to m/s^2 with factor 0.01 when this field is used\n"
"int16 longitudinal\n"
"int16 lateral\n"
"\n"
"int16 ACCELERATION_UNAVAILABLE = 2001\n"
"int16 ACCELERATION_MAX = 2000\n"
"int16 ACCELERATION_MIN = -2000\n"
"\n"
"#VerticalAcceleration ::= INTEGER (-127..127) \n"
"#   -- LSB units of 0.02 G steps over -2.52 to +2.54 G\n"
"#   -- The value +127 shall be used for ranges >= 2.54 G\n"
"#   -- The value -126 shall be used for ranges <= 2.52 G\n"
"#   -- The value -127 shall be used for unavailable\n"
"#   -- Convert to m/s^2 with factor 0.196 when this field is used\n"
"int8 vert\n"
"\n"
"int8 ACCELERATION_VERTICAL_UNAVAILABLE = -127\n"
"int8 ACCELERATION_VERTICAL_MAX = 127\n"
"int8 ACCELERATION_VERTICAL_MIN = -126\n"
"\n"
"#YawRate ::= INTEGER (-32767..32767)\n"
"#   -- LSB units of 0.01 degrees per second (signed)\n"
"#   -- Convert to degree with factor 0.01 when this field is used\n"
"int16 yaw_rate\n"
"\n"
"int16 YAWRATE_UNAVAILABLE = 0\n"
"int16 YAWRATE_MAX = 32767\n"
"int16 YAWRATE_MIN = -32767\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/BrakeSystemStatus\n"
"#\n"
"# BrakeSystemStatus.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# Conveys a variety of information about the current brake and system control activity of the vehicle.\n"
"\n"
"#BrakeSystemStatus ::= SEQUENCE { \n"
"#   wheelBrakes        BrakeAppliedStatus,\n"
"#   traction           TractionControlStatus,\n"
"#   abs                AntiLockBrakeStatus, \n"
"#   scs                StabilityControlStatus,\n"
"#   brakeBoost         BrakeBoostApplied, \n"
"#   auxBrakes          AuxiliaryBrakeStatus\n"
"#   }\n"
"\n"
"#BrakeAppliedStatus ::= BIT STRING {\n"
"#   unavailable (0),  -- When set, the brake applied status is unavailable\n"
"#   leftFront   (1),  -- Left Front Active\n"
"#   leftRear    (2),  -- Left Rear Active\n"
"#   rightFront  (3),  -- Right Front Active\n"
"#   rightRear   (4)   -- Right Rear Active\n"
"#   } (SIZE (5))\n"
"#   \n"
"j2735_msgs/BrakeAppliedStatus wheelBrakes\n"
"\n"
"#TractionControlStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Not Equipped with traction control \n"
"#                    --       or traction control status is unavailable\n"
"#   off         (1), -- B'01  traction control is Off\n"
"#   on          (2), -- B'10  traction control is On (but not Engaged)\n"
"#   engaged     (3)  -- B'11  traction control is Engaged\n"
"#   }\n"
"#\n"
"j2735_msgs/TractionControlStatus traction\n"
"\n"
"#AntiLockBrakeStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes \n"
"#                    --       or ABS Brakes status is unavailable\n"
"#   off         (1), -- B'01  Vehicle's ABS are Off\n"
"#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )\n"
"#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel\n"
"#   }\n"
"#\n"
"j2735_msgs/AntiLockBrakeStatus abs\n"
"\n"
"#StabilityControlStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Not Equipped with SC\n"
"#                    --       or SC status is unavailable\n"
"#   off         (1), -- B'01  Off\n"
"#   on          (2), -- B'10  On or active (but not engaged)\n"
"#   engaged     (3)  -- B'11  stability control is Engaged \n"
"#   }\n"
"#   \n"
"j2735_msgs/StabilityControlStatus scs\n"
"\n"
"#BrakeBoostApplied ::= ENUMERATED {\n"
"#   unavailable   (0), -- Vehicle not equipped with brake boost\n"
"#                      -- or brake boost data is unavailable\n"
"#   off           (1), -- Vehicle's brake boost is off\n"
"#   on            (2)  -- Vehicle's brake boost is on (applied)\n"
"#   }\n"
"#   \n"
"j2735_msgs/BrakeBoostApplied brakeBoost\n"
"\n"
"#AuxiliaryBrakeStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes \n"
"#                    --       or Aux Brakes status is unavailable\n"
"#   off         (1), -- B'01  Vehicle's Aux Brakes are Off\n"
"#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )\n"
"#   reserved    (3)  -- B'11 \n"
"#   }   \n"
"\n"
"j2735_msgs/AuxiliaryBrakeStatus auxBrakes\n"
"================================================================================\n"
"MSG: j2735_msgs/BrakeAppliedStatus\n"
"#\n"
"# BrakeAppliedStatus.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"# \n"
"\n"
"#BrakeAppliedStatus ::= BIT STRING {\n"
"#   unavailable (0),  -- When set, the brake applied status is unavailable\n"
"#   leftFront   (1),  -- Left Front Active\n"
"#   leftRear    (2),  -- Left Rear Active\n"
"#   rightFront  (3),  -- Right Front Active\n"
"#   rightRear   (4)   -- Right Rear Active\n"
"#   } (SIZE (5))\n"
"#   \n"
"\n"
"uint8  brake_applied_status\n"
"\n"
"uint8 UNAVAILABLE=0\n"
"uint8 LEFT_FRONT=1\n"
"uint8 LEFT_REAR=2\n"
"uint8 RIGHT_FRONT=3\n"
"uint8 RIGHT_REAR=4\n"
"\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/TractionControlStatus\n"
"#\n"
"# TractionControlStatus.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"\n"
"#TractionControlStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Not Equipped with traction control \n"
"#                    --       or traction control status is unavailable\n"
"#   off         (1), -- B'01  traction control is Off\n"
"#   on          (2), -- B'10  traction control is On (but not Engaged)\n"
"#   engaged     (3)  -- B'11  traction control is Engaged\n"
"#   }\n"
"#\n"
"\n"
"uint8  traction_control_status \n"
"\n"
"# enumeration values for status:\n"
"uint8  UNAVAILABLE=0\n"
"uint8  OFF=1\n"
"uint8  ON=2\n"
"uint8  ENGAGED=3\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/AntiLockBrakeStatus\n"
"#\n"
"# AntiLockBrakeStatus.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"\n"
"#AntiLockBrakeStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Vehicle Not Equipped with ABS Brakes \n"
"#                    --       or ABS Brakes status is unavailable\n"
"#   off         (1), -- B'01  Vehicle's ABS are Off\n"
"#   on          (2), -- B'10  Vehicle's ABS are On ( but not Engaged )\n"
"#   engaged     (3)  -- B'11  Vehicle's ABS control is Engaged on any wheel\n"
"#   }\n"
"#\n"
"\n"
"uint8  anti_lock_brake_status \n"
"\n"
"# enumeration values for status:\n"
"uint8  UNAVAILABLE=0\n"
"uint8  OFF=1\n"
"uint8  ON=2\n"
"uint8  ENGAGED=3\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/StabilityControlStatus\n"
"#\n"
"# StabilityControlStatus.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"\n"
"#StabilityControlStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Not Equipped with SC\n"
"#                    --       or SC status is unavailable\n"
"#   off         (1), -- B'01  Off\n"
"#   on          (2), -- B'10  On or active (but not engaged)\n"
"#   engaged     (3)  -- B'11  stability control is Engaged \n"
"#   }\n"
"#   \n"
"\n"
"uint8  stability_control_status \n"
"\n"
"# enumeration values for status:\n"
"uint8  UNAVAILABLE=0\n"
"uint8  OFF=1\n"
"uint8  ON=2\n"
"uint8  ENGAGED=3\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/BrakeBoostApplied\n"
"#\n"
"# BrakeBoostApplied.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"\n"
"#BrakeBoostApplied ::= ENUMERATED {\n"
"#   unavailable   (0), -- Vehicle not equipped with brake boost\n"
"#                      -- or brake boost data is unavailable\n"
"#   off           (1), -- Vehicle's brake boost is off\n"
"#   on            (2)  -- Vehicle's brake boost is on (applied)\n"
"#   }\n"
"#   \n"
"\n"
"uint8  brake_boost_applied\n"
"\n"
"# enumeration values for status:\n"
"uint8  UNAVAILABLE=0\n"
"uint8  OFF=1\n"
"uint8  ON=2\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/AuxiliaryBrakeStatus\n"
"#\n"
"# AuxiliaryBrakeStatus.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"\n"
"#AuxiliaryBrakeStatus ::= ENUMERATED {\n"
"#   unavailable (0), -- B'00  Vehicle Not Equipped with Aux Brakes \n"
"#                    --       or Aux Brakes status is unavailable\n"
"#   off         (1), -- B'01  Vehicle's Aux Brakes are Off\n"
"#   on          (2), -- B'10  Vehicle's Aux Brakes are On ( Engaged )\n"
"#   reserved    (3)  -- B'11 \n"
"#   }   \n"
"\n"
"uint8  auxiliary_brake_status\n"
"\n"
"# enumeration values for status:\n"
"uint8  UNAVAILABLE=0\n"
"uint8  OFF=1\n"
"uint8  ON=2\n"
"uint8  RESERVED=3\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/VehicleSize\n"
"#\n"
"# VehicleSize.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The vehicle length and width \n"
"\n"
"#VehicleSize ::= SEQUENCE {\n"
"#   width     VehicleWidth,\n"
"#   length    VehicleLength\n"
"#   }\n"
"#\n"
"\n"
"#VehicleWidth ::= INTEGER (0..1023) -- LSB units are 1 cm with a range of >10 meters\n"
"#  -- Convert to meter with factor 0.01 when this field is used\n"
"uint16 vehicle_width\n"
"\n"
"uint16 VEHICLE_WIDTH_UNAVAILABLE = 0\n"
"uint16 VEHICLE_WIDTH_MAX = 1023\n"
"uint16 VEHICLE_WIDTH_MIN = 1\n"
"\n"
"#VehicleLength ::= INTEGER (0.. 4095) -- LSB units of 1 cm with a range of >40 meters\n"
"#  -- Convert to meter with factor 0.01 when this field is used\n"
"uint16 vehicle_length\n"
"\n"
"uint16 VEHICLE_LENGTH_UNAVAILABLE = 0\n"
"uint16 VEHICLE_LENGTH_MAX = 4095\n"
"uint16 VEHICLE_LENGTH_MIN = 1\n"
;
  }

  static const char* value(const ::j2735_msgs::BSM_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::BSM_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.core_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BSM_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::BSM_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::BSM_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "core_data: ";
    s << std::endl;
    Printer< ::j2735_msgs::BSMCoreData_<ContainerAllocator> >::stream(s, indent + "  ", v.core_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_BSM_H
