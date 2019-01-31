;; Auto-generated. Do not edit!


(when (boundp 'camera_pose_calibration::CalibrateCall)
  (if (not (find-package "CAMERA_POSE_CALIBRATION"))
    (make-package "CAMERA_POSE_CALIBRATION"))
  (shadow 'CalibrateCall (find-package "CAMERA_POSE_CALIBRATION")))
(unless (find-package "CAMERA_POSE_CALIBRATION::CALIBRATECALL")
  (make-package "CAMERA_POSE_CALIBRATION::CALIBRATECALL"))
(unless (find-package "CAMERA_POSE_CALIBRATION::CALIBRATECALLREQUEST")
  (make-package "CAMERA_POSE_CALIBRATION::CALIBRATECALLREQUEST"))
(unless (find-package "CAMERA_POSE_CALIBRATION::CALIBRATECALLRESPONSE")
  (make-package "CAMERA_POSE_CALIBRATION::CALIBRATECALLRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass camera_pose_calibration::CalibrateCallRequest
  :super ros::object
  :slots (_image _cloud _tag_frame _target_frame _point_cloud_scale_x _point_cloud_scale_y _pattern ))

(defmethod camera_pose_calibration::CalibrateCallRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:tag_frame __tag_frame) "")
    ((:target_frame __target_frame) "")
    ((:point_cloud_scale_x __point_cloud_scale_x) 0.0)
    ((:point_cloud_scale_y __point_cloud_scale_y) 0.0)
    ((:pattern __pattern) (instance camera_pose_calibration::PatternParameters :init))
    )
   (send-super :init)
   (setq _image __image)
   (setq _cloud __cloud)
   (setq _tag_frame (string __tag_frame))
   (setq _target_frame (string __target_frame))
   (setq _point_cloud_scale_x (float __point_cloud_scale_x))
   (setq _point_cloud_scale_y (float __point_cloud_scale_y))
   (setq _pattern __pattern)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:tag_frame
   (&optional __tag_frame)
   (if __tag_frame (setq _tag_frame __tag_frame)) _tag_frame)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:point_cloud_scale_x
   (&optional __point_cloud_scale_x)
   (if __point_cloud_scale_x (setq _point_cloud_scale_x __point_cloud_scale_x)) _point_cloud_scale_x)
  (:point_cloud_scale_y
   (&optional __point_cloud_scale_y)
   (if __point_cloud_scale_y (setq _point_cloud_scale_y __point_cloud_scale_y)) _point_cloud_scale_y)
  (:pattern
   (&rest __pattern)
   (if (keywordp (car __pattern))
       (send* _pattern __pattern)
     (progn
       (if __pattern (setq _pattern (car __pattern)))
       _pattern)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ;; string _tag_frame
    4 (length _tag_frame)
    ;; string _target_frame
    4 (length _target_frame)
    ;; float64 _point_cloud_scale_x
    8
    ;; float64 _point_cloud_scale_y
    8
    ;; camera_pose_calibration/PatternParameters _pattern
    (send _pattern :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;; string _tag_frame
       (write-long (length _tag_frame) s) (princ _tag_frame s)
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;; float64 _point_cloud_scale_x
       (sys::poke _point_cloud_scale_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _point_cloud_scale_y
       (sys::poke _point_cloud_scale_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; camera_pose_calibration/PatternParameters _pattern
       (send _pattern :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;; string _tag_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _point_cloud_scale_x
     (setq _point_cloud_scale_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _point_cloud_scale_y
     (setq _point_cloud_scale_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; camera_pose_calibration/PatternParameters _pattern
     (send _pattern :deserialize buf ptr-) (incf ptr- (send _pattern :serialization-length))
   ;;
   self)
  )

(defclass camera_pose_calibration::CalibrateCallResponse
  :super ros::object
  :slots (_transform ))

(defmethod camera_pose_calibration::CalibrateCallResponse
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _transform __transform)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(defclass camera_pose_calibration::CalibrateCall
  :super ros::object
  :slots ())

(setf (get camera_pose_calibration::CalibrateCall :md5sum-) "981c3ddc311ecd10123dd32e60417417")
(setf (get camera_pose_calibration::CalibrateCall :datatype-) "camera_pose_calibration/CalibrateCall")
(setf (get camera_pose_calibration::CalibrateCall :request) camera_pose_calibration::CalibrateCallRequest)
(setf (get camera_pose_calibration::CalibrateCall :response) camera_pose_calibration::CalibrateCallResponse)

(defmethod camera_pose_calibration::CalibrateCallRequest
  (:response () (instance camera_pose_calibration::CalibrateCallResponse :init)))

(setf (get camera_pose_calibration::CalibrateCallRequest :md5sum-) "981c3ddc311ecd10123dd32e60417417")
(setf (get camera_pose_calibration::CalibrateCallRequest :datatype-) "camera_pose_calibration/CalibrateCallRequest")
(setf (get camera_pose_calibration::CalibrateCallRequest :definition-)
      "sensor_msgs/Image image
sensor_msgs/PointCloud2 cloud
string tag_frame
string target_frame
float64 point_cloud_scale_x
float64 point_cloud_scale_y
camera_pose_calibration/PatternParameters pattern

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: camera_pose_calibration/PatternParameters
uint8 pattern_width
uint8 pattern_height
float64 pattern_distance
float64 neighbor_distance
float64 valid_pattern_ratio_threshold
---
geometry_msgs/Transform transform


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
")

(setf (get camera_pose_calibration::CalibrateCallResponse :md5sum-) "981c3ddc311ecd10123dd32e60417417")
(setf (get camera_pose_calibration::CalibrateCallResponse :datatype-) "camera_pose_calibration/CalibrateCallResponse")
(setf (get camera_pose_calibration::CalibrateCallResponse :definition-)
      "sensor_msgs/Image image
sensor_msgs/PointCloud2 cloud
string tag_frame
string target_frame
float64 point_cloud_scale_x
float64 point_cloud_scale_y
camera_pose_calibration/PatternParameters pattern

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: camera_pose_calibration/PatternParameters
uint8 pattern_width
uint8 pattern_height
float64 pattern_distance
float64 neighbor_distance
float64 valid_pattern_ratio_threshold
---
geometry_msgs/Transform transform


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
")



(provide :camera_pose_calibration/CalibrateCall "981c3ddc311ecd10123dd32e60417417")


