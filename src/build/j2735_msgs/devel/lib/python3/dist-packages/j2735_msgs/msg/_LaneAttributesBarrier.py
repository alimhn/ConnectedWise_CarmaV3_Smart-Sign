# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/LaneAttributesBarrier.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LaneAttributesBarrier(genpy.Message):
  _md5sum = "5531954e90106cf99fd38e717468b88b"
  _type = "j2735_msgs/LaneAttributesBarrier"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# LaneAttributesBarrier.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The LaneAttributes-Barrier data element relates specific properties found in a Barrier
# or Median lane type (a type of lane object used to separate traffic lanes).
#
# LaneAttributes-Barrier ::= BIT STRING {
# -- With bits as defined:
# median-RevocableLane (0),
# -- this lane may be activated or not based
# -- on the current SPAT message contents
# -- if not asserted, the lane is ALWAYS present
# median (1),
# whiteLineHashing (2),
# stripedLines (3),
# doubleStripedLines (4),
# trafficCones (5),
# constructionBarrier(6),
# trafficChannels(7),
# lowCurbs(8),
# highCurbs(9)
# -- Bits 10~15 reserved and set to zero
# } (SIZE (16))

uint16 lane_attributes_barrier"""
  __slots__ = ['lane_attributes_barrier']
  _slot_types = ['uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lane_attributes_barrier

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LaneAttributesBarrier, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.lane_attributes_barrier is None:
        self.lane_attributes_barrier = 0
    else:
      self.lane_attributes_barrier = 0

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
      _x = self.lane_attributes_barrier
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
      (self.lane_attributes_barrier,) = _get_struct_H().unpack(str[start:end])
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
      _x = self.lane_attributes_barrier
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
      (self.lane_attributes_barrier,) = _get_struct_H().unpack(str[start:end])
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