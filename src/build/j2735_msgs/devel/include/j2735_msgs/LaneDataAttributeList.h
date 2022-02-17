// Generated by gencpp from file j2735_msgs/LaneDataAttributeList.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_LANEDATAATTRIBUTELIST_H
#define J2735_MSGS_MESSAGE_LANEDATAATTRIBUTELIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <j2735_msgs/LaneDataAttribute.h>

namespace j2735_msgs
{
template <class ContainerAllocator>
struct LaneDataAttributeList_
{
  typedef LaneDataAttributeList_<ContainerAllocator> Type;

  LaneDataAttributeList_()
    : lane_attribute_list()  {
    }
  LaneDataAttributeList_(const ContainerAllocator& _alloc)
    : lane_attribute_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::j2735_msgs::LaneDataAttribute_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::j2735_msgs::LaneDataAttribute_<ContainerAllocator> >::other >  _lane_attribute_list_type;
  _lane_attribute_list_type lane_attribute_list;





  typedef boost::shared_ptr< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> const> ConstPtr;

}; // struct LaneDataAttributeList_

typedef ::j2735_msgs::LaneDataAttributeList_<std::allocator<void> > LaneDataAttributeList;

typedef boost::shared_ptr< ::j2735_msgs::LaneDataAttributeList > LaneDataAttributeListPtr;
typedef boost::shared_ptr< ::j2735_msgs::LaneDataAttributeList const> LaneDataAttributeListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator1> & lhs, const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator2> & rhs)
{
  return lhs.lane_attribute_list == rhs.lane_attribute_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator1> & lhs, const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c9ddb9bab81288328635d91c5222ccb";
  }

  static const char* value(const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c9ddb9bab812883ULL;
  static const uint64_t static_value2 = 0x28635d91c5222ccbULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/LaneDataAttributeList";
  }

  static const char* value(const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# LaneDataAttributeList.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneDataAttributeList data frame consists of a list of LaneDataAttribute entries.\n"
"#\n"
"# LaneDataAttributeList ::= SEQUENCE (SIZE(1..8)) OF LaneDataAttribute\n"
"\n"
"j2735_msgs/LaneDataAttribute[] lane_attribute_list\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneDataAttribute\n"
"\n"
"\n"
"# The data frame DF_LaneDataAttribute is used to relate an attribute and a control value at a node point or along a\n"
"# lane segment from an enumerated list of defined choices. It is then followed by a defined data value associated with it and\n"
"# which is defined elsewhere in this standard.\n"
"\n"
"\n"
"# LaneDataAttribute ::= CHOICE {\n"
"# -- Segment attribute types and the data needed for each\n"
"# pathEndPointAngle DeltaAngle,\n"
"# -- adjusts final point/width slant\n"
"# -- of the lane to align with the stop line\n"
"# laneCrownPointCenter RoadwayCrownAngle,\n"
"# -- sets the canter of the road bed\n"
"# -- from centerline point\n"
"# laneCrownPointLeft RoadwayCrownAngle,\n"
"# -- sets the canter of the road bed\n"
"# -- from left edge\n"
"# laneCrownPointRight RoadwayCrownAngle,\n"
"# -- sets the canter of the road bed\n"
"# -- from right edge\n"
"# laneAngle MergeDivergeNodeAngle,\n"
"# -- the angle or direction of another lane\n"
"# -- this is required to support Japan style\n"
"# -- when a merge point angle is required\n"
"# speedLimits SpeedLimitList,\n"
"# -- Reference regulatory speed limits\n"
"# -- used by all segments\n"
"# -- Add others as needed, in regional space\n"
"# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-LaneDataAttribute}},\n"
"# ...\n"
"# }\n"
"\n"
"uint8 choice\n"
"uint8 PATH_END_POINT_ANGLE=0\n"
"uint8 LANE_CROWN_POINT_CENTER=1\n"
"uint8 LANE_CROWN_POINT_LEFT=2\n"
"uint8 LANE_CROWN_POINT_RIGHT=3\n"
"uint8 LANE_ANGLE=4\n"
"uint8 SPEED_LIMITS=5\n"
"\n"
"# DeltaAngle ::= INTEGER (-150..150)\n"
"# -- With an angle range from\n"
"# -- negative 150 to positive 150\n"
"# -- in one degree steps where zero is directly\n"
"# -- along the axis or the lane center line as defined by the\n"
"# -- two closest points\n"
"#\n"
"# The DeltaAngle data element provides the final angle used in the last point of the lane path.\n"
"# Used to \"cant\" the stop line of the lane.\n"
"\n"
"int16 path_end_point_angle\n"
"\n"
"# RoadwayCrownAngle ::= INTEGER (-128..127)\n"
"# -- In LSB units of 0.3 degrees of angle\n"
"# -- over a range of -38.1 to + 38.1 degrees\n"
"# -- The value -128 shall be used for unknown\n"
"# -- The value zero shall be used for angles\n"
"# -- which are between -0.15 and +0.15\n"
"#\n"
"# The RoadwayCrownAngle data element relates the gross tangential angle of the roadway surface with respect to\n"
"# the local horizontal axis and is measured at the indicated part of the lane.\n"
"\n"
"int8 lane_crown_point_center\n"
"int8 lane_crown_point_right\n"
"int8 lane_crown_point_left\n"
"\n"
"# MergeDivergeNodeAngle ::= INTEGER (-180..180)\n"
"# -- In units of 1.5 degrees from north\n"
"# -- the value -180 shall be used to represent\n"
"# -- data is not available or unknown\n"
"int16 lane_angle\n"
"\n"
"# SpeedLimitList ::= SEQUENCE (SIZE(1..9)) OF RegulatorySpeedLimit\n"
"j2735_msgs/SpeedLimitList speed_limits\n"
"\n"
"# regional #TODO: RegionalExtensions are not yet implemented in asn1c\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/SpeedLimitList\n"
"#\n"
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

  static const char* value(const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lane_attribute_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaneDataAttributeList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::LaneDataAttributeList_<ContainerAllocator>& v)
  {
    s << indent << "lane_attribute_list[]" << std::endl;
    for (size_t i = 0; i < v.lane_attribute_list.size(); ++i)
    {
      s << indent << "  lane_attribute_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::j2735_msgs::LaneDataAttribute_<ContainerAllocator> >::stream(s, indent + "    ", v.lane_attribute_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_LANEDATAATTRIBUTELIST_H
