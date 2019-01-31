; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude user_accept-request.msg.html

(cl:defclass <user_accept-request> (roslisp-msg-protocol:ros-message)
  ((allowable_error_per_pixel
    :reader allowable_error_per_pixel
    :initarg :allowable_error_per_pixel
    :type cl:float
    :initform 0.0))
)

(cl:defclass user_accept-request (<user_accept-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_accept-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_accept-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<user_accept-request> is deprecated: use industrial_extrinsic_cal-srv:user_accept-request instead.")))

(cl:ensure-generic-function 'allowable_error_per_pixel-val :lambda-list '(m))
(cl:defmethod allowable_error_per_pixel-val ((m <user_accept-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:allowable_error_per_pixel-val is deprecated.  Use industrial_extrinsic_cal-srv:allowable_error_per_pixel instead.")
  (allowable_error_per_pixel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_accept-request>) ostream)
  "Serializes a message object of type '<user_accept-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'allowable_error_per_pixel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_accept-request>) istream)
  "Deserializes a message object of type '<user_accept-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allowable_error_per_pixel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_accept-request>)))
  "Returns string type for a service object of type '<user_accept-request>"
  "industrial_extrinsic_cal/user_acceptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_accept-request)))
  "Returns string type for a service object of type 'user_accept-request"
  "industrial_extrinsic_cal/user_acceptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_accept-request>)))
  "Returns md5sum for a message object of type '<user_accept-request>"
  "b67d6e018ba30c2c1c11d202c487d542")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_accept-request)))
  "Returns md5sum for a message object of type 'user_accept-request"
  "b67d6e018ba30c2c1c11d202c487d542")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_accept-request>)))
  "Returns full string definition for message of type '<user_accept-request>"
  (cl:format cl:nil "~%float64 allowable_error_per_pixel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_accept-request)))
  "Returns full string definition for message of type 'user_accept-request"
  (cl:format cl:nil "~%float64 allowable_error_per_pixel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_accept-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_accept-request>))
  "Converts a ROS message object to a list"
  (cl:list 'user_accept-request
    (cl:cons ':allowable_error_per_pixel (allowable_error_per_pixel msg))
))
;//! \htmlinclude user_accept-response.msg.html

(cl:defclass <user_accept-response> (roslisp-msg-protocol:ros-message)
  ((resultant_error_per_pixel
    :reader resultant_error_per_pixel
    :initarg :resultant_error_per_pixel
    :type cl:float
    :initform 0.0))
)

(cl:defclass user_accept-response (<user_accept-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_accept-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_accept-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<user_accept-response> is deprecated: use industrial_extrinsic_cal-srv:user_accept-response instead.")))

(cl:ensure-generic-function 'resultant_error_per_pixel-val :lambda-list '(m))
(cl:defmethod resultant_error_per_pixel-val ((m <user_accept-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:resultant_error_per_pixel-val is deprecated.  Use industrial_extrinsic_cal-srv:resultant_error_per_pixel instead.")
  (resultant_error_per_pixel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_accept-response>) ostream)
  "Serializes a message object of type '<user_accept-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resultant_error_per_pixel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_accept-response>) istream)
  "Deserializes a message object of type '<user_accept-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resultant_error_per_pixel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_accept-response>)))
  "Returns string type for a service object of type '<user_accept-response>"
  "industrial_extrinsic_cal/user_acceptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_accept-response)))
  "Returns string type for a service object of type 'user_accept-response"
  "industrial_extrinsic_cal/user_acceptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_accept-response>)))
  "Returns md5sum for a message object of type '<user_accept-response>"
  "b67d6e018ba30c2c1c11d202c487d542")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_accept-response)))
  "Returns md5sum for a message object of type 'user_accept-response"
  "b67d6e018ba30c2c1c11d202c487d542")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_accept-response>)))
  "Returns full string definition for message of type '<user_accept-response>"
  (cl:format cl:nil "~%float64 resultant_error_per_pixel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_accept-response)))
  "Returns full string definition for message of type 'user_accept-response"
  (cl:format cl:nil "~%float64 resultant_error_per_pixel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_accept-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_accept-response>))
  "Converts a ROS message object to a list"
  (cl:list 'user_accept-response
    (cl:cons ':resultant_error_per_pixel (resultant_error_per_pixel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'user_accept)))
  'user_accept-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'user_accept)))
  'user_accept-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_accept)))
  "Returns string type for a service object of type '<user_accept>"
  "industrial_extrinsic_cal/user_accept")