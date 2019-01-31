# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_pose_calibration/CalibrateTopicRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import camera_pose_calibration.msg

class CalibrateTopicRequest(genpy.Message):
  _md5sum = "0769d4513a9cf910e06da4a02178112c"
  _type = "camera_pose_calibration/CalibrateTopicRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string tag_frame
string target_frame
float64 point_cloud_scale_x
float64 point_cloud_scale_y
camera_pose_calibration/PatternParameters pattern

================================================================================
MSG: camera_pose_calibration/PatternParameters
uint8 pattern_width
uint8 pattern_height
float64 pattern_distance
float64 neighbor_distance
float64 valid_pattern_ratio_threshold
"""
  __slots__ = ['tag_frame','target_frame','point_cloud_scale_x','point_cloud_scale_y','pattern']
  _slot_types = ['string','string','float64','float64','camera_pose_calibration/PatternParameters']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       tag_frame,target_frame,point_cloud_scale_x,point_cloud_scale_y,pattern

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CalibrateTopicRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.tag_frame is None:
        self.tag_frame = ''
      if self.target_frame is None:
        self.target_frame = ''
      if self.point_cloud_scale_x is None:
        self.point_cloud_scale_x = 0.
      if self.point_cloud_scale_y is None:
        self.point_cloud_scale_y = 0.
      if self.pattern is None:
        self.pattern = camera_pose_calibration.msg.PatternParameters()
    else:
      self.tag_frame = ''
      self.target_frame = ''
      self.point_cloud_scale_x = 0.
      self.point_cloud_scale_y = 0.
      self.pattern = camera_pose_calibration.msg.PatternParameters()

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
      _x = self.tag_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.target_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2d2B3d().pack(_x.point_cloud_scale_x, _x.point_cloud_scale_y, _x.pattern.pattern_width, _x.pattern.pattern_height, _x.pattern.pattern_distance, _x.pattern.neighbor_distance, _x.pattern.valid_pattern_ratio_threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pattern is None:
        self.pattern = camera_pose_calibration.msg.PatternParameters()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tag_frame = str[start:end].decode('utf-8')
      else:
        self.tag_frame = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_frame = str[start:end].decode('utf-8')
      else:
        self.target_frame = str[start:end]
      _x = self
      start = end
      end += 42
      (_x.point_cloud_scale_x, _x.point_cloud_scale_y, _x.pattern.pattern_width, _x.pattern.pattern_height, _x.pattern.pattern_distance, _x.pattern.neighbor_distance, _x.pattern.valid_pattern_ratio_threshold,) = _get_struct_2d2B3d().unpack(str[start:end])
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
      _x = self.tag_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.target_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2d2B3d().pack(_x.point_cloud_scale_x, _x.point_cloud_scale_y, _x.pattern.pattern_width, _x.pattern.pattern_height, _x.pattern.pattern_distance, _x.pattern.neighbor_distance, _x.pattern.valid_pattern_ratio_threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pattern is None:
        self.pattern = camera_pose_calibration.msg.PatternParameters()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tag_frame = str[start:end].decode('utf-8')
      else:
        self.tag_frame = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_frame = str[start:end].decode('utf-8')
      else:
        self.target_frame = str[start:end]
      _x = self
      start = end
      end += 42
      (_x.point_cloud_scale_x, _x.point_cloud_scale_y, _x.pattern.pattern_width, _x.pattern.pattern_height, _x.pattern.pattern_distance, _x.pattern.neighbor_distance, _x.pattern.valid_pattern_ratio_threshold,) = _get_struct_2d2B3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d2B3d = None
def _get_struct_2d2B3d():
    global _struct_2d2B3d
    if _struct_2d2B3d is None:
        _struct_2d2B3d = struct.Struct("<2d2B3d")
    return _struct_2d2B3d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_pose_calibration/CalibrateTopicResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class CalibrateTopicResponse(genpy.Message):
  _md5sum = "c2d1de03cf5b052350d875b7cfbc84a5"
  _type = "camera_pose_calibration/CalibrateTopicResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Transform transform


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['transform']
  _slot_types = ['geometry_msgs/Transform']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       transform

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CalibrateTopicResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
    else:
      self.transform = geometry_msgs.msg.Transform()

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
      buff.write(_get_struct_7d().pack(_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w,) = _get_struct_7d().unpack(str[start:end])
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
      buff.write(_get_struct_7d().pack(_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
class CalibrateTopic(object):
  _type          = 'camera_pose_calibration/CalibrateTopic'
  _md5sum = '5e8812e45640426c831a0c069f6d5f72'
  _request_class  = CalibrateTopicRequest
  _response_class = CalibrateTopicResponse
