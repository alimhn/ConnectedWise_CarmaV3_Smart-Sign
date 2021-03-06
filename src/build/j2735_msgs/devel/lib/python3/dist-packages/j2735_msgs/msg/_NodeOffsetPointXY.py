# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/NodeOffsetPointXY.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import j2735_msgs.msg

class NodeOffsetPointXY(genpy.Message):
  _md5sum = "ec16b09fe0e361cc7f02f06980d20de3"
  _type = "j2735_msgs/NodeOffsetPointXY"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# NodeOffsetPointXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_NodeOffsetPointXY data frame presents a structure to hold different sized data frames for a single node
# point in a lane. Nodes are described in terms of X and Y offsets in units of 1 centimeter (when zoom is 1:1).
#
# NodeOffsetPointXY ::= CHOICE {
# -- Nodes with X,Y content
# node-XY1 Node-XY-20b, -- node is within 5.11m of last node
# node-XY2 Node-XY-22b, -- node is within 10.23m of last node
# node-XY3 Node-XY-24b, -- node is within 20.47m of last node
# node-XY4 Node-XY-26b, -- node is within 40.96m of last node
# node-XY5 Node-XY-28b, -- node is within 81.91m of last node
# node-XY6 Node-XY-32b, -- node is within 327.67m of last node
# node-LatLon Node-LLmD-64b, -- node is a full 32b Lat/Lon range
# regional RegionalExtension {{REGION.Reg-NodeOffsetPointXY}}
# 	-- node which follows is of a
# 	-- regional definition type
# }
#

uint8 choice
uint8 NODE_XY1=0
uint8 NODE_XY2=1
uint8 NODE_XY3=2
uint8 NODE_XY4=3
uint8 NODE_XY5=4
uint8 NODE_XY6=5
uint8 NODE_LATLON=6

j2735_msgs/NodeXY20b node_xy1
j2735_msgs/NodeXY22b node_xy2
j2735_msgs/NodeXY24b node_xy3
j2735_msgs/NodeXY26b node_xy4
j2735_msgs/NodeXY28b node_xy5
j2735_msgs/NodeXY32b node_xy6
j2735_msgs/NodeLLmD64b node_latlon
# regional #TODO: RegionalExtensions are not yet implemented in asn1c
================================================================================
MSG: j2735_msgs/NodeXY20b
#
# NodeXY20b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 20-bit node type with offset values from the last point in X and Y.
#
# Node-XY-20b ::= SEQUENCE {
# x Offset-B10,
# y Offset-B10
# }

# Offset-B10 ::= INTEGER (-512..511)
# -- a range of +- 5.11 meters
# A 10-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY22b
#
# NodeXY22b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 22-bit node type with offset values from the last point in X and Y.

# Node-XY-22b ::= SEQUENCE {
# x Offset-B11,
# y Offset-B11
# }

# Offset-B11 ::= INTEGER (-1024..1023)
# -- a range of +- 10.23 meters
# An 11-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY24b
#
# NodeXY24b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 24-bit node type with offset values from the last point in X and Y.
#
# Node-XY-24b ::= SEQUENCE {
# x Offset-B12,
# y Offset-B12
# }


# Offset-B12 ::= INTEGER (-2048..2047)
# -- a range of +- 20.47 meters
# A 12-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, non-vehicle centric coordinate frames of reference, offset is positive to the East (X) and to the North (Y)
# directions. The most negative value shall be used to indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY26b
#
# NodeXY26b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 26-bit node type with offset values from the last point in X and Y.

# Node-XY-26b ::= SEQUENCE {
# x Offset-B13,
# y Offset-B13
# }

# Offset-B13 ::= INTEGER (-4096..4095)
# -- a range of +- 40.95 meters
# A 13-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeXY28b
#
# NodeXY28b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 28-bit node type with offset values from the last point in X and Y.

# Node-XY-28b ::= SEQUENCE {
# x Offset-B14,
# y Offset-B14
# }

# A 14-bit delta offset in X or Y direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions.
# Offset-B14 ::= INTEGER (-8192..8191)
# -- a range of +- 81.91 meters

float32 x
float32 y

================================================================================
MSG: j2735_msgs/NodeXY32b
#
# NodeXY32b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 32-bit node type with offset values from the last point in X and Y.

# Node-XY-32b ::= SEQUENCE {
# x Offset-B16,
# y Offset-B16
# }

# A 16-bit delta offset in X, Y or Z direction from some known point. For non-vehicle centric coordinate frames of
# reference, offset is positive to the East (X) and to the North (Y) directions. The most negative value shall be used to
# indicate an unknown value.
# Offset-B16 ::= INTEGER (-32768..32767)
# -- a range of +- 327.68 meters

float32 x
float32 y
================================================================================
MSG: j2735_msgs/NodeLLmD64b
#
# NodeLLmD64b.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# A 64-bit node type with lat-long values expressed in standard SAE one tenth of a micro degree.

# Node-LLmD-64b ::= SEQUENCE {
# lon Longitude,
# lat Latitude
# }

#Longitude ::= INTEGER (-1799999999..1800000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 180 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 longitude

int32 LONGITUDE_UNAVAILABLE = 1800000001
int32 LONGITUDE_MAX = 1800000000
int32 LONGITUDE_MIN = -1799999999

#Latitude ::= INTEGER (-900000000..900000001)
#  -- LSB = 1/10 micro degree
#  -- Providing a range of plus-minus 90 degrees
#  -- Convert to degree with factor 0.0000001 when field is used
int32 latitude

int32 LATITUDE_UNAVAILABLE = 900000001
int32 LATITUDE_MAX = 900000000
int32 LATITUDE_MIN = -900000000




"""
  # Pseudo-constants
  NODE_XY1 = 0
  NODE_XY2 = 1
  NODE_XY3 = 2
  NODE_XY4 = 3
  NODE_XY5 = 4
  NODE_XY6 = 5
  NODE_LATLON = 6

  __slots__ = ['choice','node_xy1','node_xy2','node_xy3','node_xy4','node_xy5','node_xy6','node_latlon']
  _slot_types = ['uint8','j2735_msgs/NodeXY20b','j2735_msgs/NodeXY22b','j2735_msgs/NodeXY24b','j2735_msgs/NodeXY26b','j2735_msgs/NodeXY28b','j2735_msgs/NodeXY32b','j2735_msgs/NodeLLmD64b']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       choice,node_xy1,node_xy2,node_xy3,node_xy4,node_xy5,node_xy6,node_latlon

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NodeOffsetPointXY, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.choice is None:
        self.choice = 0
      if self.node_xy1 is None:
        self.node_xy1 = j2735_msgs.msg.NodeXY20b()
      if self.node_xy2 is None:
        self.node_xy2 = j2735_msgs.msg.NodeXY22b()
      if self.node_xy3 is None:
        self.node_xy3 = j2735_msgs.msg.NodeXY24b()
      if self.node_xy4 is None:
        self.node_xy4 = j2735_msgs.msg.NodeXY26b()
      if self.node_xy5 is None:
        self.node_xy5 = j2735_msgs.msg.NodeXY28b()
      if self.node_xy6 is None:
        self.node_xy6 = j2735_msgs.msg.NodeXY32b()
      if self.node_latlon is None:
        self.node_latlon = j2735_msgs.msg.NodeLLmD64b()
    else:
      self.choice = 0
      self.node_xy1 = j2735_msgs.msg.NodeXY20b()
      self.node_xy2 = j2735_msgs.msg.NodeXY22b()
      self.node_xy3 = j2735_msgs.msg.NodeXY24b()
      self.node_xy4 = j2735_msgs.msg.NodeXY26b()
      self.node_xy5 = j2735_msgs.msg.NodeXY28b()
      self.node_xy6 = j2735_msgs.msg.NodeXY32b()
      self.node_latlon = j2735_msgs.msg.NodeLLmD64b()

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
      buff.write(_get_struct_B12f2i().pack(_x.choice, _x.node_xy1.x, _x.node_xy1.y, _x.node_xy2.x, _x.node_xy2.y, _x.node_xy3.x, _x.node_xy3.y, _x.node_xy4.x, _x.node_xy4.y, _x.node_xy5.x, _x.node_xy5.y, _x.node_xy6.x, _x.node_xy6.y, _x.node_latlon.longitude, _x.node_latlon.latitude))
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
      if self.node_xy1 is None:
        self.node_xy1 = j2735_msgs.msg.NodeXY20b()
      if self.node_xy2 is None:
        self.node_xy2 = j2735_msgs.msg.NodeXY22b()
      if self.node_xy3 is None:
        self.node_xy3 = j2735_msgs.msg.NodeXY24b()
      if self.node_xy4 is None:
        self.node_xy4 = j2735_msgs.msg.NodeXY26b()
      if self.node_xy5 is None:
        self.node_xy5 = j2735_msgs.msg.NodeXY28b()
      if self.node_xy6 is None:
        self.node_xy6 = j2735_msgs.msg.NodeXY32b()
      if self.node_latlon is None:
        self.node_latlon = j2735_msgs.msg.NodeLLmD64b()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.choice, _x.node_xy1.x, _x.node_xy1.y, _x.node_xy2.x, _x.node_xy2.y, _x.node_xy3.x, _x.node_xy3.y, _x.node_xy4.x, _x.node_xy4.y, _x.node_xy5.x, _x.node_xy5.y, _x.node_xy6.x, _x.node_xy6.y, _x.node_latlon.longitude, _x.node_latlon.latitude,) = _get_struct_B12f2i().unpack(str[start:end])
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
      buff.write(_get_struct_B12f2i().pack(_x.choice, _x.node_xy1.x, _x.node_xy1.y, _x.node_xy2.x, _x.node_xy2.y, _x.node_xy3.x, _x.node_xy3.y, _x.node_xy4.x, _x.node_xy4.y, _x.node_xy5.x, _x.node_xy5.y, _x.node_xy6.x, _x.node_xy6.y, _x.node_latlon.longitude, _x.node_latlon.latitude))
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
      if self.node_xy1 is None:
        self.node_xy1 = j2735_msgs.msg.NodeXY20b()
      if self.node_xy2 is None:
        self.node_xy2 = j2735_msgs.msg.NodeXY22b()
      if self.node_xy3 is None:
        self.node_xy3 = j2735_msgs.msg.NodeXY24b()
      if self.node_xy4 is None:
        self.node_xy4 = j2735_msgs.msg.NodeXY26b()
      if self.node_xy5 is None:
        self.node_xy5 = j2735_msgs.msg.NodeXY28b()
      if self.node_xy6 is None:
        self.node_xy6 = j2735_msgs.msg.NodeXY32b()
      if self.node_latlon is None:
        self.node_latlon = j2735_msgs.msg.NodeLLmD64b()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.choice, _x.node_xy1.x, _x.node_xy1.y, _x.node_xy2.x, _x.node_xy2.y, _x.node_xy3.x, _x.node_xy3.y, _x.node_xy4.x, _x.node_xy4.y, _x.node_xy5.x, _x.node_xy5.y, _x.node_xy6.x, _x.node_xy6.y, _x.node_latlon.longitude, _x.node_latlon.latitude,) = _get_struct_B12f2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B12f2i = None
def _get_struct_B12f2i():
    global _struct_B12f2i
    if _struct_B12f2i is None:
        _struct_B12f2i = struct.Struct("<B12f2i")
    return _struct_B12f2i
