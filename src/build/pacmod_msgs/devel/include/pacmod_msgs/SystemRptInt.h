// Generated by gencpp from file pacmod_msgs/SystemRptInt.msg
// DO NOT EDIT!


#ifndef PACMOD_MSGS_MESSAGE_SYSTEMRPTINT_H
#define PACMOD_MSGS_MESSAGE_SYSTEMRPTINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace pacmod_msgs
{
template <class ContainerAllocator>
struct SystemRptInt_
{
  typedef SystemRptInt_<ContainerAllocator> Type;

  SystemRptInt_()
    : header()
    , enabled(false)
    , override_active(false)
    , command_output_fault(false)
    , input_output_fault(false)
    , output_reported_fault(false)
    , pacmod_fault(false)
    , vehicle_fault(false)
    , manual_input(0)
    , command(0)
    , output(0)  {
    }
  SystemRptInt_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , enabled(false)
    , override_active(false)
    , command_output_fault(false)
    , input_output_fault(false)
    , output_reported_fault(false)
    , pacmod_fault(false)
    , vehicle_fault(false)
    , manual_input(0)
    , command(0)
    , output(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _enabled_type;
  _enabled_type enabled;

   typedef uint8_t _override_active_type;
  _override_active_type override_active;

   typedef uint8_t _command_output_fault_type;
  _command_output_fault_type command_output_fault;

   typedef uint8_t _input_output_fault_type;
  _input_output_fault_type input_output_fault;

   typedef uint8_t _output_reported_fault_type;
  _output_reported_fault_type output_reported_fault;

   typedef uint8_t _pacmod_fault_type;
  _pacmod_fault_type pacmod_fault;

   typedef uint8_t _vehicle_fault_type;
  _vehicle_fault_type vehicle_fault;

   typedef uint16_t _manual_input_type;
  _manual_input_type manual_input;

   typedef uint16_t _command_type;
  _command_type command;

   typedef uint16_t _output_type;
  _output_type output;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CRUISE_CONTROL_NONE)
  #undef CRUISE_CONTROL_NONE
#endif
#if defined(_WIN32) && defined(CRUISE_CONTROL_CNCL)
  #undef CRUISE_CONTROL_CNCL
#endif
#if defined(_WIN32) && defined(CRUISE_CONTROL_ACC_FURTHER)
  #undef CRUISE_CONTROL_ACC_FURTHER
#endif
#if defined(_WIN32) && defined(CRUISE_CONTROL_ACC_CLOSER)
  #undef CRUISE_CONTROL_ACC_CLOSER
#endif
#if defined(_WIN32) && defined(CRUISE_CONTROL_SET_DEC)
  #undef CRUISE_CONTROL_SET_DEC
#endif
#if defined(_WIN32) && defined(CRUISE_CONTROL_RES_INC)
  #undef CRUISE_CONTROL_RES_INC
#endif
#if defined(_WIN32) && defined(DASH_CONTROL_NONE)
  #undef DASH_CONTROL_NONE
#endif
#if defined(_WIN32) && defined(DASH_CONTROL_OK)
  #undef DASH_CONTROL_OK
#endif
#if defined(_WIN32) && defined(DASH_CONTROL_LEFT)
  #undef DASH_CONTROL_LEFT
#endif
#if defined(_WIN32) && defined(DASH_CONTROL_RIGHT)
  #undef DASH_CONTROL_RIGHT
#endif
#if defined(_WIN32) && defined(DASH_CONTROL_UP)
  #undef DASH_CONTROL_UP
#endif
#if defined(_WIN32) && defined(DASH_CONTROL_DOWN)
  #undef DASH_CONTROL_DOWN
#endif
#if defined(_WIN32) && defined(HEADLIGHTS_OFF)
  #undef HEADLIGHTS_OFF
#endif
#if defined(_WIN32) && defined(HEADLIGHTS_PARKING_ONLY)
  #undef HEADLIGHTS_PARKING_ONLY
#endif
#if defined(_WIN32) && defined(HEADLIGHTS_MANUAL_LOW)
  #undef HEADLIGHTS_MANUAL_LOW
#endif
#if defined(_WIN32) && defined(HEADLIGHTS_MANUAL_HIGH)
  #undef HEADLIGHTS_MANUAL_HIGH
#endif
#if defined(_WIN32) && defined(HEADLIGHTS_AUTO_LOW)
  #undef HEADLIGHTS_AUTO_LOW
#endif
#if defined(_WIN32) && defined(HEADLIGHTS_AUTO_HIGH)
  #undef HEADLIGHTS_AUTO_HIGH
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_NONE)
  #undef MEDIA_CONTROL_NONE
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_VOICE_COMMAND)
  #undef MEDIA_CONTROL_VOICE_COMMAND
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_MUTE)
  #undef MEDIA_CONTROL_MUTE
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_PREV_TRACK_ANSWER)
  #undef MEDIA_CONTROL_PREV_TRACK_ANSWER
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_NEXT_TRACK_HANG_UP)
  #undef MEDIA_CONTROL_NEXT_TRACK_HANG_UP
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_VOL_UP)
  #undef MEDIA_CONTROL_VOL_UP
#endif
#if defined(_WIN32) && defined(MEDIA_CONTROL_VOL_DOWN)
  #undef MEDIA_CONTROL_VOL_DOWN
#endif
#if defined(_WIN32) && defined(SHIFT_PARK)
  #undef SHIFT_PARK
#endif
#if defined(_WIN32) && defined(SHIFT_REVERSE)
  #undef SHIFT_REVERSE
#endif
#if defined(_WIN32) && defined(SHIFT_NEUTRAL)
  #undef SHIFT_NEUTRAL
#endif
#if defined(_WIN32) && defined(SHIFT_HIGH)
  #undef SHIFT_HIGH
#endif
#if defined(_WIN32) && defined(SHIFT_FORWARD)
  #undef SHIFT_FORWARD
#endif
#if defined(_WIN32) && defined(SHIFT_LOW)
  #undef SHIFT_LOW
#endif
#if defined(_WIN32) && defined(SHIFT_BETWEEN_GEARS)
  #undef SHIFT_BETWEEN_GEARS
#endif
#if defined(_WIN32) && defined(SHIFT_ERROR)
  #undef SHIFT_ERROR
#endif
#if defined(_WIN32) && defined(SHIFT_NONE)
  #undef SHIFT_NONE
#endif
#if defined(_WIN32) && defined(TURN_RIGHT)
  #undef TURN_RIGHT
#endif
#if defined(_WIN32) && defined(TURN_NONE)
  #undef TURN_NONE
#endif
#if defined(_WIN32) && defined(TURN_LEFT)
  #undef TURN_LEFT
#endif
#if defined(_WIN32) && defined(TURN_HAZARDS)
  #undef TURN_HAZARDS
#endif
#if defined(_WIN32) && defined(DOOR_NEUTRAL)
  #undef DOOR_NEUTRAL
#endif
#if defined(_WIN32) && defined(DOOR_OPEN)
  #undef DOOR_OPEN
#endif
#if defined(_WIN32) && defined(DOOR_CLOSE)
  #undef DOOR_CLOSE
#endif
#if defined(_WIN32) && defined(WIPERS_OFF)
  #undef WIPERS_OFF
#endif
#if defined(_WIN32) && defined(WIPERS_INT_1)
  #undef WIPERS_INT_1
#endif
#if defined(_WIN32) && defined(WIPERS_INT_2)
  #undef WIPERS_INT_2
#endif
#if defined(_WIN32) && defined(WIPERS_INT_3)
  #undef WIPERS_INT_3
#endif
#if defined(_WIN32) && defined(WIPERS_INT_4)
  #undef WIPERS_INT_4
#endif
#if defined(_WIN32) && defined(WIPERS_INT_5)
  #undef WIPERS_INT_5
#endif
#if defined(_WIN32) && defined(WIPERS_INT_6)
  #undef WIPERS_INT_6
#endif
#if defined(_WIN32) && defined(WIPERS_MEDIUM)
  #undef WIPERS_MEDIUM
#endif
#if defined(_WIN32) && defined(WIPERS_HIGH)
  #undef WIPERS_HIGH
#endif

  enum {
    CRUISE_CONTROL_NONE = 0u,
    CRUISE_CONTROL_CNCL = 1u,
    CRUISE_CONTROL_ACC_FURTHER = 2u,
    CRUISE_CONTROL_ACC_CLOSER = 3u,
    CRUISE_CONTROL_SET_DEC = 4u,
    CRUISE_CONTROL_RES_INC = 5u,
    DASH_CONTROL_NONE = 0u,
    DASH_CONTROL_OK = 1u,
    DASH_CONTROL_LEFT = 2u,
    DASH_CONTROL_RIGHT = 3u,
    DASH_CONTROL_UP = 4u,
    DASH_CONTROL_DOWN = 5u,
    HEADLIGHTS_OFF = 0u,
    HEADLIGHTS_PARKING_ONLY = 1u,
    HEADLIGHTS_MANUAL_LOW = 2u,
    HEADLIGHTS_MANUAL_HIGH = 3u,
    HEADLIGHTS_AUTO_LOW = 4u,
    HEADLIGHTS_AUTO_HIGH = 5u,
    MEDIA_CONTROL_NONE = 0u,
    MEDIA_CONTROL_VOICE_COMMAND = 1u,
    MEDIA_CONTROL_MUTE = 2u,
    MEDIA_CONTROL_PREV_TRACK_ANSWER = 3u,
    MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4u,
    MEDIA_CONTROL_VOL_UP = 5u,
    MEDIA_CONTROL_VOL_DOWN = 6u,
    SHIFT_PARK = 0u,
    SHIFT_REVERSE = 1u,
    SHIFT_NEUTRAL = 2u,
    SHIFT_HIGH = 3u,
    SHIFT_FORWARD = 3u,
    SHIFT_LOW = 4u,
    SHIFT_BETWEEN_GEARS = 5u,
    SHIFT_ERROR = 6u,
    SHIFT_NONE = 7u,
    TURN_RIGHT = 0u,
    TURN_NONE = 1u,
    TURN_LEFT = 2u,
    TURN_HAZARDS = 3u,
    DOOR_NEUTRAL = 0u,
    DOOR_OPEN = 1u,
    DOOR_CLOSE = 2u,
    WIPERS_OFF = 0u,
    WIPERS_INT_1 = 1u,
    WIPERS_INT_2 = 2u,
    WIPERS_INT_3 = 3u,
    WIPERS_INT_4 = 4u,
    WIPERS_INT_5 = 5u,
    WIPERS_INT_6 = 6u,
    WIPERS_MEDIUM = 7u,
    WIPERS_HIGH = 8u,
  };


  typedef boost::shared_ptr< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> const> ConstPtr;

}; // struct SystemRptInt_

typedef ::pacmod_msgs::SystemRptInt_<std::allocator<void> > SystemRptInt;

typedef boost::shared_ptr< ::pacmod_msgs::SystemRptInt > SystemRptIntPtr;
typedef boost::shared_ptr< ::pacmod_msgs::SystemRptInt const> SystemRptIntConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pacmod_msgs::SystemRptInt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pacmod_msgs::SystemRptInt_<ContainerAllocator1> & lhs, const ::pacmod_msgs::SystemRptInt_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.enabled == rhs.enabled &&
    lhs.override_active == rhs.override_active &&
    lhs.command_output_fault == rhs.command_output_fault &&
    lhs.input_output_fault == rhs.input_output_fault &&
    lhs.output_reported_fault == rhs.output_reported_fault &&
    lhs.pacmod_fault == rhs.pacmod_fault &&
    lhs.vehicle_fault == rhs.vehicle_fault &&
    lhs.manual_input == rhs.manual_input &&
    lhs.command == rhs.command &&
    lhs.output == rhs.output;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pacmod_msgs::SystemRptInt_<ContainerAllocator1> & lhs, const ::pacmod_msgs::SystemRptInt_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pacmod_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da718c3df94de6df3ce729dd13078d8a";
  }

  static const char* value(const ::pacmod_msgs::SystemRptInt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda718c3df94de6dfULL;
  static const uint64_t static_value2 = 0x3ce729dd13078d8aULL;
};

template<class ContainerAllocator>
struct DataType< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pacmod_msgs/SystemRptInt";
  }

  static const char* value(const ::pacmod_msgs::SystemRptInt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"bool enabled\n"
"bool override_active\n"
"bool command_output_fault\n"
"bool input_output_fault\n"
"bool output_reported_fault\n"
"bool pacmod_fault\n"
"bool vehicle_fault\n"
"\n"
"uint16 manual_input\n"
"uint16 command\n"
"uint16 output\n"
"\n"
"uint16 CRUISE_CONTROL_NONE = 0\n"
"uint16 CRUISE_CONTROL_CNCL = 1\n"
"uint16 CRUISE_CONTROL_ACC_FURTHER = 2\n"
"uint16 CRUISE_CONTROL_ACC_CLOSER = 3\n"
"uint16 CRUISE_CONTROL_SET_DEC = 4\n"
"uint16 CRUISE_CONTROL_RES_INC = 5\n"
"\n"
"uint16 DASH_CONTROL_NONE = 0\n"
"uint16 DASH_CONTROL_OK = 1\n"
"uint16 DASH_CONTROL_LEFT = 2\n"
"uint16 DASH_CONTROL_RIGHT = 3\n"
"uint16 DASH_CONTROL_UP = 4\n"
"uint16 DASH_CONTROL_DOWN = 5\n"
"\n"
"uint16 HEADLIGHTS_OFF = 0\n"
"uint16 HEADLIGHTS_PARKING_ONLY = 1\n"
"uint16 HEADLIGHTS_MANUAL_LOW = 2\n"
"uint16 HEADLIGHTS_MANUAL_HIGH = 3\n"
"uint16 HEADLIGHTS_AUTO_LOW = 4\n"
"uint16 HEADLIGHTS_AUTO_HIGH = 5\n"
"\n"
"uint16 MEDIA_CONTROL_NONE = 0\n"
"uint16 MEDIA_CONTROL_VOICE_COMMAND = 1\n"
"uint16 MEDIA_CONTROL_MUTE = 2\n"
"uint16 MEDIA_CONTROL_PREV_TRACK_ANSWER = 3\n"
"uint16 MEDIA_CONTROL_NEXT_TRACK_HANG_UP = 4\n"
"uint16 MEDIA_CONTROL_VOL_UP = 5\n"
"uint16 MEDIA_CONTROL_VOL_DOWN = 6\n"
"\n"
"uint16 SHIFT_PARK = 0\n"
"uint16 SHIFT_REVERSE = 1\n"
"uint16 SHIFT_NEUTRAL = 2\n"
"uint16 SHIFT_HIGH = 3\n"
"uint16 SHIFT_FORWARD = 3\n"
"uint16 SHIFT_LOW = 4\n"
"uint16 SHIFT_BETWEEN_GEARS = 5\n"
"uint16 SHIFT_ERROR = 6\n"
"uint16 SHIFT_NONE = 7\n"
"\n"
"uint16 TURN_RIGHT = 0\n"
"uint16 TURN_NONE = 1\n"
"uint16 TURN_LEFT = 2\n"
"uint16 TURN_HAZARDS = 3\n"
"\n"
"uint16 DOOR_NEUTRAL = 0\n"
"uint16 DOOR_OPEN = 1\n"
"uint16 DOOR_CLOSE = 2\n"
"\n"
"uint16 WIPERS_OFF = 0\n"
"uint16 WIPERS_INT_1 = 1\n"
"uint16 WIPERS_INT_2 = 2\n"
"uint16 WIPERS_INT_3 = 3\n"
"uint16 WIPERS_INT_4 = 4\n"
"uint16 WIPERS_INT_5 = 5\n"
"uint16 WIPERS_INT_6 = 6\n"
"uint16 WIPERS_MEDIUM = 7\n"
"uint16 WIPERS_HIGH = 8\n"
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
;
  }

  static const char* value(const ::pacmod_msgs::SystemRptInt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.enabled);
      stream.next(m.override_active);
      stream.next(m.command_output_fault);
      stream.next(m.input_output_fault);
      stream.next(m.output_reported_fault);
      stream.next(m.pacmod_fault);
      stream.next(m.vehicle_fault);
      stream.next(m.manual_input);
      stream.next(m.command);
      stream.next(m.output);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SystemRptInt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pacmod_msgs::SystemRptInt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pacmod_msgs::SystemRptInt_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enabled);
    s << indent << "override_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.override_active);
    s << indent << "command_output_fault: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command_output_fault);
    s << indent << "input_output_fault: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.input_output_fault);
    s << indent << "output_reported_fault: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.output_reported_fault);
    s << indent << "pacmod_fault: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pacmod_fault);
    s << indent << "vehicle_fault: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vehicle_fault);
    s << indent << "manual_input: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.manual_input);
    s << indent << "command: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.command);
    s << indent << "output: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.output);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACMOD_MSGS_MESSAGE_SYSTEMRPTINT_H
