# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from novatel_gps_msgs/ClockSteering.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ClockSteering(genpy.Message):
  _md5sum = "03024ea60365b742dd5e56411830735e"
  _type = "novatel_gps_msgs/ClockSteering"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# The CLOCKSTEERING log is used to monitor the current state of the clock steering process.

int8 INTERNAL_SOURCE=0
int8 EXTERNAL_SOURCE=1

int8 FIRST_ORDER_STEERING_STATE=0
int8 SECOND_ORDER_STEERING_STATE=1
int8 CALIBRATE_HIGH_STEERING_STATE=2
int8 CALIBRATE_LOW_STEERING_STATE=3
int8 CALIBRATE_CENTER_STEERING_STATE=4

# Clock source
string source

# Steering state
string steering_state

# Period of the FREQUENCYOUT signal used to control the oscillator
uint32 period

# Current pulse width of the FREQUENCYOUT signal. 
float64 pulse_width

# The current band width of the clock steering tracking loop in Hz.
float64 bandwidth

# The current clock drift change in m/s/bit for a 1 LSB pulse width. 
float32 slope

# The last valid receiver clock offset computed (m).
float64 offset

# The last valid receiver clock drift rate received (m/s).
float64 drift_rate
"""
  # Pseudo-constants
  INTERNAL_SOURCE = 0
  EXTERNAL_SOURCE = 1
  FIRST_ORDER_STEERING_STATE = 0
  SECOND_ORDER_STEERING_STATE = 1
  CALIBRATE_HIGH_STEERING_STATE = 2
  CALIBRATE_LOW_STEERING_STATE = 3
  CALIBRATE_CENTER_STEERING_STATE = 4

  __slots__ = ['source','steering_state','period','pulse_width','bandwidth','slope','offset','drift_rate']
  _slot_types = ['string','string','uint32','float64','float64','float32','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       source,steering_state,period,pulse_width,bandwidth,slope,offset,drift_rate

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ClockSteering, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.source is None:
        self.source = ''
      if self.steering_state is None:
        self.steering_state = ''
      if self.period is None:
        self.period = 0
      if self.pulse_width is None:
        self.pulse_width = 0.
      if self.bandwidth is None:
        self.bandwidth = 0.
      if self.slope is None:
        self.slope = 0.
      if self.offset is None:
        self.offset = 0.
      if self.drift_rate is None:
        self.drift_rate = 0.
    else:
      self.source = ''
      self.steering_state = ''
      self.period = 0
      self.pulse_width = 0.
      self.bandwidth = 0.
      self.slope = 0.
      self.offset = 0.
      self.drift_rate = 0.

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
      _x = self.source
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.steering_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_I2df2d().pack(_x.period, _x.pulse_width, _x.bandwidth, _x.slope, _x.offset, _x.drift_rate))
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
      start = end
      end += length
      if python3:
        self.source = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.source = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.steering_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.steering_state = str[start:end]
      _x = self
      start = end
      end += 40
      (_x.period, _x.pulse_width, _x.bandwidth, _x.slope, _x.offset, _x.drift_rate,) = _get_struct_I2df2d().unpack(str[start:end])
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
      _x = self.source
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.steering_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_I2df2d().pack(_x.period, _x.pulse_width, _x.bandwidth, _x.slope, _x.offset, _x.drift_rate))
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
      start = end
      end += length
      if python3:
        self.source = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.source = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.steering_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.steering_state = str[start:end]
      _x = self
      start = end
      end += 40
      (_x.period, _x.pulse_width, _x.bandwidth, _x.slope, _x.offset, _x.drift_rate,) = _get_struct_I2df2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I2df2d = None
def _get_struct_I2df2d():
    global _struct_I2df2d
    if _struct_I2df2d is None:
        _struct_I2df2d = struct.Struct("<I2df2d")
    return _struct_I2df2d