;; Auto-generated. Do not edit!


(when (boundp 'intrinsic_cal::rail_scal_run)
  (if (not (find-package "INTRINSIC_CAL"))
    (make-package "INTRINSIC_CAL"))
  (shadow 'rail_scal_run (find-package "INTRINSIC_CAL")))
(unless (find-package "INTRINSIC_CAL::RAIL_SCAL_RUN")
  (make-package "INTRINSIC_CAL::RAIL_SCAL_RUN"))
(unless (find-package "INTRINSIC_CAL::RAIL_SCAL_RUNREQUEST")
  (make-package "INTRINSIC_CAL::RAIL_SCAL_RUNREQUEST"))
(unless (find-package "INTRINSIC_CAL::RAIL_SCAL_RUNRESPONSE")
  (make-package "INTRINSIC_CAL::RAIL_SCAL_RUNRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass intrinsic_cal::rail_scal_runRequest
  :super ros::object
  :slots (_allowable_cost_per_observation ))

(defmethod intrinsic_cal::rail_scal_runRequest
  (:init
   (&key
    ((:allowable_cost_per_observation __allowable_cost_per_observation) 0.0)
    )
   (send-super :init)
   (setq _allowable_cost_per_observation (float __allowable_cost_per_observation))
   self)
  (:allowable_cost_per_observation
   (&optional __allowable_cost_per_observation)
   (if __allowable_cost_per_observation (setq _allowable_cost_per_observation __allowable_cost_per_observation)) _allowable_cost_per_observation)
  (:serialization-length
   ()
   (+
    ;; float64 _allowable_cost_per_observation
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _allowable_cost_per_observation
       (sys::poke _allowable_cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _allowable_cost_per_observation
     (setq _allowable_cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass intrinsic_cal::rail_scal_runResponse
  :super ros::object
  :slots (_final_cost_per_observation _right_camera_pose ))

(defmethod intrinsic_cal::rail_scal_runResponse
  (:init
   (&key
    ((:final_cost_per_observation __final_cost_per_observation) 0.0)
    ((:right_camera_pose __right_camera_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _final_cost_per_observation (float __final_cost_per_observation))
   (setq _right_camera_pose __right_camera_pose)
   self)
  (:final_cost_per_observation
   (&optional __final_cost_per_observation)
   (if __final_cost_per_observation (setq _final_cost_per_observation __final_cost_per_observation)) _final_cost_per_observation)
  (:right_camera_pose
   (&rest __right_camera_pose)
   (if (keywordp (car __right_camera_pose))
       (send* _right_camera_pose __right_camera_pose)
     (progn
       (if __right_camera_pose (setq _right_camera_pose (car __right_camera_pose)))
       _right_camera_pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _final_cost_per_observation
    8
    ;; geometry_msgs/Pose _right_camera_pose
    (send _right_camera_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _final_cost_per_observation
       (sys::poke _final_cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _right_camera_pose
       (send _right_camera_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _final_cost_per_observation
     (setq _final_cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _right_camera_pose
     (send _right_camera_pose :deserialize buf ptr-) (incf ptr- (send _right_camera_pose :serialization-length))
   ;;
   self)
  )

(defclass intrinsic_cal::rail_scal_run
  :super ros::object
  :slots ())

(setf (get intrinsic_cal::rail_scal_run :md5sum-) "21faf34529a7860b5bbdc27da42887dc")
(setf (get intrinsic_cal::rail_scal_run :datatype-) "intrinsic_cal/rail_scal_run")
(setf (get intrinsic_cal::rail_scal_run :request) intrinsic_cal::rail_scal_runRequest)
(setf (get intrinsic_cal::rail_scal_run :response) intrinsic_cal::rail_scal_runResponse)

(defmethod intrinsic_cal::rail_scal_runRequest
  (:response () (instance intrinsic_cal::rail_scal_runResponse :init)))

(setf (get intrinsic_cal::rail_scal_runRequest :md5sum-) "21faf34529a7860b5bbdc27da42887dc")
(setf (get intrinsic_cal::rail_scal_runRequest :datatype-) "intrinsic_cal/rail_scal_runRequest")
(setf (get intrinsic_cal::rail_scal_runRequest :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
geometry_msgs/Pose right_camera_pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get intrinsic_cal::rail_scal_runResponse :md5sum-) "21faf34529a7860b5bbdc27da42887dc")
(setf (get intrinsic_cal::rail_scal_runResponse :datatype-) "intrinsic_cal/rail_scal_runResponse")
(setf (get intrinsic_cal::rail_scal_runResponse :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
geometry_msgs/Pose right_camera_pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :intrinsic_cal/rail_scal_run "21faf34529a7860b5bbdc27da42887dc")


