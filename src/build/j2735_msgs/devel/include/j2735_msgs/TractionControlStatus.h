// Generated by gencpp from file j2735_msgs/TractionControlStatus.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_TRACTIONCONTROLSTATUS_H
#define J2735_MSGS_MESSAGE_TRACTIONCONTROLSTATUS_H


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
struct TractionControlStatus_
{
  typedef TractionControlStatus_<ContainerAllocator> Type;

  TractionControlStatus_()
    : traction_control_status(0)  {
    }
  TractionControlStatus_(const ContainerAllocator& _alloc)
    : traction_control_status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _traction_control_status_type;
  _traction_control_status_type traction_control_status;



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


  typedef boost::shared_ptr< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> const> ConstPtr;

}; // struct TractionControlStatus_

typedef ::j2735_msgs::TractionControlStatus_<std::allocator<void> > TractionControlStatus;

typedef boost::shared_ptr< ::j2735_msgs::TractionControlStatus > TractionControlStatusPtr;
typedef boost::shared_ptr< ::j2735_msgs::TractionControlStatus const> TractionControlStatusConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::TractionControlStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::TractionControlStatus_<ContainerAllocator1> & lhs, const ::j2735_msgs::TractionControlStatus_<ContainerAllocator2> & rhs)
{
  return lhs.traction_control_status == rhs.traction_control_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::TractionControlStatus_<ContainerAllocator1> & lhs, const ::j2735_msgs::TractionControlStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8fbf2d5faa10e86d446d2450b8536b24";
  }

  static const char* value(const ::j2735_msgs::TractionControlStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8fbf2d5faa10e86dULL;
  static const uint64_t static_value2 = 0x446d2450b8536b24ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/TractionControlStatus";
  }

  static const char* value(const ::j2735_msgs::TractionControlStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
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
;
  }

  static const char* value(const ::j2735_msgs::TractionControlStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.traction_control_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TractionControlStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::TractionControlStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::TractionControlStatus_<ContainerAllocator>& v)
  {
    s << indent << "traction_control_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.traction_control_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_TRACTIONCONTROLSTATUS_H
