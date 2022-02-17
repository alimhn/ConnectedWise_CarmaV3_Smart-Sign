# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_msgs/LaneArray.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import autoware_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class LaneArray(genpy.Message):
  _md5sum = "23abb100bdfa4ee58530bb628c974c2a"
  _type = "autoware_msgs/LaneArray"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 id
Lane[] lanes

================================================================================
MSG: autoware_msgs/Lane
Header header
int32 increment
int32 lane_id
Waypoint[] waypoints

uint32 lane_index
float32 cost
float32 closest_object_distance
float32 closest_object_velocity
bool is_blocked

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

================================================================================
MSG: autoware_msgs/Waypoint
# global id
int32 gid 
# local id
int32 lid
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
DTLane dtlane
int32 change_flag
WaypointState wpstate

uint32 lane_id
uint32 left_lane_id
uint32 right_lane_id
uint32 stop_line_id
float32 cost
float32 time_cost

# Lane Direction
# FORWARD				= 0
# FORWARD_LEFT	 		= 1
# FORWARD_RIGHT			= 2
# BACKWARD				= 3 
# BACKWARD_LEFT			= 4
# BACKWARD_RIGHT		= 5
# STANDSTILL	 		= 6
uint32 direction
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: autoware_msgs/DTLane
float64 dist
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw

================================================================================
MSG: autoware_msgs/WaypointState
int32 aid
uint8 NULLSTATE=0

# lanechange
uint8 lanechange_state

# bilinker
uint8 steering_state
uint8 STR_LEFT=1
uint8 STR_RIGHT=2
uint8 STR_STRAIGHT=3
uint8 STR_BACK=4

uint8 accel_state

uint8 stop_state
# 1 is stopline, 2 is stop which can only be released manually.
uint8 TYPE_STOPLINE=1
uint8 TYPE_STOP=2

uint8 event_state
uint8 TYPE_EVENT_NULL = 0
uint8 TYPE_EVENT_GOAL = 1
uint8 TYPE_EVENT_MIDDLE_GOAL = 2
uint8 TYPE_EVENT_POSITION_STOP = 3
uint8 TYPE_EVENT_BUS_STOP = 4
uint8 TYPE_EVENT_PARKING = 5
"""
  __slots__ = ['id','lanes']
  _slot_types = ['int32','autoware_msgs/Lane[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,lanes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LaneArray, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.lanes is None:
        self.lanes = []
    else:
      self.id = 0
      self.lanes = []

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
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2i().pack(_x.increment, _x.lane_id))
        length = len(val1.waypoints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.waypoints:
          _x = val2
          buff.write(_get_struct_2i().pack(_x.gid, _x.lid))
          _v3 = val2.pose
          _v4 = _v3.header
          _x = _v4.seq
          buff.write(_get_struct_I().pack(_x))
          _v5 = _v4.stamp
          _x = _v5
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v4.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _v6 = _v3.pose
          _v7 = _v6.position
          _x = _v7
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v8 = _v6.orientation
          _x = _v8
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          _v9 = val2.twist
          _v10 = _v9.header
          _x = _v10.seq
          buff.write(_get_struct_I().pack(_x))
          _v11 = _v10.stamp
          _x = _v11
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v10.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _v12 = _v9.twist
          _v13 = _v12.linear
          _x = _v13
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v14 = _v12.angular
          _x = _v14
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v15 = val2.dtlane
          _x = _v15
          buff.write(_get_struct_8d().pack(_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
          _x = val2.change_flag
          buff.write(_get_struct_i().pack(_x))
          _v16 = val2.wpstate
          _x = _v16
          buff.write(_get_struct_i5B().pack(_x.aid, _x.lanechange_state, _x.steering_state, _x.accel_state, _x.stop_state, _x.event_state))
          _x = val2
          buff.write(_get_struct_4I2fI().pack(_x.lane_id, _x.left_lane_id, _x.right_lane_id, _x.stop_line_id, _x.cost, _x.time_cost, _x.direction))
        _x = val1
        buff.write(_get_struct_I3fB().pack(_x.lane_index, _x.cost, _x.closest_object_distance, _x.closest_object_velocity, _x.is_blocked))
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
      if self.lanes is None:
        self.lanes = None
      end = 0
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = autoware_msgs.msg.Lane()
        _v17 = val1.header
        start = end
        end += 4
        (_v17.seq,) = _get_struct_I().unpack(str[start:end])
        _v18 = _v17.stamp
        _x = _v18
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v17.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v17.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.increment, _x.lane_id,) = _get_struct_2i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.waypoints = []
        for i in range(0, length):
          val2 = autoware_msgs.msg.Waypoint()
          _x = val2
          start = end
          end += 8
          (_x.gid, _x.lid,) = _get_struct_2i().unpack(str[start:end])
          _v19 = val2.pose
          _v20 = _v19.header
          start = end
          end += 4
          (_v20.seq,) = _get_struct_I().unpack(str[start:end])
          _v21 = _v20.stamp
          _x = _v21
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v20.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v20.frame_id = str[start:end]
          _v22 = _v19.pose
          _v23 = _v22.position
          _x = _v23
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v24 = _v22.orientation
          _x = _v24
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          _v25 = val2.twist
          _v26 = _v25.header
          start = end
          end += 4
          (_v26.seq,) = _get_struct_I().unpack(str[start:end])
          _v27 = _v26.stamp
          _x = _v27
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v26.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v26.frame_id = str[start:end]
          _v28 = _v25.twist
          _v29 = _v28.linear
          _x = _v29
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v30 = _v28.angular
          _x = _v30
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v31 = val2.dtlane
          _x = _v31
          start = end
          end += 64
          (_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _get_struct_8d().unpack(str[start:end])
          start = end
          end += 4
          (val2.change_flag,) = _get_struct_i().unpack(str[start:end])
          _v32 = val2.wpstate
          _x = _v32
          start = end
          end += 9
          (_x.aid, _x.lanechange_state, _x.steering_state, _x.accel_state, _x.stop_state, _x.event_state,) = _get_struct_i5B().unpack(str[start:end])
          _x = val2
          start = end
          end += 28
          (_x.lane_id, _x.left_lane_id, _x.right_lane_id, _x.stop_line_id, _x.cost, _x.time_cost, _x.direction,) = _get_struct_4I2fI().unpack(str[start:end])
          val1.waypoints.append(val2)
        _x = val1
        start = end
        end += 17
        (_x.lane_index, _x.cost, _x.closest_object_distance, _x.closest_object_velocity, _x.is_blocked,) = _get_struct_I3fB().unpack(str[start:end])
        val1.is_blocked = bool(val1.is_blocked)
        self.lanes.append(val1)
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
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        _v33 = val1.header
        _x = _v33.seq
        buff.write(_get_struct_I().pack(_x))
        _v34 = _v33.stamp
        _x = _v34
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v33.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2i().pack(_x.increment, _x.lane_id))
        length = len(val1.waypoints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.waypoints:
          _x = val2
          buff.write(_get_struct_2i().pack(_x.gid, _x.lid))
          _v35 = val2.pose
          _v36 = _v35.header
          _x = _v36.seq
          buff.write(_get_struct_I().pack(_x))
          _v37 = _v36.stamp
          _x = _v37
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v36.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _v38 = _v35.pose
          _v39 = _v38.position
          _x = _v39
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v40 = _v38.orientation
          _x = _v40
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          _v41 = val2.twist
          _v42 = _v41.header
          _x = _v42.seq
          buff.write(_get_struct_I().pack(_x))
          _v43 = _v42.stamp
          _x = _v43
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v42.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _v44 = _v41.twist
          _v45 = _v44.linear
          _x = _v45
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v46 = _v44.angular
          _x = _v46
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v47 = val2.dtlane
          _x = _v47
          buff.write(_get_struct_8d().pack(_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
          _x = val2.change_flag
          buff.write(_get_struct_i().pack(_x))
          _v48 = val2.wpstate
          _x = _v48
          buff.write(_get_struct_i5B().pack(_x.aid, _x.lanechange_state, _x.steering_state, _x.accel_state, _x.stop_state, _x.event_state))
          _x = val2
          buff.write(_get_struct_4I2fI().pack(_x.lane_id, _x.left_lane_id, _x.right_lane_id, _x.stop_line_id, _x.cost, _x.time_cost, _x.direction))
        _x = val1
        buff.write(_get_struct_I3fB().pack(_x.lane_index, _x.cost, _x.closest_object_distance, _x.closest_object_velocity, _x.is_blocked))
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
      if self.lanes is None:
        self.lanes = None
      end = 0
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = autoware_msgs.msg.Lane()
        _v49 = val1.header
        start = end
        end += 4
        (_v49.seq,) = _get_struct_I().unpack(str[start:end])
        _v50 = _v49.stamp
        _x = _v50
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v49.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v49.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.increment, _x.lane_id,) = _get_struct_2i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.waypoints = []
        for i in range(0, length):
          val2 = autoware_msgs.msg.Waypoint()
          _x = val2
          start = end
          end += 8
          (_x.gid, _x.lid,) = _get_struct_2i().unpack(str[start:end])
          _v51 = val2.pose
          _v52 = _v51.header
          start = end
          end += 4
          (_v52.seq,) = _get_struct_I().unpack(str[start:end])
          _v53 = _v52.stamp
          _x = _v53
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v52.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v52.frame_id = str[start:end]
          _v54 = _v51.pose
          _v55 = _v54.position
          _x = _v55
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v56 = _v54.orientation
          _x = _v56
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          _v57 = val2.twist
          _v58 = _v57.header
          start = end
          end += 4
          (_v58.seq,) = _get_struct_I().unpack(str[start:end])
          _v59 = _v58.stamp
          _x = _v59
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v58.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v58.frame_id = str[start:end]
          _v60 = _v57.twist
          _v61 = _v60.linear
          _x = _v61
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v62 = _v60.angular
          _x = _v62
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v63 = val2.dtlane
          _x = _v63
          start = end
          end += 64
          (_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _get_struct_8d().unpack(str[start:end])
          start = end
          end += 4
          (val2.change_flag,) = _get_struct_i().unpack(str[start:end])
          _v64 = val2.wpstate
          _x = _v64
          start = end
          end += 9
          (_x.aid, _x.lanechange_state, _x.steering_state, _x.accel_state, _x.stop_state, _x.event_state,) = _get_struct_i5B().unpack(str[start:end])
          _x = val2
          start = end
          end += 28
          (_x.lane_id, _x.left_lane_id, _x.right_lane_id, _x.stop_line_id, _x.cost, _x.time_cost, _x.direction,) = _get_struct_4I2fI().unpack(str[start:end])
          val1.waypoints.append(val2)
        _x = val1
        start = end
        end += 17
        (_x.lane_index, _x.cost, _x.closest_object_distance, _x.closest_object_velocity, _x.is_blocked,) = _get_struct_I3fB().unpack(str[start:end])
        val1.is_blocked = bool(val1.is_blocked)
        self.lanes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4I2fI = None
def _get_struct_4I2fI():
    global _struct_4I2fI
    if _struct_4I2fI is None:
        _struct_4I2fI = struct.Struct("<4I2fI")
    return _struct_4I2fI
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
_struct_I3fB = None
def _get_struct_I3fB():
    global _struct_I3fB
    if _struct_I3fB is None:
        _struct_I3fB = struct.Struct("<I3fB")
    return _struct_I3fB
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_i5B = None
def _get_struct_i5B():
    global _struct_i5B
    if _struct_i5B is None:
        _struct_i5B = struct.Struct("<i5B")
    return _struct_i5B
