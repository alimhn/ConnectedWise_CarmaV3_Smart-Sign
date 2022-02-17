// Generated by gencpp from file j2735_msgs/TrafficControlPackage.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_TRAFFICCONTROLPACKAGE_H
#define J2735_MSGS_MESSAGE_TRAFFICCONTROLPACKAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <j2735_msgs/Id128b.h>

namespace j2735_msgs
{
template <class ContainerAllocator>
struct TrafficControlPackage_
{
  typedef TrafficControlPackage_<ContainerAllocator> Type;

  TrafficControlPackage_()
    : label()
    , label_exists(false)
    , tcids()  {
    }
  TrafficControlPackage_(const ContainerAllocator& _alloc)
    : label(_alloc)
    , label_exists(false)
    , tcids(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _label_type;
  _label_type label;

   typedef uint8_t _label_exists_type;
  _label_exists_type label_exists;

   typedef std::vector< ::j2735_msgs::Id128b_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::j2735_msgs::Id128b_<ContainerAllocator> >::other >  _tcids_type;
  _tcids_type tcids;





  typedef boost::shared_ptr< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> const> ConstPtr;

}; // struct TrafficControlPackage_

typedef ::j2735_msgs::TrafficControlPackage_<std::allocator<void> > TrafficControlPackage;

typedef boost::shared_ptr< ::j2735_msgs::TrafficControlPackage > TrafficControlPackagePtr;
typedef boost::shared_ptr< ::j2735_msgs::TrafficControlPackage const> TrafficControlPackageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator1> & lhs, const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator2> & rhs)
{
  return lhs.label == rhs.label &&
    lhs.label_exists == rhs.label_exists &&
    lhs.tcids == rhs.tcids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator1> & lhs, const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd983631799aa912d10b4a250bae5780";
  }

  static const char* value(const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd983631799aa912ULL;
  static const uint64_t static_value2 = 0xd10b4a250bae5780ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/TrafficControlPackage";
  }

  static const char* value(const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# TrafficControlPackage.msg\n"
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
"# TrafficControlPackage ::= SEQUENCE\n"
"# {\n"
"# 	label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.\n"
"# 	tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids\n"
"# }\n"
"\n"
"# label IA5String (SIZE(1..63)) OPTIONAL, -- label such as incident, workzone, etc.\n"
"string label\n"
"\n"
"bool label_exists\n"
"\n"
"# tcids SEQUENCE (SIZE(1..63)) OF Id128b -- related traffic control ids\n"
"j2735_msgs/Id128b[] tcids\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/Id128b\n"
"#\n"
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

  static const char* value(const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.label);
      stream.next(m.label_exists);
      stream.next(m.tcids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrafficControlPackage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::TrafficControlPackage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::TrafficControlPackage_<ContainerAllocator>& v)
  {
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.label);
    s << indent << "label_exists: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.label_exists);
    s << indent << "tcids[]" << std::endl;
    for (size_t i = 0; i < v.tcids.size(); ++i)
    {
      s << indent << "  tcids[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::j2735_msgs::Id128b_<ContainerAllocator> >::stream(s, indent + "    ", v.tcids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_TRAFFICCONTROLPACKAGE_H
