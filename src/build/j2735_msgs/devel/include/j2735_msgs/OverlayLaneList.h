// Generated by gencpp from file j2735_msgs/OverlayLaneList.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_OVERLAYLANELIST_H
#define J2735_MSGS_MESSAGE_OVERLAYLANELIST_H


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
struct OverlayLaneList_
{
  typedef OverlayLaneList_<ContainerAllocator> Type;

  OverlayLaneList_()
    : overlay_lane_list()  {
    }
  OverlayLaneList_(const ContainerAllocator& _alloc)
    : overlay_lane_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint16_t, typename ContainerAllocator::template rebind<uint16_t>::other >  _overlay_lane_list_type;
  _overlay_lane_list_type overlay_lane_list;





  typedef boost::shared_ptr< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> const> ConstPtr;

}; // struct OverlayLaneList_

typedef ::j2735_msgs::OverlayLaneList_<std::allocator<void> > OverlayLaneList;

typedef boost::shared_ptr< ::j2735_msgs::OverlayLaneList > OverlayLaneListPtr;
typedef boost::shared_ptr< ::j2735_msgs::OverlayLaneList const> OverlayLaneListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::OverlayLaneList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::OverlayLaneList_<ContainerAllocator1> & lhs, const ::j2735_msgs::OverlayLaneList_<ContainerAllocator2> & rhs)
{
  return lhs.overlay_lane_list == rhs.overlay_lane_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::OverlayLaneList_<ContainerAllocator1> & lhs, const ::j2735_msgs::OverlayLaneList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6336706d1d1df05ba24af7224350228";
  }

  static const char* value(const ::j2735_msgs::OverlayLaneList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6336706d1d1df05ULL;
  static const uint64_t static_value2 = 0xba24af7224350228ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/OverlayLaneList";
  }

  static const char* value(const ::j2735_msgs::OverlayLaneList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# OverlayLaneList.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The Overlay Lane List data frame is a sequence of lane IDs which refers to lane objects that overlap or overlay the\n"
"# current lane's spatial path.\n"
"#  OverlayLaneList ::= SEQUENCE (SIZE(1..5)) OF LaneID\n"
"# -- The unique ID numbers for any lane object which have\n"
"# -- spatial paths that overlay (run on top of, and not\n"
"# -- simply cross with) the current lane.\n"
"# -- Such as a train path that overlays a motor vehicle\n"
"# -- lane object for a roadway segment.\n"
"\n"
"# LaneID ::= INTEGER (0..255)\n"
"# -- the value 0 shall be used when the lane ID is\n"
"# -- not available or not known\n"
"# -- the value 255 is reserved for future use\n"
"uint16[] overlay_lane_list\n"
;
  }

  static const char* value(const ::j2735_msgs::OverlayLaneList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.overlay_lane_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OverlayLaneList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::OverlayLaneList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::OverlayLaneList_<ContainerAllocator>& v)
  {
    s << indent << "overlay_lane_list[]" << std::endl;
    for (size_t i = 0; i < v.overlay_lane_list.size(); ++i)
    {
      s << indent << "  overlay_lane_list[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.overlay_lane_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_OVERLAYLANELIST_H
