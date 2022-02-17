# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pacmod_msgs/WiperAuxRpt.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class WiperAuxRpt(genpy.Message):
  _md5sum = "663ea0989c9628effd21f08690caa7d1"
  _type = "pacmod_msgs/WiperAuxRpt"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

bool front_wiping
bool front_wiping_is_valid
bool front_spraying
bool front_spraying_is_valid
bool rear_wiping
bool rear_wiping_is_valid
bool rear_spraying
bool rear_spraying_is_valid
bool spray_near_empty
bool spray_near_empty_is_valid
bool spray_empty
bool spray_empty_is_valid

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['header','front_wiping','front_wiping_is_valid','front_spraying','front_spraying_is_valid','rear_wiping','rear_wiping_is_valid','rear_spraying','rear_spraying_is_valid','spray_near_empty','spray_near_empty_is_valid','spray_empty','spray_empty_is_valid']
  _slot_types = ['std_msgs/Header','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,front_wiping,front_wiping_is_valid,front_spraying,front_spraying_is_valid,rear_wiping,rear_wiping_is_valid,rear_spraying,rear_spraying_is_valid,spray_near_empty,spray_near_empty_is_valid,spray_empty,spray_empty_is_valid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WiperAuxRpt, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.front_wiping is None:
        self.front_wiping = False
      if self.front_wiping_is_valid is None:
        self.front_wiping_is_valid = False
      if self.front_spraying is None:
        self.front_spraying = False
      if self.front_spraying_is_valid is None:
        self.front_spraying_is_valid = False
      if self.rear_wiping is None:
        self.rear_wiping = False
      if self.rear_wiping_is_valid is None:
        self.rear_wiping_is_valid = False
      if self.rear_spraying is None:
        self.rear_spraying = False
      if self.rear_spraying_is_valid is None:
        self.rear_spraying_is_valid = False
      if self.spray_near_empty is None:
        self.spray_near_empty = False
      if self.spray_near_empty_is_valid is None:
        self.spray_near_empty_is_valid = False
      if self.spray_empty is None:
        self.spray_empty = False
      if self.spray_empty_is_valid is None:
        self.spray_empty_is_valid = False
    else:
      self.header = std_msgs.msg.Header()
      self.front_wiping = False
      self.front_wiping_is_valid = False
      self.front_spraying = False
      self.front_spraying_is_valid = False
      self.rear_wiping = False
      self.rear_wiping_is_valid = False
      self.rear_spraying = False
      self.rear_spraying_is_valid = False
      self.spray_near_empty = False
      self.spray_near_empty_is_valid = False
      self.spray_empty = False
      self.spray_empty_is_valid = False

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_12B().pack(_x.front_wiping, _x.front_wiping_is_valid, _x.front_spraying, _x.front_spraying_is_valid, _x.rear_wiping, _x.rear_wiping_is_valid, _x.rear_spraying, _x.rear_spraying_is_valid, _x.spray_near_empty, _x.spray_near_empty_is_valid, _x.spray_empty, _x.spray_empty_is_valid))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.front_wiping, _x.front_wiping_is_valid, _x.front_spraying, _x.front_spraying_is_valid, _x.rear_wiping, _x.rear_wiping_is_valid, _x.rear_spraying, _x.rear_spraying_is_valid, _x.spray_near_empty, _x.spray_near_empty_is_valid, _x.spray_empty, _x.spray_empty_is_valid,) = _get_struct_12B().unpack(str[start:end])
      self.front_wiping = bool(self.front_wiping)
      self.front_wiping_is_valid = bool(self.front_wiping_is_valid)
      self.front_spraying = bool(self.front_spraying)
      self.front_spraying_is_valid = bool(self.front_spraying_is_valid)
      self.rear_wiping = bool(self.rear_wiping)
      self.rear_wiping_is_valid = bool(self.rear_wiping_is_valid)
      self.rear_spraying = bool(self.rear_spraying)
      self.rear_spraying_is_valid = bool(self.rear_spraying_is_valid)
      self.spray_near_empty = bool(self.spray_near_empty)
      self.spray_near_empty_is_valid = bool(self.spray_near_empty_is_valid)
      self.spray_empty = bool(self.spray_empty)
      self.spray_empty_is_valid = bool(self.spray_empty_is_valid)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_12B().pack(_x.front_wiping, _x.front_wiping_is_valid, _x.front_spraying, _x.front_spraying_is_valid, _x.rear_wiping, _x.rear_wiping_is_valid, _x.rear_spraying, _x.rear_spraying_is_valid, _x.spray_near_empty, _x.spray_near_empty_is_valid, _x.spray_empty, _x.spray_empty_is_valid))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.front_wiping, _x.front_wiping_is_valid, _x.front_spraying, _x.front_spraying_is_valid, _x.rear_wiping, _x.rear_wiping_is_valid, _x.rear_spraying, _x.rear_spraying_is_valid, _x.spray_near_empty, _x.spray_near_empty_is_valid, _x.spray_empty, _x.spray_empty_is_valid,) = _get_struct_12B().unpack(str[start:end])
      self.front_wiping = bool(self.front_wiping)
      self.front_wiping_is_valid = bool(self.front_wiping_is_valid)
      self.front_spraying = bool(self.front_spraying)
      self.front_spraying_is_valid = bool(self.front_spraying_is_valid)
      self.rear_wiping = bool(self.rear_wiping)
      self.rear_wiping_is_valid = bool(self.rear_wiping_is_valid)
      self.rear_spraying = bool(self.rear_spraying)
      self.rear_spraying_is_valid = bool(self.rear_spraying_is_valid)
      self.spray_near_empty = bool(self.spray_near_empty)
      self.spray_near_empty_is_valid = bool(self.spray_near_empty_is_valid)
      self.spray_empty = bool(self.spray_empty)
      self.spray_empty_is_valid = bool(self.spray_empty_is_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12B = None
def _get_struct_12B():
    global _struct_12B
    if _struct_12B is None:
        _struct_12B = struct.Struct("<12B")
    return _struct_12B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I