; Auto-generated. Do not edit!


(cl:in-package intrinsic_cal-srv)


;//! \htmlinclude rail_ical_run-request.msg.html

(cl:defclass <rail_ical_run-request> (roslisp-msg-protocol:ros-message)
  ((allowable_cost_per_observation
    :reader allowable_cost_per_observation
    :initarg :allowable_cost_per_observation
    :type cl:float
    :initform 0.0))
)

(cl:defclass rail_ical_run-request (<rail_ical_run-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rail_ical_run-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rail_ical_run-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intrinsic_cal-srv:<rail_ical_run-request> is deprecated: use intrinsic_cal-srv:rail_ical_run-request instead.")))

(cl:ensure-generic-function 'allowable_cost_per_observation-val :lambda-list '(m))
(cl:defmethod allowable_cost_per_observation-val ((m <rail_ical_run-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intrinsic_cal-srv:allowable_cost_per_observation-val is deprecated.  Use intrinsic_cal-srv:allowable_cost_per_observation instead.")
  (allowable_cost_per_observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rail_ical_run-request>) ostream)
  "Serializes a message object of type '<rail_ical_run-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rail_ical_run-request>) istream)
  "Deserializes a message object of type '<rail_ical_run-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rail_ical_run-request>)))
  "Returns string type for a service object of type '<rail_ical_run-request>"
  "intrinsic_cal/rail_ical_runRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rail_ical_run-request)))
  "Returns string type for a service object of type 'rail_ical_run-request"
  "intrinsic_cal/rail_ical_runRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rail_ical_run-request>)))
  "Returns md5sum for a message object of type '<rail_ical_run-request>"
  "5b2e41c67828c97fda29508102025f24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rail_ical_run-request)))
  "Returns md5sum for a message object of type 'rail_ical_run-request"
  "5b2e41c67828c97fda29508102025f24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rail_ical_run-request>)))
  "Returns full string definition for message of type '<rail_ical_run-request>"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rail_ical_run-request)))
  "Returns full string definition for message of type 'rail_ical_run-request"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rail_ical_run-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rail_ical_run-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rail_ical_run-request
    (cl:cons ':allowable_cost_per_observation (allowable_cost_per_observation msg))
))
;//! \htmlinclude rail_ical_run-response.msg.html

(cl:defclass <rail_ical_run-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass rail_ical_run-response (<rail_ical_run-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rail_ical_run-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rail_ical_run-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intrinsic_cal-srv:<rail_ical_run-response> is deprecated: use intrinsic_cal-srv:rail_ical_run-response instead.")))

(cl:ensure-generic-function 'final_cost_per_observation-val :lambda-list '(m))
(cl:defmethod final_cost_per_observation-val ((m <rail_ical_run-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intrinsic_cal-srv:final_cost_per_observation-val is deprecated.  Use intrinsic_cal-srv:final_cost_per_observation instead.")
  (final_cost_per_observation m))

(cl:ensure-generic-function 'final_pose-val :lambda-list '(m))
(cl:defmethod final_pose-val ((m <rail_ical_run-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intrinsic_cal-srv:final_pose-val is deprecated.  Use intrinsic_cal-srv:final_pose instead.")
  (final_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rail_ical_run-response>) ostream)
  "Serializes a message object of type '<rail_ical_run-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rail_ical_run-response>) istream)
  "Deserializes a message object of type '<rail_ical_run-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rail_ical_run-response>)))
  "Returns string type for a service object of type '<rail_ical_run-response>"
  "intrinsic_cal/rail_ical_runResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rail_ical_run-response)))
  "Returns string type for a service object of type 'rail_ical_run-response"
  "intrinsic_cal/rail_ical_runResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rail_ical_run-response>)))
  "Returns md5sum for a message object of type '<rail_ical_run-response>"
  "5b2e41c67828c97fda29508102025f24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rail_ical_run-response)))
  "Returns md5sum for a message object of type 'rail_ical_run-response"
  "5b2e41c67828c97fda29508102025f24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rail_ical_run-response>)))
  "Returns full string definition for message of type '<rail_ical_run-response>"
  (cl:format cl:nil "float64 final_cost_per_observation~%geometry_msgs/Pose final_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rail_ical_run-response)))
  "Returns full string definition for message of type 'rail_ical_run-response"
  (cl:format cl:nil "float64 final_cost_per_observation~%geometry_msgs/Pose final_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rail_ical_run-response>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rail_ical_run-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rail_ical_run-response
    (cl:cons ':final_cost_per_observation (final_cost_per_observation msg))
    (cl:cons ':final_pose (final_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rail_ical_run)))
  'rail_ical_run-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rail_ical_run)))
  'rail_ical_run-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rail_ical_run)))
  "Returns string type for a service object of type '<rail_ical_run>"
  "intrinsic_cal/rail_ical_run")