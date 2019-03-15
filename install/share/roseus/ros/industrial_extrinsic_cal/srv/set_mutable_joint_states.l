;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::set_mutable_joint_states)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'set_mutable_joint_states (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::SET_MUTABLE_JOINT_STATES")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::SET_MUTABLE_JOINT_STATES"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::SET_MUTABLE_JOINT_STATESREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::SET_MUTABLE_JOINT_STATESREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::SET_MUTABLE_JOINT_STATESRESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::SET_MUTABLE_JOINT_STATESRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass industrial_extrinsic_cal::set_mutable_joint_statesRequest
  :super ros::object
  :slots (_joint_names _joint_values ))

(defmethod industrial_extrinsic_cal::set_mutable_joint_statesRequest
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:joint_values __joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _joint_values __joint_values)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:joint_values
   (&optional __joint_values)
   (if __joint_values (setq _joint_values __joint_values)) _joint_values)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _joint_values
    (* 8    (length _joint_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _joint_values
     (write-long (length _joint_values) s)
     (dotimes (i (length _joint_values))
       (sys::poke (elt _joint_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::set_mutable_joint_statesResponse
  :super ros::object
  :slots (_empty ))

(defmethod industrial_extrinsic_cal::set_mutable_joint_statesResponse
  (:init
   (&key
    ((:empty __empty) (instance std_msgs::Empty :init))
    )
   (send-super :init)
   (setq _empty __empty)
   self)
  (:empty
   (&rest __empty)
   (if (keywordp (car __empty))
       (send* _empty __empty)
     (progn
       (if __empty (setq _empty (car __empty)))
       _empty)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Empty _empty
    (send _empty :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Empty _empty
       (send _empty :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Empty _empty
     (send _empty :deserialize buf ptr-) (incf ptr- (send _empty :serialization-length))
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::set_mutable_joint_states
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::set_mutable_joint_states :md5sum-) "94a0884649c0044529f5401bfc8e038a")
(setf (get industrial_extrinsic_cal::set_mutable_joint_states :datatype-) "industrial_extrinsic_cal/set_mutable_joint_states")
(setf (get industrial_extrinsic_cal::set_mutable_joint_states :request) industrial_extrinsic_cal::set_mutable_joint_statesRequest)
(setf (get industrial_extrinsic_cal::set_mutable_joint_states :response) industrial_extrinsic_cal::set_mutable_joint_statesResponse)

(defmethod industrial_extrinsic_cal::set_mutable_joint_statesRequest
  (:response () (instance industrial_extrinsic_cal::set_mutable_joint_statesResponse :init)))

(setf (get industrial_extrinsic_cal::set_mutable_joint_statesRequest :md5sum-) "94a0884649c0044529f5401bfc8e038a")
(setf (get industrial_extrinsic_cal::set_mutable_joint_statesRequest :datatype-) "industrial_extrinsic_cal/set_mutable_joint_statesRequest")
(setf (get industrial_extrinsic_cal::set_mutable_joint_statesRequest :definition-)
      "string[] joint_names
float64[] joint_values
---
std_msgs/Empty empty


================================================================================
MSG: std_msgs/Empty
")

(setf (get industrial_extrinsic_cal::set_mutable_joint_statesResponse :md5sum-) "94a0884649c0044529f5401bfc8e038a")
(setf (get industrial_extrinsic_cal::set_mutable_joint_statesResponse :datatype-) "industrial_extrinsic_cal/set_mutable_joint_statesResponse")
(setf (get industrial_extrinsic_cal::set_mutable_joint_statesResponse :definition-)
      "string[] joint_names
float64[] joint_values
---
std_msgs/Empty empty


================================================================================
MSG: std_msgs/Empty
")



(provide :industrial_extrinsic_cal/set_mutable_joint_states "94a0884649c0044529f5401bfc8e038a")


