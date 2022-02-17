// Generated by gencpp from file j2735_msgs/RestrictionAppliesTo.msg
// DO NOT EDIT!


#ifndef J2735_MSGS_MESSAGE_RESTRICTIONAPPLIESTO_H
#define J2735_MSGS_MESSAGE_RESTRICTIONAPPLIESTO_H


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
struct RestrictionAppliesTo_
{
  typedef RestrictionAppliesTo_<ContainerAllocator> Type;

  RestrictionAppliesTo_()
    : restriction_applies_to(0)  {
    }
  RestrictionAppliesTo_(const ContainerAllocator& _alloc)
    : restriction_applies_to(0)  {
  (void)_alloc;
    }



   typedef uint8_t _restriction_applies_to_type;
  _restriction_applies_to_type restriction_applies_to;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NONE)
  #undef NONE
#endif
#if defined(_WIN32) && defined(EQUIPPEDTRANSIT)
  #undef EQUIPPEDTRANSIT
#endif
#if defined(_WIN32) && defined(EQUIPPEDTAXIS)
  #undef EQUIPPEDTAXIS
#endif
#if defined(_WIN32) && defined(EQUIPPEDOTHER)
  #undef EQUIPPEDOTHER
#endif
#if defined(_WIN32) && defined(EMISSIONCOMPLIANT)
  #undef EMISSIONCOMPLIANT
#endif
#if defined(_WIN32) && defined(EQUIPPEDBICYCLE)
  #undef EQUIPPEDBICYCLE
#endif
#if defined(_WIN32) && defined(WEIGHTCOMPLIANT)
  #undef WEIGHTCOMPLIANT
#endif
#if defined(_WIN32) && defined(HEIGHTCOMPLIANT)
  #undef HEIGHTCOMPLIANT
#endif
#if defined(_WIN32) && defined(PEDESTRIANS)
  #undef PEDESTRIANS
#endif
#if defined(_WIN32) && defined(SLOWMOVINGPERSONS)
  #undef SLOWMOVINGPERSONS
#endif
#if defined(_WIN32) && defined(WHEELCHAIRUSERS)
  #undef WHEELCHAIRUSERS
#endif
#if defined(_WIN32) && defined(VISUALDISABILITIES)
  #undef VISUALDISABILITIES
#endif
#if defined(_WIN32) && defined(AUDIODISABILITIES)
  #undef AUDIODISABILITIES
#endif
#if defined(_WIN32) && defined(OTHERUNKNOWNDISABILITIES)
  #undef OTHERUNKNOWNDISABILITIES
#endif

  enum {
    NONE = 0u,
    EQUIPPEDTRANSIT = 1u,
    EQUIPPEDTAXIS = 2u,
    EQUIPPEDOTHER = 3u,
    EMISSIONCOMPLIANT = 4u,
    EQUIPPEDBICYCLE = 5u,
    WEIGHTCOMPLIANT = 6u,
    HEIGHTCOMPLIANT = 7u,
    PEDESTRIANS = 8u,
    SLOWMOVINGPERSONS = 9u,
    WHEELCHAIRUSERS = 10u,
    VISUALDISABILITIES = 11u,
    AUDIODISABILITIES = 12u,
    OTHERUNKNOWNDISABILITIES = 13u,
  };


  typedef boost::shared_ptr< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> const> ConstPtr;

}; // struct RestrictionAppliesTo_

typedef ::j2735_msgs::RestrictionAppliesTo_<std::allocator<void> > RestrictionAppliesTo;

typedef boost::shared_ptr< ::j2735_msgs::RestrictionAppliesTo > RestrictionAppliesToPtr;
typedef boost::shared_ptr< ::j2735_msgs::RestrictionAppliesTo const> RestrictionAppliesToConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator1> & lhs, const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator2> & rhs)
{
  return lhs.restriction_applies_to == rhs.restriction_applies_to;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator1> & lhs, const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace j2735_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f780d757b384f158859481ce11f881e5";
  }

  static const char* value(const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf780d757b384f158ULL;
  static const uint64_t static_value2 = 0x859481ce11f881e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "j2735_msgs/RestrictionAppliesTo";
  }

  static const char* value(const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# RestrictionAppliesTo.msg\n"
"#\n"
"# J2735 2016 message format.\n"
"#\n"
"# @author Mae Fromm\n"
"# @version 0.1\n"
"#\n"
"# The RestrictionAppliesTo data element provides a short list of common vehicle\n"
"# types which may have one or more special movements at an intersection. I\n"
"#\n"
"# RestrictionAppliesTo ::= ENUMERATED {\n"
"# none, -- applies to nothing\n"
"# equippedTransit, -- buses etc.\n"
"# equippedTaxis,\n"
"# equippedOther, -- other vehicle types with\n"
"# 		-- necessary signal phase state\n"
"# 		-- reception equipment\n"
"# emissionCompliant, -- regional variants with more\n"
"# 		-- definitive items also exist\n"
"# equippedBicycle,\n"
"# weightCompliant,\n"
"# heightCompliant,\n"
"# -- Items dealing with traveler needs serviced by the infrastructure\n"
"# -- These end users (which are not vehicles) are presumed to be suitably equipped\n"
"# pedestrians,\n"
"# slowMovingPersons,\n"
"# wheelchairUsers,\n"
"# visualDisabilities,\n"
"# audioDisabilities, -- hearing\n"
"# otherUnknownDisabilities,\n"
"# ...\n"
"# }\n"
"\n"
"uint8 NONE=0\n"
"uint8 EQUIPPEDTRANSIT=1\n"
"uint8 EQUIPPEDTAXIS=2\n"
"uint8 EQUIPPEDOTHER=3\n"
"uint8 EMISSIONCOMPLIANT=4\n"
"uint8 EQUIPPEDBICYCLE=5\n"
"uint8 WEIGHTCOMPLIANT=6\n"
"uint8 HEIGHTCOMPLIANT=7\n"
"uint8 PEDESTRIANS=8\n"
"uint8 SLOWMOVINGPERSONS=9\n"
"uint8 WHEELCHAIRUSERS=10\n"
"uint8 VISUALDISABILITIES=11\n"
"uint8 AUDIODISABILITIES=12\n"
"uint8 OTHERUNKNOWNDISABILITIES=13\n"
"\n"
"# Variable which can be used to store a type enum value.\n"
"uint8 restriction_applies_to\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.restriction_applies_to);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RestrictionAppliesTo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::j2735_msgs::RestrictionAppliesTo_<ContainerAllocator>& v)
  {
    s << indent << "restriction_applies_to: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.restriction_applies_to);
  }
};

} // namespace message_operations
} // namespace ros

#endif // J2735_MSGS_MESSAGE_RESTRICTIONAPPLIESTO_H