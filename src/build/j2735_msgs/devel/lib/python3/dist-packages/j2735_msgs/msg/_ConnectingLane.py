# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/ConnectingLane.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import j2735_msgs.msg

class ConnectingLane(genpy.Message):
  _md5sum = "39012b597fc8bbc11af942fd310810ca"
  _type = "j2735_msgs/ConnectingLane"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# ConnectingLane.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# ConnectingLane ::= SEQUENCE {
# lane LaneID,
# -- Index of the connecting lane
# maneuver AllowedManeuvers OPTIONAL
# -- The Maneuver between
# -- the enclosing lane and this lane
# -- at the stop line to connect them
# }

# LaneID ::= INTEGER (0..255)
# -- the value 0 shall be used when the lane ID is
# -- not available or not known
# -- the value 255 is reserved for future use
uint16 lane
uint16 LANE_UNAVAILABLE=0

# -- the permitted maneuvers for this lane
# AllowedManeuvers ::= BIT STRING {
# -- With bits as defined:
# -- Allowed maneuvers at path end (stop line)
# -- *** All maneuvers with bits not set are therefore prohibited ! ***
# -- A value of zero shall be used for unknown, indicating no Maneuver
j2735_msgs/AllowedManeuvers maneuver
bool maneuver_exists



================================================================================
MSG: j2735_msgs/AllowedManeuvers
#
# AllowedManeuvers.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# AllowedManeuvers ::= BIT STRING {
# -- With bits as defined:
# -- Allowed maneuvers at path end (stop line)
# -- All maneuvers with bits not set are therefore prohibited !
# -- A value of zero shall be used for unknown, indicating no Maneuver
# maneuverStraightAllowed(0),
# -- a Straight movement is allowed in this lane
# maneuverLeftAllowed(1),
# -- a Left Turn movement is allowed in this lane
# maneuverRightAllowed(2),
# -- a Right Turn movement is allowed in this lane
# maneuverUTurnAllowed(3),
# -- a U turn movement is allowed in this lane
# maneuverLeftTurnOnRedAllowed (4),
# -- a Stop, and then proceed when safe movement
# -- is allowed in this lane
# maneuverRightTurnOnRedAllowed (5),
# -- a Stop, and then proceed when safe movement
# -- is allowed in this lane
# maneuverLaneChangeAllowed(6),
# -- a movement which changes to an outer lane
# -- on the egress side is allowed in this lane
# -- (example: left into either outbound lane)
# maneuverNoStoppingAllowed(7),
# -- the vehicle should not stop at the stop line
# -- (example: a flashing green arrow)
# yieldAllwaysRequired(8),
# -- the allowed movements above are not protected
# -- (example: an permanent yellow condition)
# goWithHalt(9),
# -- after making a full stop, may proceed
# caution(10),
# -- proceed past stop line with caution
# reserved1(11)
# -- used to align to 12 Bit Field
# } (SIZE(12))

uint16 allowed_maneuvers

# Bit flags
uint16 STRAIGHT=1
uint16 LEFT_TURN=2
uint16 RIGHT_TURN=4
uint16 U_TURN=8
uint16 LEFT_TURN_ON_RED=16
uint16 RIGHT_TURN_ON_RED=32
uint16 LANE_CHANGE=64
uint16 NO_STOPPING_ALLOWED=128
uint16 ALWAYS_YIELD=256
uint16 GO_WITH_HALT=512
uint16 CAUTION=1024
"""
  # Pseudo-constants
  LANE_UNAVAILABLE = 0

  __slots__ = ['lane','maneuver','maneuver_exists']
  _slot_types = ['uint16','j2735_msgs/AllowedManeuvers','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lane,maneuver,maneuver_exists

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConnectingLane, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.lane is None:
        self.lane = 0
      if self.maneuver is None:
        self.maneuver = j2735_msgs.msg.AllowedManeuvers()
      if self.maneuver_exists is None:
        self.maneuver_exists = False
    else:
      self.lane = 0
      self.maneuver = j2735_msgs.msg.AllowedManeuvers()
      self.maneuver_exists = False

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
      buff.write(_get_struct_2HB().pack(_x.lane, _x.maneuver.allowed_maneuvers, _x.maneuver_exists))
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
      if self.maneuver is None:
        self.maneuver = j2735_msgs.msg.AllowedManeuvers()
      end = 0
      _x = self
      start = end
      end += 5
      (_x.lane, _x.maneuver.allowed_maneuvers, _x.maneuver_exists,) = _get_struct_2HB().unpack(str[start:end])
      self.maneuver_exists = bool(self.maneuver_exists)
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
      buff.write(_get_struct_2HB().pack(_x.lane, _x.maneuver.allowed_maneuvers, _x.maneuver_exists))
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
      if self.maneuver is None:
        self.maneuver = j2735_msgs.msg.AllowedManeuvers()
      end = 0
      _x = self
      start = end
      end += 5
      (_x.lane, _x.maneuver.allowed_maneuvers, _x.maneuver_exists,) = _get_struct_2HB().unpack(str[start:end])
      self.maneuver_exists = bool(self.maneuver_exists)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2HB = None
def _get_struct_2HB():
    global _struct_2HB
    if _struct_2HB is None:
        _struct_2HB = struct.Struct("<2HB")
    return _struct_2HB
