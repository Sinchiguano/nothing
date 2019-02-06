;; Auto-generated. Do not edit!


(when (boundp 'camera_pose_calibration::CalibrateTopic)
  (if (not (find-package "CAMERA_POSE_CALIBRATION"))
    (make-package "CAMERA_POSE_CALIBRATION"))
  (shadow 'CalibrateTopic (find-package "CAMERA_POSE_CALIBRATION")))
(unless (find-package "CAMERA_POSE_CALIBRATION::CALIBRATETOPIC")
  (make-package "CAMERA_POSE_CALIBRATION::CALIBRATETOPIC"))
(unless (find-package "CAMERA_POSE_CALIBRATION::CALIBRATETOPICREQUEST")
  (make-package "CAMERA_POSE_CALIBRATION::CALIBRATETOPICREQUEST"))
(unless (find-package "CAMERA_POSE_CALIBRATION::CALIBRATETOPICRESPONSE")
  (make-package "CAMERA_POSE_CALIBRATION::CALIBRATETOPICRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass camera_pose_calibration::CalibrateTopicRequest
  :super ros::object
  :slots (_target_frame _world_frame _point_cloud_scale_x _point_cloud_scale_y _pattern ))

(defmethod camera_pose_calibration::CalibrateTopicRequest
  (:init
   (&key
    ((:target_frame __target_frame) "")
    ((:world_frame __world_frame) "")
    ((:point_cloud_scale_x __point_cloud_scale_x) 0.0)
    ((:point_cloud_scale_y __point_cloud_scale_y) 0.0)
    ((:pattern __pattern) (instance camera_pose_calibration::PatternParameters :init))
    )
   (send-super :init)
   (setq _target_frame (string __target_frame))
   (setq _world_frame (string __world_frame))
   (setq _point_cloud_scale_x (float __point_cloud_scale_x))
   (setq _point_cloud_scale_y (float __point_cloud_scale_y))
   (setq _pattern __pattern)
   self)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:world_frame
   (&optional __world_frame)
   (if __world_frame (setq _world_frame __world_frame)) _world_frame)
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
    ;; string _target_frame
    4 (length _target_frame)
    ;; string _world_frame
    4 (length _world_frame)
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
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;; string _world_frame
       (write-long (length _world_frame) s) (princ _world_frame s)
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
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _world_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _world_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _point_cloud_scale_x
     (setq _point_cloud_scale_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _point_cloud_scale_y
     (setq _point_cloud_scale_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; camera_pose_calibration/PatternParameters _pattern
     (send _pattern :deserialize buf ptr-) (incf ptr- (send _pattern :serialization-length))
   ;;
   self)
  )

(defclass camera_pose_calibration::CalibrateTopicResponse
  :super ros::object
  :slots (_transform ))

(defmethod camera_pose_calibration::CalibrateTopicResponse
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

(defclass camera_pose_calibration::CalibrateTopic
  :super ros::object
  :slots ())

(setf (get camera_pose_calibration::CalibrateTopic :md5sum-) "e9573ce50d1e28868e351fcf6966f85d")
(setf (get camera_pose_calibration::CalibrateTopic :datatype-) "camera_pose_calibration/CalibrateTopic")
(setf (get camera_pose_calibration::CalibrateTopic :request) camera_pose_calibration::CalibrateTopicRequest)
(setf (get camera_pose_calibration::CalibrateTopic :response) camera_pose_calibration::CalibrateTopicResponse)

(defmethod camera_pose_calibration::CalibrateTopicRequest
  (:response () (instance camera_pose_calibration::CalibrateTopicResponse :init)))

(setf (get camera_pose_calibration::CalibrateTopicRequest :md5sum-) "e9573ce50d1e28868e351fcf6966f85d")
(setf (get camera_pose_calibration::CalibrateTopicRequest :datatype-) "camera_pose_calibration/CalibrateTopicRequest")
(setf (get camera_pose_calibration::CalibrateTopicRequest :definition-)
      "string target_frame
string world_frame
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

(setf (get camera_pose_calibration::CalibrateTopicResponse :md5sum-) "e9573ce50d1e28868e351fcf6966f85d")
(setf (get camera_pose_calibration::CalibrateTopicResponse :datatype-) "camera_pose_calibration/CalibrateTopicResponse")
(setf (get camera_pose_calibration::CalibrateTopicResponse :definition-)
      "string target_frame
string world_frame
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



(provide :camera_pose_calibration/CalibrateTopic "e9573ce50d1e28868e351fcf6966f85d")


