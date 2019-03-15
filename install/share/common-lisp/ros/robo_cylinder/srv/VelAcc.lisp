; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude VelAcc-request.msg.html

(cl:defclass <VelAcc-request> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelAcc-request (<VelAcc-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelAcc-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelAcc-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<VelAcc-request> is deprecated: use robo_cylinder-srv:VelAcc-request instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <VelAcc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:vel-val is deprecated.  Use robo_cylinder-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <VelAcc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:acc-val is deprecated.  Use robo_cylinder-srv:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelAcc-request>) ostream)
  "Serializes a message object of type '<VelAcc-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelAcc-request>) istream)
  "Deserializes a message object of type '<VelAcc-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelAcc-request>)))
  "Returns string type for a service object of type '<VelAcc-request>"
  "robo_cylinder/VelAccRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelAcc-request)))
  "Returns string type for a service object of type 'VelAcc-request"
  "robo_cylinder/VelAccRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelAcc-request>)))
  "Returns md5sum for a message object of type '<VelAcc-request>"
  "f35bf9280520074b859fc92770147f86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelAcc-request)))
  "Returns md5sum for a message object of type 'VelAcc-request"
  "f35bf9280520074b859fc92770147f86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelAcc-request>)))
  "Returns full string definition for message of type '<VelAcc-request>"
  (cl:format cl:nil "float32 vel~%float32 acc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelAcc-request)))
  "Returns full string definition for message of type 'VelAcc-request"
  (cl:format cl:nil "float32 vel~%float32 acc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelAcc-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelAcc-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelAcc-request
    (cl:cons ':vel (vel msg))
    (cl:cons ':acc (acc msg))
))
;//! \htmlinclude VelAcc-response.msg.html

(cl:defclass <VelAcc-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VelAcc-response (<VelAcc-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelAcc-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelAcc-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<VelAcc-response> is deprecated: use robo_cylinder-srv:VelAcc-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <VelAcc-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelAcc-response>) ostream)
  "Serializes a message object of type '<VelAcc-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelAcc-response>) istream)
  "Deserializes a message object of type '<VelAcc-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelAcc-response>)))
  "Returns string type for a service object of type '<VelAcc-response>"
  "robo_cylinder/VelAccResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelAcc-response)))
  "Returns string type for a service object of type 'VelAcc-response"
  "robo_cylinder/VelAccResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelAcc-response>)))
  "Returns md5sum for a message object of type '<VelAcc-response>"
  "f35bf9280520074b859fc92770147f86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelAcc-response)))
  "Returns md5sum for a message object of type 'VelAcc-response"
  "f35bf9280520074b859fc92770147f86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelAcc-response>)))
  "Returns full string definition for message of type '<VelAcc-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelAcc-response)))
  "Returns full string definition for message of type 'VelAcc-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelAcc-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelAcc-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelAcc-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelAcc)))
  'VelAcc-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelAcc)))
  'VelAcc-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelAcc)))
  "Returns string type for a service object of type '<VelAcc>"
  "robo_cylinder/VelAcc")