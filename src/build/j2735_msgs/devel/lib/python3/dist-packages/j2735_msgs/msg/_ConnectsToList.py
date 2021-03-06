# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/ConnectsToList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import j2735_msgs.msg

class ConnectsToList(genpy.Message):
  _md5sum = "3ebe5fd15cf3f33abba7b953dda1da83"
  _type = "j2735_msgs/ConnectsToList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# ConnectsToList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The ConnectsToList data structure is used in the generic lane descriptions to provide a sequence of other defined
# lanes to which each lane connects beyond its stop point. See the Connection data frame entry for details. Note that this
# data frame is not used in some lane object types.
#
# ConnectsToList ::= SEQUENCE (SIZE(1..16)) OF Connection

j2735_msgs/Connection[] connect_to_list

================================================================================
MSG: j2735_msgs/Connection
#
# Connection.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The Connection data structure is used in the ConnectsToList data frame to provide data about how the stop line at
# the end of a single lane connects to another lane beyond its stop point. The ConnectingLane entry ties an outbound
# (egress) lane by its index to a valid single maneuver required to reach that outbound lane. The SignalGroupID maps this
# to a single SPAT index. (Note that more than one entry can exist for any given lane to handle admissive and protected
# conditions).
#
# Connection ::= SEQUENCE {
# -- The subject lane connecting to this lane is:
# connectingLane ConnectingLane,
# -- The index of the connecting lane and also
# -- the maneuver from the current lane to it
# remoteIntersection IntersectionReferenceID OPTIONAL,
# -- This entry is only used when the
# -- indicated connecting lane belongs
# -- to another intersection layout. This
# -- provides a means to create meshes of lanes
# -- SPAT mapping details at the stop line are:
# signalGroup SignalGroupID OPTIONAL,
# -- The matching signal group send by
# -- the SPAT message for this lane/maneuver.
# -- Shall be present unless the connectingLane
# -- has no signal group (is un-signalized)
# userClass RestrictionClassID OPTIONAL,
# -- The Restriction Class of users this applies to
# -- The use of some lane/maneuver and SignalGroupID
# -- pairings are restricted to selected users.
# -- When absent, the SignalGroupID applies to all
# -- Movement assist details are given by:
# connectionID LaneConnectionID OPTIONAL
# -- An optional connection index used to
# -- relate this lane connection to any dynamic
# -- clearance data in the SPAT. Note that
# -- the index may be shared with other
# -- connections if the clearance data is common
# }

j2735_msgs/ConnectingLane connecting_lane

j2735_msgs/IntersectionReferenceID remote_intersection
bool remote_intersection_exists

# SignalGroupID ::= INTEGER (0..255)
uint8 signal_group
bool signal_group_exists

# RestrictionClassID ::= INTEGER (0..255)
uint8 user_class
bool user_class_exists

# LaneConnectionID ::= INTEGER (0..255)
uint8 connection_id
bool connection_id_exists

================================================================================
MSG: j2735_msgs/ConnectingLane
#
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

================================================================================
MSG: j2735_msgs/IntersectionReferenceID
#
# IntersectionReferenceID.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The IntersectionReferenceID data frame conveys the combination of an optional RoadRegulatorID and of an
# IntersectionID that is unique within that region. When the RoadRegulatorID is present the IntersectionReferenceID is
# guaranteed to be globally unique.

# region RoadRegulatorID OPTIONAL ::= INTEGER (0..65535)
# -- a globally unique regional assignment value
# -- typical assigned to a regional DOT authority
# -- the value zero shall be used for testing needs
# 0 is a J2735 value for testing needs, and carma can use it to indicate optional field was not set or unavailable.
uint16 region
uint16 REGION_UNAVAILABLE=0
bool region_exists

# id IntersectionID ::= INTEGER (0..65535)
# -- a unique mapping to the intersection
# -- in question within the above region of use
uint16 id
"""
  __slots__ = ['connect_to_list']
  _slot_types = ['j2735_msgs/Connection[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       connect_to_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConnectsToList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.connect_to_list is None:
        self.connect_to_list = []
    else:
      self.connect_to_list = []

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
      length = len(self.connect_to_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.connect_to_list:
        _v1 = val1.connecting_lane
        _x = _v1.lane
        buff.write(_get_struct_H().pack(_x))
        _v2 = _v1.maneuver
        _x = _v2.allowed_maneuvers
        buff.write(_get_struct_H().pack(_x))
        _x = _v1.maneuver_exists
        buff.write(_get_struct_B().pack(_x))
        _v3 = val1.remote_intersection
        _x = _v3
        buff.write(_get_struct_HBH().pack(_x.region, _x.region_exists, _x.id))
        _x = val1
        buff.write(_get_struct_7B().pack(_x.remote_intersection_exists, _x.signal_group, _x.signal_group_exists, _x.user_class, _x.user_class_exists, _x.connection_id, _x.connection_id_exists))
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
      if self.connect_to_list is None:
        self.connect_to_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.connect_to_list = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.Connection()
        _v4 = val1.connecting_lane
        start = end
        end += 2
        (_v4.lane,) = _get_struct_H().unpack(str[start:end])
        _v5 = _v4.maneuver
        start = end
        end += 2
        (_v5.allowed_maneuvers,) = _get_struct_H().unpack(str[start:end])
        start = end
        end += 1
        (_v4.maneuver_exists,) = _get_struct_B().unpack(str[start:end])
        _v4.maneuver_exists = bool(_v4.maneuver_exists)
        _v6 = val1.remote_intersection
        _x = _v6
        start = end
        end += 5
        (_x.region, _x.region_exists, _x.id,) = _get_struct_HBH().unpack(str[start:end])
        _v6.region_exists = bool(_v6.region_exists)
        _x = val1
        start = end
        end += 7
        (_x.remote_intersection_exists, _x.signal_group, _x.signal_group_exists, _x.user_class, _x.user_class_exists, _x.connection_id, _x.connection_id_exists,) = _get_struct_7B().unpack(str[start:end])
        val1.remote_intersection_exists = bool(val1.remote_intersection_exists)
        val1.signal_group_exists = bool(val1.signal_group_exists)
        val1.user_class_exists = bool(val1.user_class_exists)
        val1.connection_id_exists = bool(val1.connection_id_exists)
        self.connect_to_list.append(val1)
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
      length = len(self.connect_to_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.connect_to_list:
        _v7 = val1.connecting_lane
        _x = _v7.lane
        buff.write(_get_struct_H().pack(_x))
        _v8 = _v7.maneuver
        _x = _v8.allowed_maneuvers
        buff.write(_get_struct_H().pack(_x))
        _x = _v7.maneuver_exists
        buff.write(_get_struct_B().pack(_x))
        _v9 = val1.remote_intersection
        _x = _v9
        buff.write(_get_struct_HBH().pack(_x.region, _x.region_exists, _x.id))
        _x = val1
        buff.write(_get_struct_7B().pack(_x.remote_intersection_exists, _x.signal_group, _x.signal_group_exists, _x.user_class, _x.user_class_exists, _x.connection_id, _x.connection_id_exists))
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
      if self.connect_to_list is None:
        self.connect_to_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.connect_to_list = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.Connection()
        _v10 = val1.connecting_lane
        start = end
        end += 2
        (_v10.lane,) = _get_struct_H().unpack(str[start:end])
        _v11 = _v10.maneuver
        start = end
        end += 2
        (_v11.allowed_maneuvers,) = _get_struct_H().unpack(str[start:end])
        start = end
        end += 1
        (_v10.maneuver_exists,) = _get_struct_B().unpack(str[start:end])
        _v10.maneuver_exists = bool(_v10.maneuver_exists)
        _v12 = val1.remote_intersection
        _x = _v12
        start = end
        end += 5
        (_x.region, _x.region_exists, _x.id,) = _get_struct_HBH().unpack(str[start:end])
        _v12.region_exists = bool(_v12.region_exists)
        _x = val1
        start = end
        end += 7
        (_x.remote_intersection_exists, _x.signal_group, _x.signal_group_exists, _x.user_class, _x.user_class_exists, _x.connection_id, _x.connection_id_exists,) = _get_struct_7B().unpack(str[start:end])
        val1.remote_intersection_exists = bool(val1.remote_intersection_exists)
        val1.signal_group_exists = bool(val1.signal_group_exists)
        val1.user_class_exists = bool(val1.user_class_exists)
        val1.connection_id_exists = bool(val1.connection_id_exists)
        self.connect_to_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7B = None
def _get_struct_7B():
    global _struct_7B
    if _struct_7B is None:
        _struct_7B = struct.Struct("<7B")
    return _struct_7B
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_H = None
def _get_struct_H():
    global _struct_H
    if _struct_H is None:
        _struct_H = struct.Struct("<H")
    return _struct_H
_struct_HBH = None
def _get_struct_HBH():
    global _struct_HBH
    if _struct_HBH is None:
        _struct_HBH = struct.Struct("<HBH")
    return _struct_HBH
