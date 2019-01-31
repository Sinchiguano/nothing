; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude store_mutable_joint_states-request.msg.html

(cl:defclass <store_mutable_joint_states-request> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass store_mutable_joint_states-request (<store_mutable_joint_states-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <store_mutable_joint_states-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'store_mutable_joint_states-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<store_mutable_joint_states-request> is deprecated: use industrial_extrinsic_cal-srv:store_mutable_joint_states-request instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <store_mutable_joint_states-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:empty-val is deprecated.  Use industrial_extrinsic_cal-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <store_mutable_joint_states-request>) ostream)
  "Serializes a message object of type '<store_mutable_joint_states-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <store_mutable_joint_states-request>) istream)
  "Deserializes a message object of type '<store_mutable_joint_states-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<store_mutable_joint_states-request>)))
  "Returns string type for a service object of type '<store_mutable_joint_states-request>"
  "industrial_extrinsic_cal/store_mutable_joint_statesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'store_mutable_joint_states-request)))
  "Returns string type for a service object of type 'store_mutable_joint_states-request"
  "industrial_extrinsic_cal/store_mutable_joint_statesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<store_mutable_joint_states-request>)))
  "Returns md5sum for a message object of type '<store_mutable_joint_states-request>"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'store_mutable_joint_states-request)))
  "Returns md5sum for a message object of type 'store_mutable_joint_states-request"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<store_mutable_joint_states-request>)))
  "Returns full string definition for message of type '<store_mutable_joint_states-request>"
  (cl:format cl:nil "std_msgs/Empty empty~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'store_mutable_joint_states-request)))
  "Returns full string definition for message of type 'store_mutable_joint_states-request"
  (cl:format cl:nil "std_msgs/Empty empty~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <store_mutable_joint_states-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <store_mutable_joint_states-request>))
  "Converts a ROS message object to a list"
  (cl:list 'store_mutable_joint_states-request
    (cl:cons ':empty (empty msg))
))
;//! \htmlinclude store_mutable_joint_states-response.msg.html

(cl:defclass <store_mutable_joint_states-response> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass store_mutable_joint_states-response (<store_mutable_joint_states-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <store_mutable_joint_states-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'store_mutable_joint_states-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<store_mutable_joint_states-response> is deprecated: use industrial_extrinsic_cal-srv:store_mutable_joint_states-response instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <store_mutable_joint_states-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:empty-val is deprecated.  Use industrial_extrinsic_cal-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <store_mutable_joint_states-response>) ostream)
  "Serializes a message object of type '<store_mutable_joint_states-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <store_mutable_joint_states-response>) istream)
  "Deserializes a message object of type '<store_mutable_joint_states-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<store_mutable_joint_states-response>)))
  "Returns string type for a service object of type '<store_mutable_joint_states-response>"
  "industrial_extrinsic_cal/store_mutable_joint_statesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'store_mutable_joint_states-response)))
  "Returns string type for a service object of type 'store_mutable_joint_states-response"
  "industrial_extrinsic_cal/store_mutable_joint_statesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<store_mutable_joint_states-response>)))
  "Returns md5sum for a message object of type '<store_mutable_joint_states-response>"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'store_mutable_joint_states-response)))
  "Returns md5sum for a message object of type 'store_mutable_joint_states-response"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<store_mutable_joint_states-response>)))
  "Returns full string definition for message of type '<store_mutable_joint_states-response>"
  (cl:format cl:nil "std_msgs/Empty empty~%~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'store_mutable_joint_states-response)))
  "Returns full string definition for message of type 'store_mutable_joint_states-response"
  (cl:format cl:nil "std_msgs/Empty empty~%~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <store_mutable_joint_states-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <store_mutable_joint_states-response>))
  "Converts a ROS message object to a list"
  (cl:list 'store_mutable_joint_states-response
    (cl:cons ':empty (empty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'store_mutable_joint_states)))
  'store_mutable_joint_states-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'store_mutable_joint_states)))
  'store_mutable_joint_states-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'store_mutable_joint_states)))
  "Returns string type for a service object of type '<store_mutable_joint_states>"
  "industrial_extrinsic_cal/store_mutable_joint_states")