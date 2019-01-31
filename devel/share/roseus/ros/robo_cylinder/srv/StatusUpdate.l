;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::StatusUpdate)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'StatusUpdate (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::STATUSUPDATE")
  (make-package "ROBO_CYLINDER::STATUSUPDATE"))
(unless (find-package "ROBO_CYLINDER::STATUSUPDATEREQUEST")
  (make-package "ROBO_CYLINDER::STATUSUPDATEREQUEST"))
(unless (find-package "ROBO_CYLINDER::STATUSUPDATERESPONSE")
  (make-package "ROBO_CYLINDER::STATUSUPDATERESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::StatusUpdateRequest
  :super ros::object
  :slots ())

(defmethod robo_cylinder::StatusUpdateRequest
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

(defclass robo_cylinder::StatusUpdateResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::StatusUpdateResponse
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

(defclass robo_cylinder::StatusUpdate
  :super ros::object
  :slots ())

(setf (get robo_cylinder::StatusUpdate :md5sum-) "003b81baa95ab323fc1ddf3c7d0bee81")
(setf (get robo_cylinder::StatusUpdate :datatype-) "robo_cylinder/StatusUpdate")
(setf (get robo_cylinder::StatusUpdate :request) robo_cylinder::StatusUpdateRequest)
(setf (get robo_cylinder::StatusUpdate :response) robo_cylinder::StatusUpdateResponse)

(defmethod robo_cylinder::StatusUpdateRequest
  (:response () (instance robo_cylinder::StatusUpdateResponse :init)))

(setf (get robo_cylinder::StatusUpdateRequest :md5sum-) "003b81baa95ab323fc1ddf3c7d0bee81")
(setf (get robo_cylinder::StatusUpdateRequest :datatype-) "robo_cylinder/StatusUpdateRequest")
(setf (get robo_cylinder::StatusUpdateRequest :definition-)
      "---
bool response

")

(setf (get robo_cylinder::StatusUpdateResponse :md5sum-) "003b81baa95ab323fc1ddf3c7d0bee81")
(setf (get robo_cylinder::StatusUpdateResponse :datatype-) "robo_cylinder/StatusUpdateResponse")
(setf (get robo_cylinder::StatusUpdateResponse :definition-)
      "---
bool response

")



(provide :robo_cylinder/StatusUpdate "003b81baa95ab323fc1ddf3c7d0bee81")


