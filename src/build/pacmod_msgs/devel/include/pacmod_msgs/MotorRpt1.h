// Generated by gencpp from file pacmod_msgs/MotorRpt1.msg
// DO NOT EDIT!


#ifndef PACMOD_MSGS_MESSAGE_MOTORRPT1_H
#define PACMOD_MSGS_MESSAGE_MOTORRPT1_H


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
struct MotorRpt1_
{
  typedef MotorRpt1_<ContainerAllocator> Type;

  MotorRpt1_()
    : header()
    , current(0.0)
    , position(0.0)  {
    }
  MotorRpt1_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , current(0.0)
    , position(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _current_type;
  _current_type current;

   typedef double _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> const> ConstPtr;

}; // struct MotorRpt1_

typedef ::pacmod_msgs::MotorRpt1_<std::allocator<void> > MotorRpt1;

typedef boost::shared_ptr< ::pacmod_msgs::MotorRpt1 > MotorRpt1Ptr;
typedef boost::shared_ptr< ::pacmod_msgs::MotorRpt1 const> MotorRpt1ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pacmod_msgs::MotorRpt1_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pacmod_msgs::MotorRpt1_<ContainerAllocator1> & lhs, const ::pacmod_msgs::MotorRpt1_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.current == rhs.current &&
    lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pacmod_msgs::MotorRpt1_<ContainerAllocator1> & lhs, const ::pacmod_msgs::MotorRpt1_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pacmod_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc762724eccc08e26b60b6284460fe26";
  }

  static const char* value(const ::pacmod_msgs::MotorRpt1_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc762724eccc08e2ULL;
  static const uint64_t static_value2 = 0x6b60b6284460fe26ULL;
};

template<class ContainerAllocator>
struct DataType< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pacmod_msgs/MotorRpt1";
  }

  static const char* value(const ::pacmod_msgs::MotorRpt1_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"float64 current         # Motor current in Ampres\n"
"float64 position        # Motor position in Radians\n"
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

  static const char* value(const ::pacmod_msgs::MotorRpt1_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.current);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorRpt1_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pacmod_msgs::MotorRpt1_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pacmod_msgs::MotorRpt1_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "current: ";
    Printer<double>::stream(s, indent + "  ", v.current);
    s << indent << "position: ";
    Printer<double>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACMOD_MSGS_MESSAGE_MOTORRPT1_H
