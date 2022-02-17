// Generated by gencpp from file autoware_lanelet2_msgs/MapBin.msg
// DO NOT EDIT!


#ifndef AUTOWARE_LANELET2_MSGS_MESSAGE_MAPBIN_H
#define AUTOWARE_LANELET2_MSGS_MESSAGE_MAPBIN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autoware_lanelet2_msgs
{
template <class ContainerAllocator>
struct MapBin_
{
  typedef MapBin_<ContainerAllocator> Type;

  MapBin_()
    : header()
    , format_version()
    , map_version(0)
    , data()
    , route_id()
    , route_version(0)
    , invalidates_route(false)  {
    }
  MapBin_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , format_version(_alloc)
    , map_version(0)
    , data(_alloc)
    , route_id(_alloc)
    , route_version(0)
    , invalidates_route(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _format_version_type;
  _format_version_type format_version;

   typedef uint32_t _map_version_type;
  _map_version_type map_version;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _data_type;
  _data_type data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _route_id_type;
  _route_id_type route_id;

   typedef uint32_t _route_version_type;
  _route_version_type route_version;

   typedef uint8_t _invalidates_route_type;
  _invalidates_route_type invalidates_route;





  typedef boost::shared_ptr< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> const> ConstPtr;

}; // struct MapBin_

typedef ::autoware_lanelet2_msgs::MapBin_<std::allocator<void> > MapBin;

typedef boost::shared_ptr< ::autoware_lanelet2_msgs::MapBin > MapBinPtr;
typedef boost::shared_ptr< ::autoware_lanelet2_msgs::MapBin const> MapBinConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator1> & lhs, const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.format_version == rhs.format_version &&
    lhs.map_version == rhs.map_version &&
    lhs.data == rhs.data &&
    lhs.route_id == rhs.route_id &&
    lhs.route_version == rhs.route_version &&
    lhs.invalidates_route == rhs.invalidates_route;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator1> & lhs, const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_lanelet2_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "813b1a5423e38dc653e27643849dfed8";
  }

  static const char* value(const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x813b1a5423e38dc6ULL;
  static const uint64_t static_value2 = 0x53e27643849dfed8ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_lanelet2_msgs/MapBin";
  }

  static const char* value(const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This contains the lanelet map in binary format.\n"
"\n"
"# Timestamp and frame_id of the map\n"
"Header header\n"
"\n"
"# version of map format. keep this as empty string if unnecessary\n"
"string format_version\n"
"\n"
"# version of map version. monotonically increasing integer starting at 1\n"
"uint32 map_version\n"
"\n"
"# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library\n"
"int8[] data\n"
"\n"
"# The route filename\n"
"string route_id\n"
"\n"
"# The version of current route, monotonically increasing integer starting at 1\n"
"uint32 route_version\n"
"\n"
"# route flag to set the route invalidation status\n"
"bool invalidates_route\n"
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

  static const char* value(const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.format_version);
      stream.next(m.map_version);
      stream.next(m.data);
      stream.next(m.route_id);
      stream.next(m.route_version);
      stream.next(m.invalidates_route);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapBin_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_lanelet2_msgs::MapBin_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "format_version: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.format_version);
    s << indent << "map_version: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.map_version);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "route_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.route_id);
    s << indent << "route_version: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.route_version);
    s << indent << "invalidates_route: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.invalidates_route);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_LANELET2_MSGS_MESSAGE_MAPBIN_H