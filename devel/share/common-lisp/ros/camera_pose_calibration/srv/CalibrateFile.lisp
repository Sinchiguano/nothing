; Auto-generated. Do not edit!


(cl:in-package camera_pose_calibration-srv)


;//! \htmlinclude CalibrateFile-request.msg.html

(cl:defclass <CalibrateFile-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type cl:string
    :initform "")
   (cloud
    :reader cloud
    :initarg :cloud
    :type cl:string
    :initform "")
   (camera_frame
    :reader camera_frame
    :initarg :camera_frame
    :type cl:string
    :initform "")
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

(cl:defclass CalibrateFile-request (<CalibrateFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-srv:<CalibrateFile-request> is deprecated: use camera_pose_calibration-srv:CalibrateFile-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:image-val is deprecated.  Use camera_pose_calibration-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:cloud-val is deprecated.  Use camera_pose_calibration-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'camera_frame-val :lambda-list '(m))
(cl:defmethod camera_frame-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:camera_frame-val is deprecated.  Use camera_pose_calibration-srv:camera_frame instead.")
  (camera_frame m))

(cl:ensure-generic-function 'tag_frame-val :lambda-list '(m))
(cl:defmethod tag_frame-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:tag_frame-val is deprecated.  Use camera_pose_calibration-srv:tag_frame instead.")
  (tag_frame m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:target_frame-val is deprecated.  Use camera_pose_calibration-srv:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'point_cloud_scale_x-val :lambda-list '(m))
(cl:defmethod point_cloud_scale_x-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:point_cloud_scale_x-val is deprecated.  Use camera_pose_calibration-srv:point_cloud_scale_x instead.")
  (point_cloud_scale_x m))

(cl:ensure-generic-function 'point_cloud_scale_y-val :lambda-list '(m))
(cl:defmethod point_cloud_scale_y-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:point_cloud_scale_y-val is deprecated.  Use camera_pose_calibration-srv:point_cloud_scale_y instead.")
  (point_cloud_scale_y m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <CalibrateFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:pattern-val is deprecated.  Use camera_pose_calibration-srv:pattern instead.")
  (pattern m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateFile-request>) ostream)
  "Serializes a message object of type '<CalibrateFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cloud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cloud))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_frame))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateFile-request>) istream)
  "Deserializes a message object of type '<CalibrateFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cloud) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cloud) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateFile-request>)))
  "Returns string type for a service object of type '<CalibrateFile-request>"
  "camera_pose_calibration/CalibrateFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateFile-request)))
  "Returns string type for a service object of type 'CalibrateFile-request"
  "camera_pose_calibration/CalibrateFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateFile-request>)))
  "Returns md5sum for a message object of type '<CalibrateFile-request>"
  "358b35819202eac60897bbd404c44eaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateFile-request)))
  "Returns md5sum for a message object of type 'CalibrateFile-request"
  "358b35819202eac60897bbd404c44eaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateFile-request>)))
  "Returns full string definition for message of type '<CalibrateFile-request>"
  (cl:format cl:nil "string image~%string cloud~%string camera_frame~%string tag_frame~%string target_frame~%float64 point_cloud_scale_x~%float64 point_cloud_scale_y~%camera_pose_calibration/PatternParameters pattern~%~%================================================================================~%MSG: camera_pose_calibration/PatternParameters~%uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateFile-request)))
  "Returns full string definition for message of type 'CalibrateFile-request"
  (cl:format cl:nil "string image~%string cloud~%string camera_frame~%string tag_frame~%string target_frame~%float64 point_cloud_scale_x~%float64 point_cloud_scale_y~%camera_pose_calibration/PatternParameters pattern~%~%================================================================================~%MSG: camera_pose_calibration/PatternParameters~%uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image))
     4 (cl:length (cl:slot-value msg 'cloud))
     4 (cl:length (cl:slot-value msg 'camera_frame))
     4 (cl:length (cl:slot-value msg 'tag_frame))
     4 (cl:length (cl:slot-value msg 'target_frame))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pattern))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateFile-request
    (cl:cons ':image (image msg))
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':camera_frame (camera_frame msg))
    (cl:cons ':tag_frame (tag_frame msg))
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':point_cloud_scale_x (point_cloud_scale_x msg))
    (cl:cons ':point_cloud_scale_y (point_cloud_scale_y msg))
    (cl:cons ':pattern (pattern msg))
))
;//! \htmlinclude CalibrateFile-response.msg.html

(cl:defclass <CalibrateFile-response> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass CalibrateFile-response (<CalibrateFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-srv:<CalibrateFile-response> is deprecated: use camera_pose_calibration-srv:CalibrateFile-response instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <CalibrateFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:transform-val is deprecated.  Use camera_pose_calibration-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateFile-response>) ostream)
  "Serializes a message object of type '<CalibrateFile-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateFile-response>) istream)
  "Deserializes a message object of type '<CalibrateFile-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateFile-response>)))
  "Returns string type for a service object of type '<CalibrateFile-response>"
  "camera_pose_calibration/CalibrateFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateFile-response)))
  "Returns string type for a service object of type 'CalibrateFile-response"
  "camera_pose_calibration/CalibrateFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateFile-response>)))
  "Returns md5sum for a message object of type '<CalibrateFile-response>"
  "358b35819202eac60897bbd404c44eaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateFile-response)))
  "Returns md5sum for a message object of type 'CalibrateFile-response"
  "358b35819202eac60897bbd404c44eaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateFile-response>)))
  "Returns full string definition for message of type '<CalibrateFile-response>"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateFile-response)))
  "Returns full string definition for message of type 'CalibrateFile-response"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateFile-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateFile-response
    (cl:cons ':transform (transform msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalibrateFile)))
  'CalibrateFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalibrateFile)))
  'CalibrateFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateFile)))
  "Returns string type for a service object of type '<CalibrateFile>"
  "camera_pose_calibration/CalibrateFile")