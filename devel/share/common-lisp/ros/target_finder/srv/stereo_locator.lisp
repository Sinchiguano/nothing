; Auto-generated. Do not edit!


(cl:in-package target_finder-srv)


;//! \htmlinclude stereo_locator-request.msg.html

(cl:defclass <stereo_locator-request> (roslisp-msg-protocol:ros-message)
  ((allowable_cost_per_observation
    :reader allowable_cost_per_observation
    :initarg :allowable_cost_per_observation
    :type cl:float
    :initform 0.0))
)

(cl:defclass stereo_locator-request (<stereo_locator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stereo_locator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stereo_locator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name target_finder-srv:<stereo_locator-request> is deprecated: use target_finder-srv:stereo_locator-request instead.")))

(cl:ensure-generic-function 'allowable_cost_per_observation-val :lambda-list '(m))
(cl:defmethod allowable_cost_per_observation-val ((m <stereo_locator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:allowable_cost_per_observation-val is deprecated.  Use target_finder-srv:allowable_cost_per_observation instead.")
  (allowable_cost_per_observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stereo_locator-request>) ostream)
  "Serializes a message object of type '<stereo_locator-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'allowable_cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stereo_locator-request>) istream)
  "Deserializes a message object of type '<stereo_locator-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stereo_locator-request>)))
  "Returns string type for a service object of type '<stereo_locator-request>"
  "target_finder/stereo_locatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stereo_locator-request)))
  "Returns string type for a service object of type 'stereo_locator-request"
  "target_finder/stereo_locatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stereo_locator-request>)))
  "Returns md5sum for a message object of type '<stereo_locator-request>"
  "6f3a39428e04dd9b7fb7338eb3f220f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stereo_locator-request)))
  "Returns md5sum for a message object of type 'stereo_locator-request"
  "6f3a39428e04dd9b7fb7338eb3f220f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stereo_locator-request>)))
  "Returns full string definition for message of type '<stereo_locator-request>"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stereo_locator-request)))
  "Returns full string definition for message of type 'stereo_locator-request"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stereo_locator-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stereo_locator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stereo_locator-request
    (cl:cons ':allowable_cost_per_observation (allowable_cost_per_observation msg))
))
;//! \htmlinclude stereo_locator-response.msg.html

(cl:defclass <stereo_locator-response> (roslisp-msg-protocol:ros-message)
  ((final_cost_per_observation
    :reader final_cost_per_observation
    :initarg :final_cost_per_observation
    :type cl:float
    :initform 0.0)
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass stereo_locator-response (<stereo_locator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stereo_locator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stereo_locator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name target_finder-srv:<stereo_locator-response> is deprecated: use target_finder-srv:stereo_locator-response instead.")))

(cl:ensure-generic-function 'final_cost_per_observation-val :lambda-list '(m))
(cl:defmethod final_cost_per_observation-val ((m <stereo_locator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:final_cost_per_observation-val is deprecated.  Use target_finder-srv:final_cost_per_observation instead.")
  (final_cost_per_observation m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <stereo_locator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader target_finder-srv:target_pose-val is deprecated.  Use target_finder-srv:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stereo_locator-response>) ostream)
  "Serializes a message object of type '<stereo_locator-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stereo_locator-response>) istream)
  "Deserializes a message object of type '<stereo_locator-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stereo_locator-response>)))
  "Returns string type for a service object of type '<stereo_locator-response>"
  "target_finder/stereo_locatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stereo_locator-response)))
  "Returns string type for a service object of type 'stereo_locator-response"
  "target_finder/stereo_locatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stereo_locator-response>)))
  "Returns md5sum for a message object of type '<stereo_locator-response>"
  "6f3a39428e04dd9b7fb7338eb3f220f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stereo_locator-response)))
  "Returns md5sum for a message object of type 'stereo_locator-response"
  "6f3a39428e04dd9b7fb7338eb3f220f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stereo_locator-response>)))
  "Returns full string definition for message of type '<stereo_locator-response>"
  (cl:format cl:nil "float64 final_cost_per_observation~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stereo_locator-response)))
  "Returns full string definition for message of type 'stereo_locator-response"
  (cl:format cl:nil "float64 final_cost_per_observation~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stereo_locator-response>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stereo_locator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stereo_locator-response
    (cl:cons ':final_cost_per_observation (final_cost_per_observation msg))
    (cl:cons ':target_pose (target_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stereo_locator)))
  'stereo_locator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stereo_locator)))
  'stereo_locator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stereo_locator)))
  "Returns string type for a service object of type '<stereo_locator>"
  "target_finder/stereo_locator")