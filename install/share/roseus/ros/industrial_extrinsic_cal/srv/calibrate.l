;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::calibrate)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'calibrate (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CALIBRATE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CALIBRATE"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CALIBRATEREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CALIBRATEREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CALIBRATERESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CALIBRATERESPONSE"))

(in-package "ROS")





(defclass industrial_extrinsic_cal::calibrateRequest
  :super ros::object
  :slots (_allowable_cost_per_observation ))

(defmethod industrial_extrinsic_cal::calibrateRequest
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

(defclass industrial_extrinsic_cal::calibrateResponse
  :super ros::object
  :slots (_cost_per_observation ))

(defmethod industrial_extrinsic_cal::calibrateResponse
  (:init
   (&key
    ((:cost_per_observation __cost_per_observation) 0.0)
    )
   (send-super :init)
   (setq _cost_per_observation (float __cost_per_observation))
   self)
  (:cost_per_observation
   (&optional __cost_per_observation)
   (if __cost_per_observation (setq _cost_per_observation __cost_per_observation)) _cost_per_observation)
  (:serialization-length
   ()
   (+
    ;; float64 _cost_per_observation
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cost_per_observation
       (sys::poke _cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cost_per_observation
     (setq _cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::calibrate
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::calibrate :md5sum-) "cca53ecd15e4dc5f04a43336c8d434ad")
(setf (get industrial_extrinsic_cal::calibrate :datatype-) "industrial_extrinsic_cal/calibrate")
(setf (get industrial_extrinsic_cal::calibrate :request) industrial_extrinsic_cal::calibrateRequest)
(setf (get industrial_extrinsic_cal::calibrate :response) industrial_extrinsic_cal::calibrateResponse)

(defmethod industrial_extrinsic_cal::calibrateRequest
  (:response () (instance industrial_extrinsic_cal::calibrateResponse :init)))

(setf (get industrial_extrinsic_cal::calibrateRequest :md5sum-) "cca53ecd15e4dc5f04a43336c8d434ad")
(setf (get industrial_extrinsic_cal::calibrateRequest :datatype-) "industrial_extrinsic_cal/calibrateRequest")
(setf (get industrial_extrinsic_cal::calibrateRequest :definition-)
      "float64 allowable_cost_per_observation
---
float64 cost_per_observation

")

(setf (get industrial_extrinsic_cal::calibrateResponse :md5sum-) "cca53ecd15e4dc5f04a43336c8d434ad")
(setf (get industrial_extrinsic_cal::calibrateResponse :datatype-) "industrial_extrinsic_cal/calibrateResponse")
(setf (get industrial_extrinsic_cal::calibrateResponse :definition-)
      "float64 allowable_cost_per_observation
---
float64 cost_per_observation

")



(provide :industrial_extrinsic_cal/calibrate "cca53ecd15e4dc5f04a43336c8d434ad")


