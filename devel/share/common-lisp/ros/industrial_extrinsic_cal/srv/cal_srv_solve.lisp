; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude cal_srv_solve-request.msg.html

(cl:defclass <cal_srv_solve-request> (roslisp-msg-protocol:ros-message)
  ((allowable_cost_per_observation
    :reader allowable_cost_per_observation
    :initarg :allowable_cost_per_observation
    :type cl:float
    :initform 0.0))
)

(cl:defclass cal_srv_solve-request (<cal_srv_solve-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cal_srv_solve-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cal_srv_solve-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<cal_srv_solve-request> is deprecated: use industrial_extrinsic_cal-srv:cal_srv_solve-request instead.")))

(cl:ensure-generic-function 'allowable_cost_per_observation-val :lambda-list '(m))
(cl:defmethod allowable_cost_per_observation-val ((m <cal_srv_solve-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:allowable_cost_per_observation-val is deprecated.  Use industrial_extrinsic_cal-srv:allowable_cost_per_observation instead.")
  (allowable_cost_per_observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cal_srv_solve-request>) ostream)
  "Serializes a message object of type '<cal_srv_solve-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cal_srv_solve-request>) istream)
  "Deserializes a message object of type '<cal_srv_solve-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cal_srv_solve-request>)))
  "Returns string type for a service object of type '<cal_srv_solve-request>"
  "industrial_extrinsic_cal/cal_srv_solveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cal_srv_solve-request)))
  "Returns string type for a service object of type 'cal_srv_solve-request"
  "industrial_extrinsic_cal/cal_srv_solveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cal_srv_solve-request>)))
  "Returns md5sum for a message object of type '<cal_srv_solve-request>"
  "ee44043b587910669da0ec6a74e20e6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cal_srv_solve-request)))
  "Returns md5sum for a message object of type 'cal_srv_solve-request"
  "ee44043b587910669da0ec6a74e20e6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cal_srv_solve-request>)))
  "Returns full string definition for message of type '<cal_srv_solve-request>"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cal_srv_solve-request)))
  "Returns full string definition for message of type 'cal_srv_solve-request"
  (cl:format cl:nil "float64 allowable_cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cal_srv_solve-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cal_srv_solve-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cal_srv_solve-request
    (cl:cons ':allowable_cost_per_observation (allowable_cost_per_observation msg))
))
;//! \htmlinclude cal_srv_solve-response.msg.html

(cl:defclass <cal_srv_solve-response> (roslisp-msg-protocol:ros-message)
  ((final_cost_per_observation
    :reader final_cost_per_observation
    :initarg :final_cost_per_observation
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass cal_srv_solve-response (<cal_srv_solve-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cal_srv_solve-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cal_srv_solve-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<cal_srv_solve-response> is deprecated: use industrial_extrinsic_cal-srv:cal_srv_solve-response instead.")))

(cl:ensure-generic-function 'final_cost_per_observation-val :lambda-list '(m))
(cl:defmethod final_cost_per_observation-val ((m <cal_srv_solve-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:final_cost_per_observation-val is deprecated.  Use industrial_extrinsic_cal-srv:final_cost_per_observation instead.")
  (final_cost_per_observation m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <cal_srv_solve-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:message-val is deprecated.  Use industrial_extrinsic_cal-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <cal_srv_solve-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:success-val is deprecated.  Use industrial_extrinsic_cal-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cal_srv_solve-response>) ostream)
  "Serializes a message object of type '<cal_srv_solve-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cal_srv_solve-response>) istream)
  "Deserializes a message object of type '<cal_srv_solve-response>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cal_srv_solve-response>)))
  "Returns string type for a service object of type '<cal_srv_solve-response>"
  "industrial_extrinsic_cal/cal_srv_solveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cal_srv_solve-response)))
  "Returns string type for a service object of type 'cal_srv_solve-response"
  "industrial_extrinsic_cal/cal_srv_solveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cal_srv_solve-response>)))
  "Returns md5sum for a message object of type '<cal_srv_solve-response>"
  "ee44043b587910669da0ec6a74e20e6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cal_srv_solve-response)))
  "Returns md5sum for a message object of type 'cal_srv_solve-response"
  "ee44043b587910669da0ec6a74e20e6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cal_srv_solve-response>)))
  "Returns full string definition for message of type '<cal_srv_solve-response>"
  (cl:format cl:nil "float64 final_cost_per_observation~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cal_srv_solve-response)))
  "Returns full string definition for message of type 'cal_srv_solve-response"
  (cl:format cl:nil "float64 final_cost_per_observation~%string message~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cal_srv_solve-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cal_srv_solve-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cal_srv_solve-response
    (cl:cons ':final_cost_per_observation (final_cost_per_observation msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cal_srv_solve)))
  'cal_srv_solve-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cal_srv_solve)))
  'cal_srv_solve-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cal_srv_solve)))
  "Returns string type for a service object of type '<cal_srv_solve>"
  "industrial_extrinsic_cal/cal_srv_solve")