# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from chisel_msgs/GetAllChunksServiceRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetAllChunksServiceRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "chisel_msgs/GetAllChunksServiceRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetAllChunksServiceRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from chisel_msgs/GetAllChunksServiceResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import chisel_msgs.msg
import std_msgs.msg

class GetAllChunksServiceResponse(genpy.Message):
  _md5sum = "1ed132c081b5f4f409c36677e0cb6ee0"
  _type = "chisel_msgs/GetAllChunksServiceResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """ChunkListMessage chunks



================================================================================
MSG: chisel_msgs/ChunkListMessage
Header header
ChunkMessage[] chunks

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: chisel_msgs/ChunkMessage
Header header

#Chunk ID spatial position
int32 ID_x
int32 ID_y
int32 ID_z

#Chunk spatial hash value
int64 spatial_hash

#Size of a voxel in meters
float32 resolution_meters

#number of voxels in each dimension
int32 num_voxels_x
int32 num_voxels_y
int32 num_voxels_z

#Binary serialization of distances/weights
uint32[] distance_data

#Binary serialization of colors/weights
uint32[] color_data
"""
  __slots__ = ['chunks']
  _slot_types = ['chisel_msgs/ChunkListMessage']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       chunks

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetAllChunksServiceResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.chunks is None:
        self.chunks = chisel_msgs.msg.ChunkListMessage()
    else:
      self.chunks = chisel_msgs.msg.ChunkListMessage()

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
      buff.write(_get_struct_3I().pack(_x.chunks.header.seq, _x.chunks.header.stamp.secs, _x.chunks.header.stamp.nsecs))
      _x = self.chunks.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.chunks.chunks)
      buff.write(_struct_I.pack(length))
      for val1 in self.chunks.chunks:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_3iqf3i().pack(_x.ID_x, _x.ID_y, _x.ID_z, _x.spatial_hash, _x.resolution_meters, _x.num_voxels_x, _x.num_voxels_y, _x.num_voxels_z))
        length = len(val1.distance_data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(struct.pack(pattern, *val1.distance_data))
        length = len(val1.color_data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(struct.pack(pattern, *val1.color_data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.chunks is None:
        self.chunks = chisel_msgs.msg.ChunkListMessage()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.chunks.header.seq, _x.chunks.header.stamp.secs, _x.chunks.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chunks.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.chunks.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.chunks.chunks = []
      for i in range(0, length):
        val1 = chisel_msgs.msg.ChunkMessage()
        _v3 = val1.header
        start = end
        end += 4
        (_v3.seq,) = _get_struct_I().unpack(str[start:end])
        _v4 = _v3.stamp
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.frame_id = str[start:end].decode('utf-8')
        else:
          _v3.frame_id = str[start:end]
        _x = val1
        start = end
        end += 36
        (_x.ID_x, _x.ID_y, _x.ID_z, _x.spatial_hash, _x.resolution_meters, _x.num_voxels_x, _x.num_voxels_y, _x.num_voxels_z,) = _get_struct_3iqf3i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        end += struct.calcsize(pattern)
        val1.distance_data = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        end += struct.calcsize(pattern)
        val1.color_data = struct.unpack(pattern, str[start:end])
        self.chunks.chunks.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.chunks.header.seq, _x.chunks.header.stamp.secs, _x.chunks.header.stamp.nsecs))
      _x = self.chunks.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.chunks.chunks)
      buff.write(_struct_I.pack(length))
      for val1 in self.chunks.chunks:
        _v5 = val1.header
        buff.write(_get_struct_I().pack(_v5.seq))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_3iqf3i().pack(_x.ID_x, _x.ID_y, _x.ID_z, _x.spatial_hash, _x.resolution_meters, _x.num_voxels_x, _x.num_voxels_y, _x.num_voxels_z))
        length = len(val1.distance_data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(val1.distance_data.tostring())
        length = len(val1.color_data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sI'%length
        buff.write(val1.color_data.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.chunks is None:
        self.chunks = chisel_msgs.msg.ChunkListMessage()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.chunks.header.seq, _x.chunks.header.stamp.secs, _x.chunks.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chunks.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.chunks.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.chunks.chunks = []
      for i in range(0, length):
        val1 = chisel_msgs.msg.ChunkMessage()
        _v7 = val1.header
        start = end
        end += 4
        (_v7.seq,) = _get_struct_I().unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8')
        else:
          _v7.frame_id = str[start:end]
        _x = val1
        start = end
        end += 36
        (_x.ID_x, _x.ID_y, _x.ID_z, _x.spatial_hash, _x.resolution_meters, _x.num_voxels_x, _x.num_voxels_y, _x.num_voxels_z,) = _get_struct_3iqf3i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        end += struct.calcsize(pattern)
        val1.distance_data = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sI'%length
        start = end
        end += struct.calcsize(pattern)
        val1.color_data = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
        self.chunks.chunks.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3iqf3i = None
def _get_struct_3iqf3i():
    global _struct_3iqf3i
    if _struct_3iqf3i is None:
        _struct_3iqf3i = struct.Struct("<3iqf3i")
    return _struct_3iqf3i
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
class GetAllChunksService(object):
  _type          = 'chisel_msgs/GetAllChunksService'
  _md5sum = '1ed132c081b5f4f409c36677e0cb6ee0'
  _request_class  = GetAllChunksServiceRequest
  _response_class = GetAllChunksServiceResponse
