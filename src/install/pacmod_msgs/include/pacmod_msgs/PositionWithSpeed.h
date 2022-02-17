// Generated by gencpp from file pacmod_msgs/PositionWithSpeed.msg
// DO NOT EDIT!


#ifndef PACMOD_MSGS_MESSAGE_POSITIONWITHSPEED_H
#define PACMOD_MSGS_MESSAGE_POSITIONWITHSPEED_H


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
struct PositionWithSpeed_
{
  typedef PositionWithSpeed_<ContainerAllocator> Type;

  PositionWithSpeed_()
    : header()
    , angular_position(0.0)
    , angular_velocity_limit(0.0)  {
    }
  PositionWithSpeed_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , angular_position(0.0)
    , angular_velocity_limit(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _angular_position_type;
  _angular_position_type angular_position;

   typedef double _angular_velocity_limit_type;
  _angular_velocity_limit_type angular_velocity_limit;





  typedef boost::shared_ptr< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> const> ConstPtr;

}; // struct PositionWithSpeed_

typedef ::pacmod_msgs::PositionWithSpeed_<std::allocator<void> > PositionWithSpeed;

typedef boost::shared_ptr< ::pacmod_msgs::PositionWithSpeed > PositionWithSpeedPtr;
typedef boost::shared_ptr< ::pacmod_msgs::PositionWithSpeed const> PositionWithSpeedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator1> & lhs, const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.angular_position == rhs.angular_position &&
    lhs.angular_velocity_limit == rhs.angular_velocity_limit;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator1> & lhs, const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pacmod_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7e96a8c8cbc8234d4d2c87880ddb7cfe";
  }

  static const char* value(const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7e96a8c8cbc8234dULL;
  static const uint64_t static_value2 = 0x4d2c87880ddb7cfeULL;
};

template<class ContainerAllocator>
struct DataType< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pacmod_msgs/PositionWithSpeed";
  }

  static const char* value(const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"float64 angular_position                # The desired rotational position of the motor shaft about it's z axis in Radians\n"
"float64 angular_velocity_limit          # The desired speed limit to acheive the desired position in Radians/second (z axis)\n"
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

  static const char* value(const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.angular_position);
      stream.next(m.angular_velocity_limit);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PositionWithSpeed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pacmod_msgs::PositionWithSpeed_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "angular_position: ";
    Printer<double>::stream(s, indent + "  ", v.angular_position);
    s << indent << "angular_velocity_limit: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity_limit);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACMOD_MSGS_MESSAGE_POSITIONWITHSPEED_H