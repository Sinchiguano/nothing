; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-msg)


;//! \htmlinclude calibrationFeedback.msg.html

(cl:defclass <calibrationFeedback> (roslisp-msg-protocol:ros-message)
  ((percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0))
)

(cl:defclass calibrationFeedback (<calibrationFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calibrationFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calibrationFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-msg:<calibrationFeedback> is deprecated: use industrial_extrinsic_cal-msg:calibrationFeedback instead.")))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <calibrationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:percent_complete-val is deprecated.  Use industrial_extrinsic_cal-msg:percent_complete instead.")
  (percent_complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calibrationFeedback>) ostream)
  "Serializes a message object of type '<calibrationFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calibrationFeedback>) istream)
  "Deserializes a message object of type '<calibrationFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calibrationFeedback>)))
  "Returns string type for a message object of type '<calibrationFeedback>"
  "industrial_extrinsic_cal/calibrationFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibrationFeedback)))
  "Returns string type for a message object of type 'calibrationFeedback"
  "industrial_extrinsic_cal/calibrationFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calibrationFeedback>)))
  "Returns md5sum for a message object of type '<calibrationFeedback>"
  "d342375c60a5a58d3bc32664070a1368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calibrationFeedback)))
  "Returns md5sum for a message object of type 'calibrationFeedback"
  "d342375c60a5a58d3bc32664070a1368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calibrationFeedback>)))
  "Returns full string definition for message of type '<calibrationFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 percent_complete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calibrationFeedback)))
  "Returns full string definition for message of type 'calibrationFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 percent_complete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calibrationFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calibrationFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'calibrationFeedback
    (cl:cons ':percent_complete (percent_complete msg))
))