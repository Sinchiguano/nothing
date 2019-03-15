; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude get_mutable_joint_states-request.msg.html

(cl:defclass <get_mutable_joint_states-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass get_mutable_joint_states-request (<get_mutable_joint_states-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_mutable_joint_states-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_mutable_joint_states-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<get_mutable_joint_states-request> is deprecated: use industrial_extrinsic_cal-srv:get_mutable_joint_states-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <get_mutable_joint_states-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:joint_names-val is deprecated.  Use industrial_extrinsic_cal-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_mutable_joint_states-request>) ostream)
  "Serializes a message object of type '<get_mutable_joint_states-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_mutable_joint_states-request>) istream)
  "Deserializes a message object of type '<get_mutable_joint_states-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_mutable_joint_states-request>)))
  "Returns string type for a service object of type '<get_mutable_joint_states-request>"
  "industrial_extrinsic_cal/get_mutable_joint_statesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mutable_joint_states-request)))
  "Returns string type for a service object of type 'get_mutable_joint_states-request"
  "industrial_extrinsic_cal/get_mutable_joint_statesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_mutable_joint_states-request>)))
  "Returns md5sum for a message object of type '<get_mutable_joint_states-request>"
  "271715108330389fd7b55a1044e60601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_mutable_joint_states-request)))
  "Returns md5sum for a message object of type 'get_mutable_joint_states-request"
  "271715108330389fd7b55a1044e60601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_mutable_joint_states-request>)))
  "Returns full string definition for message of type '<get_mutable_joint_states-request>"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_mutable_joint_states-request)))
  "Returns full string definition for message of type 'get_mutable_joint_states-request"
  (cl:format cl:nil "string[] joint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_mutable_joint_states-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_mutable_joint_states-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_mutable_joint_states-request
    (cl:cons ':joint_names (joint_names msg))
))
;//! \htmlinclude get_mutable_joint_states-response.msg.html

(cl:defclass <get_mutable_joint_states-response> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_mutable_joint_states-response (<get_mutable_joint_states-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_mutable_joint_states-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_mutable_joint_states-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<get_mutable_joint_states-response> is deprecated: use industrial_extrinsic_cal-srv:get_mutable_joint_states-response instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <get_mutable_joint_states-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:joint_names-val is deprecated.  Use industrial_extrinsic_cal-srv:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <get_mutable_joint_states-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:joint_values-val is deprecated.  Use industrial_extrinsic_cal-srv:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_mutable_joint_states-response>) ostream)
  "Serializes a message object of type '<get_mutable_joint_states-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_mutable_joint_states-response>) istream)
  "Deserializes a message object of type '<get_mutable_joint_states-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_mutable_joint_states-response>)))
  "Returns string type for a service object of type '<get_mutable_joint_states-response>"
  "industrial_extrinsic_cal/get_mutable_joint_statesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mutable_joint_states-response)))
  "Returns string type for a service object of type 'get_mutable_joint_states-response"
  "industrial_extrinsic_cal/get_mutable_joint_statesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_mutable_joint_states-response>)))
  "Returns md5sum for a message object of type '<get_mutable_joint_states-response>"
  "271715108330389fd7b55a1044e60601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_mutable_joint_states-response)))
  "Returns md5sum for a message object of type 'get_mutable_joint_states-response"
  "271715108330389fd7b55a1044e60601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_mutable_joint_states-response>)))
  "Returns full string definition for message of type '<get_mutable_joint_states-response>"
  (cl:format cl:nil "string[] joint_names~%float64[] joint_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_mutable_joint_states-response)))
  "Returns full string definition for message of type 'get_mutable_joint_states-response"
  (cl:format cl:nil "string[] joint_names~%float64[] joint_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_mutable_joint_states-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_mutable_joint_states-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_mutable_joint_states-response
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':joint_values (joint_values msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_mutable_joint_states)))
  'get_mutable_joint_states-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_mutable_joint_states)))
  'get_mutable_joint_states-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mutable_joint_states)))
  "Returns string type for a service object of type '<get_mutable_joint_states>"
  "industrial_extrinsic_cal/get_mutable_joint_states")