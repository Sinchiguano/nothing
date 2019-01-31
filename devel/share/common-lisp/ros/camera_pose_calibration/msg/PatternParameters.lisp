; Auto-generated. Do not edit!


(cl:in-package camera_pose_calibration-msg)


;//! \htmlinclude PatternParameters.msg.html

(cl:defclass <PatternParameters> (roslisp-msg-protocol:ros-message)
  ((pattern_width
    :reader pattern_width
    :initarg :pattern_width
    :type cl:fixnum
    :initform 0)
   (pattern_height
    :reader pattern_height
    :initarg :pattern_height
    :type cl:fixnum
    :initform 0)
   (pattern_distance
    :reader pattern_distance
    :initarg :pattern_distance
    :type cl:float
    :initform 0.0)
   (neighbor_distance
    :reader neighbor_distance
    :initarg :neighbor_distance
    :type cl:float
    :initform 0.0)
   (valid_pattern_ratio_threshold
    :reader valid_pattern_ratio_threshold
    :initarg :valid_pattern_ratio_threshold
    :type cl:float
    :initform 0.0))
)

(cl:defclass PatternParameters (<PatternParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatternParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatternParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_pose_calibration-msg:<PatternParameters> is deprecated: use camera_pose_calibration-msg:PatternParameters instead.")))

(cl:ensure-generic-function 'pattern_width-val :lambda-list '(m))
(cl:defmethod pattern_width-val ((m <PatternParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-msg:pattern_width-val is deprecated.  Use camera_pose_calibration-msg:pattern_width instead.")
  (pattern_width m))

(cl:ensure-generic-function 'pattern_height-val :lambda-list '(m))
(cl:defmethod pattern_height-val ((m <PatternParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-msg:pattern_height-val is deprecated.  Use camera_pose_calibration-msg:pattern_height instead.")
  (pattern_height m))

(cl:ensure-generic-function 'pattern_distance-val :lambda-list '(m))
(cl:defmethod pattern_distance-val ((m <PatternParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-msg:pattern_distance-val is deprecated.  Use camera_pose_calibration-msg:pattern_distance instead.")
  (pattern_distance m))

(cl:ensure-generic-function 'neighbor_distance-val :lambda-list '(m))
(cl:defmethod neighbor_distance-val ((m <PatternParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-msg:neighbor_distance-val is deprecated.  Use camera_pose_calibration-msg:neighbor_distance instead.")
  (neighbor_distance m))

(cl:ensure-generic-function 'valid_pattern_ratio_threshold-val :lambda-list '(m))
(cl:defmethod valid_pattern_ratio_threshold-val ((m <PatternParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_pose_calibration-msg:valid_pattern_ratio_threshold-val is deprecated.  Use camera_pose_calibration-msg:valid_pattern_ratio_threshold instead.")
  (valid_pattern_ratio_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatternParameters>) ostream)
  "Serializes a message object of type '<PatternParameters>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_height)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pattern_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'neighbor_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'valid_pattern_ratio_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatternParameters>) istream)
  "Deserializes a message object of type '<PatternParameters>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_height)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pattern_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'neighbor_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valid_pattern_ratio_threshold) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatternParameters>)))
  "Returns string type for a message object of type '<PatternParameters>"
  "camera_pose_calibration/PatternParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatternParameters)))
  "Returns string type for a message object of type 'PatternParameters"
  "camera_pose_calibration/PatternParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatternParameters>)))
  "Returns md5sum for a message object of type '<PatternParameters>"
  "1072989cc839ba5aa0fd1ae7ff3a0522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatternParameters)))
  "Returns md5sum for a message object of type 'PatternParameters"
  "1072989cc839ba5aa0fd1ae7ff3a0522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatternParameters>)))
  "Returns full string definition for message of type '<PatternParameters>"
  (cl:format cl:nil "uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatternParameters)))
  "Returns full string definition for message of type 'PatternParameters"
  (cl:format cl:nil "uint8 pattern_width~%uint8 pattern_height~%float64 pattern_distance~%float64 neighbor_distance~%float64 valid_pattern_ratio_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatternParameters>))
  (cl:+ 0
     1
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatternParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'PatternParameters
    (cl:cons ':pattern_width (pattern_width msg))
    (cl:cons ':pattern_height (pattern_height msg))
    (cl:cons ':pattern_distance (pattern_distance msg))
    (cl:cons ':neighbor_distance (neighbor_distance msg))
    (cl:cons ':valid_pattern_ratio_threshold (valid_pattern_ratio_threshold msg))
))
