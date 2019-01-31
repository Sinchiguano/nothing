; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude MoveMeters-request.msg.html

(cl:defclass <MoveMeters-request> (roslisp-msg-protocol:ros-message)
  ((meters
    :reader meters
    :initarg :meters
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveMeters-request (<MoveMeters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveMeters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveMeters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<MoveMeters-request> is deprecated: use robo_cylinder-srv:MoveMeters-request instead.")))

(cl:ensure-generic-function 'meters-val :lambda-list '(m))
(cl:defmethod meters-val ((m <MoveMeters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:meters-val is deprecated.  Use robo_cylinder-srv:meters instead.")
  (meters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveMeters-request>) ostream)
  "Serializes a message object of type '<MoveMeters-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'meters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveMeters-request>) istream)
  "Deserializes a message object of type '<MoveMeters-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meters) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveMeters-request>)))
  "Returns string type for a service object of type '<MoveMeters-request>"
  "robo_cylinder/MoveMetersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveMeters-request)))
  "Returns string type for a service object of type 'MoveMeters-request"
  "robo_cylinder/MoveMetersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveMeters-request>)))
  "Returns md5sum for a message object of type '<MoveMeters-request>"
  "6f982fc36fa004e803e69f0803390fad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveMeters-request)))
  "Returns md5sum for a message object of type 'MoveMeters-request"
  "6f982fc36fa004e803e69f0803390fad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveMeters-request>)))
  "Returns full string definition for message of type '<MoveMeters-request>"
  (cl:format cl:nil "float32 meters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveMeters-request)))
  "Returns full string definition for message of type 'MoveMeters-request"
  (cl:format cl:nil "float32 meters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveMeters-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveMeters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveMeters-request
    (cl:cons ':meters (meters msg))
))
;//! \htmlinclude MoveMeters-response.msg.html

(cl:defclass <MoveMeters-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveMeters-response (<MoveMeters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveMeters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveMeters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<MoveMeters-response> is deprecated: use robo_cylinder-srv:MoveMeters-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoveMeters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveMeters-response>) ostream)
  "Serializes a message object of type '<MoveMeters-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveMeters-response>) istream)
  "Deserializes a message object of type '<MoveMeters-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveMeters-response>)))
  "Returns string type for a service object of type '<MoveMeters-response>"
  "robo_cylinder/MoveMetersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveMeters-response)))
  "Returns string type for a service object of type 'MoveMeters-response"
  "robo_cylinder/MoveMetersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveMeters-response>)))
  "Returns md5sum for a message object of type '<MoveMeters-response>"
  "6f982fc36fa004e803e69f0803390fad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveMeters-response)))
  "Returns md5sum for a message object of type 'MoveMeters-response"
  "6f982fc36fa004e803e69f0803390fad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveMeters-response>)))
  "Returns full string definition for message of type '<MoveMeters-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveMeters-response)))
  "Returns full string definition for message of type 'MoveMeters-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveMeters-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveMeters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveMeters-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveMeters)))
  'MoveMeters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveMeters)))
  'MoveMeters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveMeters)))
  "Returns string type for a service object of type '<MoveMeters>"
  "robo_cylinder/MoveMeters")