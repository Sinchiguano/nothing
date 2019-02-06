; Auto-generated. Do not edit!


(cl:in-package camera_pose_calibration-srv)


;//! \htmlinclude CalibrateTopic-request.msg.html

(cl:defclass <CalibrateTopic-request> (roslisp-msg-protocol:ros-message)
  ((target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform "")
   (world_frame
    :reader world_frame
    :initarg :world_frame
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

(cl:defclass CalibrateTopic-request (<CalibrateTopic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateTopic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateTopic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-srv:<CalibrateTopic-request> is deprecated: use camera_pose_calibration-srv:CalibrateTopic-request instead.")))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <CalibrateTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:target_frame-val is deprecated.  Use camera_pose_calibration-srv:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'world_frame-val :lambda-list '(m))
(cl:defmethod world_frame-val ((m <CalibrateTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:world_frame-val is deprecated.  Use camera_pose_calibration-srv:world_frame instead.")
  (world_frame m))

(cl:ensure-generic-function 'point_cloud_scale_x-val :lambda-list '(m))
(cl:defmethod point_cloud_scale_x-val ((m <CalibrateTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:point_cloud_scale_x-val is deprecated.  Use camera_pose_calibration-srv:point_cloud_scale_x instead.")
  (point_cloud_scale_x m))

(cl:ensure-generic-function 'point_cloud_scale_y-val :lambda-list '(m))
(cl:defmethod point_cloud_scale_y-val ((m <CalibrateTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:point_cloud_scale_y-val is deprecated.  Use camera_pose_calibration-srv:point_cloud_scale_y instead.")
  (point_cloud_scale_y m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <CalibrateTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:pattern-val is deprecated.  Use camera_pose_calibration-srv:pattern instead.")
  (pattern m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateTopic-request>) ostream)
  "Serializes a message object of type '<CalibrateTopic-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'world_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'world_frame))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateTopic-request>) istream)
  "Deserializes a message object of type '<CalibrateTopic-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'world_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateTopic-request>)))
  "Returns string type for a service object of type '<CalibrateTopic-request>"
  "camera_pose_calibration/CalibrateTopicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateTopic-request)))
  "Returns string type for a service object of type 'CalibrateTopic-request"
  "camera_pose_calibration/CalibrateTopicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateTopic-request>)))
  "Returns md5sum for a message object of type '<CalibrateTopic-request>"
  "e9573ce50d1e28868e351fcf6966f85d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateTopic-request)))
  "Returns md5sum for a message object of type 'CalibrateTopic-request"
  "e9573ce50d1e28868e351fcf6966f85d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateTopic-request>)))
  "Returns full string definition for message of type '<CalibrateTopic-request>"
  (cl:format cl:nil "string target_frame~%string world_frame~%float64 point_cloud_scale_x~%float64 point_cloud_scale_y~%camera_pose_calibration/PatternParameters pattern~%~%================================================================================~%MSG: camera_pose_calibration/PatternParameters~%uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateTopic-request)))
  "Returns full string definition for message of type 'CalibrateTopic-request"
  (cl:format cl:nil "string target_frame~%string world_frame~%float64 point_cloud_scale_x~%float64 point_cloud_scale_y~%camera_pose_calibration/PatternParameters pattern~%~%================================================================================~%MSG: camera_pose_calibration/PatternParameters~%uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateTopic-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_frame))
     4 (cl:length (cl:slot-value msg 'world_frame))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pattern))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateTopic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateTopic-request
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':world_frame (world_frame msg))
    (cl:cons ':point_cloud_scale_x (point_cloud_scale_x msg))
    (cl:cons ':point_cloud_scale_y (point_cloud_scale_y msg))
    (cl:cons ':pattern (pattern msg))
))
;//! \htmlinclude CalibrateTopic-response.msg.html

(cl:defclass <CalibrateTopic-response> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass CalibrateTopic-response (<CalibrateTopic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateTopic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateTopic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-srv:<CalibrateTopic-response> is deprecated: use camera_pose_calibration-srv:CalibrateTopic-response instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <CalibrateTopic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-srv:transform-val is deprecated.  Use camera_pose_calibration-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateTopic-response>) ostream)
  "Serializes a message object of type '<CalibrateTopic-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateTopic-response>) istream)
  "Deserializes a message object of type '<CalibrateTopic-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateTopic-response>)))
  "Returns string type for a service object of type '<CalibrateTopic-response>"
  "camera_pose_calibration/CalibrateTopicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateTopic-response)))
  "Returns string type for a service object of type 'CalibrateTopic-response"
  "camera_pose_calibration/CalibrateTopicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateTopic-response>)))
  "Returns md5sum for a message object of type '<CalibrateTopic-response>"
  "e9573ce50d1e28868e351fcf6966f85d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateTopic-response)))
  "Returns md5sum for a message object of type 'CalibrateTopic-response"
  "e9573ce50d1e28868e351fcf6966f85d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateTopic-response>)))
  "Returns full string definition for message of type '<CalibrateTopic-response>"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateTopic-response)))
  "Returns full string definition for message of type 'CalibrateTopic-response"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateTopic-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateTopic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateTopic-response
    (cl:cons ':transform (transform msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalibrateTopic)))
  'CalibrateTopic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalibrateTopic)))
  'CalibrateTopic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateTopic)))
  "Returns string type for a service object of type '<CalibrateTopic>"
  "camera_pose_calibration/CalibrateTopic")