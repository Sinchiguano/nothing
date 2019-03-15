; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude MovePulses-request.msg.html

(cl:defclass <MovePulses-request> (roslisp-msg-protocol:ros-message)
  ((pulses
    :reader pulses
    :initarg :pulses
    :type cl:integer
    :initform 0))
)

(cl:defclass MovePulses-request (<MovePulses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovePulses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovePulses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<MovePulses-request> is deprecated: use robo_cylinder-srv:MovePulses-request instead.")))

(cl:ensure-generic-function 'pulses-val :lambda-list '(m))
(cl:defmethod pulses-val ((m <MovePulses-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:pulses-val is deprecated.  Use robo_cylinder-srv:pulses instead.")
  (pulses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovePulses-request>) ostream)
  "Serializes a message object of type '<MovePulses-request>"
  (cl:let* ((signed (cl:slot-value msg 'pulses)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovePulses-request>) istream)
  "Deserializes a message object of type '<MovePulses-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pulses) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovePulses-request>)))
  "Returns string type for a service object of type '<MovePulses-request>"
  "robo_cylinder/MovePulsesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePulses-request)))
  "Returns string type for a service object of type 'MovePulses-request"
  "robo_cylinder/MovePulsesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovePulses-request>)))
  "Returns md5sum for a message object of type '<MovePulses-request>"
  "2312ac85d9c04ace4203b83d46d0f0a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovePulses-request)))
  "Returns md5sum for a message object of type 'MovePulses-request"
  "2312ac85d9c04ace4203b83d46d0f0a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovePulses-request>)))
  "Returns full string definition for message of type '<MovePulses-request>"
  (cl:format cl:nil "int32 pulses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovePulses-request)))
  "Returns full string definition for message of type 'MovePulses-request"
  (cl:format cl:nil "int32 pulses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovePulses-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovePulses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MovePulses-request
    (cl:cons ':pulses (pulses msg))
))
;//! \htmlinclude MovePulses-response.msg.html

(cl:defclass <MovePulses-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MovePulses-response (<MovePulses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovePulses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovePulses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<MovePulses-response> is deprecated: use robo_cylinder-srv:MovePulses-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MovePulses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovePulses-response>) ostream)
  "Serializes a message object of type '<MovePulses-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovePulses-response>) istream)
  "Deserializes a message object of type '<MovePulses-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovePulses-response>)))
  "Returns string type for a service object of type '<MovePulses-response>"
  "robo_cylinder/MovePulsesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePulses-response)))
  "Returns string type for a service object of type 'MovePulses-response"
  "robo_cylinder/MovePulsesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovePulses-response>)))
  "Returns md5sum for a message object of type '<MovePulses-response>"
  "2312ac85d9c04ace4203b83d46d0f0a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovePulses-response)))
  "Returns md5sum for a message object of type 'MovePulses-response"
  "2312ac85d9c04ace4203b83d46d0f0a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovePulses-response>)))
  "Returns full string definition for message of type '<MovePulses-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovePulses-response)))
  "Returns full string definition for message of type 'MovePulses-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovePulses-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovePulses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MovePulses-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MovePulses)))
  'MovePulses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MovePulses)))
  'MovePulses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePulses)))
  "Returns string type for a service object of type '<MovePulses>"
  "robo_cylinder/MovePulses")