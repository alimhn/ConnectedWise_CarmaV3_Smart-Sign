// Generated by gencpp from file j2735_msgs/LaneAttributesCrosswalk.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_LANEATTRIBUTESCROSSWALK_H
#define J2735_MSGS_MESSAGE_LANEATTRIBUTESCROSSWALK_H


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
struct LaneAttributesCrosswalk_
{
  typedef LaneAttributesCrosswalk_<ContainerAllocator> Type;

  LaneAttributesCrosswalk_()
    : lane_attributes_crosswalk(0)  {
    }
  LaneAttributesCrosswalk_(const ContainerAllocator& _alloc)
    : lane_attributes_crosswalk(0)  {
  (void)_alloc;
    }



   typedef uint16_t _lane_attributes_crosswalk_type;
  _lane_attributes_crosswalk_type lane_attributes_crosswalk;





  typedef boost::shared_ptr< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> const> ConstPtr;

}; // struct LaneAttributesCrosswalk_

typedef ::j2735_msgs::LaneAttributesCrosswalk_<std::allocator<void> > LaneAttributesCrosswalk;

typedef boost::shared_ptr< ::j2735_msgs::LaneAttributesCrosswalk > LaneAttributesCrosswalkPtr;
typedef boost::shared_ptr< ::j2735_msgs::LaneAttributesCrosswalk const> LaneAttributesCrosswalkConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator1> & lhs, const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator2> & rhs)
{
  return lhs.lane_attributes_crosswalk == rhs.lane_attributes_crosswalk;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator1> & lhs, const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e5120bfe121312032ad85867f1265ce1";
  }

  static const char* value(const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe5120bfe12131203ULL;
  static const uint64_t static_value2 = 0x2ad85867f1265ce1ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/LaneAttributesCrosswalk";
  }

  static const char* value(const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# LaneAttributesCrosswalk.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"\n"
"# LaneAttributes-Crosswalk ::= BIT STRING {\n"
"# 	-- With bits as defined:\n"
"# 	-- MUTCD provides no suitable \"types\" to use here\n"
"# 	crosswalkRevocableLane (0),\n"
"# 		-- this lane may be activated or not based\n"
"# 		-- on the current SPAT message contents\n"
"# 		-- if not asserted, the lane is ALWAYS present\n"
"# 	bicyleUseAllowed (1),\n"
"# 		-- The path allows bicycle traffic,\n"
"# 		-- if not set, this mode is prohibited\n"
"# 	isXwalkFlyOverLane (2),\n"
"# 		-- path of lane is not at grade\n"
"# 	fixedCycleTime (3),\n"
"# 		-- ped walk phases use preset times\n"
"# 		-- i.e. there is not a 'push to cross' button\n"
"# 	biDirectionalCycleTimes (4),\n"
"# 		-- ped walk phases use different SignalGroupID\n"
"# 		-- for each direction. The first SignalGroupID\n"
"# 		-- in the first Connection represents 'inbound'\n"
"# 		-- flow (the direction of travel towards the first\n"
"# 		-- node point) while second SignalGroupID in the\n"
"# 		-- next Connection entry represents the 'outbound'\n"
"# 		-- flow. And use of RestrictionClassID entries\n"
"# 		-- in the Connect follow this same pattern in pairs.\n"
"# 	hasPushToWalkButton (5),\n"
"# 		-- Has a demand input\n"
"# 	audioSupport (6),\n"
"# 		-- audio crossing cues present\n"
"# 	rfSignalRequestPresent (7),\n"
"# 		-- Supports RF push to walk technologies\n"
"# 	unsignalizedSegmentsPresent (8)\n"
"# 		-- The lane path consists of one of more segments\n"
"# 		-- which are not part of a signal group ID\n"
"# } (SIZE (16))\n"
"\n"
"uint16  lane_attributes_crosswalk\n"
;
  }

  static const char* value(const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lane_attributes_crosswalk);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaneAttributesCrosswalk_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator>& v)
  {
    s << indent << "lane_attributes_crosswalk: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.lane_attributes_crosswalk);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_LANEATTRIBUTESCROSSWALK_H
