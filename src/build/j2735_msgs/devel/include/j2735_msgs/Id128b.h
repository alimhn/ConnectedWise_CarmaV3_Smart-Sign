// Generated by gencpp from file j2735_msgs/Id128b.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_ID128B_H
#define J2735_MSGS_MESSAGE_ID128B_H


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
struct Id128b_
{
  typedef Id128b_<ContainerAllocator> Type;

  Id128b_()
    : id()  {
      id.assign(0);
  }
  Id128b_(const ContainerAllocator& _alloc)
    : id()  {
  (void)_alloc;
      id.assign(0);
  }



   typedef boost::array<uint8_t, 16>  _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::j2735_msgs::Id128b_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::Id128b_<ContainerAllocator> const> ConstPtr;

}; // struct Id128b_

typedef ::j2735_msgs::Id128b_<std::allocator<void> > Id128b;

typedef boost::shared_ptr< ::j2735_msgs::Id128b > Id128bPtr;
typedef boost::shared_ptr< ::j2735_msgs::Id128b const> Id128bConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::Id128b_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::Id128b_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::Id128b_<ContainerAllocator1> & lhs, const ::j2735_msgs::Id128b_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::Id128b_<ContainerAllocator1> & lhs, const ::j2735_msgs::Id128b_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::Id128b_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::Id128b_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::Id128b_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::Id128b_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::Id128b_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::Id128b_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::Id128b_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7fe329a75c903e74f51ef1477e8e6b44";
  }

  static const char* value(const ::j2735_msgs::Id128b_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7fe329a75c903e74ULL;
  static const uint64_t static_value2 = 0xf51ef1477e8e6b44ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::Id128b_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/Id128b";
  }

  static const char* value(const ::j2735_msgs::Id128b_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::Id128b_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Id128b.msg\n"
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
"# Id128b ::= OCTET STRING (SIZE(16)) -- 16-byte binary value typicially used for unique ids\n"
"\n"
"uint8[16] id\n"
;
  }

  static const char* value(const ::j2735_msgs::Id128b_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::Id128b_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Id128b_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::Id128b_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::Id128b_<ContainerAllocator>& v)
  {
    s << indent << "id[]" << std::endl;
    for (size_t i = 0; i < v.id.size(); ++i)
    {
      s << indent << "  id[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.id[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_ID128B_H