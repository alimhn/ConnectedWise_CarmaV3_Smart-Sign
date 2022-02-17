// Generated by gencpp from file j2735_msgs/NodeAttributeXY.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_NODEATTRIBUTEXY_H
#define J2735_MSGS_MESSAGE_NODEATTRIBUTEXY_H


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
struct NodeAttributeXY_
{
  typedef NodeAttributeXY_<ContainerAllocator> Type;

  NodeAttributeXY_()
    : node_attribute_xy(0)  {
    }
  NodeAttributeXY_(const ContainerAllocator& _alloc)
    : node_attribute_xy(0)  {
  (void)_alloc;
    }



   typedef uint8_t _node_attribute_xy_type;
  _node_attribute_xy_type node_attribute_xy;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(RESERVED)
  #undef RESERVED
#endif
#if defined(_WIN32) && defined(STOPLINE)
  #undef STOPLINE
#endif
#if defined(_WIN32) && defined(ROUNDEDCAPSTYLEA)
  #undef ROUNDEDCAPSTYLEA
#endif
#if defined(_WIN32) && defined(ROUNDEDCAPSTYLEB)
  #undef ROUNDEDCAPSTYLEB
#endif
#if defined(_WIN32) && defined(MERGEPOINT)
  #undef MERGEPOINT
#endif
#if defined(_WIN32) && defined(DIVERGEPOINT)
  #undef DIVERGEPOINT
#endif
#if defined(_WIN32) && defined(DOWNSTREAMSTOPLINE)
  #undef DOWNSTREAMSTOPLINE
#endif
#if defined(_WIN32) && defined(DOWNSTREAMSTARTNODE)
  #undef DOWNSTREAMSTARTNODE
#endif
#if defined(_WIN32) && defined(CLOSEDTOTRAFFIC)
  #undef CLOSEDTOTRAFFIC
#endif
#if defined(_WIN32) && defined(SAFEISLAND)
  #undef SAFEISLAND
#endif
#if defined(_WIN32) && defined(CURBPRESENTATSTEPOFF)
  #undef CURBPRESENTATSTEPOFF
#endif
#if defined(_WIN32) && defined(HYDRANTPRESENT)
  #undef HYDRANTPRESENT
#endif

  enum {
    RESERVED = 0u,
    STOPLINE = 1u,
    ROUNDEDCAPSTYLEA = 2u,
    ROUNDEDCAPSTYLEB = 3u,
    MERGEPOINT = 4u,
    DIVERGEPOINT = 5u,
    DOWNSTREAMSTOPLINE = 6u,
    DOWNSTREAMSTARTNODE = 7u,
    CLOSEDTOTRAFFIC = 8u,
    SAFEISLAND = 9u,
    CURBPRESENTATSTEPOFF = 10u,
    HYDRANTPRESENT = 11u,
  };


  typedef boost::shared_ptr< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> const> ConstPtr;

}; // struct NodeAttributeXY_

typedef ::j2735_msgs::NodeAttributeXY_<std::allocator<void> > NodeAttributeXY;

typedef boost::shared_ptr< ::j2735_msgs::NodeAttributeXY > NodeAttributeXYPtr;
typedef boost::shared_ptr< ::j2735_msgs::NodeAttributeXY const> NodeAttributeXYConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator1> & lhs, const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator2> & rhs)
{
  return lhs.node_attribute_xy == rhs.node_attribute_xy;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator1> & lhs, const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb1d91b90863669c710a6dc0c23fb07d";
  }

  static const char* value(const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb1d91b90863669cULL;
  static const uint64_t static_value2 = 0x710a6dc0c23fb07dULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/NodeAttributeXY";
  }

  static const char* value(const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# NodeAttributeXY.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node\n"
"# point.\n"
"#\n"
"# NodeAttributeXY ::= ENUMERATED {\n"
"# -- Various values which pertain only to the current node point\n"
"#\n"
"# -- General Items\n"
"# reserved,\n"
"# stopLine,		-- point where a mid-path stop line exists\n"
"# 			-- See also 'do not block' for segments\n"
"# -- Path finish details\n"
"# roundedCapStyleA, 	-- Used to control final path rounded end shape\n"
"# 		   	-- with edge of curve at final point in a circle\n"
"# roundedCapStyleB,	-- Used to control final path rounded end shape\n"
"# 			-- with edge of curve extending 50% of width past\n"
"# 			-- final point in a circle\n"
"#\n"
"# -- Topography Points (items with no concept of a distance along the path)\n"
"# mergePoint,		-- Japan merge with 1 or more lanes\n"
"# divergePoint,		-- Japan diverge with 1 or more lanes\n"
"# downstreamStopLine,	-- Japan style downstream intersection\n"
"# 			-- (a 2nd intersection) stop line\n"
"# downstreamStartNode, 	-- Japan style downstream intersection\n"
"# 			-- (a 2nd intersection) start node\n"
"#\n"
"# -- Pedestrian Support Attributes\n"
"# closedToTraffic,	-- where a pedestrian may NOT go\n"
"# 			-- to be used during construction events\n"
"# safeIsland,		-- a pedestrian safe stopping point\n"
"# 			-- also called a traffic island\n"
"# 			-- This usage described a point feature on a path,\n"
"# 			-- other entries can describe a path\n"
"# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT\n"
"# 			-- angled where it meets the edge of the\n"
"# 			-- roadway (user must step up/down)\n"
"# -- Lane geometry details (see standard for defined shapes)\n"
"# hydrantPresent,		-- Or other services access\n"
"# ...\n"
"# }\n"
"\n"
"\n"
"uint8  node_attribute_xy\n"
"\n"
"# enumeration values for status:\n"
"uint8 RESERVED=0\n"
"uint8 STOPLINE=1\n"
"uint8 ROUNDEDCAPSTYLEA=2\n"
"uint8 ROUNDEDCAPSTYLEB=3\n"
"uint8 MERGEPOINT=4\n"
"uint8 DIVERGEPOINT=5\n"
"uint8 DOWNSTREAMSTOPLINE=6\n"
"uint8 DOWNSTREAMSTARTNODE=7\n"
"uint8 CLOSEDTOTRAFFIC=8\n"
"uint8 SAFEISLAND=9\n"
"uint8 CURBPRESENTATSTEPOFF=10\n"
"uint8 HYDRANTPRESENT=11\n"
;
  }

  static const char* value(const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.node_attribute_xy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NodeAttributeXY_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::NodeAttributeXY_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::NodeAttributeXY_<ContainerAllocator>& v)
  {
    s << indent << "node_attribute_xy: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.node_attribute_xy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_NODEATTRIBUTEXY_H