;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::VelAcc)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'VelAcc (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::VELACC")
  (make-package "ROBO_CYLINDER::VELACC"))
(unless (find-package "ROBO_CYLINDER::VELACCREQUEST")
  (make-package "ROBO_CYLINDER::VELACCREQUEST"))
(unless (find-package "ROBO_CYLINDER::VELACCRESPONSE")
  (make-package "ROBO_CYLINDER::VELACCRESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::VelAccRequest
  :super ros::object
  :slots (_vel _acc ))

(defmethod robo_cylinder::VelAccRequest
  (:init
   (&key
    ((:vel __vel) 0.0)
    ((:acc __acc) 0.0)
    )
   (send-super :init)
   (setq _vel (float __vel))
   (setq _acc (float __acc))
   self)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:serialization-length
   ()
   (+
    ;; float32 _vel
    4
    ;; float32 _acc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robo_cylinder::VelAccResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::VelAccResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robo_cylinder::VelAcc
  :super ros::object
  :slots ())

(setf (get robo_cylinder::VelAcc :md5sum-) "f35bf9280520074b859fc92770147f86")
(setf (get robo_cylinder::VelAcc :datatype-) "robo_cylinder/VelAcc")
(setf (get robo_cylinder::VelAcc :request) robo_cylinder::VelAccRequest)
(setf (get robo_cylinder::VelAcc :response) robo_cylinder::VelAccResponse)

(defmethod robo_cylinder::VelAccRequest
  (:response () (instance robo_cylinder::VelAccResponse :init)))

(setf (get robo_cylinder::VelAccRequest :md5sum-) "f35bf9280520074b859fc92770147f86")
(setf (get robo_cylinder::VelAccRequest :datatype-) "robo_cylinder/VelAccRequest")
(setf (get robo_cylinder::VelAccRequest :definition-)
      "float32 vel
float32 acc
---
bool response

")

(setf (get robo_cylinder::VelAccResponse :md5sum-) "f35bf9280520074b859fc92770147f86")
(setf (get robo_cylinder::VelAccResponse :datatype-) "robo_cylinder/VelAccResponse")
(setf (get robo_cylinder::VelAccResponse :definition-)
      "float32 vel
float32 acc
---
bool response

")



(provide :robo_cylinder/VelAcc "f35bf9280520074b859fc92770147f86")


