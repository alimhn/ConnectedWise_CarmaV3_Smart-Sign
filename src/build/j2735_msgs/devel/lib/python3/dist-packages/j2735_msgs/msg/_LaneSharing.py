# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/LaneSharing.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LaneSharing(genpy.Message):
  _md5sum = "a5b20babfaf86f7076116f556cbdd772"
  _type = "j2735_msgs/LaneSharing"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# LaneSharing.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
#
# LaneSharing ::= BIT STRING {
# -- With bits as defined:
# overlappingLaneDescriptionProvided (0),
# -- Assert when another lane object is present to describe the
# -- path of the overlapping shared lane
# -- this construct is not used for lane objects which simply cross
# multipleLanesTreatedAsOneLane(1),
# -- Assert if the lane object path and width details represents
# -- multiple lanes within it that are not further described
# -- Various modes and type of traffic that may share this lane:
# otherNonMotorizedTrafficTypes (2), -- horse drawn etc.
# individualMotorizedVehicleTraffic (3),
# busVehicleTraffic (4),
# taxiVehicleTraffic (5),
# pedestriansTraffic (6),
# cyclistVehicleTraffic (7),
# trackedVehicleTraffic (8),
# pedestrianTraffic (9)
# } (SIZE (10))
# -- All zeros would indicate 'not shared' and 'not overlapping'

uint16 lane_sharing"""
  __slots__ = ['lane_sharing']
  _slot_types = ['uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lane_sharing

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LaneSharing, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.lane_sharing is None:
        self.lane_sharing = 0
    else:
      self.lane_sharing = 0

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
      _x = self.lane_sharing
      buff.write(_get_struct_H().pack(_x))
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
      start = end
      end += 2
      (self.lane_sharing,) = _get_struct_H().unpack(str[start:end])
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
      _x = self.lane_sharing
      buff.write(_get_struct_H().pack(_x))
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
      start = end
      end += 2
      (self.lane_sharing,) = _get_struct_H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H = None
def _get_struct_H():
    global _struct_H
    if _struct_H is None:
        _struct_H = struct.Struct("<H")
    return _struct_H
