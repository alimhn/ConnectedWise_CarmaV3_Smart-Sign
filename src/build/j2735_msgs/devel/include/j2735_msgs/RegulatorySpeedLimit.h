// Generated by gencpp from file j2735_msgs/RegulatorySpeedLimit.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_REGULATORYSPEEDLIMIT_H
#define J2735_MSGS_MESSAGE_REGULATORYSPEEDLIMIT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <j2735_msgs/SpeedLimitType.h>

namespace j2735_msgs
{
template <class ContainerAllocator>
struct RegulatorySpeedLimit_
{
  typedef RegulatorySpeedLimit_<ContainerAllocator> Type;

  RegulatorySpeedLimit_()
    : type()
    , speed(0.0)  {
    }
  RegulatorySpeedLimit_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef  ::j2735_msgs::SpeedLimitType_<ContainerAllocator>  _type_type;
  _type_type type;

   typedef double _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> const> ConstPtr;

}; // struct RegulatorySpeedLimit_

typedef ::j2735_msgs::RegulatorySpeedLimit_<std::allocator<void> > RegulatorySpeedLimit;

typedef boost::shared_ptr< ::j2735_msgs::RegulatorySpeedLimit > RegulatorySpeedLimitPtr;
typedef boost::shared_ptr< ::j2735_msgs::RegulatorySpeedLimit const> RegulatorySpeedLimitConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator1> & lhs, const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator1> & lhs, const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cef067aea5329792cd32d5c233033d98";
  }

  static const char* value(const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcef067aea5329792ULL;
  static const uint64_t static_value2 = 0xcd32d5c233033d98ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/RegulatorySpeedLimit";
  }

  static const char* value(const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# RegulatorySpeedLimit.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"# Used to convey a regulatory speed about a lane, lanes, or roadway segment.\n"
"\n"
"# RegulatorySpeedLimit ::= SEQUENCE {\n"
"# type SpeedLimitType,\n"
"# -- The type of regulatory speed which follows\n"
"j2735_msgs/SpeedLimitType type\n"
"\n"
"# speed Velocity\n"
"# Velocity ::= INTEGER (0..8191) -- Units of 0.02 m/s\n"
"#-- The value 8191 indicates that velocity is unavailable\n"
"float64 speed\n"
"================================================================================\n"
"MSG: j2735_msgs/SpeedLimitType\n"
"# SpeedLimitType.msg\n"
"#\n"
"# The SpeedLimitType data element relates the type of speed limit to which a given speed refers.\n"
"#\n"
"# SpeedLimitType ::= ENUMERATED {\n"
"#\n"
"# unknown, -- Speed limit type not available\n"
"# maxSpeedInSchoolZone, -- Only sent when the limit is active\n"
"# maxSpeedInSchoolZoneWhenChildrenArePresent, -- Sent at any time\n"
"# maxSpeedInConstructionZone, -- Used for work zones, incident zones, etc. where a reduced speed is present\n"
"#\n"
"# vehicleMinSpeed,\n"
"# vehicleMaxSpeed, -- Regulatory speed limit for general traffic\n"
"# vehicleNightMaxSpeed,\n"
"#\n"
"# truckMinSpeed,\n"
"# truckMaxSpeed,\n"
"# truckNightMaxSpeed,\n"
"#\n"
"# vehiclesWithTrailersMinSpeed,\n"
"# vehiclesWithTrailersMaxSpeed,\n"
"# vehiclesWithTrailersNightMaxSpeed,\n"
"# ...\n"
"# }\n"
"\n"
"uint8 speed_limit_type\n"
"\n"
"uint8 UNKNOWN=0\n"
"uint8 MAXSPEEDINSCHOOLZONE=1\n"
"uint8 MAXSPEEDINSCHOOLZONEWHENCHILDRENAREPRESENT=2\n"
"uint8 MAXSPEEDINCONSTRUCTIONZONE=3\n"
"uint8 VEHICLEMINSPEED=4\n"
"uint8 VEHICLEMAXSPEED=5\n"
"uint8 VEHICLENIGHTMAXSPEED=6\n"
"uint8 TRUCKMINSPEED=7\n"
"uint8 TRUCKMAXSPEED=8\n"
"uint8 TRUCKNIGHTMAXSPEED=9\n"
"uint8 VEHICLESWITHTRAILERSMINSPEED=10\n"
"uint8 VEHICLESWITHTRAILERSMAXSPEED=11\n"
"uint8 VEHICLESWITHTRAILERSNIGHTMAXSPEED=12\n"
;
  }

  static const char* value(const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RegulatorySpeedLimit_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    s << std::endl;
    Printer< ::j2735_msgs::SpeedLimitType_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_REGULATORYSPEEDLIMIT_H
