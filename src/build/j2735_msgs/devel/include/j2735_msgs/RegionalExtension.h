// Generated by gencpp from file j2735_msgs/RegionalExtension.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_REGIONALEXTENSION_H
#define J2735_MSGS_MESSAGE_REGIONALEXTENSION_H


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
struct RegionalExtension_
{
  typedef RegionalExtension_<ContainerAllocator> Type;

  RegionalExtension_()
    {
    }
  RegionalExtension_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::j2735_msgs::RegionalExtension_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::RegionalExtension_<ContainerAllocator> const> ConstPtr;

}; // struct RegionalExtension_

typedef ::j2735_msgs::RegionalExtension_<std::allocator<void> > RegionalExtension;

typedef boost::shared_ptr< ::j2735_msgs::RegionalExtension > RegionalExtensionPtr;
typedef boost::shared_ptr< ::j2735_msgs::RegionalExtension const> RegionalExtensionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::RegionalExtension_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::RegionalExtension_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::RegionalExtension_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::RegionalExtension_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::j2735_msgs::RegionalExtension_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/RegionalExtension";
  }

  static const char* value(const ::j2735_msgs::RegionalExtension_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# RegionalExtension.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"#\n"
"# The formal definition used by each regional extension point follows the style of a unique indexing\n"
"# integer and a type definition bound into a set.\n"
"\n"
"# RegionalExtension {REG-EXT-ID-AND-TYPE : Set} ::= SEQUENCE {\n"
"# regionId REG-EXT-ID-AND-TYPE.&id( {Set} ),\n"
"# regExtValue REG-EXT-ID-AND-TYPE.&Type( {Set} {@regionId} )\n"
"# }\n"
"\n"
"# regional #TODO: RegionalExtensions are not yet implemented in asn1c\n"
;
  }

  static const char* value(const ::j2735_msgs::RegionalExtension_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RegionalExtension_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::RegionalExtension_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::j2735_msgs::RegionalExtension_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_REGIONALEXTENSION_H
