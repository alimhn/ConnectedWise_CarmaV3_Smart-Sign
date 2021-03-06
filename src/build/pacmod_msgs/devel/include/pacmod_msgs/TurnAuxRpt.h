// Generated by gencpp from file pacmod_msgs/TurnAuxRpt.msg
// DO NOT EDIT!


#ifndef PACMOD_MSGS_MESSAGE_TURNAUXRPT_H
#define PACMOD_MSGS_MESSAGE_TURNAUXRPT_H


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
struct TurnAuxRpt_
{
  typedef TurnAuxRpt_<ContainerAllocator> Type;

  TurnAuxRpt_()
    : header()
    , driver_blinker_bulb_on(false)
    , driver_blinker_bulb_on_is_valid(false)
    , passenger_blinker_bulb_on(false)
    , passenger_blinker_bulb_on_is_valid(false)  {
    }
  TurnAuxRpt_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , driver_blinker_bulb_on(false)
    , driver_blinker_bulb_on_is_valid(false)
    , passenger_blinker_bulb_on(false)
    , passenger_blinker_bulb_on_is_valid(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _driver_blinker_bulb_on_type;
  _driver_blinker_bulb_on_type driver_blinker_bulb_on;

   typedef uint8_t _driver_blinker_bulb_on_is_valid_type;
  _driver_blinker_bulb_on_is_valid_type driver_blinker_bulb_on_is_valid;

   typedef uint8_t _passenger_blinker_bulb_on_type;
  _passenger_blinker_bulb_on_type passenger_blinker_bulb_on;

   typedef uint8_t _passenger_blinker_bulb_on_is_valid_type;
  _passenger_blinker_bulb_on_is_valid_type passenger_blinker_bulb_on_is_valid;





  typedef boost::shared_ptr< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> const> ConstPtr;

}; // struct TurnAuxRpt_

typedef ::pacmod_msgs::TurnAuxRpt_<std::allocator<void> > TurnAuxRpt;

typedef boost::shared_ptr< ::pacmod_msgs::TurnAuxRpt > TurnAuxRptPtr;
typedef boost::shared_ptr< ::pacmod_msgs::TurnAuxRpt const> TurnAuxRptConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator1> & lhs, const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.driver_blinker_bulb_on == rhs.driver_blinker_bulb_on &&
    lhs.driver_blinker_bulb_on_is_valid == rhs.driver_blinker_bulb_on_is_valid &&
    lhs.passenger_blinker_bulb_on == rhs.passenger_blinker_bulb_on &&
    lhs.passenger_blinker_bulb_on_is_valid == rhs.passenger_blinker_bulb_on_is_valid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator1> & lhs, const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pacmod_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c04dad80913279be4de094443dc50dca";
  }

  static const char* value(const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc04dad80913279beULL;
  static const uint64_t static_value2 = 0x4de094443dc50dcaULL;
};

template<class ContainerAllocator>
struct DataType< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pacmod_msgs/TurnAuxRpt";
  }

  static const char* value(const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"bool driver_blinker_bulb_on\n"
"bool driver_blinker_bulb_on_is_valid\n"
"bool passenger_blinker_bulb_on\n"
"bool passenger_blinker_bulb_on_is_valid\n"
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

  static const char* value(const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.driver_blinker_bulb_on);
      stream.next(m.driver_blinker_bulb_on_is_valid);
      stream.next(m.passenger_blinker_bulb_on);
      stream.next(m.passenger_blinker_bulb_on_is_valid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TurnAuxRpt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pacmod_msgs::TurnAuxRpt_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "driver_blinker_bulb_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.driver_blinker_bulb_on);
    s << indent << "driver_blinker_bulb_on_is_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.driver_blinker_bulb_on_is_valid);
    s << indent << "passenger_blinker_bulb_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.passenger_blinker_bulb_on);
    s << indent << "passenger_blinker_bulb_on_is_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.passenger_blinker_bulb_on_is_valid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACMOD_MSGS_MESSAGE_TURNAUXRPT_H
