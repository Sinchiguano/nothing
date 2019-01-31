// Generated by gencpp from file camera_pose_calibration/CalibrateCallResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_POSE_CALIBRATION_MESSAGE_CALIBRATECALLRESPONSE_H
#define CAMERA_POSE_CALIBRATION_MESSAGE_CALIBRATECALLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Transform.h>

namespace camera_pose_calibration
{
template <class ContainerAllocator>
struct CalibrateCallResponse_
{
  typedef CalibrateCallResponse_<ContainerAllocator> Type;

  CalibrateCallResponse_()
    : transform()  {
    }
  CalibrateCallResponse_(const ContainerAllocator& _alloc)
    : transform(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _transform_type;
  _transform_type transform;





  typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CalibrateCallResponse_

typedef ::camera_pose_calibration::CalibrateCallResponse_<std::allocator<void> > CalibrateCallResponse;

typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallResponse > CalibrateCallResponsePtr;
typedef boost::shared_ptr< ::camera_pose_calibration::CalibrateCallResponse const> CalibrateCallResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_pose_calibration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'camera_pose_calibration': ['/home/sinchiguano/yumi_depends_ws/src/camera_pose_calibration/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c2d1de03cf5b052350d875b7cfbc84a5";
  }

  static const char* value(const ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc2d1de03cf5b0523ULL;
  static const uint64_t static_value2 = 0x50d875b7cfbc84a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_pose_calibration/CalibrateCallResponse";
  }

  static const char* value(const ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Transform transform\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.transform);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalibrateCallResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_pose_calibration::CalibrateCallResponse_<ContainerAllocator>& v)
  {
    s << indent << "transform: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.transform);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_POSE_CALIBRATION_MESSAGE_CALIBRATECALLRESPONSE_H
