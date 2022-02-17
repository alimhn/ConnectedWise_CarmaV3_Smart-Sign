// Generated by gencpp from file autoware_config_msgs/ConfigSSD.msg
// DO NOT EDIT!


#ifndef AUTOWARE_CONFIG_MSGS_MESSAGE_CONFIGSSD_H
#define AUTOWARE_CONFIG_MSGS_MESSAGE_CONFIGSSD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autoware_config_msgs
{
template <class ContainerAllocator>
struct ConfigSSD_
{
  typedef ConfigSSD_<ContainerAllocator> Type;

  ConfigSSD_()
    : header()
    , score_threshold(0.0)  {
    }
  ConfigSSD_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , score_threshold(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _score_threshold_type;
  _score_threshold_type score_threshold;





  typedef boost::shared_ptr< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigSSD_

typedef ::autoware_config_msgs::ConfigSSD_<std::allocator<void> > ConfigSSD;

typedef boost::shared_ptr< ::autoware_config_msgs::ConfigSSD > ConfigSSDPtr;
typedef boost::shared_ptr< ::autoware_config_msgs::ConfigSSD const> ConfigSSDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator1> & lhs, const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.score_threshold == rhs.score_threshold;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator1> & lhs, const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_config_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c20d382dda6d21d4020d239679f6abd";
  }

  static const char* value(const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c20d382dda6d21dULL;
  static const uint64_t static_value2 = 0x4020d239679f6abdULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_config_msgs/ConfigSSD";
  }

  static const char* value(const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header  header\n"
"float32 score_threshold #minimum score required to keep the detection [0.0, 1.0] (default 0.6)\n"
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

  static const char* value(const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.score_threshold);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigSSD_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_config_msgs::ConfigSSD_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_config_msgs::ConfigSSD_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "score_threshold: ";
    Printer<float>::stream(s, indent + "  ", v.score_threshold);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_CONFIG_MSGS_MESSAGE_CONFIGSSD_H
