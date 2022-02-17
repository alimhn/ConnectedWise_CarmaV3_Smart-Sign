# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/EnabledLaneList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class EnabledLaneList(genpy.Message):
  _md5sum = "bac2474615e566c4122e6a3675ef4441"
  _type = "j2735_msgs/EnabledLaneList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# EnabledLaneList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Enabled Lane List data frame is a sequence of lane IDs for lane objects that are activated in the current map
# configuration. These lanes, unlike most lanes, have their RevocableLane bit set to one (asserted). Such lanes are not
# considered to be part of the current map unless they are in the Enabled Lane List. This concept is used to describe all the
# possible regulatory states for a given physical lane.
#
# EnabledLaneList ::= SEQUENCE (SIZE(1..16)) OF LaneID
#-- The unique ID numbers for each
#-- lane object which is 'active'
#-- as part of the dynamic map contents.

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is not available or not known
# -- the value 255 is reserved for future use
uint16[] lane_id_list"""
  __slots__ = ['lane_id_list']
  _slot_types = ['uint16[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lane_id_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EnabledLaneList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.lane_id_list is None:
        self.lane_id_list = []
    else:
      self.lane_id_list = []

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
      length = len(self.lane_id_list)
      buff.write(_struct_I.pack(length))
      pattern = '<%sH'%length
      buff.write(struct.Struct(pattern).pack(*self.lane_id_list))
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
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sH'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lane_id_list = s.unpack(str[start:end])
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
      length = len(self.lane_id_list)
      buff.write(_struct_I.pack(length))
      pattern = '<%sH'%length
      buff.write(self.lane_id_list.tostring())
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
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sH'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lane_id_list = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I