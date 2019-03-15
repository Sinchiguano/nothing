;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::FileOp)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'FileOp (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::FILEOP")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::FILEOP"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::FILEOPREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::FILEOPREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::FILEOPRESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::FILEOPRESPONSE"))

(in-package "ROS")





(defclass industrial_extrinsic_cal::FileOpRequest
  :super ros::object
  :slots (_name ))

(defmethod industrial_extrinsic_cal::FileOpRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::FileOpResponse
  :super ros::object
  :slots (_result ))

(defmethod industrial_extrinsic_cal::FileOpResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::FileOp
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::FileOp :md5sum-) "7bcae82d9c56d7e11c9ed0787b32d9b5")
(setf (get industrial_extrinsic_cal::FileOp :datatype-) "industrial_extrinsic_cal/FileOp")
(setf (get industrial_extrinsic_cal::FileOp :request) industrial_extrinsic_cal::FileOpRequest)
(setf (get industrial_extrinsic_cal::FileOp :response) industrial_extrinsic_cal::FileOpResponse)

(defmethod industrial_extrinsic_cal::FileOpRequest
  (:response () (instance industrial_extrinsic_cal::FileOpResponse :init)))

(setf (get industrial_extrinsic_cal::FileOpRequest :md5sum-) "7bcae82d9c56d7e11c9ed0787b32d9b5")
(setf (get industrial_extrinsic_cal::FileOpRequest :datatype-) "industrial_extrinsic_cal/FileOpRequest")
(setf (get industrial_extrinsic_cal::FileOpRequest :definition-)
      "
string name
---
string result
")

(setf (get industrial_extrinsic_cal::FileOpResponse :md5sum-) "7bcae82d9c56d7e11c9ed0787b32d9b5")
(setf (get industrial_extrinsic_cal::FileOpResponse :datatype-) "industrial_extrinsic_cal/FileOpResponse")
(setf (get industrial_extrinsic_cal::FileOpResponse :definition-)
      "
string name
---
string result
")



(provide :industrial_extrinsic_cal/FileOp "7bcae82d9c56d7e11c9ed0787b32d9b5")


