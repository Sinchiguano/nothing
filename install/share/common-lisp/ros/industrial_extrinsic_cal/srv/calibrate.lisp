; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude calibrate-request.msg.html

(cl:defclass <calibrate-request> (roslisp-msg-protocol:ros-message)
  ((allowable_cost_per_observation
    :reader allowable_cost_per_observation
    :initarg :allowable_cost_per_observation
    :type cl:float
    :initform 0.0))
)

(cl:defclass calibrate-request (<calibrate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calibrate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calibrate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<calibrate-request> is deprecated: use industrial_extrinsic_cal-srv:calibrate-request instead.")))

(cl:ensure-generic-function 'allowable_cost_per_observation-val :lambda-list '(m))
(cl:defmethod allowable_cost_per_observation-val ((m <calibrate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:allowable_cost_per_observation-val is deprecated.  Use industrial_extrinsic_cal-srv:allowable_cost_per_observation instead.")
  (allowable_cost_per_observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calibrate-request>) ostream)
  "Serializes a message object of type '<calibrate-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calibrate-request>) istream)
  "Deserializes a message object of type '<calibrate-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calibrate-request>)))
  "Returns string type for a service object of type '<calibrate-request>"
  "industrial_extrinsic_cal/calibrateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibrate-request)))
  "Returns string type for a service object of type 'calibrate-request"
  "industrial_extrinsic_cal/calibrateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calibrate-request>)))
  "Returns md5sum for a message object of type '<calibrate-request>"
  "cca53ecd15e4dc5f04a43336c8d434ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calibrate-request)))
  "Returns md5sum for a message object of type 'calibrate-request"
  "cca53ecd15e4dc5f04a43336c8d434ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calibrate-request>)))
  "Returns full string definition for message of type '<calibrate-request>"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calibrate-request)))
  "Returns full string definition for message of type 'calibrate-request"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calibrate-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calibrate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'calibrate-request
    (cl:cons ':allowable_cost_per_observation (allowable_cost_per_observation msg))
))
;//! \htmlinclude calibrate-response.msg.html

(cl:defclass <calibrate-response> (roslisp-msg-protocol:ros-message)
  ((cost_per_observation
    :reader cost_per_observation
    :initarg :cost_per_observation
    :type cl:float
    :initform 0.0))
)

(cl:defclass calibrate-response (<calibrate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calibrate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calibrate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<calibrate-response> is deprecated: use industrial_extrinsic_cal-srv:calibrate-response instead.")))

(cl:ensure-generic-function 'cost_per_observation-val :lambda-list '(m))
(cl:defmethod cost_per_observation-val ((m <calibrate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:cost_per_observation-val is deprecated.  Use industrial_extrinsic_cal-srv:cost_per_observation instead.")
  (cost_per_observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calibrate-response>) ostream)
  "Serializes a message object of type '<calibrate-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calibrate-response>) istream)
  "Deserializes a message object of type '<calibrate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost_per_observation) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calibrate-response>)))
  "Returns string type for a service object of type '<calibrate-response>"
  "industrial_extrinsic_cal/calibrateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibrate-response)))
  "Returns string type for a service object of type 'calibrate-response"
  "industrial_extrinsic_cal/calibrateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calibrate-response>)))
  "Returns md5sum for a message object of type '<calibrate-response>"
  "cca53ecd15e4dc5f04a43336c8d434ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calibrate-response)))
  "Returns md5sum for a message object of type 'calibrate-response"
  "cca53ecd15e4dc5f04a43336c8d434ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calibrate-response>)))
  "Returns full string definition for message of type '<calibrate-response>"
  (cl:format cl:nil "float64 cost_per_observation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calibrate-response)))
  "Returns full string definition for message of type 'calibrate-response"
  (cl:format cl:nil "float64 cost_per_observation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calibrate-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calibrate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'calibrate-response
    (cl:cons ':cost_per_observation (cost_per_observation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'calibrate)))
  'calibrate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'calibrate)))
  'calibrate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibrate)))
  "Returns string type for a service object of type '<calibrate>"
  "industrial_extrinsic_cal/calibrate")