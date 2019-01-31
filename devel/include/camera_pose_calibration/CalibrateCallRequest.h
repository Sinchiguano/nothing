// Generated by gencpp from file camera_pose_calibration/CalibrateCallRequest.msg
// DO NOT EDIT!


#ifndef CAMERA_POSE_CALIBRATION_MESSAGE_CALIBRATECALLREQUEST_H
#define CAMERA_POSE_CALIBRATION_MESSAGE_CALIBRATECALLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/PointCloud2.h>
#include <camera_pose_calibration/PatternParameters.h>

namespace camera_pose_calibration
{
template <class ContainerAllocator>
struct CalibrateCallRequest_
{
  typedef CalibrateCallRequest_<ContainerAllocator> Type;

  CalibrateCallRequest_()
    : image()
    , cloud()
    , tag_frame()
    , target_frame()
    , point_cloud_scale_x(0.0)
    , point_cloud_scale_y(0.0)
    , pattern()  {
    }
  CalibrateCallRequest_(const ContainerAllocator& _alloc)
    : image(_alloc)
    , cloud(_alloc)
    , tag_frame(_alloc)
    , target_frame(_alloc)
    , point_cloud_scale_x(0.0)
    , point_cloud_scale_y(0.0)
    , pattern(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _cloud_type;
  _cloud_type cloud;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _tag_frame_type;
  _tag_frame_type tag_frame;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _target_frame_type;
  _target_frame_type target_frame;

   typedef double _point_cloud_scale_x_type;
  _point_cloud_scale_x_type point_cloud_scale_x;

   typedef double _point_cloud_scale_y_type;
  _point_cloud_scale_y_type point_cloud_scale_y;

   typedef  ::camera_pose_calibration::PatternParameters_<ContainerAllocator>  _pattern_type;
  _pattern_type pattern;





  typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CalibrateCallRequest_

typedef ::camera_pose_calibration::CalibrateCallRequest_<std::allocator<void> > CalibrateCallRequest;

typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallRequest > CalibrateCallRequestPtr;
typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallRequest const> CalibrateCallRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_pose_calibration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'camera_pose_calibration': ['/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "272b80fc0bb93a4f95ea4c7cf4592b0c";
  }

  static const char* value(const ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x272b80fc0bb93a4fULL;
  static const uint64_t static_value2 = 0x95ea4c7cf4592b0cULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_pose_calibration/CalibrateCallRequest";
  }

  static const char* value(const ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/Image image\n\
sensor_msgs/PointCloud2 cloud\n\
string tag_frame\n\
string target_frame\n\
float64 point_cloud_scale_x\n\
float64 point_cloud_scale_y\n\
camera_pose_calibration/PatternParameters pattern\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of camera\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
\n\
================================================================================\n\
MSG: camera_pose_calibration/PatternParameters\n\
uint8 pattern_width\n\
uint8 pattern_height\n\
float64 pattern_distance\n\
float64 neighbor_distance\n\
float64 valid_pattern_ratio_threshold\n\
";
  }

  static const char* value(const ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
      stream.next(m.cloud);
      stream.next(m.tag_frame);
      stream.next(m.target_frame);
      stream.next(m.point_cloud_scale_x);
      stream.next(m.point_cloud_scale_y);
      stream.next(m.pattern);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalibrateCallRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_pose_calibration::CalibrateCallRequest_<ContainerAllocator>& v)
  {
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "cloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.cloud);
    s << indent << "tag_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.tag_frame);
    s << indent << "target_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.target_frame);
    s << indent << "point_cloud_scale_x: ";
    Printer<double>::stream(s, indent + "  ", v.point_cloud_scale_x);
    s << indent << "point_cloud_scale_y: ";
    Printer<double>::stream(s, indent + "  ", v.point_cloud_scale_y);
    s << indent << "pattern: ";
    s << std::endl;
    Printer< ::camera_pose_calibration::PatternParameters_<ContainerAllocator> >::stream(s, indent + "  ", v.pattern);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_POSE_CALIBRATION_MESSAGE_CALIBRATECALLREQUEST_H
