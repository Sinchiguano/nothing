;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::PowerIO)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'PowerIO (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::POWERIO")
  (make-package "ROBO_CYLINDER::POWERIO"))
(unless (find-package "ROBO_CYLINDER::POWERIOREQUEST")
  (make-package "ROBO_CYLINDER::POWERIOREQUEST"))
(unless (find-package "ROBO_CYLINDER::POWERIORESPONSE")
  (make-package "ROBO_CYLINDER::POWERIORESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::PowerIORequest
  :super ros::object
  :slots (_io ))

(defmethod robo_cylinder::PowerIORequest
  (:init
   (&key
    ((:io __io) 0)
    )
   (send-super :init)
   (setq _io (round __io))
   self)
  (:io
   (&optional __io)
   (if __io (setq _io __io)) _io)
  (:serialization-length
   ()
   (+
    ;; int16 _io
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _io
       (write-word _io s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _io
     (setq _io (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robo_cylinder::PowerIOResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::PowerIOResponse
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

(defclass robo_cylinder::PowerIO
  :super ros::object
  :slots ())

(setf (get robo_cylinder::PowerIO :md5sum-) "2f3ab81f85bd2b368501f94f9d2164e9")
(setf (get robo_cylinder::PowerIO :datatype-) "robo_cylinder/PowerIO")
(setf (get robo_cylinder::PowerIO :request) robo_cylinder::PowerIORequest)
(setf (get robo_cylinder::PowerIO :response) robo_cylinder::PowerIOResponse)

(defmethod robo_cylinder::PowerIORequest
  (:response () (instance robo_cylinder::PowerIOResponse :init)))

(setf (get robo_cylinder::PowerIORequest :md5sum-) "2f3ab81f85bd2b368501f94f9d2164e9")
(setf (get robo_cylinder::PowerIORequest :datatype-) "robo_cylinder/PowerIORequest")
(setf (get robo_cylinder::PowerIORequest :definition-)
      "int16 io
---
bool response

")

(setf (get robo_cylinder::PowerIOResponse :md5sum-) "2f3ab81f85bd2b368501f94f9d2164e9")
(setf (get robo_cylinder::PowerIOResponse :datatype-) "robo_cylinder/PowerIOResponse")
(setf (get robo_cylinder::PowerIOResponse :definition-)
      "int16 io
---
bool response

")



(provide :robo_cylinder/PowerIO "2f3ab81f85bd2b368501f94f9d2164e9")


