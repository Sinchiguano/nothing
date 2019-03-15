; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude covariance-request.msg.html

(cl:defclass <covariance-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform "")
   (block_name1
    :reader block_name1
    :initarg :block_name1
    :type cl:string
    :initform "")
   (request_type1
    :reader request_type1
    :initarg :request_type1
    :type cl:integer
    :initform 0)
   (scene_id1
    :reader scene_id1
    :initarg :scene_id1
    :type cl:integer
    :initform 0)
   (block_name2
    :reader block_name2
    :initarg :block_name2
    :type cl:string
    :initform "")
   (request_type2
    :reader request_type2
    :initarg :request_type2
    :type cl:integer
    :initform 0)
   (scene_id2
    :reader scene_id2
    :initarg :scene_id2
    :type cl:integer
    :initform 0))
)

(cl:defclass covariance-request (<covariance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <covariance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'covariance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<covariance-request> is deprecated: use industrial_extrinsic_cal-srv:covariance-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:file_name-val is deprecated.  Use industrial_extrinsic_cal-srv:file_name instead.")
  (file_name m))

(cl:ensure-generic-function 'block_name1-val :lambda-list '(m))
(cl:defmethod block_name1-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:block_name1-val is deprecated.  Use industrial_extrinsic_cal-srv:block_name1 instead.")
  (block_name1 m))

(cl:ensure-generic-function 'request_type1-val :lambda-list '(m))
(cl:defmethod request_type1-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:request_type1-val is deprecated.  Use industrial_extrinsic_cal-srv:request_type1 instead.")
  (request_type1 m))

(cl:ensure-generic-function 'scene_id1-val :lambda-list '(m))
(cl:defmethod scene_id1-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:scene_id1-val is deprecated.  Use industrial_extrinsic_cal-srv:scene_id1 instead.")
  (scene_id1 m))

(cl:ensure-generic-function 'block_name2-val :lambda-list '(m))
(cl:defmethod block_name2-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:block_name2-val is deprecated.  Use industrial_extrinsic_cal-srv:block_name2 instead.")
  (block_name2 m))

(cl:ensure-generic-function 'request_type2-val :lambda-list '(m))
(cl:defmethod request_type2-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:request_type2-val is deprecated.  Use industrial_extrinsic_cal-srv:request_type2 instead.")
  (request_type2 m))

(cl:ensure-generic-function 'scene_id2-val :lambda-list '(m))
(cl:defmethod scene_id2-val ((m <covariance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:scene_id2-val is deprecated.  Use industrial_extrinsic_cal-srv:scene_id2 instead.")
  (scene_id2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <covariance-request>) ostream)
  "Serializes a message object of type '<covariance-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'block_name1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'block_name1))
  (cl:let* ((signed (cl:slot-value msg 'request_type1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'scene_id1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'block_name2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'block_name2))
  (cl:let* ((signed (cl:slot-value msg 'request_type2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'scene_id2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <covariance-request>) istream)
  "Deserializes a message object of type '<covariance-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'block_name1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'block_name1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_type1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scene_id1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'block_name2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'block_name2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_type2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scene_id2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<covariance-request>)))
  "Returns string type for a service object of type '<covariance-request>"
  "industrial_extrinsic_cal/covarianceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'covariance-request)))
  "Returns string type for a service object of type 'covariance-request"
  "industrial_extrinsic_cal/covarianceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<covariance-request>)))
  "Returns md5sum for a message object of type '<covariance-request>"
  "007ea7659fcfafe13fcf466762341056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'covariance-request)))
  "Returns md5sum for a message object of type 'covariance-request"
  "007ea7659fcfafe13fcf466762341056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<covariance-request>)))
  "Returns full string definition for message of type '<covariance-request>"
  (cl:format cl:nil "string file_name~%string block_name1~%int32 request_type1~%int32 scene_id1~%string block_name2~%int32 request_type2~%int32 scene_id2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'covariance-request)))
  "Returns full string definition for message of type 'covariance-request"
  (cl:format cl:nil "string file_name~%string block_name1~%int32 request_type1~%int32 scene_id1~%string block_name2~%int32 request_type2~%int32 scene_id2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <covariance-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
     4 (cl:length (cl:slot-value msg 'block_name1))
     4
     4
     4 (cl:length (cl:slot-value msg 'block_name2))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <covariance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'covariance-request
    (cl:cons ':file_name (file_name msg))
    (cl:cons ':block_name1 (block_name1 msg))
    (cl:cons ':request_type1 (request_type1 msg))
    (cl:cons ':scene_id1 (scene_id1 msg))
    (cl:cons ':block_name2 (block_name2 msg))
    (cl:cons ':request_type2 (request_type2 msg))
    (cl:cons ':scene_id2 (scene_id2 msg))
))
;//! \htmlinclude covariance-response.msg.html

(cl:defclass <covariance-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass covariance-response (<covariance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <covariance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'covariance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<covariance-response> is deprecated: use industrial_extrinsic_cal-srv:covariance-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <covariance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:result-val is deprecated.  Use industrial_extrinsic_cal-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <covariance-response>) ostream)
  "Serializes a message object of type '<covariance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <covariance-response>) istream)
  "Deserializes a message object of type '<covariance-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<covariance-response>)))
  "Returns string type for a service object of type '<covariance-response>"
  "industrial_extrinsic_cal/covarianceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'covariance-response)))
  "Returns string type for a service object of type 'covariance-response"
  "industrial_extrinsic_cal/covarianceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<covariance-response>)))
  "Returns md5sum for a message object of type '<covariance-response>"
  "007ea7659fcfafe13fcf466762341056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'covariance-response)))
  "Returns md5sum for a message object of type 'covariance-response"
  "007ea7659fcfafe13fcf466762341056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<covariance-response>)))
  "Returns full string definition for message of type '<covariance-response>"
  (cl:format cl:nil "uint32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'covariance-response)))
  "Returns full string definition for message of type 'covariance-response"
  (cl:format cl:nil "uint32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <covariance-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <covariance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'covariance-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'covariance)))
  'covariance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'covariance)))
  'covariance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'covariance)))
  "Returns string type for a service object of type '<covariance>"
  "industrial_extrinsic_cal/covariance")