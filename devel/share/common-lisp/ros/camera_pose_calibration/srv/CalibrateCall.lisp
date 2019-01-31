; Auto-generated. Do not edit!


(cl:in-package camera_pose_calibration-srv)


;//! \htmlinclude CalibrateCall-request.msg.html

(cl:defclass <CalibrateCall-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (tag_frame
    :reader tag_frame
    :initarg :tag_frame
    :type cl:string
    :initform "")
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform "")
   (point_cloud_scale_x
    :reader point_cloud_scale_x
    :initarg :point_cloud_scale_x
    :type cl:float
    :initform 0.0)
   (point_cloud_scale_y
    :reader point_cloud_scale_y
    :initarg :point_cloud_scale_y
    :type cl:float
    :initform 0.0)
   (pattern
    :reader pattern
    :initarg :pattern
    :type camera_pose_calibration-msg:PatternParameters
    :initform (cl:make-instance 'camera_pose_calibration-msg:PatternParameters)))
)

(cl:defclass CalibrateCall-request (<CalibrateCall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateCall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateCall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-srv:<CalibrateCall-request> is deprecated: use camera_pose_calibration-srv:CalibrateCall-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:image-val is deprecated.  Use camera_pose_calibration-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:cloud-val is deprecated.  Use camera_pose_calibration-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'tag_frame-val :lambda-list '(m))
(cl:defmethod tag_frame-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:tag_frame-val is deprecated.  Use camera_pose_calibration-srv:tag_frame instead.")
  (tag_frame m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:target_frame-val is deprecated.  Use camera_pose_calibration-srv:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'point_cloud_scale_x-val :lambda-list '(m))
(cl:defmethod point_cloud_scale_x-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:point_cloud_scale_x-val is deprecated.  Use camera_pose_calibration-srv:point_cloud_scale_x instead.")
  (point_cloud_scale_x m))

(cl:ensure-generic-function 'point_cloud_scale_y-val :lambda-list '(m))
(cl:defmethod point_cloud_scale_y-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:point_cloud_scale_y-val is deprecated.  Use camera_pose_calibration-srv:point_cloud_scale_y instead.")
  (point_cloud_scale_y m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <CalibrateCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:pattern-val is deprecated.  Use camera_pose_calibration-srv:pattern instead.")
  (pattern m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateCall-request>) ostream)
  "Serializes a message object of type '<CalibrateCall-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'point_cloud_scale_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'point_cloud_scale_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pattern) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateCall-request>) istream)
  "Deserializes a message object of type '<CalibrateCall-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_cloud_scale_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_cloud_scale_y) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pattern) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateCall-request>)))
  "Returns string type for a service object of type '<CalibrateCall-request>"
  "camera_pose_calibration/CalibrateCallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateCall-request)))
  "Returns string type for a service object of type 'CalibrateCall-request"
  "camera_pose_calibration/CalibrateCallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateCall-request>)))
  "Returns md5sum for a message object of type '<CalibrateCall-request>"
  "981c3ddc311ecd10123dd32e60417417")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateCall-request)))
  "Returns md5sum for a message object of type 'CalibrateCall-request"
  "981c3ddc311ecd10123dd32e60417417")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateCall-request>)))
  "Returns full string definition for message of type '<CalibrateCall-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%sensor_msgs/PointCloud2 cloud~%string tag_frame~%string target_frame~%float64 point_cloud_scale_x~%float64 point_cloud_scale_y~%camera_pose_calibration/PatternParameters pattern~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: camera_pose_calibration/PatternParameters~%uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateCall-request)))
  "Returns full string definition for message of type 'CalibrateCall-request"
  (cl:format cl:nil "sensor_msgs/Image image~%sensor_msgs/PointCloud2 cloud~%string tag_frame~%string target_frame~%float64 point_cloud_scale_x~%float64 point_cloud_scale_y~%camera_pose_calibration/PatternParameters pattern~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: camera_pose_calibration/PatternParameters~%uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateCall-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     4 (cl:length (cl:slot-value msg 'tag_frame))
     4 (cl:length (cl:slot-value msg 'target_frame))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pattern))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateCall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateCall-request
    (cl:cons ':image (image msg))
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':tag_frame (tag_frame msg))
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':point_cloud_scale_x (point_cloud_scale_x msg))
    (cl:cons ':point_cloud_scale_y (point_cloud_scale_y msg))
    (cl:cons ':pattern (pattern msg))
))
;//! \htmlinclude CalibrateCall-response.msg.html

(cl:defclass <CalibrateCall-response> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass CalibrateCall-response (<CalibrateCall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateCall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateCall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-srv:<CalibrateCall-response> is deprecated: use camera_pose_calibration-srv:CalibrateCall-response instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <CalibrateCall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:transform-val is deprecated.  Use camera_pose_calibration-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateCall-response>) ostream)
  "Serializes a message object of type '<CalibrateCall-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateCall-response>) istream)
  "Deserializes a message object of type '<CalibrateCall-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateCall-response>)))
  "Returns string type for a service object of type '<CalibrateCall-response>"
  "camera_pose_calibration/CalibrateCallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateCall-response)))
  "Returns string type for a service object of type 'CalibrateCall-response"
  "camera_pose_calibration/CalibrateCallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateCall-response>)))
  "Returns md5sum for a message object of type '<CalibrateCall-response>"
  "981c3ddc311ecd10123dd32e60417417")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateCall-response)))
  "Returns md5sum for a message object of type 'CalibrateCall-response"
  "981c3ddc311ecd10123dd32e60417417")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateCall-response>)))
  "Returns full string definition for message of type '<CalibrateCall-response>"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateCall-response)))
  "Returns full string definition for message of type 'CalibrateCall-response"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateCall-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateCall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateCall-response
    (cl:cons ':transform (transform msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalibrateCall)))
  'CalibrateCall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalibrateCall)))
  'CalibrateCall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateCall)))
  "Returns string type for a service object of type '<CalibrateCall>"
  "camera_pose_calibration/CalibrateCall")