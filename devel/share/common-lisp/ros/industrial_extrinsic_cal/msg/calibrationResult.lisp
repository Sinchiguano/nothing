; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-msg)


;//! \htmlinclude calibrationResult.msg.html

(cl:defclass <calibrationResult> (roslisp-msg-protocol:ros-message)
  ((cost_per_observation
    :reader cost_per_observation
    :initarg :cost_per_observation
    :type cl:float
    :initform 0.0))
)

(cl:defclass calibrationResult (<calibrationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calibrationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calibrationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-msg:<calibrationResult> is deprecated: use industrial_extrinsic_cal-msg:calibrationResult instead.")))

(cl:ensure-generic-function 'cost_per_observation-val :lambda-list '(m))
(cl:defmethod cost_per_observation-val ((m <calibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:cost_per_observation-val is deprecated.  Use industrial_extrinsic_cal-msg:cost_per_observation instead.")
  (cost_per_observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calibrationResult>) ostream)
  "Serializes a message object of type '<calibrationResult>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cost_per_observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calibrationResult>) istream)
  "Deserializes a message object of type '<calibrationResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost_per_observation) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calibrationResult>)))
  "Returns string type for a message object of type '<calibrationResult>"
  "industrial_extrinsic_cal/calibrationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibrationResult)))
  "Returns string type for a message object of type 'calibrationResult"
  "industrial_extrinsic_cal/calibrationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calibrationResult>)))
  "Returns md5sum for a message object of type '<calibrationResult>"
  "e0512b76935b097d08145b35b180a039")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calibrationResult)))
  "Returns md5sum for a message object of type 'calibrationResult"
  "e0512b76935b097d08145b35b180a039")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calibrationResult>)))
  "Returns full string definition for message of type '<calibrationResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%float64 cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calibrationResult)))
  "Returns full string definition for message of type 'calibrationResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%float64 cost_per_observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calibrationResult>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calibrationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'calibrationResult
    (cl:cons ':cost_per_observation (cost_per_observation msg))
))