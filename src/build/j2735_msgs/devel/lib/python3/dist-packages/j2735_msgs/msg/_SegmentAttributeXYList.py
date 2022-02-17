# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/SegmentAttributeXYList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import j2735_msgs.msg

class SegmentAttributeXYList(genpy.Message):
  _md5sum = "c89c8ea8487e4681667c586a26613e54"
  _type = "j2735_msgs/SegmentAttributeXYList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# NodeAttributeXYList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
#The DF_SegmentAttributeXYList data frame consists of a list of SegmentAttributeXY entries.

#SegmentAttributeXYList ::= SEQUENCE (SIZE(1..8)) OF SegmentAttributeXY

j2735_msgs/SegmentAttributeXY[] segment_attribute_xy


================================================================================
MSG: j2735_msgs/SegmentAttributeXY
#
# SegmentAttributeXY.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DE_SegmentAttributeXY data element is an enumerated list of attributes about the current lane segment which
# may be enabled or disabled to indicate the presence or absence of the selected attribute on the segment.
#
# SegmentAttributeXY ::= ENUMERATED {
# -- Various values which can be Enabled and Disabled for a lane segment
#
# -- General Items
# reserved	,
# doNotBlock	, 	-- segment where a vehicle
# 		  	-- may not come to a stop
# whiteLine	, 	-- segment where lane crossing not allowed
# 		  	-- such as the final few meters of a lane
#
# -- Porous Lane states, merging, turn outs, parking etc.
# mergingLaneLeft,  	-- indicates porous lanes
# mergingLaneRight,
# curbOnLeft,	  	-- indicates presence of curbs
# curbOnRight,
# loadingzoneOnLeft,	-- loading or drop off zones
# loadingzoneOnRight,
# turnOutPointOnLeft,	-- opening to adjacent street/alley/road
# turnOutPointOnRight,
# adjacentParkingOnLeft, 	-- side of road parking
# adjacentParkingOnRight,
#
# -- Bike Lane Needs
# adjacentBikeLaneOnLeft, -- presence of marked bike lanes
# adjacentBikeLaneOnRight,
# sharedBikeLane, 	-- right of way is shared with bikes
# 			-- who may occupy entire lane width
# bikeBoxInFront,
#
# -- Transit Needs
# transitStopOnLeft,	-- any form of bus/transit loading
# 			-- with pull in-out access to lane on left
# transitStopOnRight, 	-- any form of bus/transit loading
# 			-- with pull in-out access to lane on right
# transitStopInLane, 	-- any form of bus/transit loading
# 			-- in mid path of the lane
# sharedWithTrackedVehicle, -- lane is shared with train or trolley
# 			-- not used for crossing tracks
#
# -- Pedestrian Support Attributes
# safeIsland, 		-- begin/end a safety island in path
# lowCurbsPresent, 	-- for ADA support
# rumbleStripPresent, 	-- for ADA support
# audibleSignalingPresent, -- for ADA support
# adaptiveTimingPresent, 	-- for ADA support
# rfSignalRequestPresent, -- Supports RF push to walk technologies
# partialCurbIntrusion, 	-- path is blocked by a median or curb
# 			-- but at least 1 meter remains open for use
# 			-- and at-grade passage
#
# -- Lane geometry details
# taperToLeft,		-- Used to control final path shape
# taperToRight,		-- Used to control final path shape
# taperToCenterLine,	-- Used to control final path shape
#
# -- Parking Lane and Curb Attributes
# parallelParking, 	-- Parking at an angle with the street
# freeParking, 		-- no restriction on use of parking
# timeRestrictionsOnParking , -- Parking is not permitted at all times
# 			-- typically used when the 'parking' lane
# 			-- becomes a driving lane at times
# costToPark, 		-- Used where parking has a cost
# midBlockCurbPresent, 	-- a protruding curb near lane edge
# unEvenPavementPresent, 	-- a disjoint height at lane edge
# ...
# }

uint8  segment_attribute_xy

uint8 RESERVED=0
uint8 DONOTBLOCK=1
uint8 WHITELINE=2
uint8 MERGINGLANELEFT=3
uint8 MERGINGLANERIGHT=4
uint8 CURBONLEFT=5
uint8 CURBONRIGHT=6
uint8 LOADINGZONEONLEFT=7
uint8 LOADINGZONEONRIGHT=8
uint8 TURNOUTPOINTONLEFT=9
uint8 TURNOUTPOINTONRIGHT=10
uint8 ADJACENTPARKINGONLEFT=11
uint8 ADJACENTPARKINGONRIGHT=12
uint8 ADJACENTBIKELANEONLEFT=13
uint8 ADJACENTBIKELANEONRIGHT=14
uint8 SHAREDBIKELANE=15
uint8 BIKEBOXINFRONT=16
uint8 TRANSITSTOPONLEFT=17
uint8 TRANSITSTOPONRIGHT=18
uint8 TRANSITSTOPINLANE=19
uint8 SHAREDWITHTRACKEDVEHICLE=20
uint8 SAFEISLAND=21
uint8 LOWCURBSPRESENT=22
uint8 RUMBLESTRIPPRESENT=23
uint8 AUDIBLESIGNALINGPRESENT=24
uint8 ADAPTIVETIMINGPRESENT=25
uint8 RFSIGNALREQUESTPRESENT=26
uint8 PARTIALCURBINTRUSION=27
uint8 TAPERTOLEFT=28
uint8 TAPERTORIGHT=29
uint8 TAPERTOCENTERLINE=30
uint8 PARALLELPARKING=31
uint8 FREEPARKING=32
uint8 TIMERESTRICTIONSONPARKING=33
uint8 COSTTOPARK=34
uint8 MIDBLOCKCURBPRESENT=35
uint8 UNEVENPAVEMENTPRESENT=36

"""
  __slots__ = ['segment_attribute_xy']
  _slot_types = ['j2735_msgs/SegmentAttributeXY[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       segment_attribute_xy

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SegmentAttributeXYList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.segment_attribute_xy is None:
        self.segment_attribute_xy = []
    else:
      self.segment_attribute_xy = []

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
      length = len(self.segment_attribute_xy)
      buff.write(_struct_I.pack(length))
      for val1 in self.segment_attribute_xy:
        _x = val1.segment_attribute_xy
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
      if self.segment_attribute_xy is None:
        self.segment_attribute_xy = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.segment_attribute_xy = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.SegmentAttributeXY()
        start = end
        end += 1
        (val1.segment_attribute_xy,) = _get_struct_B().unpack(str[start:end])
        self.segment_attribute_xy.append(val1)
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
      length = len(self.segment_attribute_xy)
      buff.write(_struct_I.pack(length))
      for val1 in self.segment_attribute_xy:
        _x = val1.segment_attribute_xy
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
      if self.segment_attribute_xy is None:
        self.segment_attribute_xy = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.segment_attribute_xy = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.SegmentAttributeXY()
        start = end
        end += 1
        (val1.segment_attribute_xy,) = _get_struct_B().unpack(str[start:end])
        self.segment_attribute_xy.append(val1)
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
