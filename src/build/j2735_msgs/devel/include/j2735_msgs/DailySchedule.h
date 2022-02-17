// Generated by gencpp from file j2735_msgs/DailySchedule.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_DAILYSCHEDULE_H
#define J2735_MSGS_MESSAGE_DAILYSCHEDULE_H


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
struct DailySchedule_
{
  typedef DailySchedule_<ContainerAllocator> Type;

  DailySchedule_()
    : begin(0)
    , duration(0)  {
    }
  DailySchedule_(const ContainerAllocator& _alloc)
    : begin(0)
    , duration(0)  {
  (void)_alloc;
    }



   typedef uint16_t _begin_type;
  _begin_type begin;

   typedef uint16_t _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::j2735_msgs::DailySchedule_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::DailySchedule_<ContainerAllocator> const> ConstPtr;

}; // struct DailySchedule_

typedef ::j2735_msgs::DailySchedule_<std::allocator<void> > DailySchedule;

typedef boost::shared_ptr< ::j2735_msgs::DailySchedule > DailySchedulePtr;
typedef boost::shared_ptr< ::j2735_msgs::DailySchedule const> DailyScheduleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::DailySchedule_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::DailySchedule_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::DailySchedule_<ContainerAllocator1> & lhs, const ::j2735_msgs::DailySchedule_<ContainerAllocator2> & rhs)
{
  return lhs.begin == rhs.begin &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::DailySchedule_<ContainerAllocator1> & lhs, const ::j2735_msgs::DailySchedule_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::DailySchedule_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::DailySchedule_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::DailySchedule_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
{
  static const char* value()
  {
    return "37a52901ec18d4d604c666475255ca60";
  }

  static const char* value(const ::j2735_msgs::DailySchedule_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x37a52901ec18d4d6ULL;
  static const uint64_t static_value2 = 0x04c666475255ca60ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/DailySchedule";
  }

  static const char* value(const ::j2735_msgs::DailySchedule_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# DailySchedule.msg\n"
"#\n"
"# Part of the CARMA Cloud geo-fence specification for vehicle internal use.\n"
"#\n"
"# @author Misheel Bayartsengel \n"
"# @version 0.1\n"
"#\n"
"# Description\n"
"# The schedule bounds of a geofence within a specific day of the week\n"
"\n"
"# DailySchedule ::= SEQUENCE\n"
"# {\n"
"# 	begin INTEGER (0..1439), -- minutes relative to midnight local time\n"
"# 	duration INTEGER (0..1439) -- the number of active minutes, up to one day\n"
"# }\n"
"\n"
"# begin INTEGER (0..1439), -- minutes relative to midnight local time\n"
"uint16 begin\n"
"\n"
"# duration INTEGER (0..1439) -- the number of active minutes, up to one day\n"
"uint16 duration\n"
;
  }

  static const char* value(const ::j2735_msgs::DailySchedule_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.begin);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DailySchedule_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::DailySchedule_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::DailySchedule_<ContainerAllocator>& v)
  {
    s << indent << "begin: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.begin);
    s << indent << "duration: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_DAILYSCHEDULE_H
