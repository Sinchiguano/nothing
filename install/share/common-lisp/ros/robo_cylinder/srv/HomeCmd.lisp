; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude HomeCmd-request.msg.html

(cl:defclass <HomeCmd-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HomeCmd-request (<HomeCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomeCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomeCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<HomeCmd-request> is deprecated: use robo_cylinder-srv:HomeCmd-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomeCmd-request>) ostream)
  "Serializes a message object of type '<HomeCmd-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomeCmd-request>) istream)
  "Deserializes a message object of type '<HomeCmd-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomeCmd-request>)))
  "Returns string type for a service object of type '<HomeCmd-request>"
  "robo_cylinder/HomeCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomeCmd-request)))
  "Returns string type for a service object of type 'HomeCmd-request"
  "robo_cylinder/HomeCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomeCmd-request>)))
  "Returns md5sum for a message object of type '<HomeCmd-request>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomeCmd-request)))
  "Returns md5sum for a message object of type 'HomeCmd-request"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomeCmd-request>)))
  "Returns full string definition for message of type '<HomeCmd-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomeCmd-request)))
  "Returns full string definition for message of type 'HomeCmd-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomeCmd-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomeCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HomeCmd-request
))
;//! \htmlinclude HomeCmd-response.msg.html

(cl:defclass <HomeCmd-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HomeCmd-response (<HomeCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomeCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomeCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<HomeCmd-response> is deprecated: use robo_cylinder-srv:HomeCmd-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <HomeCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomeCmd-response>) ostream)
  "Serializes a message object of type '<HomeCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomeCmd-response>) istream)
  "Deserializes a message object of type '<HomeCmd-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomeCmd-response>)))
  "Returns string type for a service object of type '<HomeCmd-response>"
  "robo_cylinder/HomeCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomeCmd-response)))
  "Returns string type for a service object of type 'HomeCmd-response"
  "robo_cylinder/HomeCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomeCmd-response>)))
  "Returns md5sum for a message object of type '<HomeCmd-response>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomeCmd-response)))
  "Returns md5sum for a message object of type 'HomeCmd-response"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomeCmd-response>)))
  "Returns full string definition for message of type '<HomeCmd-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomeCmd-response)))
  "Returns full string definition for message of type 'HomeCmd-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomeCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomeCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HomeCmd-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HomeCmd)))
  'HomeCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HomeCmd)))
  'HomeCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomeCmd)))
  "Returns string type for a service object of type '<HomeCmd>"
  "robo_cylinder/HomeCmd")