; Auto-generated. Do not edit!


(cl:in-package target_finder-srv)


;//! \htmlinclude target_locator-request.msg.html

(cl:defclass <target_locator-request> (roslisp-msg-protocol:ros-message)
  ((allowable_cost_per_observation
    :reader allowable_cost_per_observation
    :initarg :allowable_cost_per_observation
    :type cl:float
    :initform 0.0)
   (roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
   (initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass target_locator-request (<target_locator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target_locator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target_locator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name target_finder-srv:<target_locator-request> is deprecated: use target_finder-srv:target_locator-request instead.")))

(cl:ensure-generic-function 'allowable_cost_per_observation-val :lambda-list '(m))
(cl:defmethod allowable_cost_per_observation-val ((m <target_locator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:allowable_cost_per_observation-val is deprecated.  Use target_finder-srv:allowable_cost_per_observation instead.")
  (allowable_cost_per_observation m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <target_locator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:roi-val is deprecated.  Use target_finder-srv:roi instead.")
  (roi m))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <target_locator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:initial_pose-val is deprecated.  Use target_finder-srv:initial_pose instead.")
  (initial_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_locator-request>) ostream)
  "Serializes a message object of type '<target_locator-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'allowable_cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_locator-request>) istream)
  "Deserializes a message object of type '<target_locator-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allowable_cost_per_observation) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target_locator-request>)))
  "Returns string type for a service object of type '<target_locator-request>"
  "target_finder/target_locatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_locator-request)))
  "Returns string type for a service object of type 'target_locator-request"
  "target_finder/target_locatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target_locator-request>)))
  "Returns md5sum for a message object of type '<target_locator-request>"
  "a26351e216e367a0883873c29f854fe0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_locator-request)))
  "Returns md5sum for a message object of type 'target_locator-request"
  "a26351e216e367a0883873c29f854fe0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_locator-request>)))
  "Returns full string definition for message of type '<target_locator-request>"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%sensor_msgs/RegionOfInterest roi~%geometry_msgs/Pose initial_pose~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_locator-request)))
  "Returns full string definition for message of type 'target_locator-request"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%sensor_msgs/RegionOfInterest roi~%geometry_msgs/Pose initial_pose~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_locator-request>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_locator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'target_locator-request
    (cl:cons ':allowable_cost_per_observation (allowable_cost_per_observation msg))
    (cl:cons ':roi (roi msg))
    (cl:cons ':initial_pose (initial_pose msg))
))
;//! \htmlinclude target_locator-response.msg.html

(cl:defclass <target_locator-response> (roslisp-msg-protocol:ros-message)
  ((final_cost_per_observation
    :reader final_cost_per_observation
    :initarg :final_cost_per_observation
    :type cl:float
    :initform 0.0)
   (final_pose
    :reader final_pose
    :initarg :final_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass target_locator-response (<target_locator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target_locator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target_locator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name target_finder-srv:<target_locator-response> is deprecated: use target_finder-srv:target_locator-response instead.")))

(cl:ensure-generic-function 'final_cost_per_observation-val :lambda-list '(m))
(cl:defmethod final_cost_per_observation-val ((m <target_locator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:final_cost_per_observation-val is deprecated.  Use target_finder-srv:final_cost_per_observation instead.")
  (final_cost_per_observation m))

(cl:ensure-generic-function 'final_pose-val :lambda-list '(m))
(cl:defmethod final_pose-val ((m <target_locator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:final_pose-val is deprecated.  Use target_finder-srv:final_pose instead.")
  (final_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_locator-response>) ostream)
  "Serializes a message object of type '<target_locator-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_locator-response>) istream)
  "Deserializes a message object of type '<target_locator-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_cost_per_observation) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target_locator-response>)))
  "Returns string type for a service object of type '<target_locator-response>"
  "target_finder/target_locatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_locator-response)))
  "Returns string type for a service object of type 'target_locator-response"
  "target_finder/target_locatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target_locator-response>)))
  "Returns md5sum for a message object of type '<target_locator-response>"
  "a26351e216e367a0883873c29f854fe0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_locator-response)))
  "Returns md5sum for a message object of type 'target_locator-response"
  "a26351e216e367a0883873c29f854fe0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_locator-response>)))
  "Returns full string definition for message of type '<target_locator-response>"
  (cl:format cl:nil "float64 final_cost_per_observation~%geometry_msgs/Pose final_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_locator-response)))
  "Returns full string definition for message of type 'target_locator-response"
  (cl:format cl:nil "float64 final_cost_per_observation~%geometry_msgs/Pose final_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_locator-response>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_locator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'target_locator-response
    (cl:cons ':final_cost_per_observation (final_cost_per_observation msg))
    (cl:cons ':final_pose (final_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'target_locator)))
  'target_locator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'target_locator)))
  'target_locator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_locator)))
  "Returns string type for a service object of type '<target_locator>"
  "target_finder/target_locator")