;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::MoveMeters)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'MoveMeters (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::MOVEMETERS")
  (make-package "ROBO_CYLINDER::MOVEMETERS"))
(unless (find-package "ROBO_CYLINDER::MOVEMETERSREQUEST")
  (make-package "ROBO_CYLINDER::MOVEMETERSREQUEST"))
(unless (find-package "ROBO_CYLINDER::MOVEMETERSRESPONSE")
  (make-package "ROBO_CYLINDER::MOVEMETERSRESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::MoveMetersRequest
  :super ros::object
  :slots (_meters ))

(defmethod robo_cylinder::MoveMetersRequest
  (:init
   (&key
    ((:meters __meters) 0.0)
    )
   (send-super :init)
   (setq _meters (float __meters))
   self)
  (:meters
   (&optional __meters)
   (if __meters (setq _meters __meters)) _meters)
  (:serialization-length
   ()
   (+
    ;; float32 _meters
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _meters
       (sys::poke _meters (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _meters
     (setq _meters (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robo_cylinder::MoveMetersResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::MoveMetersResponse
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

(defclass robo_cylinder::MoveMeters
  :super ros::object
  :slots ())

(setf (get robo_cylinder::MoveMeters :md5sum-) "6f982fc36fa004e803e69f0803390fad")
(setf (get robo_cylinder::MoveMeters :datatype-) "robo_cylinder/MoveMeters")
(setf (get robo_cylinder::MoveMeters :request) robo_cylinder::MoveMetersRequest)
(setf (get robo_cylinder::MoveMeters :response) robo_cylinder::MoveMetersResponse)

(defmethod robo_cylinder::MoveMetersRequest
  (:response () (instance robo_cylinder::MoveMetersResponse :init)))

(setf (get robo_cylinder::MoveMetersRequest :md5sum-) "6f982fc36fa004e803e69f0803390fad")
(setf (get robo_cylinder::MoveMetersRequest :datatype-) "robo_cylinder/MoveMetersRequest")
(setf (get robo_cylinder::MoveMetersRequest :definition-)
      "float32 meters
---
bool response

")

(setf (get robo_cylinder::MoveMetersResponse :md5sum-) "6f982fc36fa004e803e69f0803390fad")
(setf (get robo_cylinder::MoveMetersResponse :datatype-) "robo_cylinder/MoveMetersResponse")
(setf (get robo_cylinder::MoveMetersResponse :definition-)
      "float32 meters
---
bool response

")



(provide :robo_cylinder/MoveMeters "6f982fc36fa004e803e69f0803390fad")


