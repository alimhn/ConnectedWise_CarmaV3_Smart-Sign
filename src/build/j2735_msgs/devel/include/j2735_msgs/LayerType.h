// Generated by gencpp from file j2735_msgs/LayerType.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_LAYERTYPE_H
#define J2735_MSGS_MESSAGE_LAYERTYPE_H


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
struct LayerType_
{
  typedef LayerType_<ContainerAllocator> Type;

  LayerType_()
    : layer_type(0)  {
    }
  LayerType_(const ContainerAllocator& _alloc)
    : layer_type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _layer_type_type;
  _layer_type_type layer_type;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NONE)
  #undef NONE
#endif
#if defined(_WIN32) && defined(MIXED_CONTENT)
  #undef MIXED_CONTENT
#endif
#if defined(_WIN32) && defined(GENERAL_MAP_DATA)
  #undef GENERAL_MAP_DATA
#endif
#if defined(_WIN32) && defined(INTERSECTION_DATA)
  #undef INTERSECTION_DATA
#endif
#if defined(_WIN32) && defined(CURVE_DATA)
  #undef CURVE_DATA
#endif
#if defined(_WIN32) && defined(ROADWAY_SECTION_DATA)
  #undef ROADWAY_SECTION_DATA
#endif
#if defined(_WIN32) && defined(PARKING_AREA_DATA)
  #undef PARKING_AREA_DATA
#endif
#if defined(_WIN32) && defined(SHARED_LANE_DATA)
  #undef SHARED_LANE_DATA
#endif

  enum {
    NONE = 0u,
    MIXED_CONTENT = 1u,
    GENERAL_MAP_DATA = 2u,
    INTERSECTION_DATA = 3u,
    CURVE_DATA = 4u,
    ROADWAY_SECTION_DATA = 5u,
    PARKING_AREA_DATA = 6u,
    SHARED_LANE_DATA = 7u,
  };


  typedef boost::shared_ptr< ::j2735_msgs::LayerType_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::LayerType_<ContainerAllocator> const> ConstPtr;

}; // struct LayerType_

typedef ::j2735_msgs::LayerType_<std::allocator<void> > LayerType;

typedef boost::shared_ptr< ::j2735_msgs::LayerType > LayerTypePtr;
typedef boost::shared_ptr< ::j2735_msgs::LayerType const> LayerTypeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::LayerType_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::LayerType_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::LayerType_<ContainerAllocator1> & lhs, const ::j2735_msgs::LayerType_<ContainerAllocator2> & rhs)
{
  return lhs.layer_type == rhs.layer_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::LayerType_<ContainerAllocator1> & lhs, const ::j2735_msgs::LayerType_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LayerType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::LayerType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LayerType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::LayerType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LayerType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::LayerType_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::LayerType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "225f090984ed5db591d792a4385a39de";
  }

  static const char* value(const ::j2735_msgs::LayerType_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x225f090984ed5db5ULL;
  static const uint64_t static_value2 = 0x91d792a4385a39deULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::LayerType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/LayerType";
  }

  static const char* value(const ::j2735_msgs::LayerType_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::LayerType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# LayerType.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# Data element used to uniquely identify the type of information to be found in a layer of geographic map fragment\n"
"# such as an intersection.\n"
"#\n"
"\n"
"uint8 layer_type\n"
"\n"
"# LayerType ::= ENUMERATED {\n"
"# none,\n"
"# mixedContent, -- two or more of the below types\n"
"# generalMapData,\n"
"# intersectionData,\n"
"# curveData,\n"
"# roadwaySectionData,\n"
"# parkingAreaData,\n"
"# sharedLaneData,\n"
"# ...\n"
"# }\n"
"\n"
"# enumeration values for plan type:\n"
"uint8       NONE = 0\n"
"uint8       MIXED_CONTENT = 1\n"
"uint8       GENERAL_MAP_DATA = 2\n"
"uint8       INTERSECTION_DATA = 3\n"
"uint8       CURVE_DATA = 4\n"
"uint8       ROADWAY_SECTION_DATA = 5\n"
"uint8       PARKING_AREA_DATA = 6\n"
"uint8       SHARED_LANE_DATA = 7\n"
;
  }

  static const char* value(const ::j2735_msgs::LayerType_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::LayerType_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.layer_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LayerType_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::LayerType_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::LayerType_<ContainerAllocator>& v)
  {
    s << indent << "layer_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.layer_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_LAYERTYPE_H
