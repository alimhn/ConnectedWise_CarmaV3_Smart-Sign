// Generated by gencpp from file j2735_msgs/SpeedLimitList.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_SPEEDLIMITLIST_H
#define J2735_MSGS_MESSAGE_SPEEDLIMITLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <j2735_msgs/RegulatorySpeedLimit.h>

namespace j2735_msgs
{
template <class ContainerAllocator>
struct SpeedLimitList_
{
  typedef SpeedLimitList_<ContainerAllocator> Type;

  SpeedLimitList_()
    : speed_limits()  {
    }
  SpeedLimitList_(const ContainerAllocator& _alloc)
    : speed_limits(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >::other >  _speed_limits_type;
  _speed_limits_type speed_limits;





  typedef boost::shared_ptr< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> const> ConstPtr;

}; // struct SpeedLimitList_

typedef ::j2735_msgs::SpeedLimitList_<std::allocator<void> > SpeedLimitList;

typedef boost::shared_ptr< ::j2735_msgs::SpeedLimitList > SpeedLimitListPtr;
typedef boost::shared_ptr< ::j2735_msgs::SpeedLimitList const> SpeedLimitListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::SpeedLimitList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::SpeedLimitList_<ContainerAllocator1> & lhs, const ::j2735_msgs::SpeedLimitList_<ContainerAllocator2> & rhs)
{
  return lhs.speed_limits == rhs.speed_limits;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::SpeedLimitList_<ContainerAllocator1> & lhs, const ::j2735_msgs::SpeedLimitList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aa3a8bdd3d4567c7dd66a46382a0f4b7";
  }

  static const char* value(const ::j2735_msgs::SpeedLimitList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaa3a8bdd3d4567c7ULL;
  static const uint64_t static_value2 = 0xdd66a46382a0f4b7ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/SpeedLimitList";
  }

  static const char* value(const ::j2735_msgs::SpeedLimitList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# SpeedLimitList.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit\n"
"\n"
"#A list of RegulatorySpeedLimit\n"
"j2735_msgs/RegulatorySpeedLimit[] speed_limits\n"
"================================================================================\n"
"MSG: j2735_msgs/RegulatorySpeedLimit\n"
"#\n"
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

  static const char* value(const ::j2735_msgs::SpeedLimitList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed_limits);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeedLimitList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::SpeedLimitList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::SpeedLimitList_<ContainerAllocator>& v)
  {
    s << indent << "speed_limits[]" << std::endl;
    for (size_t i = 0; i < v.speed_limits.size(); ++i)
    {
      s << indent << "  speed_limits[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::j2735_msgs::RegulatorySpeedLimit_<ContainerAllocator> >::stream(s, indent + "    ", v.speed_limits[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_SPEEDLIMITLIST_H