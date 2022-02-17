// Generated by gencpp from file autoware_config_msgs/ConfigWaypointReplanner.msg
// DO NOT EDIT!


#ifndef AUTOWARE_CONFIG_MSGS_MESSAGE_CONFIGWAYPOINTREPLANNER_H
#define AUTOWARE_CONFIG_MSGS_MESSAGE_CONFIGWAYPOINTREPLANNER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace autoware_config_msgs
{
template <class ContainerAllocator>
struct ConfigWaypointReplanner_
{
  typedef ConfigWaypointReplanner_<ContainerAllocator> Type;

  ConfigWaypointReplanner_()
    : multi_lane_csv()
    , replanning_mode(false)
    , use_decision_maker(false)
    , velocity_max(0.0)
    , velocity_min(0.0)
    , accel_limit(0.0)
    , decel_limit(0.0)
    , radius_thresh(0.0)
    , radius_min(0.0)
    , resample_mode(false)
    , resample_interval(0.0)
    , velocity_offset(0)
    , end_point_offset(0)
    , braking_distance(0)
    , replan_curve_mode(false)
    , replan_endpoint_mode(false)
    , overwrite_vmax_mode(false)
    , realtime_tuning_mode(false)  {
    }
  ConfigWaypointReplanner_(const ContainerAllocator& _alloc)
    : multi_lane_csv(_alloc)
    , replanning_mode(false)
    , use_decision_maker(false)
    , velocity_max(0.0)
    , velocity_min(0.0)
    , accel_limit(0.0)
    , decel_limit(0.0)
    , radius_thresh(0.0)
    , radius_min(0.0)
    , resample_mode(false)
    , resample_interval(0.0)
    , velocity_offset(0)
    , end_point_offset(0)
    , braking_distance(0)
    , replan_curve_mode(false)
    , replan_endpoint_mode(false)
    , overwrite_vmax_mode(false)
    , realtime_tuning_mode(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _multi_lane_csv_type;
  _multi_lane_csv_type multi_lane_csv;

   typedef uint8_t _replanning_mode_type;
  _replanning_mode_type replanning_mode;

   typedef uint8_t _use_decision_maker_type;
  _use_decision_maker_type use_decision_maker;

   typedef float _velocity_max_type;
  _velocity_max_type velocity_max;

   typedef float _velocity_min_type;
  _velocity_min_type velocity_min;

   typedef float _accel_limit_type;
  _accel_limit_type accel_limit;

   typedef float _decel_limit_type;
  _decel_limit_type decel_limit;

   typedef float _radius_thresh_type;
  _radius_thresh_type radius_thresh;

   typedef float _radius_min_type;
  _radius_min_type radius_min;

   typedef uint8_t _resample_mode_type;
  _resample_mode_type resample_mode;

   typedef float _resample_interval_type;
  _resample_interval_type resample_interval;

   typedef int32_t _velocity_offset_type;
  _velocity_offset_type velocity_offset;

   typedef int32_t _end_point_offset_type;
  _end_point_offset_type end_point_offset;

   typedef int32_t _braking_distance_type;
  _braking_distance_type braking_distance;

   typedef uint8_t _replan_curve_mode_type;
  _replan_curve_mode_type replan_curve_mode;

   typedef uint8_t _replan_endpoint_mode_type;
  _replan_endpoint_mode_type replan_endpoint_mode;

   typedef uint8_t _overwrite_vmax_mode_type;
  _overwrite_vmax_mode_type overwrite_vmax_mode;

   typedef uint8_t _realtime_tuning_mode_type;
  _realtime_tuning_mode_type realtime_tuning_mode;





  typedef boost::shared_ptr< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigWaypointReplanner_

typedef ::autoware_config_msgs::ConfigWaypointReplanner_<std::allocator<void> > ConfigWaypointReplanner;

typedef boost::shared_ptr< ::autoware_config_msgs::ConfigWaypointReplanner > ConfigWaypointReplannerPtr;
typedef boost::shared_ptr< ::autoware_config_msgs::ConfigWaypointReplanner const> ConfigWaypointReplannerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator1> & lhs, const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator2> & rhs)
{
  return lhs.multi_lane_csv == rhs.multi_lane_csv &&
    lhs.replanning_mode == rhs.replanning_mode &&
    lhs.use_decision_maker == rhs.use_decision_maker &&
    lhs.velocity_max == rhs.velocity_max &&
    lhs.velocity_min == rhs.velocity_min &&
    lhs.accel_limit == rhs.accel_limit &&
    lhs.decel_limit == rhs.decel_limit &&
    lhs.radius_thresh == rhs.radius_thresh &&
    lhs.radius_min == rhs.radius_min &&
    lhs.resample_mode == rhs.resample_mode &&
    lhs.resample_interval == rhs.resample_interval &&
    lhs.velocity_offset == rhs.velocity_offset &&
    lhs.end_point_offset == rhs.end_point_offset &&
    lhs.braking_distance == rhs.braking_distance &&
    lhs.replan_curve_mode == rhs.replan_curve_mode &&
    lhs.replan_endpoint_mode == rhs.replan_endpoint_mode &&
    lhs.overwrite_vmax_mode == rhs.overwrite_vmax_mode &&
    lhs.realtime_tuning_mode == rhs.realtime_tuning_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator1> & lhs, const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_config_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
{
  static const char* value()
  {
    return "377fcfc666c7fdd690ae1373651c353b";
  }

  static const char* value(const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x377fcfc666c7fdd6ULL;
  static const uint64_t static_value2 = 0x90ae1373651c353bULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_config_msgs/ConfigWaypointReplanner";
  }

  static const char* value(const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string multi_lane_csv\n"
"bool replanning_mode\n"
"bool use_decision_maker\n"
"float32 velocity_max\n"
"float32 velocity_min\n"
"float32 accel_limit\n"
"float32 decel_limit\n"
"float32 radius_thresh\n"
"float32 radius_min\n"
"bool resample_mode\n"
"float32 resample_interval\n"
"int32 velocity_offset\n"
"int32 end_point_offset\n"
"int32 braking_distance\n"
"bool replan_curve_mode\n"
"bool replan_endpoint_mode\n"
"bool overwrite_vmax_mode\n"
"bool realtime_tuning_mode\n"
;
  }

  static const char* value(const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.multi_lane_csv);
      stream.next(m.replanning_mode);
      stream.next(m.use_decision_maker);
      stream.next(m.velocity_max);
      stream.next(m.velocity_min);
      stream.next(m.accel_limit);
      stream.next(m.decel_limit);
      stream.next(m.radius_thresh);
      stream.next(m.radius_min);
      stream.next(m.resample_mode);
      stream.next(m.resample_interval);
      stream.next(m.velocity_offset);
      stream.next(m.end_point_offset);
      stream.next(m.braking_distance);
      stream.next(m.replan_curve_mode);
      stream.next(m.replan_endpoint_mode);
      stream.next(m.overwrite_vmax_mode);
      stream.next(m.realtime_tuning_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigWaypointReplanner_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_config_msgs::ConfigWaypointReplanner_<ContainerAllocator>& v)
  {
    s << indent << "multi_lane_csv: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.multi_lane_csv);
    s << indent << "replanning_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.replanning_mode);
    s << indent << "use_decision_maker: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_decision_maker);
    s << indent << "velocity_max: ";
    Printer<float>::stream(s, indent + "  ", v.velocity_max);
    s << indent << "velocity_min: ";
    Printer<float>::stream(s, indent + "  ", v.velocity_min);
    s << indent << "accel_limit: ";
    Printer<float>::stream(s, indent + "  ", v.accel_limit);
    s << indent << "decel_limit: ";
    Printer<float>::stream(s, indent + "  ", v.decel_limit);
    s << indent << "radius_thresh: ";
    Printer<float>::stream(s, indent + "  ", v.radius_thresh);
    s << indent << "radius_min: ";
    Printer<float>::stream(s, indent + "  ", v.radius_min);
    s << indent << "resample_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.resample_mode);
    s << indent << "resample_interval: ";
    Printer<float>::stream(s, indent + "  ", v.resample_interval);
    s << indent << "velocity_offset: ";
    Printer<int32_t>::stream(s, indent + "  ", v.velocity_offset);
    s << indent << "end_point_offset: ";
    Printer<int32_t>::stream(s, indent + "  ", v.end_point_offset);
    s << indent << "braking_distance: ";
    Printer<int32_t>::stream(s, indent + "  ", v.braking_distance);
    s << indent << "replan_curve_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.replan_curve_mode);
    s << indent << "replan_endpoint_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.replan_endpoint_mode);
    s << indent << "overwrite_vmax_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.overwrite_vmax_mode);
    s << indent << "realtime_tuning_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.realtime_tuning_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_CONFIG_MSGS_MESSAGE_CONFIGWAYPOINTREPLANNER_H
