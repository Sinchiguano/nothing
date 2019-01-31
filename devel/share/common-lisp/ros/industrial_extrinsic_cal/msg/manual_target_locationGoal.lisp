; Auto-generated. Do not edit!


(cl:in-package industrial_extrinsic_cal-msg)


;//! \htmlinclude manual_target_locationGoal.msg.html

(cl:defclass <manual_target_locationGoal> (roslisp-msg-protocol:ros-message)
  ((instructions
    :reader instructions
    :initarg :instructions
    :type cl:string
    :initform "")
   (target_type
    :reader target_type
    :initarg :target_type
    :type cl:integer
    :initform 0)
   (image_topic
    :reader image_topic
    :initarg :image_topic
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
    :initform 0)
   (grid_rows
    :reader grid_rows
    :initarg :grid_rows
    :type cl:integer
    :initform 0)
   (grid_cols
    :reader grid_cols
    :initarg :grid_cols
    :type cl:integer
    :initform 0))
)

(cl:defclass manual_target_locationGoal (<manual_target_locationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manual_target_locationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manual_target_locationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name industrial_extrinsic_cal-msg:<manual_target_locationGoal> is deprecated: use industrial_extrinsic_cal-msg:manual_target_locationGoal instead.")))

(cl:ensure-generic-function 'instructions-val :lambda-list '(m))
(cl:defmethod instructions-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:instructions-val is deprecated.  Use industrial_extrinsic_cal-msg:instructions instead.")
  (instructions m))

(cl:ensure-generic-function 'target_type-val :lambda-list '(m))
(cl:defmethod target_type-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:target_type-val is deprecated.  Use industrial_extrinsic_cal-msg:target_type instead.")
  (target_type m))

(cl:ensure-generic-function 'image_topic-val :lambda-list '(m))
(cl:defmethod image_topic-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:image_topic-val is deprecated.  Use industrial_extrinsic_cal-msg:image_topic instead.")
  (image_topic m))

(cl:ensure-generic-function 'roi_min_x-val :lambda-list '(m))
(cl:defmethod roi_min_x-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:roi_min_x-val is deprecated.  Use industrial_extrinsic_cal-msg:roi_min_x instead.")
  (roi_min_x m))

(cl:ensure-generic-function 'roi_min_y-val :lambda-list '(m))
(cl:defmethod roi_min_y-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:roi_min_y-val is deprecated.  Use industrial_extrinsic_cal-msg:roi_min_y instead.")
  (roi_min_y m))

(cl:ensure-generic-function 'roi_max_x-val :lambda-list '(m))
(cl:defmethod roi_max_x-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:roi_max_x-val is deprecated.  Use industrial_extrinsic_cal-msg:roi_max_x instead.")
  (roi_max_x m))

(cl:ensure-generic-function 'roi_max_y-val :lambda-list '(m))
(cl:defmethod roi_max_y-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:roi_max_y-val is deprecated.  Use industrial_extrinsic_cal-msg:roi_max_y instead.")
  (roi_max_y m))

(cl:ensure-generic-function 'grid_rows-val :lambda-list '(m))
(cl:defmethod grid_rows-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:grid_rows-val is deprecated.  Use industrial_extrinsic_cal-msg:grid_rows instead.")
  (grid_rows m))

(cl:ensure-generic-function 'grid_cols-val :lambda-list '(m))
(cl:defmethod grid_cols-val ((m <manual_target_locationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader industrial_extrinsic_cal-msg:grid_cols-val is deprecated.  Use industrial_extrinsic_cal-msg:grid_cols instead.")
  (grid_cols m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manual_target_locationGoal>) ostream)
  "Serializes a message object of type '<manual_target_locationGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instructions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instructions))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'target_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'target_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_topic))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grid_rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'grid_rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'grid_rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'grid_rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grid_cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'grid_cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'grid_cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'grid_cols)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manual_target_locationGoal>) istream)
  "Deserializes a message object of type '<manual_target_locationGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instructions) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'instructions) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'target_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'target_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grid_rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'grid_rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'grid_rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'grid_rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grid_cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'grid_cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'grid_cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'grid_cols)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manual_target_locationGoal>)))
  "Returns string type for a message object of type '<manual_target_locationGoal>"
  "industrial_extrinsic_cal/manual_target_locationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manual_target_locationGoal)))
  "Returns string type for a message object of type 'manual_target_locationGoal"
  "industrial_extrinsic_cal/manual_target_locationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manual_target_locationGoal>)))
  "Returns md5sum for a message object of type '<manual_target_locationGoal>"
  "da35bff99f1ba8b9eb51a8eadd1f4616")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manual_target_locationGoal)))
  "Returns md5sum for a message object of type 'manual_target_locationGoal"
  "da35bff99f1ba8b9eb51a8eadd1f4616")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manual_target_locationGoal>)))
  "Returns full string definition for message of type '<manual_target_locationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string instructions~%uint32 target_type  ~%string image_topic~%uint32 roi_min_x~%uint32 roi_min_y~%uint32 roi_max_x~%uint32 roi_max_y~%uint32 grid_rows~%uint32 grid_cols~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manual_target_locationGoal)))
  "Returns full string definition for message of type 'manual_target_locationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string instructions~%uint32 target_type  ~%string image_topic~%uint32 roi_min_x~%uint32 roi_min_y~%uint32 roi_max_x~%uint32 roi_max_y~%uint32 grid_rows~%uint32 grid_cols~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manual_target_locationGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'instructions))
     4
     4 (cl:length (cl:slot-value msg 'image_topic))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manual_target_locationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'manual_target_locationGoal
    (cl:cons ':instructions (instructions msg))
    (cl:cons ':target_type (target_type msg))
    (cl:cons ':image_topic (image_topic msg))
    (cl:cons ':roi_min_x (roi_min_x msg))
    (cl:cons ':roi_min_y (roi_min_y msg))
    (cl:cons ':roi_max_x (roi_max_x msg))
    (cl:cons ':roi_max_y (roi_max_y msg))
    (cl:cons ':grid_rows (grid_rows msg))
    (cl:cons ':grid_cols (grid_cols msg))
))
