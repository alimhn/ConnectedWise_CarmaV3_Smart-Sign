// Generated by gencpp from file j2735_msgs/OffsetPoint.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_OFFSETPOINT_H
#define J2735_MSGS_MESSAGE_OFFSETPOINT_H


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
struct OffsetPoint_
{
  typedef OffsetPoint_<ContainerAllocator> Type;

  OffsetPoint_()
    : deltax(0)
    , deltay(0)  {
    }
  OffsetPoint_(const ContainerAllocator& _alloc)
    : deltax(0)
    , deltay(0)  {
  (void)_alloc;
    }



   typedef int16_t _deltax_type;
  _deltax_type deltax;

   typedef int16_t _deltay_type;
  _deltay_type deltay;





  typedef boost::shared_ptr< ::j2735_msgs::OffsetPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::OffsetPoint_<ContainerAllocator> const> ConstPtr;

}; // struct OffsetPoint_

typedef ::j2735_msgs::OffsetPoint_<std::allocator<void> > OffsetPoint;

typedef boost::shared_ptr< ::j2735_msgs::OffsetPoint > OffsetPointPtr;
typedef boost::shared_ptr< ::j2735_msgs::OffsetPoint const> OffsetPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::OffsetPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::OffsetPoint_<ContainerAllocator1> & lhs, const ::j2735_msgs::OffsetPoint_<ContainerAllocator2> & rhs)
{
  return lhs.deltax == rhs.deltax &&
    lhs.deltay == rhs.deltay;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::OffsetPoint_<ContainerAllocator1> & lhs, const ::j2735_msgs::OffsetPoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::OffsetPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::OffsetPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::OffsetPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2766869f53581899f2c4aaa8009bd340";
  }

  static const char* value(const ::j2735_msgs::OffsetPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2766869f53581899ULL;
  static const uint64_t static_value2 = 0xf2c4aaa8009bd340ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/OffsetPoint";
  }

  static const char* value(const ::j2735_msgs::OffsetPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# OffsetPoint.msg\n"
"#\n"
"# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# \n"
"# @version 0.1\n"
"#\n"
"# Description\n"
"# ...\n"
"\n"
"#OffsetPoint ::= SEQUENCE\n"
"#{\n"
"#	deltax INTEGER (-32768..32767), -- relative horizontal vertex position in scaled meters\n"
"#	deltay INTEGER (-32768..32767) -- relative vertical vertex position in scaled meters\n"
"#}\n"
"\n"
"#deltax ::= INTEGER (-32768..32767)\n"
"int16 deltax\n"
"\n"
"#deltay ::= INTEGER (-32768..32767)\n"
"int16 deltay\n"
"\n"
"\n"
;
  }

  static const char* value(const ::j2735_msgs::OffsetPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.deltax);
      stream.next(m.deltay);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OffsetPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::OffsetPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::OffsetPoint_<ContainerAllocator>& v)
  {
    s << indent << "deltax: ";
    Printer<int16_t>::stream(s, indent + "  ", v.deltax);
    s << indent << "deltay: ";
    Printer<int16_t>::stream(s, indent + "  ", v.deltay);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_OFFSETPOINT_H