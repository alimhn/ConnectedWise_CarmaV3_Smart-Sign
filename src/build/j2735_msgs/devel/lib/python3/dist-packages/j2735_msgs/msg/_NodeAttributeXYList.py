# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/NodeAttributeXYList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import j2735_msgs.msg

class NodeAttributeXYList(genpy.Message):
  _md5sum = "ba1a3b7f9b24a9840d91ad1b406c78fe"
  _type = "j2735_msgs/NodeAttributeXYList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# NodeAttributeXYList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The NodeAttributeXYList data frame consists of a list of NodeAttributeXY entries.
#
# NodeAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF NodeAttributeXY

j2735_msgs/NodeAttributeXY[] node_attribute_xy_List

================================================================================
MSG: j2735_msgs/NodeAttributeXY
#
# NodeAttributeXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_NodeAttributeXY data element is an enumerated list of attributes which can pertain to the current node
# point.
#
# NodeAttributeXY ::= ENUMERATED {
# -- Various values which pertain only to the current node point
#
# -- General Items
# reserved,
# stopLine,		-- point where a mid-path stop line exists
# 			-- See also 'do not block' for segments
# -- Path finish details
# roundedCapStyleA, 	-- Used to control final path rounded end shape
# 		   	-- with edge of curve at final point in a circle
# roundedCapStyleB,	-- Used to control final path rounded end shape
# 			-- with edge of curve extending 50% of width past
# 			-- final point in a circle
#
# -- Topography Points (items with no concept of a distance along the path)
# mergePoint,		-- Japan merge with 1 or more lanes
# divergePoint,		-- Japan diverge with 1 or more lanes
# downstreamStopLine,	-- Japan style downstream intersection
# 			-- (a 2nd intersection) stop line
# downstreamStartNode, 	-- Japan style downstream intersection
# 			-- (a 2nd intersection) start node
#
# -- Pedestrian Support Attributes
# closedToTraffic,	-- where a pedestrian may NOT go
# 			-- to be used during construction events
# safeIsland,		-- a pedestrian safe stopping point
# 			-- also called a traffic island
# 			-- This usage described a point feature on a path,
# 			-- other entries can describe a path
# curbPresentAtStepOff, 	-- the sidewalk to street curb is NOT
# 			-- angled where it meets the edge of the
# 			-- roadway (user must step up/down)
# -- Lane geometry details (see standard for defined shapes)
# hydrantPresent,		-- Or other services access
# ...
# }


uint8  node_attribute_xy

# enumeration values for status:
uint8 RESERVED=0
uint8 STOPLINE=1
uint8 ROUNDEDCAPSTYLEA=2
uint8 ROUNDEDCAPSTYLEB=3
uint8 MERGEPOINT=4
uint8 DIVERGEPOINT=5
uint8 DOWNSTREAMSTOPLINE=6
uint8 DOWNSTREAMSTARTNODE=7
uint8 CLOSEDTOTRAFFIC=8
uint8 SAFEISLAND=9
uint8 CURBPRESENTATSTEPOFF=10
uint8 HYDRANTPRESENT=11
"""
  __slots__ = ['node_attribute_xy_List']
  _slot_types = ['j2735_msgs/NodeAttributeXY[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       node_attribute_xy_List

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NodeAttributeXYList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.node_attribute_xy_List is None:
        self.node_attribute_xy_List = []
    else:
      self.node_attribute_xy_List = []

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
      length = len(self.node_attribute_xy_List)
      buff.write(_struct_I.pack(length))
      for val1 in self.node_attribute_xy_List:
        _x = val1.node_attribute_xy
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
      if self.node_attribute_xy_List is None:
        self.node_attribute_xy_List = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.node_attribute_xy_List = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.NodeAttributeXY()
        start = end
        end += 1
        (val1.node_attribute_xy,) = _get_struct_B().unpack(str[start:end])
        self.node_attribute_xy_List.append(val1)
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
      length = len(self.node_attribute_xy_List)
      buff.write(_struct_I.pack(length))
      for val1 in self.node_attribute_xy_List:
        _x = val1.node_attribute_xy
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
      if self.node_attribute_xy_List is None:
        self.node_attribute_xy_List = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.node_attribute_xy_List = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.NodeAttributeXY()
        start = end
        end += 1
        (val1.node_attribute_xy,) = _get_struct_B().unpack(str[start:end])
        self.node_attribute_xy_List.append(val1)
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
