# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/MovementPhaseState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MovementPhaseState(genpy.Message):
  _md5sum = "7d9d830cc3b901bf4f8e5aaa54a51d3d"
  _type = "j2735_msgs/MovementPhaseState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# MovementEvent.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_MovementPhaseState data element provides the overall current state of the movement (in many cases a
# signal state), including its core phase state and an indication of whether this state is permissive or protected.
#
# MovementPhaseState ::= ENUMERATED {
# -- Note that based on the regions and the operating mode not every
# -- phase will be used in all transportation modes and that not
# -- every phase will be used in all transportation modes
# unavailable (0),
# -- This state is used for unknown or error
# dark (1),
# -- The signal head is dark (unlit)
# -- Reds
# stop-Then-Proceed (2),
# -- Often called 'flashing red' in US
# -- Driver Action:
# -Stop vehicle at stop line.
# -Do not proceed unless it is safe.
# -- Note that the right to proceed either right or left
# -- it is safe may be contained in the lane description
# -- handle what is called a 'right on red'
# stop-And-Remain (3),
# -- e.g. called 'red light' in US
# -- Driver Action:
# -Stop vehicle at stop line.
# -Do not proceed.
# -- Note that the right to proceed either right or left
# -- it is safe may be contained in the lane description
# -- handle what is called a 'right on red'
# -- Greens
# pre-Movement (4),
# -- Not used in the US, red+yellow partly in EU
# -- Driver Action:
# -Stop vehicle.
# -Prepare to proceed (pending green)
# -(Prepare for transition to green/go)
# permissive-Movement-Allowed (5),
# -- Often called 'permissive green' in US
# -- Driver Action:
# -Proceed with caution,
# -must yield to all conflicting traffic
# -- Conflicting traffic may be present
# -- in the intersection conflict area
# protected-Movement-Allowed (6),
# -- Often called 'protected green' in US
# -- Driver Action:
# -Proceed, tossing caution to the wind,
# -in indicated (allowed) direction.
# -- Yellows / Ambers
# -- The vehicle is not allowed to cross the stop bar if it is possible
# -- to stop without danger.
# permissive-clearance (7),
# -- Often called 'permissive yellow' in US
# -- Driver Action:
# -Prepare to stop.
# -Proceed if unable to stop,
# -Clear Intersection.
# -- Conflicting traffic may be present
# -- in the intersection conflict area
# protected-clearance (8),
# -- Often called 'protected yellow' in US
# -- Driver Action:
# -Prepare to stop.
# -Proceed if unable to stop,
# -in indicated direction (to connected lane)
# -Clear Intersection.
# caution-Conflicting-Traffic (9)
# -- Often called 'flashing yellow' in US
# -- Often used for extended periods of time
# -- Driver Action:
# -Proceed with caution,
# -- Conflicting traffic may be present
# -- in the intersection conflict area
# }
# -- The above number assignments are not used with UPER encoding
# -- and are only to be used with DER or implicit encoding

uint8 movement_phase_state

uint8 UNAVAILABLE=0
uint8 DARK=1
uint8 STOP_THEN_PROCEED=2
uint8 STOP_AND_REMAIN=3
uint8 PRE_MOVEMENT=4
uint8 PERMISSIVE_MOVEMENT_ALLOWED=5
uint8 PROTECTED_MOVEMENT_ALLOWED=6
uint8 PERMISSIVE_CLEARANCE=7
uint8 PROTECTED_CLEARANCE=8
uint8 CAUTION_CONFLICTING_TRAFFIC=9

"""
  # Pseudo-constants
  UNAVAILABLE = 0
  DARK = 1
  STOP_THEN_PROCEED = 2
  STOP_AND_REMAIN = 3
  PRE_MOVEMENT = 4
  PERMISSIVE_MOVEMENT_ALLOWED = 5
  PROTECTED_MOVEMENT_ALLOWED = 6
  PERMISSIVE_CLEARANCE = 7
  PROTECTED_CLEARANCE = 8
  CAUTION_CONFLICTING_TRAFFIC = 9

  __slots__ = ['movement_phase_state']
  _slot_types = ['uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       movement_phase_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MovementPhaseState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.movement_phase_state is None:
        self.movement_phase_state = 0
    else:
      self.movement_phase_state = 0

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
      _x = self.movement_phase_state
      buff.write(_get_struct_B().pack(_x))
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
      end += 1
      (self.movement_phase_state,) = _get_struct_B().unpack(str[start:end])
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
      _x = self.movement_phase_state
      buff.write(_get_struct_B().pack(_x))
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
      end += 1
      (self.movement_phase_state,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
