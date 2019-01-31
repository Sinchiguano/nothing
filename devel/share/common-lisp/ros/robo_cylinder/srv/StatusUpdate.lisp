; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude StatusUpdate-request.msg.html

(cl:defclass <StatusUpdate-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatusUpdate-request (<StatusUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<StatusUpdate-request> is deprecated: use robo_cylinder-srv:StatusUpdate-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusUpdate-request>) ostream)
  "Serializes a message object of type '<StatusUpdate-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusUpdate-request>) istream)
  "Deserializes a message object of type '<StatusUpdate-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusUpdate-request>)))
  "Returns string type for a service object of type '<StatusUpdate-request>"
  "robo_cylinder/StatusUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusUpdate-request)))
  "Returns string type for a service object of type 'StatusUpdate-request"
  "robo_cylinder/StatusUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusUpdate-request>)))
  "Returns md5sum for a message object of type '<StatusUpdate-request>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusUpdate-request)))
  "Returns md5sum for a message object of type 'StatusUpdate-request"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusUpdate-request>)))
  "Returns full string definition for message of type '<StatusUpdate-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusUpdate-request)))
  "Returns full string definition for message of type 'StatusUpdate-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusUpdate-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusUpdate-request
))
;//! \htmlinclude StatusUpdate-response.msg.html

(cl:defclass <StatusUpdate-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StatusUpdate-response (<StatusUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<StatusUpdate-response> is deprecated: use robo_cylinder-srv:StatusUpdate-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <StatusUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusUpdate-response>) ostream)
  "Serializes a message object of type '<StatusUpdate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusUpdate-response>) istream)
  "Deserializes a message object of type '<StatusUpdate-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusUpdate-response>)))
  "Returns string type for a service object of type '<StatusUpdate-response>"
  "robo_cylinder/StatusUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusUpdate-response)))
  "Returns string type for a service object of type 'StatusUpdate-response"
  "robo_cylinder/StatusUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusUpdate-response>)))
  "Returns md5sum for a message object of type '<StatusUpdate-response>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusUpdate-response)))
  "Returns md5sum for a message object of type 'StatusUpdate-response"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusUpdate-response>)))
  "Returns full string definition for message of type '<StatusUpdate-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusUpdate-response)))
  "Returns full string definition for message of type 'StatusUpdate-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusUpdate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusUpdate-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StatusUpdate)))
  'StatusUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StatusUpdate)))
  'StatusUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusUpdate)))
  "Returns string type for a service object of type '<StatusUpdate>"
  "robo_cylinder/StatusUpdate")