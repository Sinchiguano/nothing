;; Auto-generated. Do not edit!


(when (boundp 'target_finder::stereo_locator)
  (if (not (find-package "TARGET_FINDER"))
    (make-package "TARGET_FINDER"))
  (shadow 'stereo_locator (find-package "TARGET_FINDER")))
(unless (find-package "TARGET_FINDER::STEREO_LOCATOR")
  (make-package "TARGET_FINDER::STEREO_LOCATOR"))
(unless (find-package "TARGET_FINDER::STEREO_LOCATORREQUEST")
  (make-package "TARGET_FINDER::STEREO_LOCATORREQUEST"))
(unless (find-package "TARGET_FINDER::STEREO_LOCATORRESPONSE")
  (make-package "TARGET_FINDER::STEREO_LOCATORRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass target_finder::stereo_locatorRequest
  :super ros::object
  :slots (_allowable_cost_per_observation ))

(defmethod target_finder::stereo_locatorRequest
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

(defclass target_finder::stereo_locatorResponse
  :super ros::object
  :slots (_final_cost_per_observation _target_pose ))

(defmethod target_finder::stereo_locatorResponse
  (:init
   (&key
    ((:final_cost_per_observation __final_cost_per_observation) 0.0)
    ((:target_pose __target_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _final_cost_per_observation (float __final_cost_per_observation))
   (setq _target_pose __target_pose)
   self)
  (:final_cost_per_observation
   (&optional __final_cost_per_observation)
   (if __final_cost_per_observation (setq _final_cost_per_observation __final_cost_per_observation)) _final_cost_per_observation)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _final_cost_per_observation
    8
    ;; geometry_msgs/Pose _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _final_cost_per_observation
       (sys::poke _final_cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _final_cost_per_observation
     (setq _final_cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass target_finder::stereo_locator
  :super ros::object
  :slots ())

(setf (get target_finder::stereo_locator :md5sum-) "6f3a39428e04dd9b7fb7338eb3f220f5")
(setf (get target_finder::stereo_locator :datatype-) "target_finder/stereo_locator")
(setf (get target_finder::stereo_locator :request) target_finder::stereo_locatorRequest)
(setf (get target_finder::stereo_locator :response) target_finder::stereo_locatorResponse)

(defmethod target_finder::stereo_locatorRequest
  (:response () (instance target_finder::stereo_locatorResponse :init)))

(setf (get target_finder::stereo_locatorRequest :md5sum-) "6f3a39428e04dd9b7fb7338eb3f220f5")
(setf (get target_finder::stereo_locatorRequest :datatype-) "target_finder/stereo_locatorRequest")
(setf (get target_finder::stereo_locatorRequest :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
geometry_msgs/Pose target_pose

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

(setf (get target_finder::stereo_locatorResponse :md5sum-) "6f3a39428e04dd9b7fb7338eb3f220f5")
(setf (get target_finder::stereo_locatorResponse :datatype-) "target_finder/stereo_locatorResponse")
(setf (get target_finder::stereo_locatorResponse :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
geometry_msgs/Pose target_pose

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



(provide :target_finder/stereo_locator "6f3a39428e04dd9b7fb7338eb3f220f5")


