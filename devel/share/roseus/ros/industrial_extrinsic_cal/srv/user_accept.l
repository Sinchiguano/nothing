;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::user_accept)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'user_accept (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::USER_ACCEPT")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::USER_ACCEPT"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::USER_ACCEPTREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::USER_ACCEPTREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::USER_ACCEPTRESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::USER_ACCEPTRESPONSE"))

(in-package "ROS")





(defclass industrial_extrinsic_cal::user_acceptRequest
  :super ros::object
  :slots (_allowable_error_per_pixel ))

(defmethod industrial_extrinsic_cal::user_acceptRequest
  (:init
   (&key
    ((:allowable_error_per_pixel __allowable_error_per_pixel) 0.0)
    )
   (send-super :init)
   (setq _allowable_error_per_pixel (float __allowable_error_per_pixel))
   self)
  (:allowable_error_per_pixel
   (&optional __allowable_error_per_pixel)
   (if __allowable_error_per_pixel (setq _allowable_error_per_pixel __allowable_error_per_pixel)) _allowable_error_per_pixel)
  (:serialization-length
   ()
   (+
    ;; float64 _allowable_error_per_pixel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _allowable_error_per_pixel
       (sys::poke _allowable_error_per_pixel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _allowable_error_per_pixel
     (setq _allowable_error_per_pixel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::user_acceptResponse
  :super ros::object
  :slots (_resultant_error_per_pixel ))

(defmethod industrial_extrinsic_cal::user_acceptResponse
  (:init
   (&key
    ((:resultant_error_per_pixel __resultant_error_per_pixel) 0.0)
    )
   (send-super :init)
   (setq _resultant_error_per_pixel (float __resultant_error_per_pixel))
   self)
  (:resultant_error_per_pixel
   (&optional __resultant_error_per_pixel)
   (if __resultant_error_per_pixel (setq _resultant_error_per_pixel __resultant_error_per_pixel)) _resultant_error_per_pixel)
  (:serialization-length
   ()
   (+
    ;; float64 _resultant_error_per_pixel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _resultant_error_per_pixel
       (sys::poke _resultant_error_per_pixel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _resultant_error_per_pixel
     (setq _resultant_error_per_pixel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::user_accept
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::user_accept :md5sum-) "b67d6e018ba30c2c1c11d202c487d542")
(setf (get industrial_extrinsic_cal::user_accept :datatype-) "industrial_extrinsic_cal/user_accept")
(setf (get industrial_extrinsic_cal::user_accept :request) industrial_extrinsic_cal::user_acceptRequest)
(setf (get industrial_extrinsic_cal::user_accept :response) industrial_extrinsic_cal::user_acceptResponse)

(defmethod industrial_extrinsic_cal::user_acceptRequest
  (:response () (instance industrial_extrinsic_cal::user_acceptResponse :init)))

(setf (get industrial_extrinsic_cal::user_acceptRequest :md5sum-) "b67d6e018ba30c2c1c11d202c487d542")
(setf (get industrial_extrinsic_cal::user_acceptRequest :datatype-) "industrial_extrinsic_cal/user_acceptRequest")
(setf (get industrial_extrinsic_cal::user_acceptRequest :definition-)
      "
float64 allowable_error_per_pixel
---

float64 resultant_error_per_pixel

")

(setf (get industrial_extrinsic_cal::user_acceptResponse :md5sum-) "b67d6e018ba30c2c1c11d202c487d542")
(setf (get industrial_extrinsic_cal::user_acceptResponse :datatype-) "industrial_extrinsic_cal/user_acceptResponse")
(setf (get industrial_extrinsic_cal::user_acceptResponse :definition-)
      "
float64 allowable_error_per_pixel
---

float64 resultant_error_per_pixel

")



(provide :industrial_extrinsic_cal/user_accept "b67d6e018ba30c2c1c11d202c487d542")


