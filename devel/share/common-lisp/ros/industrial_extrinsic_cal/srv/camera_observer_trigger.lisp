; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-srv)


;//! \htmlinclude camera_observer_trigger-request.msg.html

(cl:defclass <camera_observer_trigger-request> (roslisp-msg-protocol:ros-message)
  ((image_topic
    :reader image_topic
    :initarg :image_topic
    :type cl:string
    :initform "")
   (instructions
    :reader instructions
    :initarg :instructions
    :type cl:string
    :initform "")
   (roi_min_x
    :reader roi_min_x
    :initarg :roi_min_x
    :type cl:integer
    :initform 0)
   (roi_min_y
    :reader roi_min_y
    :initarg :roi_min_y
    :type cl:integer
    :initform 0)
   (roi_max_x
    :reader roi_max_x
    :initarg :roi_max_x
    :type cl:integer
    :initform 0)
   (roi_max_y
    :reader roi_max_y
    :initarg :roi_max_y
    :type cl:integer
    :initform 0))
)

(cl:defclass camera_observer_trigger-request (<camera_observer_trigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_observer_trigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_observer_trigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<camera_observer_trigger-request> is deprecated: use industrial_extrinsic_cal-srv:camera_observer_trigger-request instead.")))

(cl:ensure-generic-function 'image_topic-val :lambda-list '(m))
(cl:defmethod image_topic-val ((m <camera_observer_trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:image_topic-val is deprecated.  Use industrial_extrinsic_cal-srv:image_topic instead.")
  (image_topic m))

(cl:ensure-generic-function 'instructions-val :lambda-list '(m))
(cl:defmethod instructions-val ((m <camera_observer_trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:instructions-val is deprecated.  Use industrial_extrinsic_cal-srv:instructions instead.")
  (instructions m))

(cl:ensure-generic-function 'roi_min_x-val :lambda-list '(m))
(cl:defmethod roi_min_x-val ((m <camera_observer_trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:roi_min_x-val is deprecated.  Use industrial_extrinsic_cal-srv:roi_min_x instead.")
  (roi_min_x m))

(cl:ensure-generic-function 'roi_min_y-val :lambda-list '(m))
(cl:defmethod roi_min_y-val ((m <camera_observer_trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:roi_min_y-val is deprecated.  Use industrial_extrinsic_cal-srv:roi_min_y instead.")
  (roi_min_y m))

(cl:ensure-generic-function 'roi_max_x-val :lambda-list '(m))
(cl:defmethod roi_max_x-val ((m <camera_observer_trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:roi_max_x-val is deprecated.  Use industrial_extrinsic_cal-srv:roi_max_x instead.")
  (roi_max_x m))

(cl:ensure-generic-function 'roi_max_y-val :lambda-list '(m))
(cl:defmethod roi_max_y-val ((m <camera_observer_trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:roi_max_y-val is deprecated.  Use industrial_extrinsic_cal-srv:roi_max_y instead.")
  (roi_max_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_observer_trigger-request>) ostream)
  "Serializes a message object of type '<camera_observer_trigger-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instructions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instructions))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_max_y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_observer_trigger-request>) istream)
  "Deserializes a message object of type '<camera_observer_trigger-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instructions) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'instructions) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roi_max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roi_max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roi_max_y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_observer_trigger-request>)))
  "Returns string type for a service object of type '<camera_observer_trigger-request>"
  "industrial_extrinsic_cal/camera_observer_triggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_observer_trigger-request)))
  "Returns string type for a service object of type 'camera_observer_trigger-request"
  "industrial_extrinsic_cal/camera_observer_triggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_observer_trigger-request>)))
  "Returns md5sum for a message object of type '<camera_observer_trigger-request>"
  "47ad3ec1797cb1642f250ccac426d28b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_observer_trigger-request)))
  "Returns md5sum for a message object of type 'camera_observer_trigger-request"
  "47ad3ec1797cb1642f250ccac426d28b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_observer_trigger-request>)))
  "Returns full string definition for message of type '<camera_observer_trigger-request>"
  (cl:format cl:nil "~%string image_topic~%string instructions~%uint32 roi_min_x~%uint32 roi_min_y~%uint32 roi_max_x~%uint32 roi_max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_observer_trigger-request)))
  "Returns full string definition for message of type 'camera_observer_trigger-request"
  (cl:format cl:nil "~%string image_topic~%string instructions~%uint32 roi_min_x~%uint32 roi_min_y~%uint32 roi_max_x~%uint32 roi_max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_observer_trigger-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_topic))
     4 (cl:length (cl:slot-value msg 'instructions))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_observer_trigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_observer_trigger-request
    (cl:cons ':image_topic (image_topic msg))
    (cl:cons ':instructions (instructions msg))
    (cl:cons ':roi_min_x (roi_min_x msg))
    (cl:cons ':roi_min_y (roi_min_y msg))
    (cl:cons ':roi_max_x (roi_max_x msg))
    (cl:cons ':roi_max_y (roi_max_y msg))
))
;//! \htmlinclude camera_observer_trigger-response.msg.html

(cl:defclass <camera_observer_trigger-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass camera_observer_trigger-response (<camera_observer_trigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_observer_trigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_observer_trigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-srv:<camera_observer_trigger-response> is deprecated: use industrial_extrinsic_cal-srv:camera_observer_trigger-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <camera_observer_trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-srv:result-val is deprecated.  Use industrial_extrinsic_cal-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_observer_trigger-response>) ostream)
  "Serializes a message object of type '<camera_observer_trigger-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_observer_trigger-response>) istream)
  "Deserializes a message object of type '<camera_observer_trigger-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_observer_trigger-response>)))
  "Returns string type for a service object of type '<camera_observer_trigger-response>"
  "industrial_extrinsic_cal/camera_observer_triggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_observer_trigger-response)))
  "Returns string type for a service object of type 'camera_observer_trigger-response"
  "industrial_extrinsic_cal/camera_observer_triggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_observer_trigger-response>)))
  "Returns md5sum for a message object of type '<camera_observer_trigger-response>"
  "47ad3ec1797cb1642f250ccac426d28b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_observer_trigger-response)))
  "Returns md5sum for a message object of type 'camera_observer_trigger-response"
  "47ad3ec1797cb1642f250ccac426d28b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_observer_trigger-response>)))
  "Returns full string definition for message of type '<camera_observer_trigger-response>"
  (cl:format cl:nil "~%uint32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_observer_trigger-response)))
  "Returns full string definition for message of type 'camera_observer_trigger-response"
  (cl:format cl:nil "~%uint32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_observer_trigger-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_observer_trigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_observer_trigger-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'camera_observer_trigger)))
  'camera_observer_trigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'camera_observer_trigger)))
  'camera_observer_trigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_observer_trigger)))
  "Returns string type for a service object of type '<camera_observer_trigger>"
  "industrial_extrinsic_cal/camera_observer_trigger")