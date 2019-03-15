;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::MovePulses)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'MovePulses (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::MOVEPULSES")
  (make-package "ROBO_CYLINDER::MOVEPULSES"))
(unless (find-package "ROBO_CYLINDER::MOVEPULSESREQUEST")
  (make-package "ROBO_CYLINDER::MOVEPULSESREQUEST"))
(unless (find-package "ROBO_CYLINDER::MOVEPULSESRESPONSE")
  (make-package "ROBO_CYLINDER::MOVEPULSESRESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::MovePulsesRequest
  :super ros::object
  :slots (_pulses ))

(defmethod robo_cylinder::MovePulsesRequest
  (:init
   (&key
    ((:pulses __pulses) 0)
    )
   (send-super :init)
   (setq _pulses (round __pulses))
   self)
  (:pulses
   (&optional __pulses)
   (if __pulses (setq _pulses __pulses)) _pulses)
  (:serialization-length
   ()
   (+
    ;; int32 _pulses
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pulses
       (write-long _pulses s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pulses
     (setq _pulses (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robo_cylinder::MovePulsesResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::MovePulsesResponse
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

(defclass robo_cylinder::MovePulses
  :super ros::object
  :slots ())

(setf (get robo_cylinder::MovePulses :md5sum-) "2312ac85d9c04ace4203b83d46d0f0a8")
(setf (get robo_cylinder::MovePulses :datatype-) "robo_cylinder/MovePulses")
(setf (get robo_cylinder::MovePulses :request) robo_cylinder::MovePulsesRequest)
(setf (get robo_cylinder::MovePulses :response) robo_cylinder::MovePulsesResponse)

(defmethod robo_cylinder::MovePulsesRequest
  (:response () (instance robo_cylinder::MovePulsesResponse :init)))

(setf (get robo_cylinder::MovePulsesRequest :md5sum-) "2312ac85d9c04ace4203b83d46d0f0a8")
(setf (get robo_cylinder::MovePulsesRequest :datatype-) "robo_cylinder/MovePulsesRequest")
(setf (get robo_cylinder::MovePulsesRequest :definition-)
      "int32 pulses
---
bool response

")

(setf (get robo_cylinder::MovePulsesResponse :md5sum-) "2312ac85d9c04ace4203b83d46d0f0a8")
(setf (get robo_cylinder::MovePulsesResponse :datatype-) "robo_cylinder/MovePulsesResponse")
(setf (get robo_cylinder::MovePulsesResponse :definition-)
      "int32 pulses
---
bool response

")



(provide :robo_cylinder/MovePulses "2312ac85d9c04ace4203b83d46d0f0a8")


