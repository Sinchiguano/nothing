;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::cal_srv_solve)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'cal_srv_solve (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CAL_SRV_SOLVE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CAL_SRV_SOLVE"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CAL_SRV_SOLVEREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CAL_SRV_SOLVEREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CAL_SRV_SOLVERESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CAL_SRV_SOLVERESPONSE"))

(in-package "ROS")





(defclass industrial_extrinsic_cal::cal_srv_solveRequest
  :super ros::object
  :slots (_allowable_cost_per_observation ))

(defmethod industrial_extrinsic_cal::cal_srv_solveRequest
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

(defclass industrial_extrinsic_cal::cal_srv_solveResponse
  :super ros::object
  :slots (_final_cost_per_observation _message _success ))

(defmethod industrial_extrinsic_cal::cal_srv_solveResponse
  (:init
   (&key
    ((:final_cost_per_observation __final_cost_per_observation) 0.0)
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _final_cost_per_observation (float __final_cost_per_observation))
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:final_cost_per_observation
   (&optional __final_cost_per_observation)
   (if __final_cost_per_observation (setq _final_cost_per_observation __final_cost_per_observation)) _final_cost_per_observation)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _final_cost_per_observation
    8
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _final_cost_per_observation
       (sys::poke _final_cost_per_observation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _final_cost_per_observation
     (setq _final_cost_per_observation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::cal_srv_solve
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::cal_srv_solve :md5sum-) "ee44043b587910669da0ec6a74e20e6a")
(setf (get industrial_extrinsic_cal::cal_srv_solve :datatype-) "industrial_extrinsic_cal/cal_srv_solve")
(setf (get industrial_extrinsic_cal::cal_srv_solve :request) industrial_extrinsic_cal::cal_srv_solveRequest)
(setf (get industrial_extrinsic_cal::cal_srv_solve :response) industrial_extrinsic_cal::cal_srv_solveResponse)

(defmethod industrial_extrinsic_cal::cal_srv_solveRequest
  (:response () (instance industrial_extrinsic_cal::cal_srv_solveResponse :init)))

(setf (get industrial_extrinsic_cal::cal_srv_solveRequest :md5sum-) "ee44043b587910669da0ec6a74e20e6a")
(setf (get industrial_extrinsic_cal::cal_srv_solveRequest :datatype-) "industrial_extrinsic_cal/cal_srv_solveRequest")
(setf (get industrial_extrinsic_cal::cal_srv_solveRequest :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
string message
bool success
")

(setf (get industrial_extrinsic_cal::cal_srv_solveResponse :md5sum-) "ee44043b587910669da0ec6a74e20e6a")
(setf (get industrial_extrinsic_cal::cal_srv_solveResponse :datatype-) "industrial_extrinsic_cal/cal_srv_solveResponse")
(setf (get industrial_extrinsic_cal::cal_srv_solveResponse :definition-)
      "float64 allowable_cost_per_observation
---
float64 final_cost_per_observation
string message
bool success
")



(provide :industrial_extrinsic_cal/cal_srv_solve "ee44043b587910669da0ec6a74e20e6a")


