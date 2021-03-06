// Generated by gencpp from file j2735_msgs/LaneTypeAttributes.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_LANETYPEATTRIBUTES_H
#define J2735_MSGS_MESSAGE_LANETYPEATTRIBUTES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <j2735_msgs/LaneAttributesVehicle.h>
#include <j2735_msgs/LaneAttributesCrosswalk.h>
#include <j2735_msgs/LaneAttributesBike.h>
#include <j2735_msgs/LaneAttributesSidewalk.h>
#include <j2735_msgs/LaneAttributesBarrier.h>
#include <j2735_msgs/LaneAttributesStriping.h>
#include <j2735_msgs/LaneAttributesTrackedVehicle.h>
#include <j2735_msgs/LaneAttributesParking.h>

namespace j2735_msgs
{
template <class ContainerAllocator>
struct LaneTypeAttributes_
{
  typedef LaneTypeAttributes_<ContainerAllocator> Type;

  LaneTypeAttributes_()
    : choice(0)
    , vehicle()
    , crosswalk()
    , bikeLane()
    , sidewalk()
    , median()
    , striping()
    , trackedVehicle()
    , parking()  {
    }
  LaneTypeAttributes_(const ContainerAllocator& _alloc)
    : choice(0)
    , vehicle(_alloc)
    , crosswalk(_alloc)
    , bikeLane(_alloc)
    , sidewalk(_alloc)
    , median(_alloc)
    , striping(_alloc)
    , trackedVehicle(_alloc)
    , parking(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _choice_type;
  _choice_type choice;

   typedef  ::j2735_msgs::LaneAttributesVehicle_<ContainerAllocator>  _vehicle_type;
  _vehicle_type vehicle;

   typedef  ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator>  _crosswalk_type;
  _crosswalk_type crosswalk;

   typedef  ::j2735_msgs::LaneAttributesBike_<ContainerAllocator>  _bikeLane_type;
  _bikeLane_type bikeLane;

   typedef  ::j2735_msgs::LaneAttributesSidewalk_<ContainerAllocator>  _sidewalk_type;
  _sidewalk_type sidewalk;

   typedef  ::j2735_msgs::LaneAttributesBarrier_<ContainerAllocator>  _median_type;
  _median_type median;

   typedef  ::j2735_msgs::LaneAttributesStriping_<ContainerAllocator>  _striping_type;
  _striping_type striping;

   typedef  ::j2735_msgs::LaneAttributesTrackedVehicle_<ContainerAllocator>  _trackedVehicle_type;
  _trackedVehicle_type trackedVehicle;

   typedef  ::j2735_msgs::LaneAttributesParking_<ContainerAllocator>  _parking_type;
  _parking_type parking;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(VEHICLE)
  #undef VEHICLE
#endif
#if defined(_WIN32) && defined(CROSSWALK)
  #undef CROSSWALK
#endif
#if defined(_WIN32) && defined(BIKE_LANE)
  #undef BIKE_LANE
#endif
#if defined(_WIN32) && defined(SIDEWALK)
  #undef SIDEWALK
#endif
#if defined(_WIN32) && defined(MEDIAN)
  #undef MEDIAN
#endif
#if defined(_WIN32) && defined(STRIPING)
  #undef STRIPING
#endif
#if defined(_WIN32) && defined(TRACKED_VEHICLE)
  #undef TRACKED_VEHICLE
#endif
#if defined(_WIN32) && defined(PARKING)
  #undef PARKING
#endif

  enum {
    VEHICLE = 0u,
    CROSSWALK = 1u,
    BIKE_LANE = 2u,
    SIDEWALK = 3u,
    MEDIAN = 4u,
    STRIPING = 5u,
    TRACKED_VEHICLE = 6u,
    PARKING = 7u,
  };


  typedef boost::shared_ptr< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> const> ConstPtr;

}; // struct LaneTypeAttributes_

typedef ::j2735_msgs::LaneTypeAttributes_<std::allocator<void> > LaneTypeAttributes;

typedef boost::shared_ptr< ::j2735_msgs::LaneTypeAttributes > LaneTypeAttributesPtr;
typedef boost::shared_ptr< ::j2735_msgs::LaneTypeAttributes const> LaneTypeAttributesConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator1> & lhs, const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator2> & rhs)
{
  return lhs.choice == rhs.choice &&
    lhs.vehicle == rhs.vehicle &&
    lhs.crosswalk == rhs.crosswalk &&
    lhs.bikeLane == rhs.bikeLane &&
    lhs.sidewalk == rhs.sidewalk &&
    lhs.median == rhs.median &&
    lhs.striping == rhs.striping &&
    lhs.trackedVehicle == rhs.trackedVehicle &&
    lhs.parking == rhs.parking;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator1> & lhs, const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e2aa6f113cac6b3d7a7bd5a414e2841";
  }

  static const char* value(const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e2aa6f113cac6b3ULL;
  static const uint64_t static_value2 = 0xd7a7bd5a414e2841ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/LaneTypeAttributes";
  }

  static const char* value(const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# LaneTypeAttributes.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The Lane Type Attributes data frame is used to hold attribute information specific to a given lane type.\n"
"# LaneTypeAttributes ::= CHOICE {\n"
"# vehicle LaneAttributes-Vehicle, -- motor vehicle lanes\n"
"# crosswalk LaneAttributes-Crosswalk, -- pedestrian crosswalks\n"
"# bikeLane LaneAttributes-Bike, -- bike lanes\n"
"# sidewalk LaneAttributes-Sidewalk, -- pedestrian sidewalk paths\n"
"# median LaneAttributes-Barrier, -- medians & channelization\n"
"# striping LaneAttributes-Striping, -- roadway markings\n"
"# trackedVehicle LaneAttributes-TrackedVehicle, -- trains and trolleys\n"
"# parking LaneAttributes-Parking, -- parking and stopping lanes\n"
"# }\n"
"\n"
"uint8 choice\n"
"uint8 VEHICLE=0\n"
"uint8 CROSSWALK=1\n"
"uint8 BIKE_LANE=2\n"
"uint8 SIDEWALK=3\n"
"uint8 MEDIAN=4\n"
"uint8 STRIPING=5\n"
"uint8 TRACKED_VEHICLE=6\n"
"uint8 PARKING=7\n"
"\n"
"j2735_msgs/LaneAttributesVehicle vehicle\n"
"j2735_msgs/LaneAttributesCrosswalk crosswalk\n"
"j2735_msgs/LaneAttributesBike bikeLane\n"
"j2735_msgs/LaneAttributesSidewalk sidewalk\n"
"j2735_msgs/LaneAttributesBarrier median\n"
"j2735_msgs/LaneAttributesStriping striping\n"
"j2735_msgs/LaneAttributesTrackedVehicle trackedVehicle\n"
"j2735_msgs/LaneAttributesParking parking\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesVehicle\n"
"#\n"
"# LaneAttributesVehicle.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# LaneAttributes-Vehicle ::= BIT STRING {\n"
"# -- With bits as defined:\n"
"# isVehicleRevocableLane (0),\n"
"#       -- this lane may be activated or not based\n"
"#       -- on the current SPAT message contents\n"
"#       -- if not asserted, the lane is ALWAYS present\n"
"# isVehicleFlyOverLane (1),\n"
"#       -- path of lane is not at grade\n"
"# hovLaneUseOnly (2),\n"
"# restrictedToBusUse (3),\n"
"# restrictedToTaxiUse(4),\n"
"# restrictedFromPublicUse (5),\n"
"# hasIRbeaconCoverage(6),\n"
"# permissionOnRequest(7)\n"
"#       -- e.g. to inform about a lane for e-cars\n"
"# } (SIZE (8,...))\n"
"\n"
"uint8 lane_attributes_vehicle\n"
"\n"
"uint8 ISVEHICLEREVOCABLELANE=0\n"
"uint8 ISVEHICLEFLYOVERLANE=1\n"
"uint8 HOVLANEUSEONLY=2\n"
"uint8 RESTRICTEDTOBUSUSE=3\n"
"uint8 RESTRICTEDTOTAXIUSE=4\n"
"uint8 RESTRICTEDFROMPUBLICUSE=5\n"
"uint8 HASIRBEACONCOVERAGE=6\n"
"uint8 PERMISSIONONREQUEST=7\n"
"\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesCrosswalk\n"
"#\n"
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
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesBike\n"
"#\n"
"# LaneAttributesBike.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneAttributes-Bike data element relates specific properties found in a bicycle lane type.\n"
"#\n"
"# LaneAttributes-Bike ::= BIT STRING {\n"
"#	-- With bits as defined:\n"
"#	bikeRevocableLane (0),\n"
"#		-- this lane may be activated or not based\n"
"#		-- on the current SPAT message contents\n"
"#		-- if not asserted, the lane is ALWAYS present\n"
"#	pedestrianUseAllowed (1),\n"
"#		-- The path allows pedestrian traffic,\n"
"#		-- if not set, this mode is prohibited\n"
"#	isBikeFlyOverLane (2),\n"
"#		-- path of lane is not at grade\n"
"#	fixedCycleTime (3),\n"
"#		-- the phases use preset times\n"
"#		-- Bits 7~15 reserved and set to zero\n"
"#	} (SIZE (16))\n"
"\n"
"uint16 lane_attributes_bike\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesSidewalk\n"
"#\n"
"# LaneAttributesSidewalk.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneAttributes-Sidewalk data element relates specific properties found in a sidewalk lane type\n"
"#\n"
"# LaneAttributes-Sidewalk ::= BIT STRING {\n"
"# -- With bits as defined:\n"
"# sidewalk-RevocableLane (0),\n"
"# -- this lane may be activated or not based\n"
"# -- on the current SPAT message contents\n"
"# -- if not asserted, the lane is ALWAYS present\n"
"# bicyleUseAllowed (1),\n"
"# -- The path allows bicycle traffic,\n"
"# -- if not set, this mode is prohibited\n"
"# isSidewalkFlyOverLane (2),\n"
"# -- path of lane is not at grade\n"
"# walkBikes (3)\n"
"# -- bike traffic must dismount and walk\n"
"# -- Bits 4~15 reserved and set to zero\n"
"# } (SIZE (16))\n"
"\n"
"uint16 lane_attributes_sidewalk\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesBarrier\n"
"#\n"
"# LaneAttributesBarrier.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneAttributes-Barrier data element relates specific properties found in a Barrier\n"
"# or Median lane type (a type of lane object used to separate traffic lanes).\n"
"#\n"
"# LaneAttributes-Barrier ::= BIT STRING {\n"
"# -- With bits as defined:\n"
"# median-RevocableLane (0),\n"
"# -- this lane may be activated or not based\n"
"# -- on the current SPAT message contents\n"
"# -- if not asserted, the lane is ALWAYS present\n"
"# median (1),\n"
"# whiteLineHashing (2),\n"
"# stripedLines (3),\n"
"# doubleStripedLines (4),\n"
"# trafficCones (5),\n"
"# constructionBarrier(6),\n"
"# trafficChannels(7),\n"
"# lowCurbs(8),\n"
"# highCurbs(9)\n"
"# -- Bits 10~15 reserved and set to zero\n"
"# } (SIZE (16))\n"
"\n"
"uint16 lane_attributes_barrier\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesStriping\n"
"#\n"
"# LaneAttributesBarrier.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneAttributes-Striping data element relates specific properties found\n"
"# in various types of ground striping lane types.\n"
"#\n"
"# LaneAttributes-Striping ::= BIT STRING {\n"
"# -- With bits as defined:\n"
"# stripeToConnectingLanesRevocableLane(0),\n"
"# -- this lane may be activated or not activated based\n"
"# -- on the current SPAT message contents\n"
"# -- if not asserted, the lane is ALWAYS present\n"
"# stripeDrawOnLeft(1),\n"
"# stripeDrawOnRight(2),\n"
"# -- which side of lane to mark\n"
"# stripeToConnectingLanesLeft(3),\n"
"# stripeToConnectingLanesRight(4),\n"
"# stripeToConnectingLanesAhead(5)\n"
"# -- the stripe type should be\n"
"# -- presented to the user visually\n"
"# -- to reflect stripes in the\n"
"# -- intersection for the type of\n"
"# -- movement indicated\n"
"# -- Bits 6~15 reserved and set to zero\n"
"# } (SIZE (16))\n"
"\n"
"uint16 lane_attributes_striping\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesTrackedVehicle\n"
"#\n"
"# LaneAttributesTrackedVehicle.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneAttributes-Special data element relates specific properties found\n"
"# in a tracked vehicle lane types (trolley and train lanes).\n"
"# The term \"rail vehicle\" can be considered synonymous.\n"
"# In this case, the term does not relate to vehicle types with tracks or treads.\n"
"#\n"
"# LaneAttributes-TrackedVehicle ::= BIT STRING {\n"
"# -- With bits as defined:\n"
"# spec-RevocableLane(0),\n"
"# -- this lane may be activated or not based\n"
"# -- on the current SPAT message contents\n"
"# -- if not asserted, the lane is ALWAYS present\n"
"# spec-commuterRailRoadTrack (1),\n"
"# spec-lightRailRoadTrack(2),\n"
"# spec-heavyRailRoadTrack(3),\n"
"# spec-otherRailType(4)\n"
"# -- Bits 5~15 reserved and set to zero\n"
"# } (SIZE (16))\n"
"\n"
"uint16 lane_attributes_trackedvehicle\n"
"\n"
"================================================================================\n"
"MSG: j2735_msgs/LaneAttributesParking\n"
"#\n"
"# LaneAttributesParking.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The LaneAttributes-Parking data element relates specific properties found in a vehicle parking lane type.\n"
"#\n"
"# LaneAttributes-Parking ::= BIT STRING {\n"
"# -- With bits as defined:\n"
"# -- Parking use details, note that detailed restrictions such as\n"
"# -- allowed hours are sent by way of ITIS codes in the TIM message\n"
"# parkingRevocableLane(0),\n"
"# -- this lane may be activated or not based\n"
"# -- on the current SPAT message contents\n"
"# -- if not asserted, the lane is ALWAYS present\n"
"# parallelParkingInUse(1),\n"
"# headInParkingInUse(2),\n"
"# doNotParkZone(3),\n"
"# -- used to denote fire hydrants as well as\n"
"# -- short disruptions in a parking zone\n"
"# parkingForBusUse(4),\n"
"# parkingForTaxiUse(5),\n"
"# noPublicParkingUse(6)\n"
"# -- private parking, as in front of\n"
"# -- private property\n"
"# -- Bits 7~15 reserved and set to zero\n"
"# } (SIZE (16))\n"
"\n"
"uint16  lane_attributes_parking\n"
;
  }

  static const char* value(const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.choice);
      stream.next(m.vehicle);
      stream.next(m.crosswalk);
      stream.next(m.bikeLane);
      stream.next(m.sidewalk);
      stream.next(m.median);
      stream.next(m.striping);
      stream.next(m.trackedVehicle);
      stream.next(m.parking);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaneTypeAttributes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::LaneTypeAttributes_<ContainerAllocator>& v)
  {
    s << indent << "choice: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.choice);
    s << indent << "vehicle: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesVehicle_<ContainerAllocator> >::stream(s, indent + "  ", v.vehicle);
    s << indent << "crosswalk: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesCrosswalk_<ContainerAllocator> >::stream(s, indent + "  ", v.crosswalk);
    s << indent << "bikeLane: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesBike_<ContainerAllocator> >::stream(s, indent + "  ", v.bikeLane);
    s << indent << "sidewalk: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesSidewalk_<ContainerAllocator> >::stream(s, indent + "  ", v.sidewalk);
    s << indent << "median: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesBarrier_<ContainerAllocator> >::stream(s, indent + "  ", v.median);
    s << indent << "striping: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesStriping_<ContainerAllocator> >::stream(s, indent + "  ", v.striping);
    s << indent << "trackedVehicle: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesTrackedVehicle_<ContainerAllocator> >::stream(s, indent + "  ", v.trackedVehicle);
    s << indent << "parking: ";
    s << std::endl;
    Printer< ::j2735_msgs::LaneAttributesParking_<ContainerAllocator> >::stream(s, indent + "  ", v.parking);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_LANETYPEATTRIBUTES_H
