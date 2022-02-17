// Generated by gencpp from file novatel_gps_msgs/NovatelReceiverStatus.msg
// DO NOT EDIT!


#ifndef NOVATEL_GPS_MSGS_MESSAGE_NOVATELRECEIVERSTATUS_H
#define NOVATEL_GPS_MSGS_MESSAGE_NOVATELRECEIVERSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace novatel_gps_msgs
{
template <class ContainerAllocator>
struct NovatelReceiverStatus_
{
  typedef NovatelReceiverStatus_<ContainerAllocator> Type;

  NovatelReceiverStatus_()
    : original_status_code(0)
    , error_flag(false)
    , temperature_flag(false)
    , voltage_supply_flag(false)
    , antenna_powered(false)
    , antenna_is_open(false)
    , antenna_is_shorted(false)
    , cpu_overload_flag(false)
    , com1_buffer_overrun(false)
    , com2_buffer_overrun(false)
    , com3_buffer_overrun(false)
    , usb_buffer_overrun(false)
    , rf1_agc_flag(false)
    , rf2_agc_flag(false)
    , almanac_flag(false)
    , position_solution_flag(false)
    , position_fixed_flag(false)
    , clock_steering_status_enabled(false)
    , clock_model_flag(false)
    , oemv_external_oscillator_flag(false)
    , software_resource_flag(false)
    , aux1_status_event_flag(false)
    , aux2_status_event_flag(false)
    , aux3_status_event_flag(false)  {
    }
  NovatelReceiverStatus_(const ContainerAllocator& _alloc)
    : original_status_code(0)
    , error_flag(false)
    , temperature_flag(false)
    , voltage_supply_flag(false)
    , antenna_powered(false)
    , antenna_is_open(false)
    , antenna_is_shorted(false)
    , cpu_overload_flag(false)
    , com1_buffer_overrun(false)
    , com2_buffer_overrun(false)
    , com3_buffer_overrun(false)
    , usb_buffer_overrun(false)
    , rf1_agc_flag(false)
    , rf2_agc_flag(false)
    , almanac_flag(false)
    , position_solution_flag(false)
    , position_fixed_flag(false)
    , clock_steering_status_enabled(false)
    , clock_model_flag(false)
    , oemv_external_oscillator_flag(false)
    , software_resource_flag(false)
    , aux1_status_event_flag(false)
    , aux2_status_event_flag(false)
    , aux3_status_event_flag(false)  {
  (void)_alloc;
    }



   typedef uint32_t _original_status_code_type;
  _original_status_code_type original_status_code;

   typedef uint8_t _error_flag_type;
  _error_flag_type error_flag;

   typedef uint8_t _temperature_flag_type;
  _temperature_flag_type temperature_flag;

   typedef uint8_t _voltage_supply_flag_type;
  _voltage_supply_flag_type voltage_supply_flag;

   typedef uint8_t _antenna_powered_type;
  _antenna_powered_type antenna_powered;

   typedef uint8_t _antenna_is_open_type;
  _antenna_is_open_type antenna_is_open;

   typedef uint8_t _antenna_is_shorted_type;
  _antenna_is_shorted_type antenna_is_shorted;

   typedef uint8_t _cpu_overload_flag_type;
  _cpu_overload_flag_type cpu_overload_flag;

   typedef uint8_t _com1_buffer_overrun_type;
  _com1_buffer_overrun_type com1_buffer_overrun;

   typedef uint8_t _com2_buffer_overrun_type;
  _com2_buffer_overrun_type com2_buffer_overrun;

   typedef uint8_t _com3_buffer_overrun_type;
  _com3_buffer_overrun_type com3_buffer_overrun;

   typedef uint8_t _usb_buffer_overrun_type;
  _usb_buffer_overrun_type usb_buffer_overrun;

   typedef uint8_t _rf1_agc_flag_type;
  _rf1_agc_flag_type rf1_agc_flag;

   typedef uint8_t _rf2_agc_flag_type;
  _rf2_agc_flag_type rf2_agc_flag;

   typedef uint8_t _almanac_flag_type;
  _almanac_flag_type almanac_flag;

   typedef uint8_t _position_solution_flag_type;
  _position_solution_flag_type position_solution_flag;

   typedef uint8_t _position_fixed_flag_type;
  _position_fixed_flag_type position_fixed_flag;

   typedef uint8_t _clock_steering_status_enabled_type;
  _clock_steering_status_enabled_type clock_steering_status_enabled;

   typedef uint8_t _clock_model_flag_type;
  _clock_model_flag_type clock_model_flag;

   typedef uint8_t _oemv_external_oscillator_flag_type;
  _oemv_external_oscillator_flag_type oemv_external_oscillator_flag;

   typedef uint8_t _software_resource_flag_type;
  _software_resource_flag_type software_resource_flag;

   typedef uint8_t _aux1_status_event_flag_type;
  _aux1_status_event_flag_type aux1_status_event_flag;

   typedef uint8_t _aux2_status_event_flag_type;
  _aux2_status_event_flag_type aux2_status_event_flag;

   typedef uint8_t _aux3_status_event_flag_type;
  _aux3_status_event_flag_type aux3_status_event_flag;





  typedef boost::shared_ptr< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> const> ConstPtr;

}; // struct NovatelReceiverStatus_

typedef ::novatel_gps_msgs::NovatelReceiverStatus_<std::allocator<void> > NovatelReceiverStatus;

typedef boost::shared_ptr< ::novatel_gps_msgs::NovatelReceiverStatus > NovatelReceiverStatusPtr;
typedef boost::shared_ptr< ::novatel_gps_msgs::NovatelReceiverStatus const> NovatelReceiverStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator1> & lhs, const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator2> & rhs)
{
  return lhs.original_status_code == rhs.original_status_code &&
    lhs.error_flag == rhs.error_flag &&
    lhs.temperature_flag == rhs.temperature_flag &&
    lhs.voltage_supply_flag == rhs.voltage_supply_flag &&
    lhs.antenna_powered == rhs.antenna_powered &&
    lhs.antenna_is_open == rhs.antenna_is_open &&
    lhs.antenna_is_shorted == rhs.antenna_is_shorted &&
    lhs.cpu_overload_flag == rhs.cpu_overload_flag &&
    lhs.com1_buffer_overrun == rhs.com1_buffer_overrun &&
    lhs.com2_buffer_overrun == rhs.com2_buffer_overrun &&
    lhs.com3_buffer_overrun == rhs.com3_buffer_overrun &&
    lhs.usb_buffer_overrun == rhs.usb_buffer_overrun &&
    lhs.rf1_agc_flag == rhs.rf1_agc_flag &&
    lhs.rf2_agc_flag == rhs.rf2_agc_flag &&
    lhs.almanac_flag == rhs.almanac_flag &&
    lhs.position_solution_flag == rhs.position_solution_flag &&
    lhs.position_fixed_flag == rhs.position_fixed_flag &&
    lhs.clock_steering_status_enabled == rhs.clock_steering_status_enabled &&
    lhs.clock_model_flag == rhs.clock_model_flag &&
    lhs.oemv_external_oscillator_flag == rhs.oemv_external_oscillator_flag &&
    lhs.software_resource_flag == rhs.software_resource_flag &&
    lhs.aux1_status_event_flag == rhs.aux1_status_event_flag &&
    lhs.aux2_status_event_flag == rhs.aux2_status_event_flag &&
    lhs.aux3_status_event_flag == rhs.aux3_status_event_flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator1> & lhs, const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace novatel_gps_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf2774401808a6dde392e2ebdb09ca15";
  }

  static const char* value(const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf2774401808a6ddULL;
  static const uint64_t static_value2 = 0xe392e2ebdb09ca15ULL;
};

template<class ContainerAllocator>
struct DataType< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "novatel_gps_msgs/NovatelReceiverStatus";
  }

  static const char* value(const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# From the original Novatel receiver status message bitfield\n"
"#  0     0x00000001   Error flag (Bit = 0: No Error, Bit = 1: Error)\n"
"#  1     0x00000002   Temperature Status (0: Within Spec, 1: Warning)\n"
"#  2     0x00000004   Voltage Supply Status (0: OK, 1: Warning)\n"
"#  3     0x00000008   Antenna Power Status (0: Powered, 1: Not Powered)\n"
"#  4     0x00000010   <Reserved>\n"
"#  5     0x00000020   Antenna open flag (0: OK, 1: Open)\n"
"#  6     0x00000040   Antenna shorted flag (0: OK, 1: Shorted)\n"
"#  7     0x00000080   CPU overload flag\n"
"#  8     0x00000100   COM1 buffer overrun flag (0: No overrun, 1: Overrun)\n"
"#  9     0x00000200   COM2 buffer overrun flag (0: No overrun, 1: Overrun)\n"
"#  10    0x00000400   COM3 buffer overrun flag (0: No overrun, 1: Overrun)\n"
"#  11    0x00000800   USB buffer overrun flag (0: No overrun, 1: Overrun)\n"
"#  12    0x00001000   <Reserved>\n"
"#  13    0x00002000   <Reserved>\n"
"#  14    0x00004000   <Reserved>\n"
"#  15    0x00008000   RF1 AGC Status (0: OK, 1: Bad)\n"
"#  16    0x00010000   <Reserverd>\n"
"#  17    0x00020000   RF2 AGC status (0: OK, 1: Bad)\n"
"#  18    0x00040000   Almanac flag/UTC known (0: Valid, 1: Invalid)\n"
"#  19    0x00080000   Position solution flag (0: Valid, 1: Invalid)\n"
"#  20    0x00100000   Position fixed flag (0: Not fixed, 1: Fixed)\n"
"#  21    0x00200000   Clock steering status (0: Enabled, 1: Disabled)\n"
"#  22    0x00400000   Clock model flag (0: Valid, 1: Invalid)\n"
"#  23    0x00800000   OEMV external oscillator flag (0: Disabled, 1: Enabled)\n"
"#  24    0x01000000   Software resource (0: OK, 1: Warning)\n"
"#  25    0x02000000   <Reserved>\n"
"#  26    0x04000000   <Reserved>\n"
"#  27    0x08000000   <Reserved>\n"
"#  28    0x10000000   <Reserved>\n"
"#  29    0x20000000   Auxiliary 3 status event flag (0: No event, 1: Event)\n"
"#  30    0x40000000   Auxiliary 2 status event flag (0: No event, 1: Event)\n"
"#  31    0x80000000   Auxiliary 1 status event flag (0: No event, 1: Event)\n"
"uint32 original_status_code\n"
"bool error_flag\n"
"bool temperature_flag\n"
"bool voltage_supply_flag\n"
"bool antenna_powered\n"
"bool antenna_is_open\n"
"bool antenna_is_shorted\n"
"bool cpu_overload_flag\n"
"bool com1_buffer_overrun\n"
"bool com2_buffer_overrun\n"
"bool com3_buffer_overrun\n"
"bool usb_buffer_overrun\n"
"bool rf1_agc_flag\n"
"bool rf2_agc_flag\n"
"bool almanac_flag\n"
"bool position_solution_flag\n"
"bool position_fixed_flag\n"
"bool clock_steering_status_enabled\n"
"bool clock_model_flag\n"
"bool oemv_external_oscillator_flag\n"
"bool software_resource_flag\n"
"bool aux1_status_event_flag\n"
"bool aux2_status_event_flag\n"
"bool aux3_status_event_flag\n"
"\n"
;
  }

  static const char* value(const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.original_status_code);
      stream.next(m.error_flag);
      stream.next(m.temperature_flag);
      stream.next(m.voltage_supply_flag);
      stream.next(m.antenna_powered);
      stream.next(m.antenna_is_open);
      stream.next(m.antenna_is_shorted);
      stream.next(m.cpu_overload_flag);
      stream.next(m.com1_buffer_overrun);
      stream.next(m.com2_buffer_overrun);
      stream.next(m.com3_buffer_overrun);
      stream.next(m.usb_buffer_overrun);
      stream.next(m.rf1_agc_flag);
      stream.next(m.rf2_agc_flag);
      stream.next(m.almanac_flag);
      stream.next(m.position_solution_flag);
      stream.next(m.position_fixed_flag);
      stream.next(m.clock_steering_status_enabled);
      stream.next(m.clock_model_flag);
      stream.next(m.oemv_external_oscillator_flag);
      stream.next(m.software_resource_flag);
      stream.next(m.aux1_status_event_flag);
      stream.next(m.aux2_status_event_flag);
      stream.next(m.aux3_status_event_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NovatelReceiverStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::novatel_gps_msgs::NovatelReceiverStatus_<ContainerAllocator>& v)
  {
    s << indent << "original_status_code: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.original_status_code);
    s << indent << "error_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error_flag);
    s << indent << "temperature_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.temperature_flag);
    s << indent << "voltage_supply_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.voltage_supply_flag);
    s << indent << "antenna_powered: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.antenna_powered);
    s << indent << "antenna_is_open: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.antenna_is_open);
    s << indent << "antenna_is_shorted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.antenna_is_shorted);
    s << indent << "cpu_overload_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cpu_overload_flag);
    s << indent << "com1_buffer_overrun: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.com1_buffer_overrun);
    s << indent << "com2_buffer_overrun: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.com2_buffer_overrun);
    s << indent << "com3_buffer_overrun: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.com3_buffer_overrun);
    s << indent << "usb_buffer_overrun: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.usb_buffer_overrun);
    s << indent << "rf1_agc_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rf1_agc_flag);
    s << indent << "rf2_agc_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rf2_agc_flag);
    s << indent << "almanac_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.almanac_flag);
    s << indent << "position_solution_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.position_solution_flag);
    s << indent << "position_fixed_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.position_fixed_flag);
    s << indent << "clock_steering_status_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clock_steering_status_enabled);
    s << indent << "clock_model_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clock_model_flag);
    s << indent << "oemv_external_oscillator_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.oemv_external_oscillator_flag);
    s << indent << "software_resource_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.software_resource_flag);
    s << indent << "aux1_status_event_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.aux1_status_event_flag);
    s << indent << "aux2_status_event_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.aux2_status_event_flag);
    s << indent << "aux3_status_event_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.aux3_status_event_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOVATEL_GPS_MSGS_MESSAGE_NOVATELRECEIVERSTATUS_H
