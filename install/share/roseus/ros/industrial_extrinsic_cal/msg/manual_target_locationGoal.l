;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::manual_target_locationGoal)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'manual_target_locationGoal (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::MANUAL_TARGET_LOCATIONGOAL")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::MANUAL_TARGET_LOCATIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude manual_target_locationGoal.msg.html


(defclass industrial_extrinsic_cal::manual_target_locationGoal
  :super ros::object
  :slots (_instructions _target_type _image_topic _roi_min_x _roi_min_y _roi_max_x _roi_max_y _grid_rows _grid_cols ))

(defmethod industrial_extrinsic_cal::manual_target_locationGoal
  (:init
   (&key
    ((:instructions __instructions) "")
    ((:target_type __target_type) 0)
    ((:image_topic __image_topic) "")
    ((:roi_min_x __roi_min_x) 0)
    ((:roi_min_y __roi_min_y) 0)
    ((:roi_max_x __roi_max_x) 0)
    ((:roi_max_y __roi_max_y) 0)
    ((:grid_rows __grid_rows) 0)
    ((:grid_cols __grid_cols) 0)
    )
   (send-super :init)
   (setq _instructions (string __instructions))
   (setq _target_type (round __target_type))
   (setq _image_topic (string __image_topic))
   (setq _roi_min_x (round __roi_min_x))
   (setq _roi_min_y (round __roi_min_y))
   (setq _roi_max_x (round __roi_max_x))
   (setq _roi_max_y (round __roi_max_y))
   (setq _grid_rows (round __grid_rows))
   (setq _grid_cols (round __grid_cols))
   self)
  (:instructions
   (&optional __instructions)
   (if __instructions (setq _instructions __instructions)) _instructions)
  (:target_type
   (&optional __target_type)
   (if __target_type (setq _target_type __target_type)) _target_type)
  (:image_topic
   (&optional __image_topic)
   (if __image_topic (setq _image_topic __image_topic)) _image_topic)
  (:roi_min_x
   (&optional __roi_min_x)
   (if __roi_min_x (setq _roi_min_x __roi_min_x)) _roi_min_x)
  (:roi_min_y
   (&optional __roi_min_y)
   (if __roi_min_y (setq _roi_min_y __roi_min_y)) _roi_min_y)
  (:roi_max_x
   (&optional __roi_max_x)
   (if __roi_max_x (setq _roi_max_x __roi_max_x)) _roi_max_x)
  (:roi_max_y
   (&optional __roi_max_y)
   (if __roi_max_y (setq _roi_max_y __roi_max_y)) _roi_max_y)
  (:grid_rows
   (&optional __grid_rows)
   (if __grid_rows (setq _grid_rows __grid_rows)) _grid_rows)
  (:grid_cols
   (&optional __grid_cols)
   (if __grid_cols (setq _grid_cols __grid_cols)) _grid_cols)
  (:serialization-length
   ()
   (+
    ;; string _instructions
    4 (length _instructions)
    ;; uint32 _target_type
    4
    ;; string _image_topic
    4 (length _image_topic)
    ;; uint32 _roi_min_x
    4
    ;; uint32 _roi_min_y
    4
    ;; uint32 _roi_max_x
    4
    ;; uint32 _roi_max_y
    4
    ;; uint32 _grid_rows
    4
    ;; uint32 _grid_cols
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _instructions
       (write-long (length _instructions) s) (princ _instructions s)
     ;; uint32 _target_type
       (write-long _target_type s)
     ;; string _image_topic
       (write-long (length _image_topic) s) (princ _image_topic s)
     ;; uint32 _roi_min_x
       (write-long _roi_min_x s)
     ;; uint32 _roi_min_y
       (write-long _roi_min_y s)
     ;; uint32 _roi_max_x
       (write-long _roi_max_x s)
     ;; uint32 _roi_max_y
       (write-long _roi_max_y s)
     ;; uint32 _grid_rows
       (write-long _grid_rows s)
     ;; uint32 _grid_cols
       (write-long _grid_cols s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _instructions
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instructions (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _target_type
     (setq _target_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _image_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _roi_min_x
     (setq _roi_min_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roi_min_y
     (setq _roi_min_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roi_max_x
     (setq _roi_max_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roi_max_y
     (setq _roi_max_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _grid_rows
     (setq _grid_rows (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _grid_cols
     (setq _grid_cols (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get industrial_extrinsic_cal::manual_target_locationGoal :md5sum-) "da35bff99f1ba8b9eb51a8eadd1f4616")
(setf (get industrial_extrinsic_cal::manual_target_locationGoal :datatype-) "industrial_extrinsic_cal/manual_target_locationGoal")
(setf (get industrial_extrinsic_cal::manual_target_locationGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
string instructions
uint32 target_type  
string image_topic
uint32 roi_min_x
uint32 roi_min_y
uint32 roi_max_x
uint32 roi_max_y
uint32 grid_rows
uint32 grid_cols

")



(provide :industrial_extrinsic_cal/manual_target_locationGoal "da35bff99f1ba8b9eb51a8eadd1f4616")


