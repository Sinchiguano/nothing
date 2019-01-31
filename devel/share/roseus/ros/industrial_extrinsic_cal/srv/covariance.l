;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::covariance)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'covariance (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::COVARIANCE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::COVARIANCE"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::COVARIANCEREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::COVARIANCEREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::COVARIANCERESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::COVARIANCERESPONSE"))

(in-package "ROS")





(defclass industrial_extrinsic_cal::covarianceRequest
  :super ros::object
  :slots (_file_name _block_name1 _request_type1 _scene_id1 _block_name2 _request_type2 _scene_id2 ))

(defmethod industrial_extrinsic_cal::covarianceRequest
  (:init
   (&key
    ((:file_name __file_name) "")
    ((:block_name1 __block_name1) "")
    ((:request_type1 __request_type1) 0)
    ((:scene_id1 __scene_id1) 0)
    ((:block_name2 __block_name2) "")
    ((:request_type2 __request_type2) 0)
    ((:scene_id2 __scene_id2) 0)
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   (setq _block_name1 (string __block_name1))
   (setq _request_type1 (round __request_type1))
   (setq _scene_id1 (round __scene_id1))
   (setq _block_name2 (string __block_name2))
   (setq _request_type2 (round __request_type2))
   (setq _scene_id2 (round __scene_id2))
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:block_name1
   (&optional __block_name1)
   (if __block_name1 (setq _block_name1 __block_name1)) _block_name1)
  (:request_type1
   (&optional __request_type1)
   (if __request_type1 (setq _request_type1 __request_type1)) _request_type1)
  (:scene_id1
   (&optional __scene_id1)
   (if __scene_id1 (setq _scene_id1 __scene_id1)) _scene_id1)
  (:block_name2
   (&optional __block_name2)
   (if __block_name2 (setq _block_name2 __block_name2)) _block_name2)
  (:request_type2
   (&optional __request_type2)
   (if __request_type2 (setq _request_type2 __request_type2)) _request_type2)
  (:scene_id2
   (&optional __scene_id2)
   (if __scene_id2 (setq _scene_id2 __scene_id2)) _scene_id2)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ;; string _block_name1
    4 (length _block_name1)
    ;; int32 _request_type1
    4
    ;; int32 _scene_id1
    4
    ;; string _block_name2
    4 (length _block_name2)
    ;; int32 _request_type2
    4
    ;; int32 _scene_id2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;; string _block_name1
       (write-long (length _block_name1) s) (princ _block_name1 s)
     ;; int32 _request_type1
       (write-long _request_type1 s)
     ;; int32 _scene_id1
       (write-long _scene_id1 s)
     ;; string _block_name2
       (write-long (length _block_name2) s) (princ _block_name2 s)
     ;; int32 _request_type2
       (write-long _request_type2 s)
     ;; int32 _scene_id2
       (write-long _scene_id2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _block_name1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _block_name1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _request_type1
     (setq _request_type1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _scene_id1
     (setq _scene_id1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _block_name2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _block_name2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _request_type2
     (setq _request_type2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _scene_id2
     (setq _scene_id2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::covarianceResponse
  :super ros::object
  :slots (_result ))

(defmethod industrial_extrinsic_cal::covarianceResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::covariance
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::covariance :md5sum-) "007ea7659fcfafe13fcf466762341056")
(setf (get industrial_extrinsic_cal::covariance :datatype-) "industrial_extrinsic_cal/covariance")
(setf (get industrial_extrinsic_cal::covariance :request) industrial_extrinsic_cal::covarianceRequest)
(setf (get industrial_extrinsic_cal::covariance :response) industrial_extrinsic_cal::covarianceResponse)

(defmethod industrial_extrinsic_cal::covarianceRequest
  (:response () (instance industrial_extrinsic_cal::covarianceResponse :init)))

(setf (get industrial_extrinsic_cal::covarianceRequest :md5sum-) "007ea7659fcfafe13fcf466762341056")
(setf (get industrial_extrinsic_cal::covarianceRequest :datatype-) "industrial_extrinsic_cal/covarianceRequest")
(setf (get industrial_extrinsic_cal::covarianceRequest :definition-)
      "string file_name
string block_name1
int32 request_type1
int32 scene_id1
string block_name2
int32 request_type2
int32 scene_id2
---
uint32 result
")

(setf (get industrial_extrinsic_cal::covarianceResponse :md5sum-) "007ea7659fcfafe13fcf466762341056")
(setf (get industrial_extrinsic_cal::covarianceResponse :datatype-) "industrial_extrinsic_cal/covarianceResponse")
(setf (get industrial_extrinsic_cal::covarianceResponse :definition-)
      "string file_name
string block_name1
int32 request_type1
int32 scene_id1
string block_name2
int32 request_type2
int32 scene_id2
---
uint32 result
")



(provide :industrial_extrinsic_cal/covariance "007ea7659fcfafe13fcf466762341056")


