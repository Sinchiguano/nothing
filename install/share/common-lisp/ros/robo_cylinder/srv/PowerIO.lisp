; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude PowerIO-request.msg.html

(cl:defclass <PowerIO-request> (roslisp-msg-protocol:ros-message)
  ((io
    :reader io
    :initarg :io
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerIO-request (<PowerIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<PowerIO-request> is deprecated: use robo_cylinder-srv:PowerIO-request instead.")))

(cl:ensure-generic-function 'io-val :lambda-list '(m))
(cl:defmethod io-val ((m <PowerIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:io-val is deprecated.  Use robo_cylinder-srv:io instead.")
  (io m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerIO-request>) ostream)
  "Serializes a message object of type '<PowerIO-request>"
  (cl:let* ((signed (cl:slot-value msg 'io)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerIO-request>) istream)
  "Deserializes a message object of type '<PowerIO-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'io) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerIO-request>)))
  "Returns string type for a service object of type '<PowerIO-request>"
  "robo_cylinder/PowerIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerIO-request)))
  "Returns string type for a service object of type 'PowerIO-request"
  "robo_cylinder/PowerIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerIO-request>)))
  "Returns md5sum for a message object of type '<PowerIO-request>"
  "2f3ab81f85bd2b368501f94f9d2164e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerIO-request)))
  "Returns md5sum for a message object of type 'PowerIO-request"
  "2f3ab81f85bd2b368501f94f9d2164e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerIO-request>)))
  "Returns full string definition for message of type '<PowerIO-request>"
  (cl:format cl:nil "int16 io~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerIO-request)))
  "Returns full string definition for message of type 'PowerIO-request"
  (cl:format cl:nil "int16 io~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerIO-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerIO-request
    (cl:cons ':io (io msg))
))
;//! \htmlinclude PowerIO-response.msg.html

(cl:defclass <PowerIO-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowerIO-response (<PowerIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<PowerIO-response> is deprecated: use robo_cylinder-srv:PowerIO-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <PowerIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerIO-response>) ostream)
  "Serializes a message object of type '<PowerIO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerIO-response>) istream)
  "Deserializes a message object of type '<PowerIO-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerIO-response>)))
  "Returns string type for a service object of type '<PowerIO-response>"
  "robo_cylinder/PowerIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerIO-response)))
  "Returns string type for a service object of type 'PowerIO-response"
  "robo_cylinder/PowerIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerIO-response>)))
  "Returns md5sum for a message object of type '<PowerIO-response>"
  "2f3ab81f85bd2b368501f94f9d2164e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerIO-response)))
  "Returns md5sum for a message object of type 'PowerIO-response"
  "2f3ab81f85bd2b368501f94f9d2164e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerIO-response>)))
  "Returns full string definition for message of type '<PowerIO-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerIO-response)))
  "Returns full string definition for message of type 'PowerIO-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerIO-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerIO-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PowerIO)))
  'PowerIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PowerIO)))
  'PowerIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerIO)))
  "Returns string type for a service object of type '<PowerIO>"
  "robo_cylinder/PowerIO")