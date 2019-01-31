; Auto-generated. Do not edit!


(cl:in-package robo_cylinder-srv)


;//! \htmlinclude StringCmd-request.msg.html

(cl:defclass <StringCmd-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass StringCmd-request (<StringCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<StringCmd-request> is deprecated: use robo_cylinder-srv:StringCmd-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <StringCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:command-val is deprecated.  Use robo_cylinder-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringCmd-request>) ostream)
  "Serializes a message object of type '<StringCmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringCmd-request>) istream)
  "Deserializes a message object of type '<StringCmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringCmd-request>)))
  "Returns string type for a service object of type '<StringCmd-request>"
  "robo_cylinder/StringCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringCmd-request)))
  "Returns string type for a service object of type 'StringCmd-request"
  "robo_cylinder/StringCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringCmd-request>)))
  "Returns md5sum for a message object of type '<StringCmd-request>"
  "4d6784651d35dac8aad2a3eb7cbc01aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringCmd-request)))
  "Returns md5sum for a message object of type 'StringCmd-request"
  "4d6784651d35dac8aad2a3eb7cbc01aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringCmd-request>)))
  "Returns full string definition for message of type '<StringCmd-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringCmd-request)))
  "Returns full string definition for message of type 'StringCmd-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringCmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StringCmd-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude StringCmd-response.msg.html

(cl:defclass <StringCmd-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StringCmd-response (<StringCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robo_cylinder-srv:<StringCmd-response> is deprecated: use robo_cylinder-srv:StringCmd-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <StringCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robo_cylinder-srv:response-val is deprecated.  Use robo_cylinder-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringCmd-response>) ostream)
  "Serializes a message object of type '<StringCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringCmd-response>) istream)
  "Deserializes a message object of type '<StringCmd-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringCmd-response>)))
  "Returns string type for a service object of type '<StringCmd-response>"
  "robo_cylinder/StringCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringCmd-response)))
  "Returns string type for a service object of type 'StringCmd-response"
  "robo_cylinder/StringCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringCmd-response>)))
  "Returns md5sum for a message object of type '<StringCmd-response>"
  "4d6784651d35dac8aad2a3eb7cbc01aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringCmd-response)))
  "Returns md5sum for a message object of type 'StringCmd-response"
  "4d6784651d35dac8aad2a3eb7cbc01aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringCmd-response>)))
  "Returns full string definition for message of type '<StringCmd-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringCmd-response)))
  "Returns full string definition for message of type 'StringCmd-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StringCmd-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StringCmd)))
  'StringCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StringCmd)))
  'StringCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringCmd)))
  "Returns string type for a service object of type '<StringCmd>"
  "robo_cylinder/StringCmd")