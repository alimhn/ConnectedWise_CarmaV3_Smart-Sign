// Generated by gencpp from file j2735_msgs/NodeXY28b.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_NODEXY28B_H
#define J2735_MSGS_MESSAGE_NODEXY28B_H


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
struct NodeXY28b_
{
  typedef NodeXY28b_<ContainerAllocator> Type;

  NodeXY28b_()
    : x(0.0)
    , y(0.0)  {
    }
  NodeXY28b_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::j2735_msgs::NodeXY28b_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::NodeXY28b_<ContainerAllocator> const> ConstPtr;

}; // struct NodeXY28b_

typedef ::j2735_msgs::NodeXY28b_<std::allocator<void> > NodeXY28b;

typedef boost::shared_ptr< ::j2735_msgs::NodeXY28b > NodeXY28bPtr;
typedef boost::shared_ptr< ::j2735_msgs::NodeXY28b const> NodeXY28bConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::NodeXY28b_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::NodeXY28b_<ContainerAllocator1> & lhs, const ::j2735_msgs::NodeXY28b_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::NodeXY28b_<ContainerAllocator1> & lhs, const ::j2735_msgs::NodeXY28b_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::NodeXY28b_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::NodeXY28b_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::NodeXY28b_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const ::j2735_msgs::NodeXY28b_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff8d7d66dd3e4b73ULL;
  static const uint64_t static_value2 = 0x1ef14a45d38888b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/NodeXY28b";
  }

  static const char* value(const ::j2735_msgs::NodeXY28b_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# NodeXY28b.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# A 28-bit node type with offset values from the last point in X and Y.\n"
"\n"
"# Node-XY-28b ::= SEQUENCE {\n"
"# x Offset-B14,\n"
"# y Offset-B14\n"
"# }\n"
"\n"
"# A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of\n"
"# reference, offset is positive to the East (X) and to the North (Y) directions.\n"
"# Offset-B14 ::= INTEGER (-8192..8191)\n"
"# -- a range of +- 81.91 meters\n"
"\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::j2735_msgs::NodeXY28b_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NodeXY28b_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::NodeXY28b_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::NodeXY28b_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_NODEXY28B_H
