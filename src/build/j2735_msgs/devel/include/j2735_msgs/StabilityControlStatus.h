// Generated by gencpp from file j2735_msgs/StabilityControlStatus.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_STABILITYCONTROLSTATUS_H
#define J2735_MSGS_MESSAGE_STABILITYCONTROLSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace j2735_msgs
{
template <class ContainerAllocator>
struct StabilityControlStatus_
{
  typedef StabilityControlStatus_<ContainerAllocator> Type;

  StabilityControlStatus_()
    : stability_control_status(0)  {
    }
  StabilityControlStatus_(const ContainerAllocator& _alloc)
    : stability_control_status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _stability_control_status_type;
  _stability_control_status_type stability_control_status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNAVAILABLE)
  #undef UNAVAILABLE
#endif
#if defined(_WIN32) && defined(OFF)
  #undef OFF
#endif
#if defined(_WIN32) && defined(ON)
  #undef ON
#endif
#if defined(_WIN32) && defined(ENGAGED)
  #undef ENGAGED
#endif

  enum {
    UNAVAILABLE = 0u,
    OFF = 1u,
    ON = 2u,
    ENGAGED = 3u,
  };


  typedef boost::shared_ptr< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> const> ConstPtr;

}; // struct StabilityControlStatus_

typedef ::j2735_msgs::StabilityControlStatus_<std::allocator<void> > StabilityControlStatus;

typedef boost::shared_ptr< ::j2735_msgs::StabilityControlStatus > StabilityControlStatusPtr;
typedef boost::shared_ptr< ::j2735_msgs::StabilityControlStatus const> StabilityControlStatusConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator1> & lhs, const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator2> & rhs)
{
  return lhs.stability_control_status == rhs.stability_control_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator1> & lhs, const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "350e65c5b8f0b2157c2ddfc4d46c5a68";
  }

  static const char* value(const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x350e65c5b8f0b215ULL;
  static const uint64_t static_value2 = 0x7c2ddfc4d46c5a68ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/StabilityControlStatus";
  }

  static const char* value(const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
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
;
  }

  static const char* value(const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stability_control_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StabilityControlStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::StabilityControlStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::StabilityControlStatus_<ContainerAllocator>& v)
  {
    s << indent << "stability_control_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stability_control_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_STABILITYCONTROLSTATUS_H
