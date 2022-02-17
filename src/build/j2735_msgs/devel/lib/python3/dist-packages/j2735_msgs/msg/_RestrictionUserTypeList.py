# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from j2735_msgs/RestrictionUserTypeList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import j2735_msgs.msg

class RestrictionUserTypeList(genpy.Message):
  _md5sum = "3a32a9320c1ecb531ad83962d3922563"
  _type = "j2735_msgs/RestrictionUserTypeList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# RestrictionUserTypeList.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RestrictionUserTypeList data frame consists of a list of RestrictionUserType entries.
#
# RestrictionUserTypeList ::= SEQUENCE (SIZE(1..16)) OF RestrictionUserType

j2735_msgs/RestrictionUserType[] restriction_user_type_list
================================================================================
MSG: j2735_msgs/RestrictionUserType
#
# RestrictionUserType.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The DF_RestrictionUserType data frame is used to provide a means to select one, and only one, user type or class
# from a number of well-known lists. The selected entry is then used in the overall Restriction Class assignment process to
# indicate that a given GroupID (a way of expressing a movement in the SPAT/MAP system) applies to (is restricted to) this
# class of user.

# RestrictionUserType ::= CHOICE {
# basicType RestrictionAppliesTo,
# -- a set of the most commonly used types
# regional SEQUENCE (SIZE(1..4)) OF RegionalExtension {{REGION.Reg-RestrictionUserType}},
# ...
# }

uint8 choice
uint8 BASIC_TYPE=0
uint8 REGIONAL=1 #TODO: cannot select at this time but we shoudl move forward with treating it as a choice.

j2735_msgs/RestrictionAppliesTo basicType

#regional #TODO: RegionalExtensions are not yet implemented in asn1c

================================================================================
MSG: j2735_msgs/RestrictionAppliesTo
#
# RestrictionAppliesTo.msg
#
# J2735 2016 message format.
#
# @author Mae Fromm
# @version 0.1
#
# The RestrictionAppliesTo data element provides a short list of common vehicle
# types which may have one or more special movements at an intersection. I
#
# RestrictionAppliesTo ::= ENUMERATED {
# none, -- applies to nothing
# equippedTransit, -- buses etc.
# equippedTaxis,
# equippedOther, -- other vehicle types with
# 		-- necessary signal phase state
# 		-- reception equipment
# emissionCompliant, -- regional variants with more
# 		-- definitive items also exist
# equippedBicycle,
# weightCompliant,
# heightCompliant,
# -- Items dealing with traveler needs serviced by the infrastructure
# -- These end users (which are not vehicles) are presumed to be suitably equipped
# pedestrians,
# slowMovingPersons,
# wheelchairUsers,
# visualDisabilities,
# audioDisabilities, -- hearing
# otherUnknownDisabilities,
# ...
# }

uint8 NONE=0
uint8 EQUIPPEDTRANSIT=1
uint8 EQUIPPEDTAXIS=2
uint8 EQUIPPEDOTHER=3
uint8 EMISSIONCOMPLIANT=4
uint8 EQUIPPEDBICYCLE=5
uint8 WEIGHTCOMPLIANT=6
uint8 HEIGHTCOMPLIANT=7
uint8 PEDESTRIANS=8
uint8 SLOWMOVINGPERSONS=9
uint8 WHEELCHAIRUSERS=10
uint8 VISUALDISABILITIES=11
uint8 AUDIODISABILITIES=12
uint8 OTHERUNKNOWNDISABILITIES=13

# Variable which can be used to store a type enum value.
uint8 restriction_applies_to



"""
  __slots__ = ['restriction_user_type_list']
  _slot_types = ['j2735_msgs/RestrictionUserType[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       restriction_user_type_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RestrictionUserTypeList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.restriction_user_type_list is None:
        self.restriction_user_type_list = []
    else:
      self.restriction_user_type_list = []

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
      length = len(self.restriction_user_type_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.restriction_user_type_list:
        _x = val1.choice
        buff.write(_get_struct_B().pack(_x))
        _v1 = val1.basicType
        _x = _v1.restriction_applies_to
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
      if self.restriction_user_type_list is None:
        self.restriction_user_type_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.restriction_user_type_list = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.RestrictionUserType()
        start = end
        end += 1
        (val1.choice,) = _get_struct_B().unpack(str[start:end])
        _v2 = val1.basicType
        start = end
        end += 1
        (_v2.restriction_applies_to,) = _get_struct_B().unpack(str[start:end])
        self.restriction_user_type_list.append(val1)
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
      length = len(self.restriction_user_type_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.restriction_user_type_list:
        _x = val1.choice
        buff.write(_get_struct_B().pack(_x))
        _v3 = val1.basicType
        _x = _v3.restriction_applies_to
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
      if self.restriction_user_type_list is None:
        self.restriction_user_type_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.restriction_user_type_list = []
      for i in range(0, length):
        val1 = j2735_msgs.msg.RestrictionUserType()
        start = end
        end += 1
        (val1.choice,) = _get_struct_B().unpack(str[start:end])
        _v4 = val1.basicType
        start = end
        end += 1
        (_v4.restriction_applies_to,) = _get_struct_B().unpack(str[start:end])
        self.restriction_user_type_list.append(val1)
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
