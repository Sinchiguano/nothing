;; Auto-generated. Do not edit!


(when (boundp 'target_finder::target_locator)
  (if (not (find-package "TARGET_FINDER"))
    (make-package "TARGET_FINDER"))
  (shadow 'target_locator (find-package "TARGET_FINDER")))
(unless (find-package "TARGET_FINDER::TARGET_LOCATOR")
  (make-package "TARGET_FINDER::TARGET_LOCATOR"))
(unless (find-package "TARGET_FINDER::TARGET_LOCATORREQUEST")
  (make-package "TARGET_FINDER::TARGET_LOCATORREQUEST"))
(unless (find-package "TARGET_FINDER::TARGET_LOCATORRESPONSE")
  (make-package "TARGET_FINDER::TARGET_LOCATORRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass target_finder::target_locatorRequest
  :super ros::object
  :slots (_allowable_cost_per_observation _roi _initial_pose ))

(defmethod target_finder::target_locatorRequest
  (:init
   (&key
    ((:allowable_cost_per_observation __allowable_cost_per_observation) 0.0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:initial_pose __initial_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _allowable_cost_per_observation (float __allowable_cost_per_observation))
   (setq _roi __roi)
   (setq _initial_pose __initial_pose)
   self)
  (:allowable_cost_per_observation
   (&optional __allowable_cost_per_observation)
   (if __allowable_cost_per_observation (setq _allowable_cost_per_observation __allowable_cost_per_observation)) _allowable_cost_per_observation)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _allowable_cost_per_observation
    8
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; geometry_msgs/Pose _initial_pose
    (send _initial_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _allowable_cost_per_observation
       (sys::poke _allowable_cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; geometry_msgs/Pose _initial_pose
       (send _initial_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _allowable_cost_per_observation
     (setq _allowable_cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; geometry_msgs/Pose _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;;
   self)
  )

(defclass target_finder::target_locatorResponse
  :super ros::object
  :slots (_final_cost_per_observation _final_pose ))

(defmethod target_finder::target_locatorResponse
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

(defclass target_finder::target_locator
  :super ros::object
  :slots ())

(setf (get target_finder::target_locator :md5sum-) "a26351e216e367a0883873c29f854fe0")
(setf (get target_finder::target_locator :datatype-) "target_finder/target_locator")
(setf (get target_finder::target_locator :request) target_finder::target_locatorRequest)
(setf (get target_finder::target_locator :response) target_finder::target_locatorResponse)

(defmethod target_finder::target_locatorRequest
  (:response () (instance target_finder::target_locatorResponse :init)))

(setf (get target_finder::target_locatorRequest :md5sum-) "a26351e216e367a0883873c29f854fe0")
(setf (get target_finder::target_locatorRequest :datatype-) "target_finder/target_locatorRequest")
(setf (get target_finder::target_locatorRequest :definition-)
      "float64 allowable_cost_per_observation
sensor_msgs/RegionOfInterest roi
geometry_msgs/Pose initial_pose

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

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

(setf (get target_finder::target_locatorResponse :md5sum-) "a26351e216e367a0883873c29f854fe0")
(setf (get target_finder::target_locatorResponse :datatype-) "target_finder/target_locatorResponse")
(setf (get target_finder::target_locatorResponse :definition-)
      "float64 allowable_cost_per_observation
sensor_msgs/RegionOfInterest roi
geometry_msgs/Pose initial_pose

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

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



(provide :target_finder/target_locator "a26351e216e367a0883873c29f854fe0")


