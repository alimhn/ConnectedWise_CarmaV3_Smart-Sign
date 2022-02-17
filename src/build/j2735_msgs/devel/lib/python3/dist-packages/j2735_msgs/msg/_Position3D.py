# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/Position3D.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Position3D(genpy.Message):
  _md5sum = "0e694623847c02ec14299578943eeb2e"
  _type = "j2735_msgs/Position3D"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# Position3D.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
# Provides a precise location in the WGS-84 coordinate system, from which short offsets may be used
# to create additional data using a flat earth projection centered on this location.

# Position3D ::= SEQUENCE {

# lat Latitude, -- in 1/10th micro degrees
# Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
float64 latitude

float64 LATITUDE_UNAVAILABLE = 90.0000001
float64 LATITUDE_MAX = 90.0
float64 LATITUDE_MIN = -90.0

# long Longitude, -- in 1/10th micro degrees
# Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
float64 longitude

float64 LONGITUDE_UNAVAILABLE = 180.0000001
float64 LONGITUDE_MAX = 180.0
float64 LONGITUDE_MIN = -179.9999999

# elevation Elevation OPTIONAL, -- in 10 cm units
# Elevation ::= INTEGER (-4096..61439)
#  -- In units of 10 cm steps above or below the reference ellipsoid
#  -- Providing a range of -409.5 to + 6143.9 meters
#  -- The value -4096 shall be used when Unknown is to be sent
#  -- Convert to meter with factor 0.1 when field is used
float32 elevation
bool elevation_exists

float32 ELEVATION_UNAVAILABLE = -409.6
float32 ELEVATION_MAX = 6143.9
float32 ELEVATION_MIN = -409.5

#TODO: RegionalExtensions are not yet implemented in asn1c
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-Position3D}} OPTIONAL,
"""
  # Pseudo-constants
  LATITUDE_UNAVAILABLE = 90.0000001
  LATITUDE_MAX = 90.0
  LATITUDE_MIN = -90.0
  LONGITUDE_UNAVAILABLE = 180.0000001
  LONGITUDE_MAX = 180.0
  LONGITUDE_MIN = -179.9999999
  ELEVATION_UNAVAILABLE = -409.6
  ELEVATION_MAX = 6143.9
  ELEVATION_MIN = -409.5

  __slots__ = ['latitude','longitude','elevation','elevation_exists']
  _slot_types = ['float64','float64','float32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       latitude,longitude,elevation,elevation_exists

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Position3D, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.elevation is None:
        self.elevation = 0.
      if self.elevation_exists is None:
        self.elevation_exists = False
    else:
      self.latitude = 0.
      self.longitude = 0.
      self.elevation = 0.
      self.elevation_exists = False

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
      buff.write(_get_struct_2dfB().pack(_x.latitude, _x.longitude, _x.elevation, _x.elevation_exists))
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
      end += 21
      (_x.latitude, _x.longitude, _x.elevation, _x.elevation_exists,) = _get_struct_2dfB().unpack(str[start:end])
      self.elevation_exists = bool(self.elevation_exists)
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
      buff.write(_get_struct_2dfB().pack(_x.latitude, _x.longitude, _x.elevation, _x.elevation_exists))
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
      end += 21
      (_x.latitude, _x.longitude, _x.elevation, _x.elevation_exists,) = _get_struct_2dfB().unpack(str[start:end])
      self.elevation_exists = bool(self.elevation_exists)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2dfB = None
def _get_struct_2dfB():
    global _struct_2dfB
    if _struct_2dfB is None:
        _struct_2dfB = struct.Struct("<2dfB")
    return _struct_2dfB