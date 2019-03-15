;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::HomeCmd)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'HomeCmd (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::HOMECMD")
  (make-package "ROBO_CYLINDER::HOMECMD"))
(unless (find-package "ROBO_CYLINDER::HOMECMDREQUEST")
  (make-package "ROBO_CYLINDER::HOMECMDREQUEST"))
(unless (find-package "ROBO_CYLINDER::HOMECMDRESPONSE")
  (make-package "ROBO_CYLINDER::HOMECMDRESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::HomeCmdRequest
  :super ros::object
  :slots ())

(defmethod robo_cylinder::HomeCmdRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robo_cylinder::HomeCmdResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::HomeCmdResponse
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

(defclass robo_cylinder::HomeCmd
  :super ros::object
  :slots ())

(setf (get robo_cylinder::HomeCmd :md5sum-) "003b81baa95ab323fc1ddf3c7d0bee81")
(setf (get robo_cylinder::HomeCmd :datatype-) "robo_cylinder/HomeCmd")
(setf (get robo_cylinder::HomeCmd :request) robo_cylinder::HomeCmdRequest)
(setf (get robo_cylinder::HomeCmd :response) robo_cylinder::HomeCmdResponse)

(defmethod robo_cylinder::HomeCmdRequest
  (:response () (instance robo_cylinder::HomeCmdResponse :init)))

(setf (get robo_cylinder::HomeCmdRequest :md5sum-) "003b81baa95ab323fc1ddf3c7d0bee81")
(setf (get robo_cylinder::HomeCmdRequest :datatype-) "robo_cylinder/HomeCmdRequest")
(setf (get robo_cylinder::HomeCmdRequest :definition-)
      "---
bool response

")

(setf (get robo_cylinder::HomeCmdResponse :md5sum-) "003b81baa95ab323fc1ddf3c7d0bee81")
(setf (get robo_cylinder::HomeCmdResponse :datatype-) "robo_cylinder/HomeCmdResponse")
(setf (get robo_cylinder::HomeCmdResponse :definition-)
      "---
bool response

")



(provide :robo_cylinder/HomeCmd "003b81baa95ab323fc1ddf3c7d0bee81")


