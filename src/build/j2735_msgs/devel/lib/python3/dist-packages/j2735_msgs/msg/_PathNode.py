# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/PathNode.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PathNode(genpy.Message):
  _md5sum = "1a67109c239b97f03cda3ba46da2c080"
  _type = "j2735_msgs/PathNode"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# PathNode.msg
#
# Part of the CARMA Cloud geo-fence specification not part of the official SAE j2735 standard
#
# J2735 2016 message format.
#
# @author Misheel Bayartsengel
# @version 0.1
#
# The positive x direction proceeds eastward, positive y proceeds
# northward, and positive z proceeds away from the center of the Earth. 

# X ::= INTEGER (-32768..32767)
#   -- units are in cm
int16 x
int16 y
int16 z

bool z_exists

# Width ::= INTEGER (-128..127)
#   -- units are in cm
int8 width
bool width_exists"""
  __slots__ = ['x','y','z','z_exists','width','width_exists']
  _slot_types = ['int16','int16','int16','bool','int8','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,z,z_exists,width,width_exists

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PathNode, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0
      if self.y is None:
        self.y = 0
      if self.z is None:
        self.z = 0
      if self.z_exists is None:
        self.z_exists = False
      if self.width is None:
        self.width = 0
      if self.width_exists is None:
        self.width_exists = False
    else:
      self.x = 0
      self.y = 0
      self.z = 0
      self.z_exists = False
      self.width = 0
      self.width_exists = False

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
      buff.write(_get_struct_3hBbB().pack(_x.x, _x.y, _x.z, _x.z_exists, _x.width, _x.width_exists))
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
      end += 9
      (_x.x, _x.y, _x.z, _x.z_exists, _x.width, _x.width_exists,) = _get_struct_3hBbB().unpack(str[start:end])
      self.z_exists = bool(self.z_exists)
      self.width_exists = bool(self.width_exists)
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
      buff.write(_get_struct_3hBbB().pack(_x.x, _x.y, _x.z, _x.z_exists, _x.width, _x.width_exists))
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
      end += 9
      (_x.x, _x.y, _x.z, _x.z_exists, _x.width, _x.width_exists,) = _get_struct_3hBbB().unpack(str[start:end])
      self.z_exists = bool(self.z_exists)
      self.width_exists = bool(self.width_exists)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3hBbB = None
def _get_struct_3hBbB():
    global _struct_3hBbB
    if _struct_3hBbB is None:
        _struct_3hBbB = struct.Struct("<3hBbB")
    return _struct_3hBbB
