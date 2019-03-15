;; Auto-generated. Do not edit!


(when (boundp 'intrinsic_cal::rail_ical_run)
  (if (not (find-package "INTRINSIC_CAL"))
    (make-package "INTRINSIC_CAL"))
  (shadow 'rail_ical_run (find-package "INTRINSIC_CAL")))
(unless (find-package "INTRINSIC_CAL::RAIL_ICAL_RUN")
  (make-package "INTRINSIC_CAL::RAIL_ICAL_RUN"))
(unless (find-package "INTRINSIC_CAL::RAIL_ICAL_RUNREQUEST")
  (make-package "INTRINSIC_CAL::RAIL_ICAL_RUNREQUEST"))
(unless (find-package "INTRINSIC_CAL::RAIL_ICAL_RUNRESPONSE")
  (make-package "INTRINSIC_CAL::RAIL_ICAL_RUNRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass intrinsic_cal::rail_ical_runRequest
  :super ros::object
  :slots (_allowable_cost_per_observation ))

(defmethod intrinsic_cal::rail_ical_runRequest
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

(defclass intrinsic_cal::rail_ical_runResponse
  :super ros::object
  :slots (_final_cost_per_observation _final_pose ))

(defmethod intrinsic_cal::rail_ical_runResponse
  (:init
   (&key
    ((:final_cost_per_observation __final_cost_per_observation) 0.0)
    ((:final_pose __final_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _final_cost_per_observation (float __final_cost_per_observation))
   (setq _final_pose __final_pose)
   self)
  (:final_cost_per_observation
   (&optional __final_cost_per_observation)
   (if __final_cost_per_observation (setq _final_cost_per_observation __final_cost_per_observation)) _final_cost_per_observation)
  (:final_pose
   (&rest __final_pose)
   (if (keywordp (car __final_pose))
       (send* _final_pose __final_pose)
     (progn
       (if __final_pose (setq _final_pose (car __final_pose)))
       _final_pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _final_cost_per_observation
    8
    ;; geometry_msgs/Pose _final_pose
    (send _final_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _final_cost_per_observation
       (sys::poke _final_cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _final_pose
       (send _final_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _final_cost_per_observation
     (setq _final_cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _final_pose
     (send _final_pose :deserialize buf ptr-) (incf ptr- (send _final_pose :serialization-length))
   ;;
   self)
  )

(defclass intrinsic_cal::rail_ical_run
  :super ros::object
  :slots ())

(setf (get intrinsic_cal::rail_ical_run :md5sum-) "5b2e41c67828c97fda29508102025f24")
(setf (get intrinsic_cal::rail_ical_run :datatype-) "intrinsic_cal/rail_ical_run")
(setf (get intrinsic_cal::rail_ical_run :request) intrinsic_cal::rail_ical_runRequest)
(setf (get intrinsic_cal::rail_ical_run :response) intrinsic_cal::rail_ical_runResponse)

(defmethod intrinsic_cal::rail_ical_runRequest
  (:response () (instance intrinsic_cal::rail_ical_runResponse :init)))

(setf (get intrinsic_cal::rail_ical_runRequest :md5sum-) "5b2e41c67828c97fda29508102025f24")
(setf (get intrinsic_cal::rail_ical_runRequest :datatype-) "intrinsic_cal/rail_ical_runRequest")
(setf (get intrinsic_cal::rail_ical_runRequest :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
geometry_msgs/Pose final_pose


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

(setf (get intrinsic_cal::rail_ical_runResponse :md5sum-) "5b2e41c67828c97fda29508102025f24")
(setf (get intrinsic_cal::rail_ical_runResponse :datatype-) "intrinsic_cal/rail_ical_runResponse")
(setf (get intrinsic_cal::rail_ical_runResponse :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
geometry_msgs/Pose final_pose


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



(provide :intrinsic_cal/rail_ical_run "5b2e41c67828c97fda29508102025f24")


