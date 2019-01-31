;; Auto-generated. Do not edit!


(when (boundp 'camera_pose_calibration::PatternParameters)
  (if (not (find-package "CAMERA_POSE_CALIBRATION"))
    (make-package "CAMERA_POSE_CALIBRATION"))
  (shadow 'PatternParameters (find-package "CAMERA_POSE_CALIBRATION")))
(unless (find-package "CAMERA_POSE_CALIBRATION::PATTERNPARAMETERS")
  (make-package "CAMERA_POSE_CALIBRATION::PATTERNPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude PatternParameters.msg.html


(defclass camera_pose_calibration::PatternParameters
  :super ros::object
  :slots (_pattern_width _pattern_height _pattern_distance _neighbor_distance _valid_pattern_ratio_threshold ))

(defmethod camera_pose_calibration::PatternParameters
  (:init
   (&key
    ((:pattern_width __pattern_width) 0)
    ((:pattern_height __pattern_height) 0)
    ((:pattern_distance __pattern_distance) 0.0)
    ((:neighbor_distance __neighbor_distance) 0.0)
    ((:valid_pattern_ratio_threshold __valid_pattern_ratio_threshold) 0.0)
    )
   (send-super :init)
   (setq _pattern_width (round __pattern_width))
   (setq _pattern_height (round __pattern_height))
   (setq _pattern_distance (float __pattern_distance))
   (setq _neighbor_distance (float __neighbor_distance))
   (setq _valid_pattern_ratio_threshold (float __valid_pattern_ratio_threshold))
   self)
  (:pattern_width
   (&optional __pattern_width)
   (if __pattern_width (setq _pattern_width __pattern_width)) _pattern_width)
  (:pattern_height
   (&optional __pattern_height)
   (if __pattern_height (setq _pattern_height __pattern_height)) _pattern_height)
  (:pattern_distance
   (&optional __pattern_distance)
   (if __pattern_distance (setq _pattern_distance __pattern_distance)) _pattern_distance)
  (:neighbor_distance
   (&optional __neighbor_distance)
   (if __neighbor_distance (setq _neighbor_distance __neighbor_distance)) _neighbor_distance)
  (:valid_pattern_ratio_threshold
   (&optional __valid_pattern_ratio_threshold)
   (if __valid_pattern_ratio_threshold (setq _valid_pattern_ratio_threshold __valid_pattern_ratio_threshold)) _valid_pattern_ratio_threshold)
  (:serialization-length
   ()
   (+
    ;; uint8 _pattern_width
    1
    ;; uint8 _pattern_height
    1
    ;; float64 _pattern_distance
    8
    ;; float64 _neighbor_distance
    8
    ;; float64 _valid_pattern_ratio_threshold
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pattern_width
       (write-byte _pattern_width s)
     ;; uint8 _pattern_height
       (write-byte _pattern_height s)
     ;; float64 _pattern_distance
       (sys::poke _pattern_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _neighbor_distance
       (sys::poke _neighbor_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _valid_pattern_ratio_threshold
       (sys::poke _valid_pattern_ratio_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pattern_width
     (setq _pattern_width (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pattern_height
     (setq _pattern_height (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _pattern_distance
     (setq _pattern_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _neighbor_distance
     (setq _neighbor_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _valid_pattern_ratio_threshold
     (setq _valid_pattern_ratio_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get camera_pose_calibration::PatternParameters :md5sum-) "1072989cc839ba5aa0fd1ae7ff3a0522")
(setf (get camera_pose_calibration::PatternParameters :datatype-) "camera_pose_calibration/PatternParameters")
(setf (get camera_pose_calibration::PatternParameters :definition-)
      "uint8 pattern_width
uint8 pattern_height
float64 pattern_distance
float64 neighbor_distance
float64 valid_pattern_ratio_threshold

")



(provide :camera_pose_calibration/PatternParameters "1072989cc839ba5aa0fd1ae7ff3a0522")


