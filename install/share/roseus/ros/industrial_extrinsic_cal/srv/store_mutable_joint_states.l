;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::store_mutable_joint_states)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'store_mutable_joint_states (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::STORE_MUTABLE_JOINT_STATES")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::STORE_MUTABLE_JOINT_STATES"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::STORE_MUTABLE_JOINT_STATESREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::STORE_MUTABLE_JOINT_STATESREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::STORE_MUTABLE_JOINT_STATESRESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::STORE_MUTABLE_JOINT_STATESRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass industrial_extrinsic_cal::store_mutable_joint_statesRequest
  :super ros::object
  :slots (_empty ))

(defmethod industrial_extrinsic_cal::store_mutable_joint_statesRequest
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

(defclass industrial_extrinsic_cal::store_mutable_joint_statesResponse
  :super ros::object
  :slots (_empty ))

(defmethod industrial_extrinsic_cal::store_mutable_joint_statesResponse
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

(defclass industrial_extrinsic_cal::store_mutable_joint_states
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::store_mutable_joint_states :md5sum-) "928fb104d412cd4f5983340b98df1876")
(setf (get industrial_extrinsic_cal::store_mutable_joint_states :datatype-) "industrial_extrinsic_cal/store_mutable_joint_states")
(setf (get industrial_extrinsic_cal::store_mutable_joint_states :request) industrial_extrinsic_cal::store_mutable_joint_statesRequest)
(setf (get industrial_extrinsic_cal::store_mutable_joint_states :response) industrial_extrinsic_cal::store_mutable_joint_statesResponse)

(defmethod industrial_extrinsic_cal::store_mutable_joint_statesRequest
  (:response () (instance industrial_extrinsic_cal::store_mutable_joint_statesResponse :init)))

(setf (get industrial_extrinsic_cal::store_mutable_joint_statesRequest :md5sum-) "928fb104d412cd4f5983340b98df1876")
(setf (get industrial_extrinsic_cal::store_mutable_joint_statesRequest :datatype-) "industrial_extrinsic_cal/store_mutable_joint_statesRequest")
(setf (get industrial_extrinsic_cal::store_mutable_joint_statesRequest :definition-)
      "std_msgs/Empty empty

================================================================================
MSG: std_msgs/Empty
---
std_msgs/Empty empty



================================================================================
MSG: std_msgs/Empty
")

(setf (get industrial_extrinsic_cal::store_mutable_joint_statesResponse :md5sum-) "928fb104d412cd4f5983340b98df1876")
(setf (get industrial_extrinsic_cal::store_mutable_joint_statesResponse :datatype-) "industrial_extrinsic_cal/store_mutable_joint_statesResponse")
(setf (get industrial_extrinsic_cal::store_mutable_joint_statesResponse :definition-)
      "std_msgs/Empty empty

================================================================================
MSG: std_msgs/Empty
---
std_msgs/Empty empty



================================================================================
MSG: std_msgs/Empty
")



(provide :industrial_extrinsic_cal/store_mutable_joint_states "928fb104d412cd4f5983340b98df1876")


