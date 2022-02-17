# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/TimeChangeDetails.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TimeChangeDetails(genpy.Message):
  _md5sum = "48110a8000070c77171eb1bdfafa99fe"
  _type = "j2735_msgs/TimeChangeDetails"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# TimeChangeDetails.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_TimeChangeDetails data frame conveys details about the timing of a phase within a movement. The core
# data concept expressed is the time stamp (time mark) at which the related phase will change to the next state. This is
# often found in the MinEndTime element, but the other elements may be needed to convey the full concept when adaptive
# timing is employed.
#
#
# TimeChangeDetails ::= SEQUENCE {
# startTime TimeMark OPTIONAL,
# -- When this phase 1st started
# minEndTime TimeMark,
# -- Expected shortest end time
# maxEndTime TimeMark OPTIONAL,
# -- Expected longest end time
# likelyTime TimeMark OPTIONAL,
# -- Best predicted value based on other data
# confidence TimeIntervalConfidence OPTIONAL,
# -- Applies to above time element only
# nextTime TimeMark OPTIONAL
# -- A rough estimate of time when
# -- this phase may next occur again
# -- used to support various ECO driving power
# -- management needs.
# }

# TimeMark ::= INTEGER (0..36001)
# -- Tenths of a second in the current or next hour
# -- In units of 1/10th second from UTC time
# -- A range of 0~36000 covers one hour
# -- The values 35991..35999 are used when a leap second occurs
# -- The value 36000 is used to indicate time >3600 seconds
# -- 36001 is to be used when value undefined or unknown
# -- Note that this is NOT expressed in GPS time
# -- or in local time
uint16 start_time
bool start_time_exists

uint16 min_end_time

uint16 max_end_time
bool max_end_time_exists

uint16 likely_time
bool likely_time_exists

#TimeIntervalConfidence ::= INTEGER (0..15)
uint8 confidence
bool confidence_exists

# TimeMark ::= INTEGER (0..36001)
uint16 next_time
bool next_time_exists

"""
  __slots__ = ['start_time','start_time_exists','min_end_time','max_end_time','max_end_time_exists','likely_time','likely_time_exists','confidence','confidence_exists','next_time','next_time_exists']
  _slot_types = ['uint16','bool','uint16','uint16','bool','uint16','bool','uint8','bool','uint16','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       start_time,start_time_exists,min_end_time,max_end_time,max_end_time_exists,likely_time,likely_time_exists,confidence,confidence_exists,next_time,next_time_exists

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TimeChangeDetails, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.start_time is None:
        self.start_time = 0
      if self.start_time_exists is None:
        self.start_time_exists = False
      if self.min_end_time is None:
        self.min_end_time = 0
      if self.max_end_time is None:
        self.max_end_time = 0
      if self.max_end_time_exists is None:
        self.max_end_time_exists = False
      if self.likely_time is None:
        self.likely_time = 0
      if self.likely_time_exists is None:
        self.likely_time_exists = False
      if self.confidence is None:
        self.confidence = 0
      if self.confidence_exists is None:
        self.confidence_exists = False
      if self.next_time is None:
        self.next_time = 0
      if self.next_time_exists is None:
        self.next_time_exists = False
    else:
      self.start_time = 0
      self.start_time_exists = False
      self.min_end_time = 0
      self.max_end_time = 0
      self.max_end_time_exists = False
      self.likely_time = 0
      self.likely_time_exists = False
      self.confidence = 0
      self.confidence_exists = False
      self.next_time = 0
      self.next_time_exists = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_HB2HBH3BHB().pack(_x.start_time, _x.start_time_exists, _x.min_end_time, _x.max_end_time, _x.max_end_time_exists, _x.likely_time, _x.likely_time_exists, _x.confidence, _x.confidence_exists, _x.next_time, _x.next_time_exists))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.start_time, _x.start_time_exists, _x.min_end_time, _x.max_end_time, _x.max_end_time_exists, _x.likely_time, _x.likely_time_exists, _x.confidence, _x.confidence_exists, _x.next_time, _x.next_time_exists,) = _get_struct_HB2HBH3BHB().unpack(str[start:end])
      self.start_time_exists = bool(self.start_time_exists)
      self.max_end_time_exists = bool(self.max_end_time_exists)
      self.likely_time_exists = bool(self.likely_time_exists)
      self.confidence_exists = bool(self.confidence_exists)
      self.next_time_exists = bool(self.next_time_exists)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_HB2HBH3BHB().pack(_x.start_time, _x.start_time_exists, _x.min_end_time, _x.max_end_time, _x.max_end_time_exists, _x.likely_time, _x.likely_time_exists, _x.confidence, _x.confidence_exists, _x.next_time, _x.next_time_exists))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.start_time, _x.start_time_exists, _x.min_end_time, _x.max_end_time, _x.max_end_time_exists, _x.likely_time, _x.likely_time_exists, _x.confidence, _x.confidence_exists, _x.next_time, _x.next_time_exists,) = _get_struct_HB2HBH3BHB().unpack(str[start:end])
      self.start_time_exists = bool(self.start_time_exists)
      self.max_end_time_exists = bool(self.max_end_time_exists)
      self.likely_time_exists = bool(self.likely_time_exists)
      self.confidence_exists = bool(self.confidence_exists)
      self.next_time_exists = bool(self.next_time_exists)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_HB2HBH3BHB = None
def _get_struct_HB2HBH3BHB():
    global _struct_HB2HBH3BHB
    if _struct_HB2HBH3BHB is None:
        _struct_HB2HBH3BHB = struct.Struct("<HB2HBH3BHB")
    return _struct_HB2HBH3BHB