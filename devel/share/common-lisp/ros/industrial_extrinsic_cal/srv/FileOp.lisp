; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude FileOp-request.msg.html

(cl:defclass <FileOp-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass FileOp-request (<FileOp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileOp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileOp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<FileOp-request> is deprecated: use industrial_extrinsic_cal-srv:FileOp-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FileOp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:name-val is deprecated.  Use industrial_extrinsic_cal-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileOp-request>) ostream)
  "Serializes a message object of type '<FileOp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileOp-request>) istream)
  "Deserializes a message object of type '<FileOp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileOp-request>)))
  "Returns string type for a service object of type '<FileOp-request>"
  "industrial_extrinsic_cal/FileOpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileOp-request)))
  "Returns string type for a service object of type 'FileOp-request"
  "industrial_extrinsic_cal/FileOpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileOp-request>)))
  "Returns md5sum for a message object of type '<FileOp-request>"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileOp-request)))
  "Returns md5sum for a message object of type 'FileOp-request"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileOp-request>)))
  "Returns full string definition for message of type '<FileOp-request>"
  (cl:format cl:nil "~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileOp-request)))
  "Returns full string definition for message of type 'FileOp-request"
  (cl:format cl:nil "~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileOp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileOp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileOp-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude FileOp-response.msg.html

(cl:defclass <FileOp-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass FileOp-response (<FileOp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileOp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileOp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<FileOp-response> is deprecated: use industrial_extrinsic_cal-srv:FileOp-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FileOp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:result-val is deprecated.  Use industrial_extrinsic_cal-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileOp-response>) ostream)
  "Serializes a message object of type '<FileOp-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileOp-response>) istream)
  "Deserializes a message object of type '<FileOp-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileOp-response>)))
  "Returns string type for a service object of type '<FileOp-response>"
  "industrial_extrinsic_cal/FileOpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileOp-response)))
  "Returns string type for a service object of type 'FileOp-response"
  "industrial_extrinsic_cal/FileOpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileOp-response>)))
  "Returns md5sum for a message object of type '<FileOp-response>"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileOp-response)))
  "Returns md5sum for a message object of type 'FileOp-response"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileOp-response>)))
  "Returns full string definition for message of type '<FileOp-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileOp-response)))
  "Returns full string definition for message of type 'FileOp-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileOp-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileOp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileOp-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileOp)))
  'FileOp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileOp)))
  'FileOp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileOp)))
  "Returns string type for a service object of type '<FileOp>"
  "industrial_extrinsic_cal/FileOp")